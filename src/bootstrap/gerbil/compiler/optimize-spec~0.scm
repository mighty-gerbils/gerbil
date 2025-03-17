(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1742223876)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp179189 (list gxc#::identity::t))
            (__tmp179188 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp179189
         '()
         __tmp179188
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args177986%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args177986%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp179190
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
        (__make-promise __tmp179190)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx177978%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self177981%_
                (let ((__obj179181
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj179181))
               (__tmp179191
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177981%_ _%stx177978%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179191
           gxc#current-compile-method
           _%self177981%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp179193 (list gxc#::false::t))
            (__tmp179192 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp179193
         '()
         __tmp179192
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args177975%_
        (apply make-instance gxc#::extract-receiver::t _%$args177975%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp179194
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
        (__make-promise __tmp179194)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx177967%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self177970%_
                (let ((__obj179183
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj179183))
               (__tmp179195
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177970%_ _%stx177967%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179195
           gxc#current-compile-method
           _%self177970%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp179197 (list gxc#::void::t))
            (__tmp179196 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp179197
         '(receiver methods slots)
         __tmp179196
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args177964%_
        (apply make-instance gxc#::collect-object-refs::t _%$args177964%_)))
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
      (let ((__tmp179198
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
        (__make-promise __tmp179198)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords177930%_
               _%receiver177925177931%_
               _%methods177926177933%_
               _%slots177927177935%_
               _%stx177937%_)
        (let* ((_%receiver177940%_
                (if (eq? _%receiver177925177931%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177925177931%_))
               (_%methods177942%_
                (if (eq? _%methods177926177933%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177926177933%_))
               (_%slots177944%_
                (if (eq? _%slots177927177935%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177927177935%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self177946%_
                  (let ((__obj179185
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
                       __obj179185
                       _%receiver177940%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179185
                       _%methods177942%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179185
                       _%slots177944%_
                       '3
                       '#f
                       '#f))
                    __obj179185))
                 (__tmp179199
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177946%_ _%stx177937%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179199
             gxc#current-compile-method
             _%self177946%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords177953%_ . _%args177954%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords177953%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177953%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177953%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177953%_
                  'slots:
                  absent-value))
               _%args177954%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args177928177960%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args177928177960%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp179201 (list gxc#::basic-xform-expression::t))
            (__tmp179200 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp179201
         '(receiver klass methods slots)
         __tmp179200
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args177921%_
        (apply make-instance gxc#::subst-object-refs::t _%$args177921%_)))
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
      (let ((__tmp179202
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
        (__make-promise __tmp179202)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords177883%_
               _%receiver177877177884%_
               _%klass177878177886%_
               _%methods177879177888%_
               _%slots177880177890%_
               _%stx177892%_)
        (let* ((_%receiver177895%_
                (if (eq? _%receiver177877177884%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177877177884%_))
               (_%klass177897%_
                (if (eq? _%klass177878177886%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass177878177886%_))
               (_%methods177899%_
                (if (eq? _%methods177879177888%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177879177888%_))
               (_%slots177901%_
                (if (eq? _%slots177880177890%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177880177890%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self177903%_
                  (let ((__obj179187
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
                       __obj179187
                       _%receiver177895%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179187
                       _%klass177897%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179187
                       _%methods177899%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179187
                       _%slots177901%_
                       '4
                       '#f
                       '#f))
                    __obj179187))
                 (__tmp179203
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177903%_ _%stx177892%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179203
             gxc#current-compile-method
             _%self177903%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords177910%_ . _%args177911%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords177910%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177910%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177910%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177910%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177910%_
                  'slots:
                  absent-value))
               _%args177911%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args177881177917%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args177881177917%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self174992%_ _%stx174993%_)
        (letrec ((_%generate-method-bind174995%_
                  (lambda (_%$klass177869%_
                           _%$method-table177870%_
                           _%id177871%_
                           _%$id177872%_)
                    (let ((_%$tmp177874%_
                           (let ((__tmp179204
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179204))))
                      (cons (cons _%$id177872%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp177874%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table177870%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id177871%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp177874%_ '()))
                    (cons (cons '%#ref (cons _%$tmp177874%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id177871%_
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
                 (_%generate-slot-bind174996%_
                  (lambda (_%$klass177863%_ _%id177864%_ _%$id177865%_)
                    (let ((_%$tmp177867%_
                           (let ((__tmp179205
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179205))))
                      (cons (cons _%$id177865%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp177867%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass177863%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id177864%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp177867%_ '()))
                        (cons (cons '%#ref (cons _%$tmp177867%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id177864%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl174997%_
                  (lambda (_%$klass177857%_
                           _%$method-table177858%_
                           _%methods-bind177859%_
                           _%slots-bind177860%_
                           _%specializer-impl177861%_)
                    (let ((__tmp179206
                           (cons '%#lambda
                                 (cons (cons _%$klass177857%_
                                             (cons _%$method-table177858%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind177860%_
                                                            _%methods-bind177859%_))
                                                         (cons _%specializer-impl177861%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179206 _%stx174993%_))))
                 (_%generate-specializer-def174998%_
                  (lambda (_%id177853%_
                           _%specializer-id177854%_
                           _%specializer-impl177855%_)
                    (let ((__tmp179207
                           (cons '%#begin
                                 (cons _%stx174993%_
                                       (cons (let ((__tmp179208
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id177854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl177855%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179208
                                                _%stx174993%_))
                                             (cons (let ((__tmp179209
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id177853%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id177854%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179209
                                                      _%stx174993%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179207 _%stx174993%_)))))
          (let* ((_%__stx178075178076%_ _%stx174993%_)
                 (_%g175001175021%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx178075178076%_)))))
            (let ((_%__kont178077178078%_
                   (lambda (_%L175065%_ _%L175066%_)
                     (let ((_%method-calls175085%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs175086%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty175087%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?175089%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls175085%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs175086%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L175065%_))
                             (let* ((_%__stx177989177990%_ _%L175065%_)
                                    (_%g175477175495%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx177989177990%_)))))
                               (let ((_%__kont177991177992%_
                                      (lambda (_%L175531%_
                                               _%L175532%_
                                               _%L175533%_)
                                        (let ((_%receiver175553%_
                                               (let ((_%$e175550%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L175531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e175550%_
                                                     _%$e175550%_
                                                     _%L175533%_))))
                                          (for-each
                                           (lambda (_%g175554175556%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver175553%_
                                              _%method-calls175085%_
                                              _%slot-refs175086%_
                                              _%g175554175556%_))
                                           _%L175531%_)
                                          (if (_%no-specializer?175089%_)
                                              _%stx174993%_
                                              (let* ((_%specializer-id175565%_
                                                      (let* ((_%id175559%_
                                                              (let ((__tmp179210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L175066%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179210 '"::specialize")))
                     (_%specializer-id175562%_
                      (let ((__tmp179211
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174993%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175559%_ __tmp179211))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175562%_))
                _%specializer-id175562%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175567%_
                                                      (let ((__tmp179212
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179212)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175569%_
                                                      (let ((__tmp179213
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179213)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175571%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls175085%_)))
                                                     (_%$methods175575%_
                                                      (map (lambda (_%id175573%_)
                                                             (let ((__tmp179214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175573%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179214)))
                   _%methods175571%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175584%_
                                                      (for-each
                                                       (lambda (_%g175576175579%_
                                                                _%g175577175581%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls175085%_
                                                            _%g175576175579%_
                                                            _%g175577175581%_)))
                                                       _%methods175571%_
                                                       _%$methods175575%_))
                                                     (_%methods-bind175594%_
                                                      (map (lambda (_%g175586175589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175587175591%_)
                     (_%generate-method-bind174995%_
                      _%$klass175567%_
                      _%$method-table175569%_
                      _%g175586175589%_
                      _%g175587175591%_))
                   _%methods175571%_
                   _%$methods175575%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175596%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs175086%_)))
                                                     (_%$slots175600%_
                                                      (map (lambda (_%id175598%_)
                                                             (let ((__tmp179215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175598%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179215)))
                   _%slots175596%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175609%_
                                                      (for-each
                                                       (lambda (_%g175601175604%_
                                                                _%g175602175606%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs175086%_
                                                            _%g175601175604%_
                                                            _%g175602175606%_)))
                                                       _%slots175596%_
                                                       _%$slots175600%_))
                                                     (_%slots-bind175618%_
                                                      (map (lambda (_%g175610175613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175611175615%_)
                     (_%generate-slot-bind174996%_
                      _%$klass175567%_
                      _%g175610175613%_
                      _%g175611175615%_))
                   _%slots175596%_
                   _%$slots175600%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body175624%_
                                                      (map (lambda (_%g175619175621%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver175553%_
                                                              _%$klass175567%_
                                                              _%method-calls175085%_
                                                              _%slot-refs175086%_
                                                              _%g175619175621%_))
                                                           _%L175531%_))
                                                     (_%specializer-impl175626%_
                                                      (let ((__tmp179216
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L175533%_ _%L175532%_)
                                 _%specializer-body175624%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179216 _%stx174993%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175628%_
                                                      (_%generate-specializer-impl174997%_
                                                       _%$klass175567%_
                                                       _%$method-table175569%_
                                                       _%methods-bind175594%_
                                                       _%slots-bind175618%_
                                                       _%specializer-impl175626%_)))
                                                (let ((__tmp179218
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L175066%_)))
                                                      (__tmp179217
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175565%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179218
                                                   '" => "
                                                   __tmp179217))
                                                (_%generate-specializer-def174998%_
                                                 _%L175066%_
                                                 _%specializer-id175565%_
                                                 _%specializer-impl175628%_))))))
                                     (_%__kont177993177994%_
                                      (lambda () _%stx174993%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx177989177990%_))
                                     (let ((_%e175482175507%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx177989177990%_))))
                                       (let ((_%tl175484175512%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e175482175507%_)))
                                             (_%hd175483175510%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e175482175507%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl175484175512%_))
                                             (let ((_%e175485175515%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl175484175512%_))))
                                               (let ((_%tl175487175520%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e175485175515%_)))
                                                     (_%hd175486175518%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e175485175515%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd175486175518%_))
                                                     (let ((_%e175488175523%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd175486175518%_))))
                                                       (let ((_%tl175490175528%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e175488175523%_)))
                     (_%hd175489175526%_
                      (let () (declare (not safe)) (##car _%e175488175523%_))))
                 (_%__kont177991177992%_
                  _%tl175487175520%_
                  _%tl175490175528%_
                  _%hd175489175526%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont177993177994%_))))
                                             (_%__kont177993177994%_))))
                                     (_%__kont177993177994%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L175065%_))
                                 (let* ((_%g175635175654%_
                                         (lambda (_%g175636175651%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g175636175651%_))))
                                        (_%g175634175952%_
                                         (lambda (_%g175636175657%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g175636175657%_))
                                               (let ((_%e175638175659%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g175636175657%_))))
                                                 (let ((_%hd175639175662%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175638175659%_)))
                                                       (_%tl175640175664%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175638175659%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl175640175664%_))
                                                       (let ((_g179219_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl175640175664%_ '0))))
                 (begin
                   (let ((_g179220_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g179219_)
                                (##values-length _g179219_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g179220_ 2)))
                         (error "Context expects 2 values" _g179220_)))
                   (let ((_%target175641175667%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179219_ 0)))
                         (_%tl175643175669%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179219_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl175643175669%_))
                         (letrec ((_%loop175644175672%_
                                   (lambda (_%hd175642175675%_
                                            _%clause175648175677%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175642175675%_))
                                         (let ((_%e175645175680%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175642175675%_))))
                                           (let ((_%lp-hd175646175683%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175645175680%_)))
                                                 (_%lp-tl175647175685%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175645175680%_))))
                                             (_%loop175644175672%_
                                              _%lp-tl175647175685%_
                                              (cons _%lp-hd175646175683%_
                                                    _%clause175648175677%_))))
                                         (let ((_%clause175649175688%_
                                                (reverse _%clause175648175677%_)))
                                           ((lambda (_%L175691%_)
                                              (for-each
                                               (lambda (_%clause175705%_)
                                                 (let* ((_%__stx178015178016%_
                                                         _%clause175705%_)
                                                        (_%g175708175723%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx178015178016%_)))))
                                                   (let ((_%__kont178017178018%_
                                                          (lambda (_%L175751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L175752%_
                           _%L175753%_)
                    (let ((_%receiver175772%_
                           (let ((_%$e175769%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L175751%_))))
                             (if _%$e175769%_ _%$e175769%_ _%L175753%_))))
                      (for-each
                       (lambda (_%g175773175775%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver175772%_
                          _%method-calls175085%_
                          _%slot-refs175086%_
                          _%g175773175775%_))
                       _%L175751%_))))
                 (_%__kont178019178020%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx178015178016%_))
                                                         (let ((_%e175713175735%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx178015178016%_))))
                   (let ((_%tl175715175740%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e175713175735%_)))
                         (_%hd175714175738%_
                          (let ()
                            (declare (not safe))
                            (##car _%e175713175735%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd175714175738%_))
                         (let ((_%e175716175743%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd175714175738%_))))
                           (let ((_%tl175718175748%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e175716175743%_)))
                                 (_%hd175717175746%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e175716175743%_))))
                             (_%__kont178017178018%_
                              _%tl175715175740%_
                              _%tl175718175748%_
                              _%hd175717175746%_)))
                         (_%__kont178019178020%_))))
                 (_%__kont178019178020%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp179221
                                                      (lambda (_%g175780175783%_
                                                               _%g175781175785%_)
                                                        (cons _%g175780175783%_
                                                              _%g175781175785%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179221
                                                  '()
                                                  _%L175691%_)))
                                              (if (_%no-specializer?175089%_)
                                                  _%stx174993%_
                                                  (let* ((_%specializer-id175794%_
                                                          (let* ((_%id175788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179222
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L175066%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179222 '"::specialize")))
                         (_%specializer-id175791%_
                          (let ((__tmp179223
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174993%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id175788%_
                             __tmp179223))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id175791%_))
                    _%specializer-id175791%_))
                 (_%$klass175796%_
                  (let ((__tmp179224
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179224)))
                 (_%$method-table175798%_
                  (let ((__tmp179225
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179225)))
                 (_%methods175800%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls175085%_)))
                 (_%$methods175804%_
                  (map (lambda (_%id175802%_)
                         (let ((__tmp179226 (gensym _%id175802%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179226)))
                       _%methods175800%_))
                 (_%_175813%_
                  (for-each
                   (lambda (_%g175805175808%_ _%g175806175810%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls175085%_
                        _%g175805175808%_
                        _%g175806175810%_)))
                   _%methods175800%_
                   _%$methods175804%_))
                 (_%methods-bind175823%_
                  (map (lambda (_%g175815175818%_ _%g175816175820%_)
                         (_%generate-method-bind174995%_
                          _%$klass175796%_
                          _%$method-table175798%_
                          _%g175815175818%_
                          _%g175816175820%_))
                       _%methods175800%_
                       _%$methods175804%_))
                 (_%slots175825%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs175086%_)))
                 (_%$slots175829%_
                  (map (lambda (_%id175827%_)
                         (let ((__tmp179227 (gensym _%id175827%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179227)))
                       _%slots175825%_))
                 (_%_175838%_
                  (for-each
                   (lambda (_%g175830175833%_ _%g175831175835%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs175086%_
                        _%g175830175833%_
                        _%g175831175835%_)))
                   _%slots175825%_
                   _%$slots175829%_))
                 (_%slots-bind175847%_
                  (map (lambda (_%g175839175842%_ _%g175840175844%_)
                         (_%generate-slot-bind174996%_
                          _%$klass175796%_
                          _%g175839175842%_
                          _%g175840175844%_))
                       _%slots175825%_
                       _%$slots175829%_))
                 (_%specializer-clauses175945%_
                  (map (lambda (_%clause175849%_)
                         (let* ((_%__stx178035178036%_ _%clause175849%_)
                                (_%g175852175867%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx178035178036%_)))))
                           (let ((_%__kont178037178038%_
                                  (lambda (_%L175895%_ _%L175896%_ _%L175897%_)
                                    (let* ((_%receiver175926%_
                                            (let ((_%$e175923%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L175895%_))))
                                              (if _%$e175923%_
                                                  _%$e175923%_
                                                  _%L175897%_)))
                                           (_%body175932%_
                                            (map (lambda (_%g175927175929%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver175926%_
                                                    _%$klass175796%_
                                                    _%method-calls175085%_
                                                    _%slot-refs175086%_
                                                    _%g175927175929%_))
                                                 _%L175895%_)))
                                      (cons (cons _%L175897%_ _%L175896%_)
                                            _%body175932%_))))
                                 (_%__kont178039178040%_
                                  (lambda () _%clause175849%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx178035178036%_))
                                 (let ((_%e175857175879%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx178035178036%_))))
                                   (let ((_%tl175859175884%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e175857175879%_)))
                                         (_%hd175858175882%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e175857175879%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175858175882%_))
                                         (let ((_%e175860175887%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175858175882%_))))
                                           (let ((_%tl175862175892%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175860175887%_)))
                                                 (_%hd175861175890%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175860175887%_))))
                                             (_%__kont178037178038%_
                                              _%tl175859175884%_
                                              _%tl175862175892%_
                                              _%hd175861175890%_)))
                                         (_%__kont178039178040%_))))
                                 (_%__kont178039178040%_)))))
                       (let ((__tmp179228
                              (lambda (_%g175937175940%_ _%g175938175942%_)
                                (cons _%g175937175940%_ _%g175938175942%_))))
                         (declare (not safe))
                         (__foldr1 __tmp179228 '() _%L175691%_))))
                 (_%specializer-impl175947%_
                  (let ((__tmp179229
                         (cons '%#case-lambda _%specializer-clauses175945%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179229 _%stx174993%_)))
                 (_%specializer-impl175949%_
                  (_%generate-specializer-impl174997%_
                   _%$klass175796%_
                   _%$method-table175798%_
                   _%methods-bind175823%_
                   _%slots-bind175847%_
                   _%specializer-impl175947%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179231
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L175066%_)))
                                                          (__tmp179230
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id175794%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179231
                                                       '" => "
                                                       __tmp179230))
                                                    (_%generate-specializer-def174998%_
                                                     _%L175066%_
                                                     _%specializer-id175794%_
                                                     _%specializer-impl175949%_))))
                                            _%clause175649175688%_))))))
                           (_%loop175644175672%_ _%target175641175667%_ '()))
                         (_%g175635175654%_ _%g175636175657%_)))))
               (_%g175635175654%_ _%g175636175657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175635175654%_
                                                _%g175636175657%_)))))
                                   (_%g175634175952%_ _%L175065%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L175065%_))
                                     (let* ((_%g175956175986%_
                                             (lambda (_%g175957175983%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175957175983%_))))
                                            (_%g175955176617%_
                                             (lambda (_%g175957175989%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175957175989%_))
                                                   (let ((_%e175961175991%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175957175989%_))))
                                                     (let ((_%hd175962175994%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175961175991%_)))
                                                           (_%tl175963175996%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175961175991%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175963175996%_))
                                                           (let ((_%e175964175999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175963175996%_))))
                     (let ((_%hd175965176002%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175964175999%_)))
                           (_%tl175966176004%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175964175999%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175965176002%_))
                           (let ((_%e175967176007%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175965176002%_))))
                             (let ((_%hd175968176010%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175967176007%_)))
                                   (_%tl175969176012%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175967176007%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175968176010%_))
                                   (let ((_%e175970176015%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175968176010%_))))
                                     (let ((_%hd175971176018%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175970176015%_)))
                                           (_%tl175972176020%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175970176015%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd175971176018%_))
                                           (let ((_%e175973176023%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd175971176018%_))))
                                             (let ((_%hd175974176026%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175973176023%_)))
                                                   (_%tl175975176028%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175973176023%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175975176028%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl175972176020%_))
                                                       (let ((_%e175976176031%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl175972176020%_))))
                 (let ((_%hd175977176034%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175976176031%_)))
                       (_%tl175978176036%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175976176031%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175978176036%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl175969176012%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175966176004%_))
                               (let ((_%e175979176039%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175966176004%_))))
                                 (let ((_%hd175980176042%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175979176039%_)))
                                       (_%tl175981176044%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175979176039%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175981176044%_))
                                       ((lambda (_%L176047%_
                                                 _%L176048%_
                                                 _%L176049%_)
                                          (let* ((_%g176073176091%_
                                                  (lambda (_%g176074176088%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g176074176088%_))))
                                                 (_%g176072176147%_
                                                  (lambda (_%g176074176094%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g176074176094%_))
                                                        (let ((_%e176078176096%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g176074176094%_))))
                  (let ((_%hd176079176099%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176078176096%_)))
                        (_%tl176080176101%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176078176096%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl176080176101%_))
                        (let ((_%e176081176104%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl176080176101%_))))
                          (let ((_%hd176082176107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176081176104%_)))
                                (_%tl176083176109%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176081176104%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd176082176107%_))
                                (let ((_%e176084176112%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd176082176107%_))))
                                  (let ((_%hd176085176115%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176084176112%_)))
                                        (_%tl176086176117%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176084176112%_))))
                                    ((lambda (_%L176120%_
                                              _%L176121%_
                                              _%L176122%_)
                                       (let ((_%receiver176141%_
                                              (let ((_%$e176138%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L176120%_))))
                                                (if _%$e176138%_
                                                    _%$e176138%_
                                                    _%L176122%_))))
                                         (for-each
                                          (lambda (_%g176142176144%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver176141%_
                                             _%method-calls175085%_
                                             _%slot-refs175086%_
                                             _%g176142176144%_))
                                          _%L176120%_)))
                                     _%tl176083176109%_
                                     _%tl176086176117%_
                                     _%hd176085176115%_)))
                                (_%g176073176091%_ _%g176074176094%_))))
                        (_%g176073176091%_ _%g176074176094%_))))
                (_%g176073176091%_ _%g176074176094%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g176072176147%_ _%L176048%_))
                                          (let* ((_%g176150176169%_
                                                  (lambda (_%g176151176166%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g176151176166%_))))
                                                 (_%g176149176293%_
                                                  (lambda (_%g176151176172%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g176151176172%_))
                                                        (let ((_%e176153176174%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g176151176172%_))))
                  (let ((_%hd176154176177%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176153176174%_)))
                        (_%tl176155176179%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176153176174%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176155176179%_))
                        (let ((_g179232_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl176155176179%_
                                  '0))))
                          (begin
                            (let ((_g179233_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g179232_)
                                         (##values-length _g179232_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g179233_ 2)))
                                  (error "Context expects 2 values"
                                         _g179233_)))
                            (let ((_%target176156176182%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179232_ 0)))
                                  (_%tl176158176184%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179232_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl176158176184%_))
                                  (letrec ((_%loop176159176187%_
                                            (lambda (_%hd176157176190%_
                                                     _%clause176163176192%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd176157176190%_))
                                                  (let ((_%e176160176195%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd176157176190%_))))
                                                    (let ((_%lp-hd176161176198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176160176195%_)))
                                                          (_%lp-tl176162176200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176160176195%_))))
                                                      (_%loop176159176187%_
                                                       _%lp-tl176162176200%_
                                                       (cons _%lp-hd176161176198%_
                                                             _%clause176163176192%_))))
                                                  (let ((_%clause176164176203%_
                                                         (reverse _%clause176163176192%_)))
                                                    ((lambda (_%L176206%_)
                                                       (for-each
                                                        (lambda (_%clause176219%_)
                                                          (let* ((_%g176221176236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g176222176233%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176222176233%_))))
                         (_%g176220176283%_
                          (lambda (_%g176222176239%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176222176239%_))
                                (let ((_%e176226176241%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176222176239%_))))
                                  (let ((_%hd176227176244%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176226176241%_)))
                                        (_%tl176228176246%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176226176241%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176227176244%_))
                                        (let ((_%e176229176249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176227176244%_))))
                                          (let ((_%hd176230176252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176229176249%_)))
                                                (_%tl176231176254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176229176249%_))))
                                            ((lambda (_%L176257%_
                                                      _%L176258%_
                                                      _%L176259%_)
                                               (let ((_%receiver176277%_
                                                      (let ((_%$e176274%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L176257%_))))
                (if _%$e176274%_ _%$e176274%_ _%L176259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g176278176280%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver176277%_
                                                     _%method-calls175085%_
                                                     _%slot-refs175086%_
                                                     _%g176278176280%_))
                                                  _%L176257%_)))
                                             _%tl176228176246%_
                                             _%tl176231176254%_
                                             _%hd176230176252%_)))
                                        (_%g176221176236%_
                                         _%g176222176239%_))))
                                (_%g176221176236%_ _%g176222176239%_)))))
                    (_%g176220176283%_ _%clause176219%_)))
                (let ((__tmp179234
                       (lambda (_%g176285176288%_ _%g176286176290%_)
                         (cons _%g176285176288%_ _%g176286176290%_))))
                  (declare (not safe))
                  (__foldr1 __tmp179234 '() _%L176206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause176164176203%_))))))
                                    (_%loop176159176187%_
                                     _%target176156176182%_
                                     '()))
                                  (_%g176150176169%_ _%g176151176172%_)))))
                        (_%g176150176169%_ _%g176151176172%_))))
                (_%g176150176169%_ _%g176151176172%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g176149176293%_ _%L176047%_))
                                          (if (_%no-specializer?175089%_)
                                              _%stx174993%_
                                              (let* ((_%specializer-id176302%_
                                                      (let* ((_%id176296%_
                                                              (let ((__tmp179235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L175066%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179235 '"::specialize")))
                     (_%specializer-id176299%_
                      (let ((__tmp179236
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174993%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id176296%_ __tmp179236))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id176299%_))
                _%specializer-id176299%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass176304%_
                                                      (let ((__tmp179237
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179237)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table176306%_
                                                      (let ((__tmp179238
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179238)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods176308%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls175085%_)))
                                                     (_%$methods176312%_
                                                      (map (lambda (_%id176310%_)
                                                             (let ((__tmp179239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176310%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179239)))
                   _%methods176308%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176321%_
                                                      (for-each
                                                       (lambda (_%g176313176316%_
                                                                _%g176314176318%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls175085%_
                                                            _%g176313176316%_
                                                            _%g176314176318%_)))
                                                       _%methods176308%_
                                                       _%$methods176312%_))
                                                     (_%methods-bind176331%_
                                                      (map (lambda (_%g176323176326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176324176328%_)
                     (_%generate-method-bind174995%_
                      _%$klass176304%_
                      _%$method-table176306%_
                      _%g176323176326%_
                      _%g176324176328%_))
                   _%methods176308%_
                   _%$methods176312%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots176333%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs175086%_)))
                                                     (_%$slots176337%_
                                                      (map (lambda (_%id176335%_)
                                                             (let ((__tmp179240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176335%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179240)))
                   _%slots176333%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176346%_
                                                      (for-each
                                                       (lambda (_%g176338176341%_
                                                                _%g176339176343%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs175086%_
                                                            _%g176338176341%_
                                                            _%g176339176343%_)))
                                                       _%slots176333%_
                                                       _%$slots176337%_))
                                                     (_%slots-bind176355%_
                                                      (map (lambda (_%g176347176350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176348176352%_)
                     (_%generate-slot-bind174996%_
                      _%$klass176304%_
                      _%g176347176350%_
                      _%g176348176352%_))
                   _%slots176333%_
                   _%$slots176337%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr176447%_
                                                      (let* ((_%g176357176375%_
                                                              (lambda (_%g176358176372%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176358176372%_))))
                     (_%g176356176444%_
                      (lambda (_%g176358176378%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176358176378%_))
                            (let ((_%e176362176380%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176358176378%_))))
                              (let ((_%hd176363176383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176362176380%_)))
                                    (_%tl176364176385%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176362176380%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176364176385%_))
                                    (let ((_%e176365176388%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176364176385%_))))
                                      (let ((_%hd176366176391%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176365176388%_)))
                                            (_%tl176367176393%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176365176388%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176366176391%_))
                                            (let ((_%e176368176396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176366176391%_))))
                                              (let ((_%hd176369176399%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176368176396%_)))
                                                    (_%tl176370176401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176368176396%_))))
                                                ((lambda (_%L176404%_
                                                          _%L176405%_
                                                          _%L176406%_)
                                                   (let* ((_%receiver176435%_
                                                           (let ((_%$e176432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L176404%_))))
                     (if _%$e176432%_ _%$e176432%_ _%L176406%_)))
                  (_%body176441%_
                   (map (lambda (_%g176436176438%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver176435%_
                           _%$klass176304%_
                           _%method-calls175085%_
                           _%slot-refs175086%_
                           _%g176436176438%_))
                        _%L176404%_))
                  (__tmp179241
                   (cons '%#lambda
                         (cons (cons _%L176406%_ _%L176405%_)
                               _%body176441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179241
                                                      _%L176048%_)))
                                                 _%tl176367176393%_
                                                 _%tl176370176401%_
                                                 _%hd176369176399%_)))
                                            (_%g176357176375%_
                                             _%g176358176378%_))))
                                    (_%g176357176375%_ _%g176358176378%_))))
                            (_%g176357176375%_ _%g176358176378%_)))))
                (_%g176356176444%_ _%L176048%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr176610%_
                                                      (let* ((_%g176449176468%_
                                                              (lambda (_%g176450176465%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176450176465%_))))
                     (_%g176448176607%_
                      (lambda (_%g176450176471%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176450176471%_))
                            (let ((_%e176452176473%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176450176471%_))))
                              (let ((_%hd176453176476%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176452176473%_)))
                                    (_%tl176454176478%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176452176473%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl176454176478%_))
                                    (let ((_g179242_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl176454176478%_
                                              '0))))
                                      (begin
                                        (let ((_g179243_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g179242_)
                                                     (##values-length
                                                      _g179242_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g179243_ 2)))
                                              (error "Context expects 2 values"
                                                     _g179243_)))
                                        (let ((_%target176455176481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179242_ 0)))
                                              (_%tl176457176483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179242_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176457176483%_))
                                              (letrec ((_%loop176458176486%_
                                                        (lambda (_%hd176456176489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause176462176491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176456176489%_))
                      (let ((_%e176459176494%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176456176489%_))))
                        (let ((_%lp-hd176460176497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176459176494%_)))
                              (_%lp-tl176461176499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176459176494%_))))
                          (_%loop176458176486%_
                           _%lp-tl176461176499%_
                           (cons _%lp-hd176460176497%_
                                 _%clause176462176491%_))))
                      (let ((_%clause176463176502%_
                             (reverse _%clause176462176491%_)))
                        ((lambda (_%L176505%_)
                           (let* ((_%clauses176605%_
                                   (map (lambda (_%clause176519%_)
                                          (let* ((_%__stx178055178056%_
                                                  _%clause176519%_)
                                                 (_%g176522176537%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx178055178056%_)))))
                                            (let ((_%__kont178057178058%_
                                                   (lambda (_%L176565%_
                                                            _%L176566%_
                                                            _%L176567%_)
                                                     (let* ((_%receiver176586%_
                                                             (let ((_%$e176583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L176565%_))))
                       (if _%$e176583%_ _%$e176583%_ _%L176567%_)))
                    (_%body176592%_
                     (map (lambda (_%g176587176589%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver176586%_
                             _%$klass176304%_
                             _%method-calls175085%_
                             _%slot-refs175086%_
                             _%g176587176589%_))
                          _%L176565%_)))
               (cons (cons _%L176567%_ _%L176566%_) _%body176592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178059178060%_
                                                   (lambda ()
                                                     _%clause176519%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx178055178056%_))
                                                  (let ((_%e176527176549%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx178055178056%_))))
                                                    (let ((_%tl176529176554%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176527176549%_)))
                                                          (_%hd176528176552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176527176549%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd176528176552%_))
                                                          (let ((_%e176530176557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd176528176552%_))))
                    (let ((_%tl176532176562%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e176530176557%_)))
                          (_%hd176531176560%_
                           (let ()
                             (declare (not safe))
                             (##car _%e176530176557%_))))
                      (_%__kont178057178058%_
                       _%tl176529176554%_
                       _%tl176532176562%_
                       _%hd176531176560%_)))
                  (_%__kont178059178060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178059178060%_)))))
                                        (let ((__tmp179244
                                               (lambda (_%g176597176600%_
                                                        _%g176598176602%_)
                                                 (cons _%g176597176600%_
                                                       _%g176598176602%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp179244
                                           '()
                                           _%L176505%_))))
                                  (__tmp179245
                                   (cons '%#case-lambda _%clauses176605%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179245 _%L176047%_)))
                         _%clause176463176502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176458176486%_
                                                 _%target176455176481%_
                                                 '()))
                                              (_%g176449176468%_
                                               _%g176450176471%_)))))
                                    (_%g176449176468%_ _%g176450176471%_))))
                            (_%g176449176468%_ _%g176450176471%_)))))
                (_%g176448176607%_ _%L176047%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176612%_
                                                      (let ((__tmp179246
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L176049%_ '())
                                             (cons _%specializer-lambda-expr176447%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr176610%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179246 _%stx174993%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176614%_
                                                      (_%generate-specializer-impl174997%_
                                                       _%$klass176304%_
                                                       _%$method-table176306%_
                                                       _%methods-bind176331%_
                                                       _%slots-bind176355%_
                                                       _%specializer-impl176612%_)))
                                                (let ((__tmp179248
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L175066%_)))
                                                      (__tmp179247
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id176302%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179248
                                                   '" => "
                                                   __tmp179247))
                                                (_%generate-specializer-def174998%_
                                                 _%L175066%_
                                                 _%specializer-id176302%_
                                                 _%specializer-impl176614%_))))
                                        _%hd175980176042%_
                                        _%hd175977176034%_
                                        _%hd175974176026%_)
                                       (_%g175956175986%_ _%g175957175989%_))))
                               (_%g175956175986%_ _%g175957175989%_))
                           (_%g175956175986%_ _%g175957175989%_))
                       (_%g175956175986%_ _%g175957175989%_))))
               (_%g175956175986%_ _%g175957175989%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175956175986%_
                                                    _%g175957175989%_))))
                                           (_%g175956175986%_
                                            _%g175957175989%_))))
                                   (_%g175956175986%_ _%g175957175989%_))))
                           (_%g175956175986%_ _%g175957175989%_))))
                   (_%g175956175986%_ _%g175957175989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175956175986%_
                                                    _%g175957175989%_)))))
                                       (_%g175955176617%_ _%L175065%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L175065%_))
                                         (let* ((_%g176621176674%_
                                                 (lambda (_%g176622176671%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176622176671%_))))
                                                (_%g176620177845%_
                                                 (lambda (_%g176622176677%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176622176677%_))
                                                       (let ((_%e176628176679%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176622176677%_))))
                 (let ((_%hd176629176682%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176628176679%_)))
                       (_%tl176630176684%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176628176679%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd176629176682%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd176629176682%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl176630176684%_))
                               (let ((_%e176631176687%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl176630176684%_))))
                                 (let ((_%hd176632176690%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176631176687%_)))
                                       (_%tl176633176692%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176631176687%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176632176690%_))
                                       (let ((_%e176634176695%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176632176690%_))))
                                         (let ((_%hd176635176698%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176634176695%_)))
                                               (_%tl176636176700%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176634176695%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176635176698%_))
                                               (let ((_%e176637176703%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176635176698%_))))
                                                 (let ((_%hd176638176706%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176637176703%_)))
                                                       (_%tl176639176708%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176637176703%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd176638176706%_))
                                                       (let ((_%e176640176711%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd176638176706%_))))
                 (let ((_%hd176641176714%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176640176711%_)))
                       (_%tl176642176716%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176640176711%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl176642176716%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl176639176708%_))
                           (let ((_%e176643176719%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl176639176708%_))))
                             (let ((_%hd176644176722%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176643176719%_)))
                                   (_%tl176645176724%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176643176719%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176644176722%_))
                                   (let ((_%e176646176727%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176644176722%_))))
                                     (let ((_%hd176647176730%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176646176727%_)))
                                           (_%tl176648176732%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176646176727%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd176647176730%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd176647176730%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl176648176732%_))
                                                   (let ((_%e176649176735%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl176648176732%_))))
                                                     (let ((_%hd176650176738%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176649176735%_)))
                                                           (_%tl176651176740%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176649176735%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd176650176738%_))
                                                           (let ((_%e176652176743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd176650176738%_))))
                     (let ((_%hd176653176746%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176652176743%_)))
                           (_%tl176654176748%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176652176743%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd176653176746%_))
                           (let ((_%e176655176751%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd176653176746%_))))
                             (let ((_%hd176656176754%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176655176751%_)))
                                   (_%tl176657176756%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176655176751%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176656176754%_))
                                   (let ((_%e176658176759%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176656176754%_))))
                                     (let ((_%hd176659176762%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176658176759%_)))
                                           (_%tl176660176764%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176658176759%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176660176764%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl176657176756%_))
                                               (let ((_%e176661176767%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl176657176756%_))))
                                                 (let ((_%hd176662176770%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176661176767%_)))
                                                       (_%tl176663176772%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176661176767%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176663176772%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl176654176748%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl176651176740%_))
                       (let ((_%e176664176775%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176651176740%_))))
                         (let ((_%hd176665176778%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176664176775%_)))
                               (_%tl176666176780%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176664176775%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176666176780%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl176645176724%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl176636176700%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl176633176692%_))
                                           (let ((_%e176667176783%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl176633176692%_))))
                                             (let ((_%hd176668176786%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e176667176783%_)))
                                                   (_%tl176669176788%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e176667176783%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl176669176788%_))
                                                   ((lambda (_%L176791%_
                                                             _%L176792%_
                                                             _%L176793%_
                                                             _%L176794%_
                                                             _%L176795%_)
                                                      (let* ((_%g176835176897%_
                                                              (lambda (_%g176836176894%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176836176894%_))))
                     (_%g176834177842%_
                      (lambda (_%g176836176900%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176836176900%_))
                            (let ((_%e176842176902%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176836176900%_))))
                              (let ((_%hd176843176905%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176842176902%_)))
                                    (_%tl176844176907%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176842176902%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd176843176905%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd176843176905%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl176844176907%_))
                                            (let ((_%e176845176910%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl176844176907%_))))
                                              (let ((_%hd176846176913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176845176910%_)))
                                                    (_%tl176847176915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176845176910%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176847176915%_))
                                                    (let ((_%e176848176918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176847176915%_))))
                                                      (let ((_%hd176849176921%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176848176918%_)))
                    (_%tl176850176923%_
                     (let () (declare (not safe)) (##cdr _%e176848176918%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd176849176921%_))
                    (let ((_%e176851176926%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd176849176921%_))))
                      (let ((_%hd176852176929%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176851176926%_)))
                            (_%tl176853176931%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176851176926%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd176852176929%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd176852176929%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176853176931%_))
                                    (let ((_%e176854176934%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176853176931%_))))
                                      (let ((_%hd176855176937%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176854176934%_)))
                                            (_%tl176856176939%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176854176934%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176855176937%_))
                                            (let ((_%e176857176942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176855176937%_))))
                                              (let ((_%hd176858176945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176857176942%_)))
                                                    (_%tl176859176947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176857176942%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd176858176945%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd176858176945%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl176859176947%_))
                                                            (let ((_%e176860176950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl176859176947%_))))
                      (let ((_%hd176861176953%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176860176950%_)))
                            (_%tl176862176955%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176860176950%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176862176955%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl176856176939%_))
                                (let ((_%e176863176958%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl176856176939%_))))
                                  (let ((_%hd176864176961%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176863176958%_)))
                                        (_%tl176865176963%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176863176958%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176864176961%_))
                                        (let ((_%e176866176966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176864176961%_))))
                                          (let ((_%hd176867176969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176866176966%_)))
                                                (_%tl176868176971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176866176966%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd176867176969%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd176867176969%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl176868176971%_))
                                                        (let ((_%e176869176974%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl176868176971%_))))
                  (let ((_%hd176870176977%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176869176974%_)))
                        (_%tl176871176979%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176869176974%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl176871176979%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176865176963%_))
                            (let ((_%e176872176982%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176865176963%_))))
                              (let ((_%hd176873176985%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176872176982%_)))
                                    (_%tl176874176987%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176872176982%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd176873176985%_))
                                    (let ((_%e176875176990%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd176873176985%_))))
                                      (let ((_%hd176876176993%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176875176990%_)))
                                            (_%tl176877176995%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176875176990%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd176876176993%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd176876176993%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176877176995%_))
                                                    (let ((_%e176878176998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176877176995%_))))
                                                      (let ((_%hd176879177001%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176878176998%_)))
                    (_%tl176880177003%_
                     (let () (declare (not safe)) (##cdr _%e176878176998%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl176880177003%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176874176987%_))
                        (if (let ((__tmp179249
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl176874176987%_))))
                              (declare (not safe))
                              (##fx>= __tmp179249 '1))
                            (let ((_g179250_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176874176987%_
                                      '1))))
                              (begin
                                (let ((_g179251_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179250_)
                                             (##values-length _g179250_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179251_ 2)))
                                      (error "Context expects 2 values"
                                             _g179251_)))
                                (let ((_%target176881177006%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179250_ 0)))
                                      (_%tl176883177008%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179250_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176883177008%_))
                                      (let ((_%e176890177011%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176883177008%_))))
                                        (let ((_%hd176891177014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176890177011%_)))
                                              (_%tl176892177016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176890177011%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176892177016%_))
                                              (letrec ((_%loop176884177019%_
                                                        (lambda (_%hd176882177022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref176888177024%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176882177022%_))
                      (let ((_%e176885177027%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176882177022%_))))
                        (let ((_%lp-hd176886177030%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176885177027%_)))
                              (_%lp-tl176887177032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176885177027%_))))
                          (_%loop176884177019%_
                           _%lp-tl176887177032%_
                           (cons _%lp-hd176886177030%_
                                 _%kw-ref176888177024%_))))
                      (let ((_%kw-ref176889177035%_
                             (reverse _%kw-ref176888177024%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176850176923%_))
                            ((lambda (_%L177038%_
                                      _%L177039%_
                                      _%L177040%_
                                      _%L177041%_
                                      _%L177042%_)
                               (let* ((_%kw-count177093%_
                                       (length (let ((__tmp179252
                                                      (lambda (_%g177085177088%_
                                                               _%g177086177090%_)
                                                        (cons _%g177085177088%_
                                                              _%g177086177090%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179252
                                                  '()
                                                  _%L177039%_))))
                                      (_%self-index177095%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count177093%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L176793%_))
                                     (let* ((_%g177099177113%_
                                             (lambda (_%g177100177110%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g177100177110%_))))
                                            (_%g177098177236%_
                                             (lambda (_%g177100177116%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g177100177116%_))
                                                   (let ((_%e177103177118%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g177100177116%_))))
                                                     (let ((_%hd177104177121%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e177103177118%_)))
                                                           (_%tl177105177123%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e177103177118%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177105177123%_))
                                                           (let ((_%e177106177126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177105177123%_))))
                     (let ((_%hd177107177129%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177106177126%_)))
                           (_%tl177108177131%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177106177126%_))))
                       ((lambda (_%L177134%_ _%L177135%_)
                          (let* ((_%self177152%_
                                  (list-ref _%L177135%_ _%self-index177095%_))
                                 (_%receiver177157%_
                                  (let ((_%$e177154%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L177134%_))))
                                    (if _%$e177154%_
                                        _%$e177154%_
                                        _%self177152%_))))
                            (for-each
                             (lambda (_%g177159177161%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver177157%_
                                _%method-calls175085%_
                                _%slot-refs175086%_
                                _%g177159177161%_))
                             _%L177134%_)
                            (if (_%no-specializer?175089%_)
                                _%stx174993%_
                                (let* ((_%specializer-id177170%_
                                        (let* ((_%id177164%_
                                                (let ((__tmp179253
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L175066%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp179253
                                                   '"::specialize")))
                                               (_%specializer-id177167%_
                                                (let ((__tmp179254
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx174993%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id177164%_
                                                   __tmp179254))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id177167%_))
                                          _%specializer-id177167%_))
                                       (_%$klass177172%_
                                        (let ((__tmp179255
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179255)))
                                       (_%$method-table177174%_
                                        (let ((__tmp179256
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179256)))
                                       (_%methods177176%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls175085%_)))
                                       (_%$methods177180%_
                                        (map (lambda (_%id177178%_)
                                               (let ((__tmp179257
                                                      (gensym _%id177178%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179257)))
                                             _%methods177176%_))
                                       (_%_177189%_
                                        (for-each
                                         (lambda (_%g177181177184%_
                                                  _%g177182177186%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls175085%_
                                              _%g177181177184%_
                                              _%g177182177186%_)))
                                         _%methods177176%_
                                         _%$methods177180%_))
                                       (_%methods-bind177199%_
                                        (map (lambda (_%g177191177194%_
                                                      _%g177192177196%_)
                                               (_%generate-method-bind174995%_
                                                _%$klass177172%_
                                                _%$method-table177174%_
                                                _%g177191177194%_
                                                _%g177192177196%_))
                                             _%methods177176%_
                                             _%$methods177180%_))
                                       (_%slots177201%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs175086%_)))
                                       (_%$slots177205%_
                                        (map (lambda (_%id177203%_)
                                               (let ((__tmp179258
                                                      (gensym _%id177203%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179258)))
                                             _%slots177201%_))
                                       (_%_177214%_
                                        (for-each
                                         (lambda (_%g177206177209%_
                                                  _%g177207177211%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs175086%_
                                              _%g177206177209%_
                                              _%g177207177211%_)))
                                         _%slots177201%_
                                         _%$slots177205%_))
                                       (_%slots-bind177223%_
                                        (map (lambda (_%g177215177218%_
                                                      _%g177216177220%_)
                                               (_%generate-slot-bind174996%_
                                                _%$klass177172%_
                                                _%g177215177218%_
                                                _%g177216177220%_))
                                             _%slots177201%_
                                             _%$slots177205%_))
                                       (_%specializer-impl177231%_
                                        (let* ((_%specializer-body177229%_
                                                (map (lambda (_%g177224177226%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver177157%_
                                                        _%$klass177172%_
                                                        _%method-calls175085%_
                                                        _%slot-refs175086%_
                                                        _%g177224177226%_))
                                                     _%L177134%_))
                                               (__tmp179259
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L176795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L176794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp179260
                                   (cons '%#lambda
                                         (cons _%L177135%_
                                               _%specializer-body177229%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp179260 _%L176793%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L176792%_ '())))
                                      '()))
                          '())
                    (cons _%L176791%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp179259
                                           _%stx174993%_)))
                                       (_%specializer-impl177233%_
                                        (_%generate-specializer-impl174997%_
                                         _%$klass177172%_
                                         _%$method-table177174%_
                                         _%methods-bind177199%_
                                         _%slots-bind177223%_
                                         _%specializer-impl177231%_)))
                                  (let ((__tmp179262
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L175066%_)))
                                        (__tmp179261
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id177170%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp179262
                                     '" => "
                                     __tmp179261))
                                  (_%generate-specializer-def174998%_
                                   _%L175066%_
                                   _%specializer-id177170%_
                                   _%specializer-impl177233%_)))))
                        _%tl177108177131%_
                        _%hd177107177129%_)))
                   (_%g177099177113%_ _%g177100177116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g177099177113%_
                                                    _%g177100177116%_)))))
                                       (_%g177098177236%_ _%L176793%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L176793%_))
                                         (let* ((_%g177240177270%_
                                                 (lambda (_%g177241177267%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g177241177267%_))))
                                                (_%g177239177838%_
                                                 (lambda (_%g177241177273%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g177241177273%_))
                                                       (let ((_%e177245177275%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g177241177273%_))))
                 (let ((_%hd177246177278%_
                        (let ()
                          (declare (not safe))
                          (##car _%e177245177275%_)))
                       (_%tl177247177280%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e177245177275%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl177247177280%_))
                       (let ((_%e177248177283%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl177247177280%_))))
                         (let ((_%hd177249177286%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e177248177283%_)))
                               (_%tl177250177288%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e177248177283%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd177249177286%_))
                               (let ((_%e177251177291%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd177249177286%_))))
                                 (let ((_%hd177252177294%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e177251177291%_)))
                                       (_%tl177253177296%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e177251177291%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd177252177294%_))
                                       (let ((_%e177254177299%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd177252177294%_))))
                                         (let ((_%hd177255177302%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e177254177299%_)))
                                               (_%tl177256177304%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e177254177299%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd177255177302%_))
                                               (let ((_%e177257177307%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd177255177302%_))))
                                                 (let ((_%hd177258177310%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e177257177307%_)))
                                                       (_%tl177259177312%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e177257177307%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl177259177312%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177256177304%_))
                                                           (let ((_%e177260177315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177256177304%_))))
                     (let ((_%hd177261177318%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177260177315%_)))
                           (_%tl177262177320%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177260177315%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl177262177320%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl177253177296%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl177250177288%_))
                                   (let ((_%e177263177323%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl177250177288%_))))
                                     (let ((_%hd177264177326%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e177263177323%_)))
                                           (_%tl177265177328%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e177263177323%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl177265177328%_))
                                           ((lambda (_%L177331%_
                                                     _%L177332%_
                                                     _%L177333%_)
                                              (let* ((_%g177357177371%_
                                                      (lambda (_%g177358177368%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177358177368%_))))
                                                     (_%g177356177418%_
                                                      (lambda (_%g177358177374%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177358177374%_))
                                                            (let ((_%e177361177376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177358177374%_))))
                      (let ((_%hd177362177379%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177361177376%_)))
                            (_%tl177363177381%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177361177376%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl177363177381%_))
                            (let ((_%e177364177384%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl177363177381%_))))
                              (let ((_%hd177365177387%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e177364177384%_)))
                                    (_%tl177366177389%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e177364177384%_))))
                                ((lambda (_%L177392%_ _%L177393%_)
                                   (let* ((_%self177406%_
                                           (list-ref
                                            _%L177393%_
                                            _%self-index177095%_))
                                          (_%receiver177411%_
                                           (let ((_%$e177408%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L177392%_))))
                                             (if _%$e177408%_
                                                 _%$e177408%_
                                                 _%self177406%_))))
                                     (for-each
                                      (lambda (_%g177413177415%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver177411%_
                                         _%method-calls175085%_
                                         _%slot-refs175086%_
                                         _%g177413177415%_))
                                      _%L177392%_)))
                                 _%tl177366177389%_
                                 _%hd177365177387%_)))
                            (_%g177357177371%_ _%g177358177374%_))))
                    (_%g177357177371%_ _%g177358177374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177356177418%_
                                                 _%L177332%_))
                                              (let* ((_%g177421177440%_
                                                      (lambda (_%g177422177437%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177422177437%_))))
                                                     (_%g177420177551%_
                                                      (lambda (_%g177422177443%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177422177443%_))
                                                            (let ((_%e177424177445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177422177443%_))))
                      (let ((_%hd177425177448%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177424177445%_)))
                            (_%tl177426177450%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177424177445%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl177426177450%_))
                            (let ((_g179263_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl177426177450%_
                                      '0))))
                              (begin
                                (let ((_g179264_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179263_)
                                             (##values-length _g179263_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179264_ 2)))
                                      (error "Context expects 2 values"
                                             _g179264_)))
                                (let ((_%target177427177453%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179263_ 0)))
                                      (_%tl177429177455%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179263_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177429177455%_))
                                      (letrec ((_%loop177430177458%_
                                                (lambda (_%hd177428177461%_
                                                         _%clause177434177463%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd177428177461%_))
                                                      (let ((_%e177431177466%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd177428177461%_))))
                (let ((_%lp-hd177432177469%_
                       (let () (declare (not safe)) (##car _%e177431177466%_)))
                      (_%lp-tl177433177471%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e177431177466%_))))
                  (_%loop177430177458%_
                   _%lp-tl177433177471%_
                   (cons _%lp-hd177432177469%_ _%clause177434177463%_))))
              (let ((_%clause177435177474%_ (reverse _%clause177434177463%_)))
                ((lambda (_%L177477%_)
                   (for-each
                    (lambda (_%clause177490%_)
                      (let* ((_%g177492177503%_
                              (lambda (_%g177493177500%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g177493177500%_))))
                             (_%g177491177541%_
                              (lambda (_%g177493177506%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g177493177506%_))
                                    (let ((_%e177496177508%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g177493177506%_))))
                                      (let ((_%hd177497177511%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e177496177508%_)))
                                            (_%tl177498177513%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e177496177508%_))))
                                        ((lambda (_%L177516%_ _%L177517%_)
                                           (let* ((_%self177529%_
                                                   (list-ref
                                                    _%L177517%_
                                                    _%self-index177095%_))
                                                  (_%receiver177534%_
                                                   (let ((_%$e177531%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L177516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e177531%_
                                                         _%$e177531%_
                                                         _%self177529%_))))
                                             (for-each
                                              (lambda (_%g177536177538%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver177534%_
                                                 _%method-calls175085%_
                                                 _%slot-refs175086%_
                                                 _%g177536177538%_))
                                              _%L177516%_)))
                                         _%tl177498177513%_
                                         _%hd177497177511%_)))
                                    (_%g177492177503%_ _%g177493177506%_)))))
                        (_%g177491177541%_ _%clause177490%_)))
                    (let ((__tmp179265
                           (lambda (_%g177543177546%_ _%g177544177548%_)
                             (cons _%g177543177546%_ _%g177544177548%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179265 '() _%L177477%_))))
                 _%clause177435177474%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop177430177458%_
                                         _%target177427177453%_
                                         '()))
                                      (_%g177421177440%_ _%g177422177443%_)))))
                            (_%g177421177440%_ _%g177422177443%_))))
                    (_%g177421177440%_ _%g177422177443%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177420177551%_
                                                 _%L177331%_))
                                              (if (_%no-specializer?175089%_)
                                                  _%stx174993%_
                                                  (let* ((_%specializer-id177560%_
                                                          (let* ((_%id177554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179266
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L175066%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179266 '"::specialize")))
                         (_%specializer-id177557%_
                          (let ((__tmp179267
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174993%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id177554%_
                             __tmp179267))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id177557%_))
                    _%specializer-id177557%_))
                 (_%$klass177562%_
                  (let ((__tmp179268
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179268)))
                 (_%$method-table177564%_
                  (let ((__tmp179269
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179269)))
                 (_%methods177566%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls175085%_)))
                 (_%$methods177570%_
                  (map (lambda (_%id177568%_)
                         (let ((__tmp179270 (gensym _%id177568%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179270)))
                       _%methods177566%_))
                 (_%_177579%_
                  (for-each
                   (lambda (_%g177571177574%_ _%g177572177576%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls175085%_
                        _%g177571177574%_
                        _%g177572177576%_)))
                   _%methods177566%_
                   _%$methods177570%_))
                 (_%methods-bind177589%_
                  (map (lambda (_%g177581177584%_ _%g177582177586%_)
                         (_%generate-method-bind174995%_
                          _%$klass177562%_
                          _%$method-table177564%_
                          _%g177581177584%_
                          _%g177582177586%_))
                       _%methods177566%_
                       _%$methods177570%_))
                 (_%slots177591%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs175086%_)))
                 (_%$slots177595%_
                  (map (lambda (_%id177593%_)
                         (let ((__tmp179271 (gensym _%id177593%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179271)))
                       _%slots177591%_))
                 (_%_177604%_
                  (for-each
                   (lambda (_%g177596177599%_ _%g177597177601%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs175086%_
                        _%g177596177599%_
                        _%g177597177601%_)))
                   _%slots177591%_
                   _%$slots177595%_))
                 (_%slots-bind177613%_
                  (map (lambda (_%g177605177608%_ _%g177606177610%_)
                         (_%generate-slot-bind174996%_
                          _%$klass177562%_
                          _%g177605177608%_
                          _%g177606177610%_))
                       _%slots177591%_
                       _%$slots177595%_))
                 (_%specializer-lambda-expr177691%_
                  (let* ((_%g177615177629%_
                          (lambda (_%g177616177626%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177616177626%_))))
                         (_%g177614177688%_
                          (lambda (_%g177616177632%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177616177632%_))
                                (let ((_%e177619177634%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177616177632%_))))
                                  (let ((_%hd177620177637%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177619177634%_)))
                                        (_%tl177621177639%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177619177634%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl177621177639%_))
                                        (let ((_%e177622177642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl177621177639%_))))
                                          (let ((_%hd177623177645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e177622177642%_)))
                                                (_%tl177624177647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e177622177642%_))))
                                            ((lambda (_%L177650%_ _%L177651%_)
                                               (let* ((_%self177674%_
                                                       (list-ref
                                                        _%L177651%_
                                                        _%self-index177095%_))
                                                      (_%receiver177679%_
                                                       (let ((_%$e177676%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L177650%_))))
                 (if _%$e177676%_ _%$e177676%_ _%self177674%_)))
              (_%body177685%_
               (map (lambda (_%g177680177682%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver177679%_
                       _%$klass177562%_
                       _%method-calls175085%_
                       _%slot-refs175086%_
                       _%g177680177682%_))
                    _%L177650%_))
              (__tmp179272 (cons '%#lambda (cons _%L177651%_ _%body177685%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp179272
                                                  _%L177332%_)))
                                             _%tl177624177647%_
                                             _%hd177623177645%_)))
                                        (_%g177615177629%_
                                         _%g177616177632%_))))
                                (_%g177615177629%_ _%g177616177632%_)))))
                    (_%g177614177688%_ _%L177332%_)))
                 (_%specializer-case-lambda-expr177831%_
                  (let* ((_%g177693177712%_
                          (lambda (_%g177694177709%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177694177709%_))))
                         (_%g177692177828%_
                          (lambda (_%g177694177715%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177694177715%_))
                                (let ((_%e177696177717%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177694177715%_))))
                                  (let ((_%hd177697177720%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177696177717%_)))
                                        (_%tl177698177722%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177696177717%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl177698177722%_))
                                        (let ((_g179273_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl177698177722%_
                                                  '0))))
                                          (begin
                                            (let ((_g179274_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g179273_)
                                                         (##values-length
                                                          _g179273_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g179274_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g179274_)))
                                            (let ((_%target177699177725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179273_
                                                      0)))
                                                  (_%tl177701177727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179273_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl177701177727%_))
                                                  (letrec ((_%loop177702177730%_
                                                            (lambda (_%hd177700177733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause177706177735%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd177700177733%_))
                          (let ((_%e177703177738%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd177700177733%_))))
                            (let ((_%lp-hd177704177741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177703177738%_)))
                                  (_%lp-tl177705177743%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177703177738%_))))
                              (_%loop177702177730%_
                               _%lp-tl177705177743%_
                               (cons _%lp-hd177704177741%_
                                     _%clause177706177735%_))))
                          (let ((_%clause177707177746%_
                                 (reverse _%clause177706177735%_)))
                            ((lambda (_%L177749%_)
                               (let* ((_%clauses177826%_
                                       (map (lambda (_%clause177763%_)
                                              (let* ((_%g177765177776%_
                                                      (lambda (_%g177766177773%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177766177773%_))))
                                                     (_%g177764177816%_
                                                      (lambda (_%g177766177779%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177766177779%_))
                                                            (let ((_%e177769177781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177766177779%_))))
                      (let ((_%hd177770177784%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177769177781%_)))
                            (_%tl177771177786%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177769177781%_))))
                        ((lambda (_%L177789%_ _%L177790%_)
                           (let* ((_%self177802%_
                                   (list-ref _%L177790%_ _%self-index177095%_))
                                  (_%receiver177807%_
                                   (let ((_%$e177804%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L177789%_))))
                                     (if _%$e177804%_
                                         _%$e177804%_
                                         _%self177802%_)))
                                  (_%body177813%_
                                   (map (lambda (_%g177808177810%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver177807%_
                                           _%$klass177562%_
                                           _%method-calls175085%_
                                           _%slot-refs175086%_
                                           _%g177808177810%_))
                                        _%L177789%_)))
                             (cons _%L177790%_ _%body177813%_)))
                         _%tl177771177786%_
                         _%hd177770177784%_)))
                    (_%g177765177776%_ _%g177766177779%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177764177816%_
                                                 _%clause177763%_)))
                                            (let ((__tmp179275
                                                   (lambda (_%g177818177821%_
                                                            _%g177819177823%_)
                                                     (cons _%g177818177821%_
                                                           _%g177819177823%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp179275
                                               '()
                                               _%L177749%_))))
                                      (__tmp179276
                                       (cons '%#case-lambda
                                             _%clauses177826%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp179276
                                  _%L177331%_)))
                             _%clause177707177746%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop177702177730%_
                                                     _%target177699177725%_
                                                     '()))
                                                  (_%g177693177712%_
                                                   _%g177694177715%_)))))
                                        (_%g177693177712%_
                                         _%g177694177715%_))))
                                (_%g177693177712%_ _%g177694177715%_)))))
                    (_%g177692177828%_ _%L177331%_)))
                 (_%specializer-impl177833%_
                  (let ((__tmp179277
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L176795%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L176794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp179278
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L177333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr177691%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr177831%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179278
                                                _%stx174993%_))
                                             '()))
                                 '())
                           (cons _%L176792%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L176791%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179277 _%stx174993%_)))
                 (_%specializer-impl177835%_
                  (_%generate-specializer-impl174997%_
                   _%$klass177562%_
                   _%$method-table177564%_
                   _%methods-bind177589%_
                   _%slots-bind177613%_
                   _%specializer-impl177833%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179280
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L175066%_)))
                                                          (__tmp179279
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id177560%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179280
                                                       '" => "
                                                       __tmp179279))
                                                    (_%generate-specializer-def174998%_
                                                     _%L175066%_
                                                     _%specializer-id177560%_
                                                     _%specializer-impl177835%_))))
                                            _%hd177264177326%_
                                            _%hd177261177318%_
                                            _%hd177258177310%_)
                                           (_%g177240177270%_
                                            _%g177241177273%_))))
                                   (_%g177240177270%_ _%g177241177273%_))
                               (_%g177240177270%_ _%g177241177273%_))
                           (_%g177240177270%_ _%g177241177273%_))))
                   (_%g177240177270%_ _%g177241177273%_))
               (_%g177240177270%_ _%g177241177273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g177240177270%_
                                                _%g177241177273%_))))
                                       (_%g177240177270%_ _%g177241177273%_))))
                               (_%g177240177270%_ _%g177241177273%_))))
                       (_%g177240177270%_ _%g177241177273%_))))
               (_%g177240177270%_ _%g177241177273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g177239177838%_ _%L176793%_))
                                         _%stx174993%_))))
                             _%hd176891177014%_
                             _%kw-ref176889177035%_
                             _%hd176879177001%_
                             _%hd176870176977%_
                             _%hd176861176953%_)
                            (_%g176835176897%_ _%g176836176900%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176884177019%_
                                                 _%target176881177006%_
                                                 '()))
                                              (_%g176835176897%_
                                               _%g176836176900%_))))
                                      (_%g176835176897%_ _%g176836176900%_)))))
                            (_%g176835176897%_ _%g176836176900%_))
                        (_%g176835176897%_ _%g176836176900%_))
                    (_%g176835176897%_ _%g176836176900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176835176897%_
                                                     _%g176836176900%_))
                                                (_%g176835176897%_
                                                 _%g176836176900%_))
                                            (_%g176835176897%_
                                             _%g176836176900%_))))
                                    (_%g176835176897%_ _%g176836176900%_))))
                            (_%g176835176897%_ _%g176836176900%_))
                        (_%g176835176897%_ _%g176836176900%_))))
                (_%g176835176897%_ _%g176836176900%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176835176897%_
                                                     _%g176836176900%_))
                                                (_%g176835176897%_
                                                 _%g176836176900%_))))
                                        (_%g176835176897%_
                                         _%g176836176900%_))))
                                (_%g176835176897%_ _%g176836176900%_))
                            (_%g176835176897%_ _%g176836176900%_))))
                    (_%g176835176897%_ _%g176836176900%_))
                (_%g176835176897%_ _%g176836176900%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176835176897%_
                                                     _%g176836176900%_))))
                                            (_%g176835176897%_
                                             _%g176836176900%_))))
                                    (_%g176835176897%_ _%g176836176900%_))
                                (_%g176835176897%_ _%g176836176900%_))
                            (_%g176835176897%_ _%g176836176900%_))))
                    (_%g176835176897%_ _%g176836176900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176835176897%_
                                                     _%g176836176900%_))))
                                            (_%g176835176897%_
                                             _%g176836176900%_))
                                        (_%g176835176897%_ _%g176836176900%_))
                                    (_%g176835176897%_ _%g176836176900%_))))
                            (_%g176835176897%_ _%g176836176900%_)))))
                (_%g176834177842%_ _%L176792%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd176668176786%_
                                                    _%hd176665176778%_
                                                    _%hd176662176770%_
                                                    _%hd176659176762%_
                                                    _%hd176641176714%_)
                                                   (_%g176621176674%_
                                                    _%g176622176677%_))))
                                           (_%g176621176674%_
                                            _%g176622176677%_))
                                       (_%g176621176674%_ _%g176622176677%_))
                                   (_%g176621176674%_ _%g176622176677%_))
                               (_%g176621176674%_ _%g176622176677%_))))
                       (_%g176621176674%_ _%g176622176677%_))
                   (_%g176621176674%_ _%g176622176677%_))
               (_%g176621176674%_ _%g176622176677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176621176674%_
                                                _%g176622176677%_))
                                           (_%g176621176674%_
                                            _%g176622176677%_))))
                                   (_%g176621176674%_ _%g176622176677%_))))
                           (_%g176621176674%_ _%g176622176677%_))))
                   (_%g176621176674%_ _%g176622176677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176621176674%_
                                                    _%g176622176677%_))
                                               (_%g176621176674%_
                                                _%g176622176677%_))
                                           (_%g176621176674%_
                                            _%g176622176677%_))))
                                   (_%g176621176674%_ _%g176622176677%_))))
                           (_%g176621176674%_ _%g176622176677%_))
                       (_%g176621176674%_ _%g176622176677%_))))
               (_%g176621176674%_ _%g176622176677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176621176674%_
                                                _%g176622176677%_))))
                                       (_%g176621176674%_ _%g176622176677%_))))
                               (_%g176621176674%_ _%g176622176677%_))
                           (_%g176621176674%_ _%g176622176677%_))
                       (_%g176621176674%_ _%g176622176677%_))))
               (_%g176621176674%_ _%g176622176677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176620177845%_ _%L175065%_))
                                         _%stx174993%_))))))))
                  (_%__kont178079178080%_ (lambda () _%stx174993%_)))
              (let ((_%__match178108178109%_
                     (lambda (_%e175005175033%_
                              _%hd175006175036%_
                              _%tl175007175038%_
                              _%e175008175041%_
                              _%hd175009175044%_
                              _%tl175010175046%_
                              _%e175011175049%_
                              _%hd175012175052%_
                              _%tl175013175054%_
                              _%e175014175057%_
                              _%hd175015175060%_
                              _%tl175016175062%_)
                       (let ((_%L175065%_ _%hd175015175060%_)
                             (_%L175066%_ _%hd175012175052%_))
                         (if (let ((__tmp179281
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L175066%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp179281))
                             (_%__kont178077178078%_ _%L175065%_ _%L175066%_)
                             (_%__kont178079178080%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx178075178076%_))
                    (let ((_%e175005175033%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx178075178076%_))))
                      (let ((_%tl175007175038%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175005175033%_)))
                            (_%hd175006175036%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175005175033%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175007175038%_))
                            (let ((_%e175008175041%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175007175038%_))))
                              (let ((_%tl175010175046%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175008175041%_)))
                                    (_%hd175009175044%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175008175041%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd175009175044%_))
                                    (let ((_%e175011175049%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd175009175044%_))))
                                      (let ((_%tl175013175054%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175011175049%_)))
                                            (_%hd175012175052%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175011175049%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl175013175054%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl175010175046%_))
                                                (let ((_%e175014175057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl175010175046%_))))
                                                  (let ((_%tl175016175062%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e175014175057%_)))
                                                        (_%hd175015175060%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e175014175057%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl175016175062%_))
                                                        (_%__match178108178109%_
                                                         _%e175005175033%_
                                                         _%hd175006175036%_
                                                         _%tl175007175038%_
                                                         _%e175008175041%_
                                                         _%hd175009175044%_
                                                         _%tl175010175046%_
                                                         _%e175011175049%_
                                                         _%hd175012175052%_
                                                         _%tl175013175054%_
                                                         _%e175014175057%_
                                                         _%hd175015175060%_
                                                         _%tl175016175062%_)
                                                        (_%__kont178079178080%_))))
                                                (_%__kont178079178080%_))
                                            (_%__kont178079178080%_))))
                                    (_%__kont178079178080%_))))
                            (_%__kont178079178080%_))))
                    (_%__kont178079178080%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self174845%_ _%stx174846%_)
        (let* ((_%__stx178111178112%_ _%stx174846%_)
               (_%g174849174882%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx178111178112%_)))))
          (let ((_%__kont178113178114%_ (lambda (_%L174972%_) _%L174972%_))
                (_%__kont178115178116%_
                 (lambda (_%L174911%_ _%L174912%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self174845%_ _%L174911%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx178111178112%_))
                (let ((_%e174852174932%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx178111178112%_))))
                  (let ((_%tl174854174937%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174852174932%_)))
                        (_%hd174853174935%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174852174932%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174854174937%_))
                        (let ((_%e174855174940%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174854174937%_))))
                          (let ((_%tl174857174945%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174855174940%_)))
                                (_%hd174856174943%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174855174940%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174856174943%_))
                                (let ((_%e174858174948%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174856174943%_))))
                                  (let ((_%tl174860174953%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174858174948%_)))
                                        (_%hd174859174951%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174858174948%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd174859174951%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd174859174951%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174860174953%_))
                                                (let ((_%e174861174956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174860174953%_))))
                                                  (let ((_%tl174863174961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174861174956%_)))
                                                        (_%hd174862174959%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174861174956%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174863174961%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174857174945%_))
                                                            (let ((_%e174864174964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174857174945%_))))
                      (let ((_%tl174866174969%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174864174964%_)))
                            (_%hd174865174967%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174864174964%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174866174969%_))
                            (_%__kont178113178114%_ _%hd174862174959%_)
                            (let ()
                              (declare (not safe))
                              (_%g174849174882%_)))))
                    (let () (declare (not safe)) (_%g174849174882%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl174857174945%_))
                    (let ((_%e174875174903%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174857174945%_))))
                      (let ((_%tl174877174908%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174875174903%_)))
                            (_%hd174876174906%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174875174903%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174877174908%_))
                            (_%__kont178115178116%_
                             _%hd174876174906%_
                             _%hd174856174943%_)
                            (let ()
                              (declare (not safe))
                              (_%g174849174882%_)))))
                    (let () (declare (not safe)) (_%g174849174882%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174857174945%_))
                                                    (let ((_%e174875174903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174857174945%_))))
                                                      (let ((_%tl174877174908%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e174875174903%_)))
                    (_%hd174876174906%_
                     (let () (declare (not safe)) (##car _%e174875174903%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174877174908%_))
                    (_%__kont178115178116%_
                     _%hd174876174906%_
                     _%hd174856174943%_)
                    (let () (declare (not safe)) (_%g174849174882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174849174882%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174857174945%_))
                                                (let ((_%e174875174903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174857174945%_))))
                                                  (let ((_%tl174877174908%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174875174903%_)))
                                                        (_%hd174876174906%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174875174903%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174877174908%_))
                                                        (_%__kont178115178116%_
                                                         _%hd174876174906%_
                                                         _%hd174856174943%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g174849174882%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g174849174882%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174857174945%_))
                                            (let ((_%e174875174903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174857174945%_))))
                                              (let ((_%tl174877174908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174875174903%_)))
                                                    (_%hd174876174906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174875174903%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl174877174908%_))
                                                    (_%__kont178115178116%_
                                                     _%hd174876174906%_
                                                     _%hd174856174943%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174849174882%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g174849174882%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174857174945%_))
                                    (let ((_%e174875174903%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174857174945%_))))
                                      (let ((_%tl174877174908%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174875174903%_)))
                                            (_%hd174876174906%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174875174903%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174877174908%_))
                                            (_%__kont178115178116%_
                                             _%hd174876174906%_
                                             _%hd174856174943%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g174849174882%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g174849174882%_))))))
                        (let () (declare (not safe)) (_%g174849174882%_)))))
                (let () (declare (not safe)) (_%g174849174882%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self174761%_ _%stx174762%_)
        (let* ((_%g174764174785%_
                (lambda (_%g174765174782%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g174765174782%_))))
               (_%g174763174842%_
                (lambda (_%g174765174788%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g174765174788%_))
                      (let ((_%e174769174790%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g174765174788%_))))
                        (let ((_%hd174770174793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174769174790%_)))
                              (_%tl174771174795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174769174790%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl174771174795%_))
                              (let ((_%e174772174798%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl174771174795%_))))
                                (let ((_%hd174773174801%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e174772174798%_)))
                                      (_%tl174774174803%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e174772174798%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174774174803%_))
                                      (let ((_%e174775174806%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174774174803%_))))
                                        (let ((_%hd174776174809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174775174806%_)))
                                              (_%tl174777174811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174775174806%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl174777174811%_))
                                              (let ((_%e174778174814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl174777174811%_))))
                                                (let ((_%hd174779174817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e174778174814%_)))
                                                      (_%tl174780174819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e174778174814%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl174780174819%_))
                                                      ((lambda (_%L174822%_
                                                                _%L174823%_
                                                                _%L174824%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self174761%_
                                                            _%L174823%_)))
                                                       _%hd174779174817%_
                                                       _%hd174776174809%_
                                                       _%hd174773174801%_)
                                                      (_%g174764174785%_
                                                       _%g174765174788%_))))
                                              (_%g174764174785%_
                                               _%g174765174788%_))))
                                      (_%g174764174785%_ _%g174765174788%_))))
                              (_%g174764174785%_ _%g174765174788%_))))
                      (_%g174764174785%_ _%g174765174788%_)))))
          (_%g174763174842%_ _%stx174762%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self173722%_ _%stx173723%_)
        (let* ((_%__stx178177178178%_ _%stx173723%_)
               (_%g173731173953%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx178177178178%_)))))
          (let ((_%__kont178179178180%_
                 (lambda (_%L174710%_ _%L174711%_ _%L174712%_ _%L174713%_)
                   (let ((__tmp179283
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173722%_ 'methods)))
                         (__tmp179282
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174711%_))))
                     (declare (not safe))
                     (hash-put! __tmp179283 __tmp179282 '#t))
                   (for-each
                    (lambda (_%g174746174748%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173722%_ _%g174746174748%_)))
                    (let ((__tmp179284
                           (lambda (_%g174750174753%_ _%g174751174755%_)
                             (cons _%g174750174753%_ _%g174751174755%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179284 '() _%L174710%_)))))
                (_%__kont178183178184%_
                 (lambda (_%L174545%_
                          _%L174546%_
                          _%L174547%_
                          _%L174548%_
                          _%L174549%_)
                   (let ((__tmp179286
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173722%_ 'methods)))
                         (__tmp179285
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174546%_))))
                     (declare (not safe))
                     (hash-put! __tmp179286 __tmp179285 '#t))
                   (for-each
                    (lambda (_%g174589174591%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173722%_ _%g174589174591%_)))
                    (let ((__tmp179287
                           (lambda (_%g174593174596%_ _%g174594174598%_)
                             (cons _%g174593174596%_ _%g174594174598%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179287 '() _%L174545%_)))))
                (_%__kont178187178188%_
                 (lambda (_%L174378%_ _%L174379%_ _%L174380%_)
                   (let ((__tmp179289
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173722%_ 'slots)))
                         (__tmp179288
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174378%_))))
                     (declare (not safe))
                     (hash-put! __tmp179289 __tmp179288 '#t))))
                (_%__kont178189178190%_
                 (lambda (_%L174255%_ _%L174256%_ _%L174257%_ _%L174258%_)
                   (let ((__tmp179291
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173722%_ 'slots)))
                         (__tmp179290
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174256%_))))
                     (declare (not safe))
                     (hash-put! __tmp179291 __tmp179290 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173722%_ _%L174255%_))))
                (_%__kont178191178192%_
                 (lambda (_%L174129%_ _%L174130%_)
                   (let* ((_%accessor174152%_
                           (let ((__tmp179292
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L174130%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179292)))
                          (_%klass174154%_
                           (let ((__tmp179293
                                  (##structure-ref
                                   _%accessor174152%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173723%_
                              __tmp179293)))
                          (_%slot174156%_
                           (##structure-ref
                            _%accessor174152%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor174152%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass174154%_
                                    _%slot174156%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass174154%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179295
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173722%_ 'slots)))
                               (__tmp179294
                                (##structure-ref
                                 _%accessor174152%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp179295 __tmp179294 '#t))))))
                (_%__kont178193178194%_
                 (lambda (_%L174029%_ _%L174030%_ _%L174031%_)
                   (let* ((_%mutator174058%_
                           (let ((__tmp179296
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L174031%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179296)))
                          (_%klass174060%_
                           (let ((__tmp179297
                                  (##structure-ref
                                   _%mutator174058%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173723%_
                              __tmp179297)))
                          (_%slot174062%_
                           (##structure-ref
                            _%mutator174058%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator174058%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass174060%_
                                    _%slot174062%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass174060%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179298
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173722%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp179298 _%slot174062%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self173722%_ _%L174029%_)))))
                (_%__kont178195178196%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self173722%_ _%stx173723%_)))))
            (let* ((_%__match178676178677%_
                    (lambda (_%e173925173965%_
                             _%hd173926173968%_
                             _%tl173927173970%_
                             _%e173928173973%_
                             _%hd173929173976%_
                             _%tl173930173978%_
                             _%e173931173981%_
                             _%hd173932173984%_
                             _%tl173933173986%_
                             _%e173934173989%_
                             _%hd173935173992%_
                             _%tl173936173994%_
                             _%e173937173997%_
                             _%hd173938174000%_
                             _%tl173939174002%_
                             _%e173940174005%_
                             _%hd173941174008%_
                             _%tl173942174010%_
                             _%e173943174013%_
                             _%hd173944174016%_
                             _%tl173945174018%_
                             _%e173946174021%_
                             _%hd173947174024%_
                             _%tl173948174026%_)
                      (let ((_%L174029%_ _%hd173947174024%_)
                            (_%L174030%_ _%hd173944174016%_)
                            (_%L174031%_ _%hd173935173992%_))
                        (if (and (let ((__tmp179299
                                        (let ((__tmp179300
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L174031%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179300))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179299
                                    'gxc#!mutator::t))
                                 (let ((__tmp179301
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173722%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174030%_
                                    __tmp179301)))
                            (_%__kont178193178194%_
                             _%L174029%_
                             _%L174030%_
                             _%L174031%_)
                            (_%__kont178195178196%_)))))
                   (_%__match178674178675%_
                    (lambda (_%e173925173965%_
                             _%hd173926173968%_
                             _%tl173927173970%_
                             _%e173928173973%_
                             _%hd173929173976%_
                             _%tl173930173978%_
                             _%e173931173981%_
                             _%hd173932173984%_
                             _%tl173933173986%_
                             _%e173934173989%_
                             _%hd173935173992%_
                             _%tl173936173994%_
                             _%e173937173997%_
                             _%hd173938174000%_
                             _%tl173939174002%_
                             _%e173940174005%_
                             _%hd173941174008%_
                             _%tl173942174010%_
                             _%e173943174013%_
                             _%hd173944174016%_
                             _%tl173945174018%_
                             _%e173946174021%_
                             _%hd173947174024%_
                             _%tl173948174026%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173948174026%_))
                          (_%__match178676178677%_
                           _%e173925173965%_
                           _%hd173926173968%_
                           _%tl173927173970%_
                           _%e173928173973%_
                           _%hd173929173976%_
                           _%tl173930173978%_
                           _%e173931173981%_
                           _%hd173932173984%_
                           _%tl173933173986%_
                           _%e173934173989%_
                           _%hd173935173992%_
                           _%tl173936173994%_
                           _%e173937173997%_
                           _%hd173938174000%_
                           _%tl173939174002%_
                           _%e173940174005%_
                           _%hd173941174008%_
                           _%tl173942174010%_
                           _%e173943174013%_
                           _%hd173944174016%_
                           _%tl173945174018%_
                           _%e173946174021%_
                           _%hd173947174024%_
                           _%tl173948174026%_)
                          (_%__kont178195178196%_))))
                   (_%__match178668178669%_
                    (lambda (_%e173925173965%_
                             _%hd173926173968%_
                             _%tl173927173970%_
                             _%e173928173973%_
                             _%hd173929173976%_
                             _%tl173930173978%_
                             _%e173931173981%_
                             _%hd173932173984%_
                             _%tl173933173986%_
                             _%e173934173989%_
                             _%hd173935173992%_
                             _%tl173936173994%_
                             _%e173937173997%_
                             _%hd173938174000%_
                             _%tl173939174002%_
                             _%e173940174005%_
                             _%hd173941174008%_
                             _%tl173942174010%_
                             _%e173943174013%_
                             _%hd173944174016%_
                             _%tl173945174018%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173939174002%_))
                          (let ((_%e173946174021%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173939174002%_))))
                            (let ((_%tl173948174026%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173946174021%_)))
                                  (_%hd173947174024%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173946174021%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173948174026%_))
                                  (_%__match178676178677%_
                                   _%e173925173965%_
                                   _%hd173926173968%_
                                   _%tl173927173970%_
                                   _%e173928173973%_
                                   _%hd173929173976%_
                                   _%tl173930173978%_
                                   _%e173931173981%_
                                   _%hd173932173984%_
                                   _%tl173933173986%_
                                   _%e173934173989%_
                                   _%hd173935173992%_
                                   _%tl173936173994%_
                                   _%e173937173997%_
                                   _%hd173938174000%_
                                   _%tl173939174002%_
                                   _%e173940174005%_
                                   _%hd173941174008%_
                                   _%tl173942174010%_
                                   _%e173943174013%_
                                   _%hd173944174016%_
                                   _%tl173945174018%_
                                   _%e173946174021%_
                                   _%hd173947174024%_
                                   _%tl173948174026%_)
                                  (_%__kont178195178196%_))))
                          (_%__kont178195178196%_))))
                   (_%__match178614178615%_
                    (lambda (_%e173901174073%_
                             _%hd173902174076%_
                             _%tl173903174078%_
                             _%e173904174081%_
                             _%hd173905174084%_
                             _%tl173906174086%_
                             _%e173907174089%_
                             _%hd173908174092%_
                             _%tl173909174094%_
                             _%e173910174097%_
                             _%hd173911174100%_
                             _%tl173912174102%_
                             _%e173913174105%_
                             _%hd173914174108%_
                             _%tl173915174110%_
                             _%e173916174113%_
                             _%hd173917174116%_
                             _%tl173918174118%_
                             _%e173919174121%_
                             _%hd173920174124%_
                             _%tl173921174126%_)
                      (let ((_%L174129%_ _%hd173920174124%_)
                            (_%L174130%_ _%hd173911174100%_))
                        (if (and (let ((__tmp179302
                                        (let ((__tmp179303
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L174130%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179303))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179302
                                    'gxc#!accessor::t))
                                 (let ((__tmp179304
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173722%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174129%_
                                    __tmp179304)))
                            (_%__kont178191178192%_ _%L174129%_ _%L174130%_)
                            (_%__kont178195178196%_)))))
                   (_%__match178612178613%_
                    (lambda (_%e173901174073%_
                             _%hd173902174076%_
                             _%tl173903174078%_
                             _%e173904174081%_
                             _%hd173905174084%_
                             _%tl173906174086%_
                             _%e173907174089%_
                             _%hd173908174092%_
                             _%tl173909174094%_
                             _%e173910174097%_
                             _%hd173911174100%_
                             _%tl173912174102%_
                             _%e173913174105%_
                             _%hd173914174108%_
                             _%tl173915174110%_
                             _%e173916174113%_
                             _%hd173917174116%_
                             _%tl173918174118%_
                             _%e173919174121%_
                             _%hd173920174124%_
                             _%tl173921174126%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173915174110%_))
                          (_%__match178614178615%_
                           _%e173901174073%_
                           _%hd173902174076%_
                           _%tl173903174078%_
                           _%e173904174081%_
                           _%hd173905174084%_
                           _%tl173906174086%_
                           _%e173907174089%_
                           _%hd173908174092%_
                           _%tl173909174094%_
                           _%e173910174097%_
                           _%hd173911174100%_
                           _%tl173912174102%_
                           _%e173913174105%_
                           _%hd173914174108%_
                           _%tl173915174110%_
                           _%e173916174113%_
                           _%hd173917174116%_
                           _%tl173918174118%_
                           _%e173919174121%_
                           _%hd173920174124%_
                           _%tl173921174126%_)
                          (_%__match178668178669%_
                           _%e173901174073%_
                           _%hd173902174076%_
                           _%tl173903174078%_
                           _%e173904174081%_
                           _%hd173905174084%_
                           _%tl173906174086%_
                           _%e173907174089%_
                           _%hd173908174092%_
                           _%tl173909174094%_
                           _%e173910174097%_
                           _%hd173911174100%_
                           _%tl173912174102%_
                           _%e173913174105%_
                           _%hd173914174108%_
                           _%tl173915174110%_
                           _%e173916174113%_
                           _%hd173917174116%_
                           _%tl173918174118%_
                           _%e173919174121%_
                           _%hd173920174124%_
                           _%tl173921174126%_))))
                   (_%__match178558178559%_
                    (lambda (_%e173866174167%_
                             _%hd173867174170%_
                             _%tl173868174172%_
                             _%e173869174175%_
                             _%hd173870174178%_
                             _%tl173871174180%_
                             _%e173872174183%_
                             _%hd173873174186%_
                             _%tl173874174188%_
                             _%e173875174191%_
                             _%hd173876174194%_
                             _%tl173877174196%_
                             _%e173878174199%_
                             _%hd173879174202%_
                             _%tl173880174204%_
                             _%e173881174207%_
                             _%hd173882174210%_
                             _%tl173883174212%_
                             _%e173884174215%_
                             _%hd173885174218%_
                             _%tl173886174220%_
                             _%e173887174223%_
                             _%hd173888174226%_
                             _%tl173889174228%_
                             _%e173890174231%_
                             _%hd173891174234%_
                             _%tl173892174236%_
                             _%e173893174239%_
                             _%hd173894174242%_
                             _%tl173895174244%_
                             _%e173896174247%_
                             _%hd173897174250%_
                             _%tl173898174252%_)
                      (let ((_%L174255%_ _%hd173897174250%_)
                            (_%L174256%_ _%hd173894174242%_)
                            (_%L174257%_ _%hd173885174218%_)
                            (_%L174258%_ _%hd173876174194%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174258%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174258%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp179305
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173722%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174257%_
                                    __tmp179305)))
                            (_%__kont178189178190%_
                             _%L174255%_
                             _%L174256%_
                             _%L174257%_
                             _%L174258%_)
                            (_%__kont178195178196%_)))))
                   (_%__match178550178551%_
                    (lambda (_%e173866174167%_
                             _%hd173867174170%_
                             _%tl173868174172%_
                             _%e173869174175%_
                             _%hd173870174178%_
                             _%tl173871174180%_
                             _%e173872174183%_
                             _%hd173873174186%_
                             _%tl173874174188%_
                             _%e173875174191%_
                             _%hd173876174194%_
                             _%tl173877174196%_
                             _%e173878174199%_
                             _%hd173879174202%_
                             _%tl173880174204%_
                             _%e173881174207%_
                             _%hd173882174210%_
                             _%tl173883174212%_
                             _%e173884174215%_
                             _%hd173885174218%_
                             _%tl173886174220%_
                             _%e173887174223%_
                             _%hd173888174226%_
                             _%tl173889174228%_
                             _%e173890174231%_
                             _%hd173891174234%_
                             _%tl173892174236%_
                             _%e173893174239%_
                             _%hd173894174242%_
                             _%tl173895174244%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173889174228%_))
                          (let ((_%e173896174247%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173889174228%_))))
                            (let ((_%tl173898174252%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173896174247%_)))
                                  (_%hd173897174250%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173896174247%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173898174252%_))
                                  (_%__match178558178559%_
                                   _%e173866174167%_
                                   _%hd173867174170%_
                                   _%tl173868174172%_
                                   _%e173869174175%_
                                   _%hd173870174178%_
                                   _%tl173871174180%_
                                   _%e173872174183%_
                                   _%hd173873174186%_
                                   _%tl173874174188%_
                                   _%e173875174191%_
                                   _%hd173876174194%_
                                   _%tl173877174196%_
                                   _%e173878174199%_
                                   _%hd173879174202%_
                                   _%tl173880174204%_
                                   _%e173881174207%_
                                   _%hd173882174210%_
                                   _%tl173883174212%_
                                   _%e173884174215%_
                                   _%hd173885174218%_
                                   _%tl173886174220%_
                                   _%e173887174223%_
                                   _%hd173888174226%_
                                   _%tl173889174228%_
                                   _%e173890174231%_
                                   _%hd173891174234%_
                                   _%tl173892174236%_
                                   _%e173893174239%_
                                   _%hd173894174242%_
                                   _%tl173895174244%_
                                   _%e173896174247%_
                                   _%hd173897174250%_
                                   _%tl173898174252%_)
                                  (_%__kont178195178196%_))))
                          (_%__match178674178675%_
                           _%e173866174167%_
                           _%hd173867174170%_
                           _%tl173868174172%_
                           _%e173869174175%_
                           _%hd173870174178%_
                           _%tl173871174180%_
                           _%e173872174183%_
                           _%hd173873174186%_
                           _%tl173874174188%_
                           _%e173875174191%_
                           _%hd173876174194%_
                           _%tl173877174196%_
                           _%e173878174199%_
                           _%hd173879174202%_
                           _%tl173880174204%_
                           _%e173881174207%_
                           _%hd173882174210%_
                           _%tl173883174212%_
                           _%e173884174215%_
                           _%hd173885174218%_
                           _%tl173886174220%_
                           _%e173887174223%_
                           _%hd173888174226%_
                           _%tl173889174228%_))))
                   (_%__match178472178473%_
                    (lambda (_%e173832174298%_
                             _%hd173833174301%_
                             _%tl173834174303%_
                             _%e173835174306%_
                             _%hd173836174309%_
                             _%tl173837174311%_
                             _%e173838174314%_
                             _%hd173839174317%_
                             _%tl173840174319%_
                             _%e173841174322%_
                             _%hd173842174325%_
                             _%tl173843174327%_
                             _%e173844174330%_
                             _%hd173845174333%_
                             _%tl173846174335%_
                             _%e173847174338%_
                             _%hd173848174341%_
                             _%tl173849174343%_
                             _%e173850174346%_
                             _%hd173851174349%_
                             _%tl173852174351%_
                             _%e173853174354%_
                             _%hd173854174357%_
                             _%tl173855174359%_
                             _%e173856174362%_
                             _%hd173857174365%_
                             _%tl173858174367%_
                             _%e173859174370%_
                             _%hd173860174373%_
                             _%tl173861174375%_)
                      (let ((_%L174378%_ _%hd173860174373%_)
                            (_%L174379%_ _%hd173851174349%_)
                            (_%L174380%_ _%hd173842174325%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174380%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174380%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp179306
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173722%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174379%_
                                    __tmp179306)))
                            (_%__kont178187178188%_
                             _%L174378%_
                             _%L174379%_
                             _%L174380%_)
                            (_%__match178676178677%_
                             _%e173832174298%_
                             _%hd173833174301%_
                             _%tl173834174303%_
                             _%e173835174306%_
                             _%hd173836174309%_
                             _%tl173837174311%_
                             _%e173838174314%_
                             _%hd173839174317%_
                             _%tl173840174319%_
                             _%e173841174322%_
                             _%hd173842174325%_
                             _%tl173843174327%_
                             _%e173844174330%_
                             _%hd173845174333%_
                             _%tl173846174335%_
                             _%e173847174338%_
                             _%hd173848174341%_
                             _%tl173849174343%_
                             _%e173850174346%_
                             _%hd173851174349%_
                             _%tl173852174351%_
                             _%e173853174354%_
                             _%hd173854174357%_
                             _%tl173855174359%_)))))
                   (_%__match178470178471%_
                    (lambda (_%e173832174298%_
                             _%hd173833174301%_
                             _%tl173834174303%_
                             _%e173835174306%_
                             _%hd173836174309%_
                             _%tl173837174311%_
                             _%e173838174314%_
                             _%hd173839174317%_
                             _%tl173840174319%_
                             _%e173841174322%_
                             _%hd173842174325%_
                             _%tl173843174327%_
                             _%e173844174330%_
                             _%hd173845174333%_
                             _%tl173846174335%_
                             _%e173847174338%_
                             _%hd173848174341%_
                             _%tl173849174343%_
                             _%e173850174346%_
                             _%hd173851174349%_
                             _%tl173852174351%_
                             _%e173853174354%_
                             _%hd173854174357%_
                             _%tl173855174359%_
                             _%e173856174362%_
                             _%hd173857174365%_
                             _%tl173858174367%_
                             _%e173859174370%_
                             _%hd173860174373%_
                             _%tl173861174375%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173855174359%_))
                          (_%__match178472178473%_
                           _%e173832174298%_
                           _%hd173833174301%_
                           _%tl173834174303%_
                           _%e173835174306%_
                           _%hd173836174309%_
                           _%tl173837174311%_
                           _%e173838174314%_
                           _%hd173839174317%_
                           _%tl173840174319%_
                           _%e173841174322%_
                           _%hd173842174325%_
                           _%tl173843174327%_
                           _%e173844174330%_
                           _%hd173845174333%_
                           _%tl173846174335%_
                           _%e173847174338%_
                           _%hd173848174341%_
                           _%tl173849174343%_
                           _%e173850174346%_
                           _%hd173851174349%_
                           _%tl173852174351%_
                           _%e173853174354%_
                           _%hd173854174357%_
                           _%tl173855174359%_
                           _%e173856174362%_
                           _%hd173857174365%_
                           _%tl173858174367%_
                           _%e173859174370%_
                           _%hd173860174373%_
                           _%tl173861174375%_)
                          (_%__match178550178551%_
                           _%e173832174298%_
                           _%hd173833174301%_
                           _%tl173834174303%_
                           _%e173835174306%_
                           _%hd173836174309%_
                           _%tl173837174311%_
                           _%e173838174314%_
                           _%hd173839174317%_
                           _%tl173840174319%_
                           _%e173841174322%_
                           _%hd173842174325%_
                           _%tl173843174327%_
                           _%e173844174330%_
                           _%hd173845174333%_
                           _%tl173846174335%_
                           _%e173847174338%_
                           _%hd173848174341%_
                           _%tl173849174343%_
                           _%e173850174346%_
                           _%hd173851174349%_
                           _%tl173852174351%_
                           _%e173853174354%_
                           _%hd173854174357%_
                           _%tl173855174359%_
                           _%e173856174362%_
                           _%hd173857174365%_
                           _%tl173858174367%_
                           _%e173859174370%_
                           _%hd173860174373%_
                           _%tl173861174375%_))))
                   (_%__match178460178461%_
                    (lambda (_%e173832174298%_
                             _%hd173833174301%_
                             _%tl173834174303%_
                             _%e173835174306%_
                             _%hd173836174309%_
                             _%tl173837174311%_
                             _%e173838174314%_
                             _%hd173839174317%_
                             _%tl173840174319%_
                             _%e173841174322%_
                             _%hd173842174325%_
                             _%tl173843174327%_
                             _%e173844174330%_
                             _%hd173845174333%_
                             _%tl173846174335%_
                             _%e173847174338%_
                             _%hd173848174341%_
                             _%tl173849174343%_
                             _%e173850174346%_
                             _%hd173851174349%_
                             _%tl173852174351%_
                             _%e173853174354%_
                             _%hd173854174357%_
                             _%tl173855174359%_
                             _%e173856174362%_
                             _%hd173857174365%_
                             _%tl173858174367%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd173857174365%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173858174367%_))
                              (let ((_%e173859174370%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173858174367%_))))
                                (let ((_%tl173861174375%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173859174370%_)))
                                      (_%hd173860174373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173859174370%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173861174375%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl173855174359%_))
                                          (_%__match178472178473%_
                                           _%e173832174298%_
                                           _%hd173833174301%_
                                           _%tl173834174303%_
                                           _%e173835174306%_
                                           _%hd173836174309%_
                                           _%tl173837174311%_
                                           _%e173838174314%_
                                           _%hd173839174317%_
                                           _%tl173840174319%_
                                           _%e173841174322%_
                                           _%hd173842174325%_
                                           _%tl173843174327%_
                                           _%e173844174330%_
                                           _%hd173845174333%_
                                           _%tl173846174335%_
                                           _%e173847174338%_
                                           _%hd173848174341%_
                                           _%tl173849174343%_
                                           _%e173850174346%_
                                           _%hd173851174349%_
                                           _%tl173852174351%_
                                           _%e173853174354%_
                                           _%hd173854174357%_
                                           _%tl173855174359%_
                                           _%e173856174362%_
                                           _%hd173857174365%_
                                           _%tl173858174367%_
                                           _%e173859174370%_
                                           _%hd173860174373%_
                                           _%tl173861174375%_)
                                          (_%__match178550178551%_
                                           _%e173832174298%_
                                           _%hd173833174301%_
                                           _%tl173834174303%_
                                           _%e173835174306%_
                                           _%hd173836174309%_
                                           _%tl173837174311%_
                                           _%e173838174314%_
                                           _%hd173839174317%_
                                           _%tl173840174319%_
                                           _%e173841174322%_
                                           _%hd173842174325%_
                                           _%tl173843174327%_
                                           _%e173844174330%_
                                           _%hd173845174333%_
                                           _%tl173846174335%_
                                           _%e173847174338%_
                                           _%hd173848174341%_
                                           _%tl173849174343%_
                                           _%e173850174346%_
                                           _%hd173851174349%_
                                           _%tl173852174351%_
                                           _%e173853174354%_
                                           _%hd173854174357%_
                                           _%tl173855174359%_
                                           _%e173856174362%_
                                           _%hd173857174365%_
                                           _%tl173858174367%_
                                           _%e173859174370%_
                                           _%hd173860174373%_
                                           _%tl173861174375%_))
                                      (_%__match178674178675%_
                                       _%e173832174298%_
                                       _%hd173833174301%_
                                       _%tl173834174303%_
                                       _%e173835174306%_
                                       _%hd173836174309%_
                                       _%tl173837174311%_
                                       _%e173838174314%_
                                       _%hd173839174317%_
                                       _%tl173840174319%_
                                       _%e173841174322%_
                                       _%hd173842174325%_
                                       _%tl173843174327%_
                                       _%e173844174330%_
                                       _%hd173845174333%_
                                       _%tl173846174335%_
                                       _%e173847174338%_
                                       _%hd173848174341%_
                                       _%tl173849174343%_
                                       _%e173850174346%_
                                       _%hd173851174349%_
                                       _%tl173852174351%_
                                       _%e173853174354%_
                                       _%hd173854174357%_
                                       _%tl173855174359%_))))
                              (_%__match178674178675%_
                               _%e173832174298%_
                               _%hd173833174301%_
                               _%tl173834174303%_
                               _%e173835174306%_
                               _%hd173836174309%_
                               _%tl173837174311%_
                               _%e173838174314%_
                               _%hd173839174317%_
                               _%tl173840174319%_
                               _%e173841174322%_
                               _%hd173842174325%_
                               _%tl173843174327%_
                               _%e173844174330%_
                               _%hd173845174333%_
                               _%tl173846174335%_
                               _%e173847174338%_
                               _%hd173848174341%_
                               _%tl173849174343%_
                               _%e173850174346%_
                               _%hd173851174349%_
                               _%tl173852174351%_
                               _%e173853174354%_
                               _%hd173854174357%_
                               _%tl173855174359%_))
                          (_%__match178674178675%_
                           _%e173832174298%_
                           _%hd173833174301%_
                           _%tl173834174303%_
                           _%e173835174306%_
                           _%hd173836174309%_
                           _%tl173837174311%_
                           _%e173838174314%_
                           _%hd173839174317%_
                           _%tl173840174319%_
                           _%e173841174322%_
                           _%hd173842174325%_
                           _%tl173843174327%_
                           _%e173844174330%_
                           _%hd173845174333%_
                           _%tl173846174335%_
                           _%e173847174338%_
                           _%hd173848174341%_
                           _%tl173849174343%_
                           _%e173850174346%_
                           _%hd173851174349%_
                           _%tl173852174351%_
                           _%e173853174354%_
                           _%hd173854174357%_
                           _%tl173855174359%_))))
                   (_%__match178392178393%_
                    (lambda (_%e173781174417%_
                             _%hd173782174420%_
                             _%tl173783174422%_
                             _%e173784174425%_
                             _%hd173785174428%_
                             _%tl173786174430%_
                             _%e173787174433%_
                             _%hd173788174436%_
                             _%tl173789174438%_
                             _%e173790174441%_
                             _%hd173791174444%_
                             _%tl173792174446%_
                             _%e173793174449%_
                             _%hd173794174452%_
                             _%tl173795174454%_
                             _%e173796174457%_
                             _%hd173797174460%_
                             _%tl173798174462%_
                             _%e173799174465%_
                             _%hd173800174468%_
                             _%tl173801174470%_
                             _%e173802174473%_
                             _%hd173803174476%_
                             _%tl173804174478%_
                             _%e173805174481%_
                             _%hd173806174484%_
                             _%tl173807174486%_
                             _%e173808174489%_
                             _%hd173809174492%_
                             _%tl173810174494%_
                             _%e173811174497%_
                             _%hd173812174500%_
                             _%tl173813174502%_
                             _%e173814174505%_
                             _%hd173815174508%_
                             _%tl173816174510%_
                             _%e173817174513%_
                             _%hd173818174516%_
                             _%tl173819174518%_
                             _%__splice178185178186%_
                             _%target173820174521%_
                             _%tl173822174523%_)
                      (letrec ((_%loop173823174526%_
                                (lambda (_%hd173821174529%_
                                         _%args173827174531%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173821174529%_))
                                      (let ((_%e173824174534%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173821174529%_))))
                                        (let ((_%lp-tl173826174539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173824174534%_)))
                                              (_%lp-hd173825174537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173824174534%_))))
                                          (_%loop173823174526%_
                                           _%lp-tl173826174539%_
                                           (cons _%lp-hd173825174537%_
                                                 _%args173827174531%_))))
                                      (let ((_%args173828174542%_
                                             (reverse _%args173827174531%_)))
                                        (let ((_%L174545%_
                                               _%args173828174542%_)
                                              (_%L174546%_ _%hd173818174516%_)
                                              (_%L174547%_ _%hd173809174492%_)
                                              (_%L174548%_ _%hd173800174468%_)
                                              (_%L174549%_ _%hd173791174444%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174549%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174548%_
                                                      'call-method))
                                                   (let ((__tmp179307
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173722%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174547%_
                                                      __tmp179307)))
                                              (_%__kont178183178184%_
                                               _%L174545%_
                                               _%L174546%_
                                               _%L174547%_
                                               _%L174548%_
                                               _%L174549%_)
                                              (_%__kont178195178196%_))))))))
                        (_%loop173823174526%_ _%target173820174521%_ '()))))
                   (_%__match178350178351%_
                    (lambda (_%e173781174417%_
                             _%hd173782174420%_
                             _%tl173783174422%_
                             _%e173784174425%_
                             _%hd173785174428%_
                             _%tl173786174430%_
                             _%e173787174433%_
                             _%hd173788174436%_
                             _%tl173789174438%_
                             _%e173790174441%_
                             _%hd173791174444%_
                             _%tl173792174446%_
                             _%e173793174449%_
                             _%hd173794174452%_
                             _%tl173795174454%_
                             _%e173796174457%_
                             _%hd173797174460%_
                             _%tl173798174462%_
                             _%e173799174465%_
                             _%hd173800174468%_
                             _%tl173801174470%_
                             _%e173802174473%_
                             _%hd173803174476%_
                             _%tl173804174478%_
                             _%e173805174481%_
                             _%hd173806174484%_
                             _%tl173807174486%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd173806174484%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173807174486%_))
                              (let ((_%e173808174489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173807174486%_))))
                                (let ((_%tl173810174494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173808174489%_)))
                                      (_%hd173809174492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173808174489%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173810174494%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173804174478%_))
                                          (let ((_%e173811174497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173804174478%_))))
                                            (let ((_%tl173813174502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173811174497%_)))
                                                  (_%hd173812174500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173811174497%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173812174500%_))
                                                  (let ((_%e173814174505%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173812174500%_))))
                                                    (let ((_%tl173816174510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173814174505%_)))
                                                          (_%hd173815174508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173814174505%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd173815174508%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd173815174508%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173816174510%_))
                          (let ((_%e173817174513%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173816174510%_))))
                            (let ((_%tl173819174518%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173817174513%_)))
                                  (_%hd173818174516%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173817174513%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173819174518%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl173813174502%_))
                                      (let ((_%__splice178185178186%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl173813174502%_
                                                '0))))
                                        (let ((_%tl173822174523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178185178186%_
                                                  '1)))
                                              (_%target173820174521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178185178186%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173822174523%_))
                                              (_%__match178392178393%_
                                               _%e173781174417%_
                                               _%hd173782174420%_
                                               _%tl173783174422%_
                                               _%e173784174425%_
                                               _%hd173785174428%_
                                               _%tl173786174430%_
                                               _%e173787174433%_
                                               _%hd173788174436%_
                                               _%tl173789174438%_
                                               _%e173790174441%_
                                               _%hd173791174444%_
                                               _%tl173792174446%_
                                               _%e173793174449%_
                                               _%hd173794174452%_
                                               _%tl173795174454%_
                                               _%e173796174457%_
                                               _%hd173797174460%_
                                               _%tl173798174462%_
                                               _%e173799174465%_
                                               _%hd173800174468%_
                                               _%tl173801174470%_
                                               _%e173802174473%_
                                               _%hd173803174476%_
                                               _%tl173804174478%_
                                               _%e173805174481%_
                                               _%hd173806174484%_
                                               _%tl173807174486%_
                                               _%e173808174489%_
                                               _%hd173809174492%_
                                               _%tl173810174494%_
                                               _%e173811174497%_
                                               _%hd173812174500%_
                                               _%tl173813174502%_
                                               _%e173814174505%_
                                               _%hd173815174508%_
                                               _%tl173816174510%_
                                               _%e173817174513%_
                                               _%hd173818174516%_
                                               _%tl173819174518%_
                                               _%__splice178185178186%_
                                               _%target173820174521%_
                                               _%tl173822174523%_)
                                              (_%__kont178195178196%_))))
                                      (_%__kont178195178196%_))
                                  (_%__kont178195178196%_))))
                          (_%__kont178195178196%_))
                      (_%__kont178195178196%_))
                  (_%__kont178195178196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178195178196%_))))
                                          (_%__match178674178675%_
                                           _%e173781174417%_
                                           _%hd173782174420%_
                                           _%tl173783174422%_
                                           _%e173784174425%_
                                           _%hd173785174428%_
                                           _%tl173786174430%_
                                           _%e173787174433%_
                                           _%hd173788174436%_
                                           _%tl173789174438%_
                                           _%e173790174441%_
                                           _%hd173791174444%_
                                           _%tl173792174446%_
                                           _%e173793174449%_
                                           _%hd173794174452%_
                                           _%tl173795174454%_
                                           _%e173796174457%_
                                           _%hd173797174460%_
                                           _%tl173798174462%_
                                           _%e173799174465%_
                                           _%hd173800174468%_
                                           _%tl173801174470%_
                                           _%e173802174473%_
                                           _%hd173803174476%_
                                           _%tl173804174478%_))
                                      (_%__match178674178675%_
                                       _%e173781174417%_
                                       _%hd173782174420%_
                                       _%tl173783174422%_
                                       _%e173784174425%_
                                       _%hd173785174428%_
                                       _%tl173786174430%_
                                       _%e173787174433%_
                                       _%hd173788174436%_
                                       _%tl173789174438%_
                                       _%e173790174441%_
                                       _%hd173791174444%_
                                       _%tl173792174446%_
                                       _%e173793174449%_
                                       _%hd173794174452%_
                                       _%tl173795174454%_
                                       _%e173796174457%_
                                       _%hd173797174460%_
                                       _%tl173798174462%_
                                       _%e173799174465%_
                                       _%hd173800174468%_
                                       _%tl173801174470%_
                                       _%e173802174473%_
                                       _%hd173803174476%_
                                       _%tl173804174478%_))))
                              (_%__match178674178675%_
                               _%e173781174417%_
                               _%hd173782174420%_
                               _%tl173783174422%_
                               _%e173784174425%_
                               _%hd173785174428%_
                               _%tl173786174430%_
                               _%e173787174433%_
                               _%hd173788174436%_
                               _%tl173789174438%_
                               _%e173790174441%_
                               _%hd173791174444%_
                               _%tl173792174446%_
                               _%e173793174449%_
                               _%hd173794174452%_
                               _%tl173795174454%_
                               _%e173796174457%_
                               _%hd173797174460%_
                               _%tl173798174462%_
                               _%e173799174465%_
                               _%hd173800174468%_
                               _%tl173801174470%_
                               _%e173802174473%_
                               _%hd173803174476%_
                               _%tl173804174478%_))
                          (_%__match178460178461%_
                           _%e173781174417%_
                           _%hd173782174420%_
                           _%tl173783174422%_
                           _%e173784174425%_
                           _%hd173785174428%_
                           _%tl173786174430%_
                           _%e173787174433%_
                           _%hd173788174436%_
                           _%tl173789174438%_
                           _%e173790174441%_
                           _%hd173791174444%_
                           _%tl173792174446%_
                           _%e173793174449%_
                           _%hd173794174452%_
                           _%tl173795174454%_
                           _%e173796174457%_
                           _%hd173797174460%_
                           _%tl173798174462%_
                           _%e173799174465%_
                           _%hd173800174468%_
                           _%tl173801174470%_
                           _%e173802174473%_
                           _%hd173803174476%_
                           _%tl173804174478%_
                           _%e173805174481%_
                           _%hd173806174484%_
                           _%tl173807174486%_))))
                   (_%__match178282178283%_
                    (lambda (_%e173737174606%_
                             _%hd173738174609%_
                             _%tl173739174611%_
                             _%e173740174614%_
                             _%hd173741174617%_
                             _%tl173742174619%_
                             _%e173743174622%_
                             _%hd173744174625%_
                             _%tl173745174627%_
                             _%e173746174630%_
                             _%hd173747174633%_
                             _%tl173748174635%_
                             _%e173749174638%_
                             _%hd173750174641%_
                             _%tl173751174643%_
                             _%e173752174646%_
                             _%hd173753174649%_
                             _%tl173754174651%_
                             _%e173755174654%_
                             _%hd173756174657%_
                             _%tl173757174659%_
                             _%e173758174662%_
                             _%hd173759174665%_
                             _%tl173760174667%_
                             _%e173761174670%_
                             _%hd173762174673%_
                             _%tl173763174675%_
                             _%e173764174678%_
                             _%hd173765174681%_
                             _%tl173766174683%_
                             _%__splice178181178182%_
                             _%target173767174686%_
                             _%tl173769174688%_)
                      (letrec ((_%loop173770174691%_
                                (lambda (_%hd173768174694%_
                                         _%args173774174696%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173768174694%_))
                                      (let ((_%e173771174699%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173768174694%_))))
                                        (let ((_%lp-tl173773174704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173771174699%_)))
                                              (_%lp-hd173772174702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173771174699%_))))
                                          (_%loop173770174691%_
                                           _%lp-tl173773174704%_
                                           (cons _%lp-hd173772174702%_
                                                 _%args173774174696%_))))
                                      (let ((_%args173775174707%_
                                             (reverse _%args173774174696%_)))
                                        (let ((_%L174710%_
                                               _%args173775174707%_)
                                              (_%L174711%_ _%hd173765174681%_)
                                              (_%L174712%_ _%hd173756174657%_)
                                              (_%L174713%_ _%hd173747174633%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174713%_
                                                      'call-method))
                                                   (let ((__tmp179308
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173722%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174712%_
                                                      __tmp179308)))
                                              (_%__kont178179178180%_
                                               _%L174710%_
                                               _%L174711%_
                                               _%L174712%_
                                               _%L174713%_)
                                              (_%__match178470178471%_
                                               _%e173737174606%_
                                               _%hd173738174609%_
                                               _%tl173739174611%_
                                               _%e173740174614%_
                                               _%hd173741174617%_
                                               _%tl173742174619%_
                                               _%e173743174622%_
                                               _%hd173744174625%_
                                               _%tl173745174627%_
                                               _%e173746174630%_
                                               _%hd173747174633%_
                                               _%tl173748174635%_
                                               _%e173749174638%_
                                               _%hd173750174641%_
                                               _%tl173751174643%_
                                               _%e173752174646%_
                                               _%hd173753174649%_
                                               _%tl173754174651%_
                                               _%e173755174654%_
                                               _%hd173756174657%_
                                               _%tl173757174659%_
                                               _%e173758174662%_
                                               _%hd173759174665%_
                                               _%tl173760174667%_
                                               _%e173761174670%_
                                               _%hd173762174673%_
                                               _%tl173763174675%_
                                               _%e173764174678%_
                                               _%hd173765174681%_
                                               _%tl173766174683%_))))))))
                        (_%loop173770174691%_ _%target173767174686%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx178177178178%_))
                  (let ((_%e173737174606%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx178177178178%_))))
                    (let ((_%tl173739174611%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173737174606%_)))
                          (_%hd173738174609%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173737174606%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173739174611%_))
                          (let ((_%e173740174614%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173739174611%_))))
                            (let ((_%tl173742174619%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173740174614%_)))
                                  (_%hd173741174617%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173740174614%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd173741174617%_))
                                  (let ((_%e173743174622%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd173741174617%_))))
                                    (let ((_%tl173745174627%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e173743174622%_)))
                                          (_%hd173744174625%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e173743174622%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd173744174625%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd173744174625%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl173745174627%_))
                                                  (let ((_%e173746174630%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl173745174627%_))))
                                                    (let ((_%tl173748174635%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173746174630%_)))
                                                          (_%hd173747174633%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173746174630%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl173748174635%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl173742174619%_))
                      (let ((_%e173749174638%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl173742174619%_))))
                        (let ((_%tl173751174643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173749174638%_)))
                              (_%hd173750174641%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173749174638%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd173750174641%_))
                              (let ((_%e173752174646%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd173750174641%_))))
                                (let ((_%tl173754174651%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173752174646%_)))
                                      (_%hd173753174649%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173752174646%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd173753174649%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd173753174649%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173754174651%_))
                                              (let ((_%e173755174654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173754174651%_))))
                                                (let ((_%tl173757174659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173755174654%_)))
                                                      (_%hd173756174657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173755174654%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173757174659%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl173751174643%_))
                                                          (let ((_%e173758174662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl173751174643%_))))
                    (let ((_%tl173760174667%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173758174662%_)))
                          (_%hd173759174665%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173758174662%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd173759174665%_))
                          (let ((_%e173761174670%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd173759174665%_))))
                            (let ((_%tl173763174675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173761174670%_)))
                                  (_%hd173762174673%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173761174670%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd173762174673%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd173762174673%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173763174675%_))
                                          (let ((_%e173764174678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173763174675%_))))
                                            (let ((_%tl173766174683%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173764174678%_)))
                                                  (_%hd173765174681%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173764174678%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl173766174683%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl173760174667%_))
                                                      (let ((_%__splice178181178182%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl173760174667%_
                        '0))))
                (let ((_%tl173769174688%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice178181178182%_ '1)))
                      (_%target173767174686%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice178181178182%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl173769174688%_))
                      (_%__match178282178283%_
                       _%e173737174606%_
                       _%hd173738174609%_
                       _%tl173739174611%_
                       _%e173740174614%_
                       _%hd173741174617%_
                       _%tl173742174619%_
                       _%e173743174622%_
                       _%hd173744174625%_
                       _%tl173745174627%_
                       _%e173746174630%_
                       _%hd173747174633%_
                       _%tl173748174635%_
                       _%e173749174638%_
                       _%hd173750174641%_
                       _%tl173751174643%_
                       _%e173752174646%_
                       _%hd173753174649%_
                       _%tl173754174651%_
                       _%e173755174654%_
                       _%hd173756174657%_
                       _%tl173757174659%_
                       _%e173758174662%_
                       _%hd173759174665%_
                       _%tl173760174667%_
                       _%e173761174670%_
                       _%hd173762174673%_
                       _%tl173763174675%_
                       _%e173764174678%_
                       _%hd173765174681%_
                       _%tl173766174683%_
                       _%__splice178181178182%_
                       _%target173767174686%_
                       _%tl173769174688%_)
                      (_%__match178470178471%_
                       _%e173737174606%_
                       _%hd173738174609%_
                       _%tl173739174611%_
                       _%e173740174614%_
                       _%hd173741174617%_
                       _%tl173742174619%_
                       _%e173743174622%_
                       _%hd173744174625%_
                       _%tl173745174627%_
                       _%e173746174630%_
                       _%hd173747174633%_
                       _%tl173748174635%_
                       _%e173749174638%_
                       _%hd173750174641%_
                       _%tl173751174643%_
                       _%e173752174646%_
                       _%hd173753174649%_
                       _%tl173754174651%_
                       _%e173755174654%_
                       _%hd173756174657%_
                       _%tl173757174659%_
                       _%e173758174662%_
                       _%hd173759174665%_
                       _%tl173760174667%_
                       _%e173761174670%_
                       _%hd173762174673%_
                       _%tl173763174675%_
                       _%e173764174678%_
                       _%hd173765174681%_
                       _%tl173766174683%_))))
              (_%__match178470178471%_
               _%e173737174606%_
               _%hd173738174609%_
               _%tl173739174611%_
               _%e173740174614%_
               _%hd173741174617%_
               _%tl173742174619%_
               _%e173743174622%_
               _%hd173744174625%_
               _%tl173745174627%_
               _%e173746174630%_
               _%hd173747174633%_
               _%tl173748174635%_
               _%e173749174638%_
               _%hd173750174641%_
               _%tl173751174643%_
               _%e173752174646%_
               _%hd173753174649%_
               _%tl173754174651%_
               _%e173755174654%_
               _%hd173756174657%_
               _%tl173757174659%_
               _%e173758174662%_
               _%hd173759174665%_
               _%tl173760174667%_
               _%e173761174670%_
               _%hd173762174673%_
               _%tl173763174675%_
               _%e173764174678%_
               _%hd173765174681%_
               _%tl173766174683%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match178674178675%_
                                                   _%e173737174606%_
                                                   _%hd173738174609%_
                                                   _%tl173739174611%_
                                                   _%e173740174614%_
                                                   _%hd173741174617%_
                                                   _%tl173742174619%_
                                                   _%e173743174622%_
                                                   _%hd173744174625%_
                                                   _%tl173745174627%_
                                                   _%e173746174630%_
                                                   _%hd173747174633%_
                                                   _%tl173748174635%_
                                                   _%e173749174638%_
                                                   _%hd173750174641%_
                                                   _%tl173751174643%_
                                                   _%e173752174646%_
                                                   _%hd173753174649%_
                                                   _%tl173754174651%_
                                                   _%e173755174654%_
                                                   _%hd173756174657%_
                                                   _%tl173757174659%_
                                                   _%e173758174662%_
                                                   _%hd173759174665%_
                                                   _%tl173760174667%_))))
                                          (_%__match178674178675%_
                                           _%e173737174606%_
                                           _%hd173738174609%_
                                           _%tl173739174611%_
                                           _%e173740174614%_
                                           _%hd173741174617%_
                                           _%tl173742174619%_
                                           _%e173743174622%_
                                           _%hd173744174625%_
                                           _%tl173745174627%_
                                           _%e173746174630%_
                                           _%hd173747174633%_
                                           _%tl173748174635%_
                                           _%e173749174638%_
                                           _%hd173750174641%_
                                           _%tl173751174643%_
                                           _%e173752174646%_
                                           _%hd173753174649%_
                                           _%tl173754174651%_
                                           _%e173755174654%_
                                           _%hd173756174657%_
                                           _%tl173757174659%_
                                           _%e173758174662%_
                                           _%hd173759174665%_
                                           _%tl173760174667%_))
                                      (_%__match178350178351%_
                                       _%e173737174606%_
                                       _%hd173738174609%_
                                       _%tl173739174611%_
                                       _%e173740174614%_
                                       _%hd173741174617%_
                                       _%tl173742174619%_
                                       _%e173743174622%_
                                       _%hd173744174625%_
                                       _%tl173745174627%_
                                       _%e173746174630%_
                                       _%hd173747174633%_
                                       _%tl173748174635%_
                                       _%e173749174638%_
                                       _%hd173750174641%_
                                       _%tl173751174643%_
                                       _%e173752174646%_
                                       _%hd173753174649%_
                                       _%tl173754174651%_
                                       _%e173755174654%_
                                       _%hd173756174657%_
                                       _%tl173757174659%_
                                       _%e173758174662%_
                                       _%hd173759174665%_
                                       _%tl173760174667%_
                                       _%e173761174670%_
                                       _%hd173762174673%_
                                       _%tl173763174675%_))
                                  (_%__match178674178675%_
                                   _%e173737174606%_
                                   _%hd173738174609%_
                                   _%tl173739174611%_
                                   _%e173740174614%_
                                   _%hd173741174617%_
                                   _%tl173742174619%_
                                   _%e173743174622%_
                                   _%hd173744174625%_
                                   _%tl173745174627%_
                                   _%e173746174630%_
                                   _%hd173747174633%_
                                   _%tl173748174635%_
                                   _%e173749174638%_
                                   _%hd173750174641%_
                                   _%tl173751174643%_
                                   _%e173752174646%_
                                   _%hd173753174649%_
                                   _%tl173754174651%_
                                   _%e173755174654%_
                                   _%hd173756174657%_
                                   _%tl173757174659%_
                                   _%e173758174662%_
                                   _%hd173759174665%_
                                   _%tl173760174667%_))))
                          (_%__match178674178675%_
                           _%e173737174606%_
                           _%hd173738174609%_
                           _%tl173739174611%_
                           _%e173740174614%_
                           _%hd173741174617%_
                           _%tl173742174619%_
                           _%e173743174622%_
                           _%hd173744174625%_
                           _%tl173745174627%_
                           _%e173746174630%_
                           _%hd173747174633%_
                           _%tl173748174635%_
                           _%e173749174638%_
                           _%hd173750174641%_
                           _%tl173751174643%_
                           _%e173752174646%_
                           _%hd173753174649%_
                           _%tl173754174651%_
                           _%e173755174654%_
                           _%hd173756174657%_
                           _%tl173757174659%_
                           _%e173758174662%_
                           _%hd173759174665%_
                           _%tl173760174667%_))))
                  (_%__match178612178613%_
                   _%e173737174606%_
                   _%hd173738174609%_
                   _%tl173739174611%_
                   _%e173740174614%_
                   _%hd173741174617%_
                   _%tl173742174619%_
                   _%e173743174622%_
                   _%hd173744174625%_
                   _%tl173745174627%_
                   _%e173746174630%_
                   _%hd173747174633%_
                   _%tl173748174635%_
                   _%e173749174638%_
                   _%hd173750174641%_
                   _%tl173751174643%_
                   _%e173752174646%_
                   _%hd173753174649%_
                   _%tl173754174651%_
                   _%e173755174654%_
                   _%hd173756174657%_
                   _%tl173757174659%_))
              (_%__kont178195178196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont178195178196%_))
                                          (_%__kont178195178196%_))
                                      (_%__kont178195178196%_))))
                              (_%__kont178195178196%_))))
                      (_%__kont178195178196%_))
                  (_%__kont178195178196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178195178196%_))
                                              (_%__kont178195178196%_))
                                          (_%__kont178195178196%_))))
                                  (_%__kont178195178196%_))))
                          (_%__kont178195178196%_))))
                  (_%__kont178195178196%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self172661%_ _%stx172662%_)
        (letrec ((_%force-e172664%_
                  (lambda (_%target173720%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target173720%_ '()))
                                      '()))))))
          (let* ((_%__stx178679178680%_ _%stx172662%_)
                 (_%g172672172894%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx178679178680%_)))))
            (let ((_%__kont178681178682%_
                   (lambda (_%L173666%_ _%L173667%_ _%L173668%_ _%L173669%_)
                     (let ((_%$method173714%_
                            (let ((__tmp179310
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172661%_ 'methods)))
                                  (__tmp179309
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173667%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179310 __tmp179309)))
                           (_%args173715%_
                            (map (lambda (_%g173702173704%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172661%_
                                      _%g173702173704%_)))
                                 (let ((__tmp179311
                                        (lambda (_%g173706173709%_
                                                 _%g173707173711%_)
                                          (cons _%g173706173709%_
                                                _%g173707173711%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179311 '() _%L173666%_)))))
                       (let ((__tmp179312
                              (cons '%#call
                                    (cons (_%force-e172664%_ _%$method173714%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172661%_
                                                               'receiver))
                                                            '()))
                                                _%args173715%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179312 _%stx172662%_)))))
                  (_%__kont178685178686%_
                   (lambda (_%L173498%_
                            _%L173499%_
                            _%L173500%_
                            _%L173501%_
                            _%L173502%_)
                     (let ((_%$method173554%_
                            (let ((__tmp179314
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172661%_ 'methods)))
                                  (__tmp179313
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173499%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179314 __tmp179313)))
                           (_%args173555%_
                            (map (lambda (_%g173542173544%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172661%_
                                      _%g173542173544%_)))
                                 (let ((__tmp179315
                                        (lambda (_%g173546173549%_
                                                 _%g173547173551%_)
                                          (cons _%g173546173549%_
                                                _%g173547173551%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179315 '() _%L173498%_)))))
                       (let ((__tmp179316
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e172664%_
                                                 _%$method173554%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172661%_ 'receiver))
                          '()))
              _%args173555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179316 _%stx172662%_)))))
                  (_%__kont178689178690%_
                   (lambda (_%L173329%_ _%L173330%_ _%L173331%_)
                     (let* ((_%$field173363%_
                             (let ((__tmp179318
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self172661%_ 'slots)))
                                   (__tmp179317
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L173329%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp179318 __tmp179317)))
                            (__tmp179319
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self172661%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field173363%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self172661%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp179319 _%stx172662%_))))
                  (_%__kont178691178692%_
                   (lambda (_%L173203%_ _%L173204%_ _%L173205%_ _%L173206%_)
                     (let ((_%$field173241%_
                            (let ((__tmp179321
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172661%_ 'slots)))
                                  (__tmp179320
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173204%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179321 __tmp179320)))
                           (_%expr173242%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self172661%_ _%L173203%_))))
                       (let ((__tmp179322
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self172661%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field173241%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172661%_ 'receiver))
                          '()))
              (cons _%expr173242%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179322 _%stx172662%_)))))
                  (_%__kont178693178694%_
                   (lambda (_%L173075%_ _%L173076%_)
                     (let* ((_%accessor173098%_
                             (let ((__tmp179323
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L173076%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179323)))
                            (_%klass173100%_
                             (let ((__tmp179324
                                    (##structure-ref
                                     _%accessor173098%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172662%_
                                __tmp179324)))
                            (_%slot173102%_
                             (##structure-ref
                              _%accessor173098%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor173098%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass173100%_
                                      _%slot173102%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass173100%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx172662%_
                           (let* ((_%$field173108%_
                                   (let ((__tmp179325
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172661%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179325 _%slot173102%_)))
                                  (__tmp179326
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172661%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field173108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172661%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179326
                              _%stx172662%_))))))
                  (_%__kont178695178696%_
                   (lambda (_%L172970%_ _%L172971%_ _%L172972%_)
                     (let* ((_%mutator173000%_
                             (let ((__tmp179327
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172972%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179327)))
                            (_%klass173002%_
                             (let ((__tmp179328
                                    (##structure-ref
                                     _%mutator173000%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172662%_
                                __tmp179328)))
                            (_%slot173004%_
                             (##structure-ref
                              _%mutator173000%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr173006%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self172661%_ _%L172970%_))))
                       (if (if (##structure-ref
                                _%mutator173000%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass173002%_
                                      _%slot173004%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass173002%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp179329
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L172972%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L172971%_
                                                                '()))
                                                    (cons _%expr173006%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179329 _%stx172662%_))
                           (let* ((_%$field173012%_
                                   (let ((__tmp179330
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172661%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179330 _%slot173004%_)))
                                  (__tmp179331
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172661%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field173012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172661%_ 'receiver))
                               '()))
                   (cons _%expr173006%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179331
                              _%stx172662%_))))))
                  (_%__kont178697178698%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self172661%_ _%stx172662%_)))))
              (let* ((_%__match179178179179%_
                      (lambda (_%e172866172906%_
                               _%hd172867172909%_
                               _%tl172868172911%_
                               _%e172869172914%_
                               _%hd172870172917%_
                               _%tl172871172919%_
                               _%e172872172922%_
                               _%hd172873172925%_
                               _%tl172874172927%_
                               _%e172875172930%_
                               _%hd172876172933%_
                               _%tl172877172935%_
                               _%e172878172938%_
                               _%hd172879172941%_
                               _%tl172880172943%_
                               _%e172881172946%_
                               _%hd172882172949%_
                               _%tl172883172951%_
                               _%e172884172954%_
                               _%hd172885172957%_
                               _%tl172886172959%_
                               _%e172887172962%_
                               _%hd172888172965%_
                               _%tl172889172967%_)
                        (let ((_%L172970%_ _%hd172888172965%_)
                              (_%L172971%_ _%hd172885172957%_)
                              (_%L172972%_ _%hd172876172933%_))
                          (if (and (let ((__tmp179332
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172661%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172971%_
                                      __tmp179332))
                                   (let ((__tmp179333
                                          (let ((__tmp179334
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172972%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179334))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179333
                                      'gxc#!mutator::t)))
                              (_%__kont178695178696%_
                               _%L172970%_
                               _%L172971%_
                               _%L172972%_)
                              (_%__kont178697178698%_)))))
                     (_%__match179176179177%_
                      (lambda (_%e172866172906%_
                               _%hd172867172909%_
                               _%tl172868172911%_
                               _%e172869172914%_
                               _%hd172870172917%_
                               _%tl172871172919%_
                               _%e172872172922%_
                               _%hd172873172925%_
                               _%tl172874172927%_
                               _%e172875172930%_
                               _%hd172876172933%_
                               _%tl172877172935%_
                               _%e172878172938%_
                               _%hd172879172941%_
                               _%tl172880172943%_
                               _%e172881172946%_
                               _%hd172882172949%_
                               _%tl172883172951%_
                               _%e172884172954%_
                               _%hd172885172957%_
                               _%tl172886172959%_
                               _%e172887172962%_
                               _%hd172888172965%_
                               _%tl172889172967%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172889172967%_))
                            (_%__match179178179179%_
                             _%e172866172906%_
                             _%hd172867172909%_
                             _%tl172868172911%_
                             _%e172869172914%_
                             _%hd172870172917%_
                             _%tl172871172919%_
                             _%e172872172922%_
                             _%hd172873172925%_
                             _%tl172874172927%_
                             _%e172875172930%_
                             _%hd172876172933%_
                             _%tl172877172935%_
                             _%e172878172938%_
                             _%hd172879172941%_
                             _%tl172880172943%_
                             _%e172881172946%_
                             _%hd172882172949%_
                             _%tl172883172951%_
                             _%e172884172954%_
                             _%hd172885172957%_
                             _%tl172886172959%_
                             _%e172887172962%_
                             _%hd172888172965%_
                             _%tl172889172967%_)
                            (_%__kont178697178698%_))))
                     (_%__match179170179171%_
                      (lambda (_%e172866172906%_
                               _%hd172867172909%_
                               _%tl172868172911%_
                               _%e172869172914%_
                               _%hd172870172917%_
                               _%tl172871172919%_
                               _%e172872172922%_
                               _%hd172873172925%_
                               _%tl172874172927%_
                               _%e172875172930%_
                               _%hd172876172933%_
                               _%tl172877172935%_
                               _%e172878172938%_
                               _%hd172879172941%_
                               _%tl172880172943%_
                               _%e172881172946%_
                               _%hd172882172949%_
                               _%tl172883172951%_
                               _%e172884172954%_
                               _%hd172885172957%_
                               _%tl172886172959%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172880172943%_))
                            (let ((_%e172887172962%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172880172943%_))))
                              (let ((_%tl172889172967%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172887172962%_)))
                                    (_%hd172888172965%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172887172962%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172889172967%_))
                                    (_%__match179178179179%_
                                     _%e172866172906%_
                                     _%hd172867172909%_
                                     _%tl172868172911%_
                                     _%e172869172914%_
                                     _%hd172870172917%_
                                     _%tl172871172919%_
                                     _%e172872172922%_
                                     _%hd172873172925%_
                                     _%tl172874172927%_
                                     _%e172875172930%_
                                     _%hd172876172933%_
                                     _%tl172877172935%_
                                     _%e172878172938%_
                                     _%hd172879172941%_
                                     _%tl172880172943%_
                                     _%e172881172946%_
                                     _%hd172882172949%_
                                     _%tl172883172951%_
                                     _%e172884172954%_
                                     _%hd172885172957%_
                                     _%tl172886172959%_
                                     _%e172887172962%_
                                     _%hd172888172965%_
                                     _%tl172889172967%_)
                                    (_%__kont178697178698%_))))
                            (_%__kont178697178698%_))))
                     (_%__match179116179117%_
                      (lambda (_%e172842173019%_
                               _%hd172843173022%_
                               _%tl172844173024%_
                               _%e172845173027%_
                               _%hd172846173030%_
                               _%tl172847173032%_
                               _%e172848173035%_
                               _%hd172849173038%_
                               _%tl172850173040%_
                               _%e172851173043%_
                               _%hd172852173046%_
                               _%tl172853173048%_
                               _%e172854173051%_
                               _%hd172855173054%_
                               _%tl172856173056%_
                               _%e172857173059%_
                               _%hd172858173062%_
                               _%tl172859173064%_
                               _%e172860173067%_
                               _%hd172861173070%_
                               _%tl172862173072%_)
                        (let ((_%L173075%_ _%hd172861173070%_)
                              (_%L173076%_ _%hd172852173046%_))
                          (if (and (let ((__tmp179335
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172661%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173075%_
                                      __tmp179335))
                                   (let ((__tmp179336
                                          (let ((__tmp179337
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L173076%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179337))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179336
                                      'gxc#!accessor::t)))
                              (_%__kont178693178694%_ _%L173075%_ _%L173076%_)
                              (_%__kont178697178698%_)))))
                     (_%__match179114179115%_
                      (lambda (_%e172842173019%_
                               _%hd172843173022%_
                               _%tl172844173024%_
                               _%e172845173027%_
                               _%hd172846173030%_
                               _%tl172847173032%_
                               _%e172848173035%_
                               _%hd172849173038%_
                               _%tl172850173040%_
                               _%e172851173043%_
                               _%hd172852173046%_
                               _%tl172853173048%_
                               _%e172854173051%_
                               _%hd172855173054%_
                               _%tl172856173056%_
                               _%e172857173059%_
                               _%hd172858173062%_
                               _%tl172859173064%_
                               _%e172860173067%_
                               _%hd172861173070%_
                               _%tl172862173072%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172856173056%_))
                            (_%__match179116179117%_
                             _%e172842173019%_
                             _%hd172843173022%_
                             _%tl172844173024%_
                             _%e172845173027%_
                             _%hd172846173030%_
                             _%tl172847173032%_
                             _%e172848173035%_
                             _%hd172849173038%_
                             _%tl172850173040%_
                             _%e172851173043%_
                             _%hd172852173046%_
                             _%tl172853173048%_
                             _%e172854173051%_
                             _%hd172855173054%_
                             _%tl172856173056%_
                             _%e172857173059%_
                             _%hd172858173062%_
                             _%tl172859173064%_
                             _%e172860173067%_
                             _%hd172861173070%_
                             _%tl172862173072%_)
                            (_%__match179170179171%_
                             _%e172842173019%_
                             _%hd172843173022%_
                             _%tl172844173024%_
                             _%e172845173027%_
                             _%hd172846173030%_
                             _%tl172847173032%_
                             _%e172848173035%_
                             _%hd172849173038%_
                             _%tl172850173040%_
                             _%e172851173043%_
                             _%hd172852173046%_
                             _%tl172853173048%_
                             _%e172854173051%_
                             _%hd172855173054%_
                             _%tl172856173056%_
                             _%e172857173059%_
                             _%hd172858173062%_
                             _%tl172859173064%_
                             _%e172860173067%_
                             _%hd172861173070%_
                             _%tl172862173072%_))))
                     (_%__match179060179061%_
                      (lambda (_%e172807173115%_
                               _%hd172808173118%_
                               _%tl172809173120%_
                               _%e172810173123%_
                               _%hd172811173126%_
                               _%tl172812173128%_
                               _%e172813173131%_
                               _%hd172814173134%_
                               _%tl172815173136%_
                               _%e172816173139%_
                               _%hd172817173142%_
                               _%tl172818173144%_
                               _%e172819173147%_
                               _%hd172820173150%_
                               _%tl172821173152%_
                               _%e172822173155%_
                               _%hd172823173158%_
                               _%tl172824173160%_
                               _%e172825173163%_
                               _%hd172826173166%_
                               _%tl172827173168%_
                               _%e172828173171%_
                               _%hd172829173174%_
                               _%tl172830173176%_
                               _%e172831173179%_
                               _%hd172832173182%_
                               _%tl172833173184%_
                               _%e172834173187%_
                               _%hd172835173190%_
                               _%tl172836173192%_
                               _%e172837173195%_
                               _%hd172838173198%_
                               _%tl172839173200%_)
                        (let ((_%L173203%_ _%hd172838173198%_)
                              (_%L173204%_ _%hd172835173190%_)
                              (_%L173205%_ _%hd172826173166%_)
                              (_%L173206%_ _%hd172817173142%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173206%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173206%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp179338
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172661%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173205%_
                                      __tmp179338)))
                              (_%__kont178691178692%_
                               _%L173203%_
                               _%L173204%_
                               _%L173205%_
                               _%L173206%_)
                              (_%__kont178697178698%_)))))
                     (_%__match179052179053%_
                      (lambda (_%e172807173115%_
                               _%hd172808173118%_
                               _%tl172809173120%_
                               _%e172810173123%_
                               _%hd172811173126%_
                               _%tl172812173128%_
                               _%e172813173131%_
                               _%hd172814173134%_
                               _%tl172815173136%_
                               _%e172816173139%_
                               _%hd172817173142%_
                               _%tl172818173144%_
                               _%e172819173147%_
                               _%hd172820173150%_
                               _%tl172821173152%_
                               _%e172822173155%_
                               _%hd172823173158%_
                               _%tl172824173160%_
                               _%e172825173163%_
                               _%hd172826173166%_
                               _%tl172827173168%_
                               _%e172828173171%_
                               _%hd172829173174%_
                               _%tl172830173176%_
                               _%e172831173179%_
                               _%hd172832173182%_
                               _%tl172833173184%_
                               _%e172834173187%_
                               _%hd172835173190%_
                               _%tl172836173192%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172830173176%_))
                            (let ((_%e172837173195%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172830173176%_))))
                              (let ((_%tl172839173200%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172837173195%_)))
                                    (_%hd172838173198%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172837173195%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172839173200%_))
                                    (_%__match179060179061%_
                                     _%e172807173115%_
                                     _%hd172808173118%_
                                     _%tl172809173120%_
                                     _%e172810173123%_
                                     _%hd172811173126%_
                                     _%tl172812173128%_
                                     _%e172813173131%_
                                     _%hd172814173134%_
                                     _%tl172815173136%_
                                     _%e172816173139%_
                                     _%hd172817173142%_
                                     _%tl172818173144%_
                                     _%e172819173147%_
                                     _%hd172820173150%_
                                     _%tl172821173152%_
                                     _%e172822173155%_
                                     _%hd172823173158%_
                                     _%tl172824173160%_
                                     _%e172825173163%_
                                     _%hd172826173166%_
                                     _%tl172827173168%_
                                     _%e172828173171%_
                                     _%hd172829173174%_
                                     _%tl172830173176%_
                                     _%e172831173179%_
                                     _%hd172832173182%_
                                     _%tl172833173184%_
                                     _%e172834173187%_
                                     _%hd172835173190%_
                                     _%tl172836173192%_
                                     _%e172837173195%_
                                     _%hd172838173198%_
                                     _%tl172839173200%_)
                                    (_%__kont178697178698%_))))
                            (_%__match179176179177%_
                             _%e172807173115%_
                             _%hd172808173118%_
                             _%tl172809173120%_
                             _%e172810173123%_
                             _%hd172811173126%_
                             _%tl172812173128%_
                             _%e172813173131%_
                             _%hd172814173134%_
                             _%tl172815173136%_
                             _%e172816173139%_
                             _%hd172817173142%_
                             _%tl172818173144%_
                             _%e172819173147%_
                             _%hd172820173150%_
                             _%tl172821173152%_
                             _%e172822173155%_
                             _%hd172823173158%_
                             _%tl172824173160%_
                             _%e172825173163%_
                             _%hd172826173166%_
                             _%tl172827173168%_
                             _%e172828173171%_
                             _%hd172829173174%_
                             _%tl172830173176%_))))
                     (_%__match178974178975%_
                      (lambda (_%e172773173249%_
                               _%hd172774173252%_
                               _%tl172775173254%_
                               _%e172776173257%_
                               _%hd172777173260%_
                               _%tl172778173262%_
                               _%e172779173265%_
                               _%hd172780173268%_
                               _%tl172781173270%_
                               _%e172782173273%_
                               _%hd172783173276%_
                               _%tl172784173278%_
                               _%e172785173281%_
                               _%hd172786173284%_
                               _%tl172787173286%_
                               _%e172788173289%_
                               _%hd172789173292%_
                               _%tl172790173294%_
                               _%e172791173297%_
                               _%hd172792173300%_
                               _%tl172793173302%_
                               _%e172794173305%_
                               _%hd172795173308%_
                               _%tl172796173310%_
                               _%e172797173313%_
                               _%hd172798173316%_
                               _%tl172799173318%_
                               _%e172800173321%_
                               _%hd172801173324%_
                               _%tl172802173326%_)
                        (let ((_%L173329%_ _%hd172801173324%_)
                              (_%L173330%_ _%hd172792173300%_)
                              (_%L173331%_ _%hd172783173276%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173331%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173331%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp179339
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172661%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173330%_
                                      __tmp179339)))
                              (_%__kont178689178690%_
                               _%L173329%_
                               _%L173330%_
                               _%L173331%_)
                              (_%__match179178179179%_
                               _%e172773173249%_
                               _%hd172774173252%_
                               _%tl172775173254%_
                               _%e172776173257%_
                               _%hd172777173260%_
                               _%tl172778173262%_
                               _%e172779173265%_
                               _%hd172780173268%_
                               _%tl172781173270%_
                               _%e172782173273%_
                               _%hd172783173276%_
                               _%tl172784173278%_
                               _%e172785173281%_
                               _%hd172786173284%_
                               _%tl172787173286%_
                               _%e172788173289%_
                               _%hd172789173292%_
                               _%tl172790173294%_
                               _%e172791173297%_
                               _%hd172792173300%_
                               _%tl172793173302%_
                               _%e172794173305%_
                               _%hd172795173308%_
                               _%tl172796173310%_)))))
                     (_%__match178972178973%_
                      (lambda (_%e172773173249%_
                               _%hd172774173252%_
                               _%tl172775173254%_
                               _%e172776173257%_
                               _%hd172777173260%_
                               _%tl172778173262%_
                               _%e172779173265%_
                               _%hd172780173268%_
                               _%tl172781173270%_
                               _%e172782173273%_
                               _%hd172783173276%_
                               _%tl172784173278%_
                               _%e172785173281%_
                               _%hd172786173284%_
                               _%tl172787173286%_
                               _%e172788173289%_
                               _%hd172789173292%_
                               _%tl172790173294%_
                               _%e172791173297%_
                               _%hd172792173300%_
                               _%tl172793173302%_
                               _%e172794173305%_
                               _%hd172795173308%_
                               _%tl172796173310%_
                               _%e172797173313%_
                               _%hd172798173316%_
                               _%tl172799173318%_
                               _%e172800173321%_
                               _%hd172801173324%_
                               _%tl172802173326%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172796173310%_))
                            (_%__match178974178975%_
                             _%e172773173249%_
                             _%hd172774173252%_
                             _%tl172775173254%_
                             _%e172776173257%_
                             _%hd172777173260%_
                             _%tl172778173262%_
                             _%e172779173265%_
                             _%hd172780173268%_
                             _%tl172781173270%_
                             _%e172782173273%_
                             _%hd172783173276%_
                             _%tl172784173278%_
                             _%e172785173281%_
                             _%hd172786173284%_
                             _%tl172787173286%_
                             _%e172788173289%_
                             _%hd172789173292%_
                             _%tl172790173294%_
                             _%e172791173297%_
                             _%hd172792173300%_
                             _%tl172793173302%_
                             _%e172794173305%_
                             _%hd172795173308%_
                             _%tl172796173310%_
                             _%e172797173313%_
                             _%hd172798173316%_
                             _%tl172799173318%_
                             _%e172800173321%_
                             _%hd172801173324%_
                             _%tl172802173326%_)
                            (_%__match179052179053%_
                             _%e172773173249%_
                             _%hd172774173252%_
                             _%tl172775173254%_
                             _%e172776173257%_
                             _%hd172777173260%_
                             _%tl172778173262%_
                             _%e172779173265%_
                             _%hd172780173268%_
                             _%tl172781173270%_
                             _%e172782173273%_
                             _%hd172783173276%_
                             _%tl172784173278%_
                             _%e172785173281%_
                             _%hd172786173284%_
                             _%tl172787173286%_
                             _%e172788173289%_
                             _%hd172789173292%_
                             _%tl172790173294%_
                             _%e172791173297%_
                             _%hd172792173300%_
                             _%tl172793173302%_
                             _%e172794173305%_
                             _%hd172795173308%_
                             _%tl172796173310%_
                             _%e172797173313%_
                             _%hd172798173316%_
                             _%tl172799173318%_
                             _%e172800173321%_
                             _%hd172801173324%_
                             _%tl172802173326%_))))
                     (_%__match178962178963%_
                      (lambda (_%e172773173249%_
                               _%hd172774173252%_
                               _%tl172775173254%_
                               _%e172776173257%_
                               _%hd172777173260%_
                               _%tl172778173262%_
                               _%e172779173265%_
                               _%hd172780173268%_
                               _%tl172781173270%_
                               _%e172782173273%_
                               _%hd172783173276%_
                               _%tl172784173278%_
                               _%e172785173281%_
                               _%hd172786173284%_
                               _%tl172787173286%_
                               _%e172788173289%_
                               _%hd172789173292%_
                               _%tl172790173294%_
                               _%e172791173297%_
                               _%hd172792173300%_
                               _%tl172793173302%_
                               _%e172794173305%_
                               _%hd172795173308%_
                               _%tl172796173310%_
                               _%e172797173313%_
                               _%hd172798173316%_
                               _%tl172799173318%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd172798173316%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172799173318%_))
                                (let ((_%e172800173321%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172799173318%_))))
                                  (let ((_%tl172802173326%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172800173321%_)))
                                        (_%hd172801173324%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172800173321%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172802173326%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172796173310%_))
                                            (_%__match178974178975%_
                                             _%e172773173249%_
                                             _%hd172774173252%_
                                             _%tl172775173254%_
                                             _%e172776173257%_
                                             _%hd172777173260%_
                                             _%tl172778173262%_
                                             _%e172779173265%_
                                             _%hd172780173268%_
                                             _%tl172781173270%_
                                             _%e172782173273%_
                                             _%hd172783173276%_
                                             _%tl172784173278%_
                                             _%e172785173281%_
                                             _%hd172786173284%_
                                             _%tl172787173286%_
                                             _%e172788173289%_
                                             _%hd172789173292%_
                                             _%tl172790173294%_
                                             _%e172791173297%_
                                             _%hd172792173300%_
                                             _%tl172793173302%_
                                             _%e172794173305%_
                                             _%hd172795173308%_
                                             _%tl172796173310%_
                                             _%e172797173313%_
                                             _%hd172798173316%_
                                             _%tl172799173318%_
                                             _%e172800173321%_
                                             _%hd172801173324%_
                                             _%tl172802173326%_)
                                            (_%__match179052179053%_
                                             _%e172773173249%_
                                             _%hd172774173252%_
                                             _%tl172775173254%_
                                             _%e172776173257%_
                                             _%hd172777173260%_
                                             _%tl172778173262%_
                                             _%e172779173265%_
                                             _%hd172780173268%_
                                             _%tl172781173270%_
                                             _%e172782173273%_
                                             _%hd172783173276%_
                                             _%tl172784173278%_
                                             _%e172785173281%_
                                             _%hd172786173284%_
                                             _%tl172787173286%_
                                             _%e172788173289%_
                                             _%hd172789173292%_
                                             _%tl172790173294%_
                                             _%e172791173297%_
                                             _%hd172792173300%_
                                             _%tl172793173302%_
                                             _%e172794173305%_
                                             _%hd172795173308%_
                                             _%tl172796173310%_
                                             _%e172797173313%_
                                             _%hd172798173316%_
                                             _%tl172799173318%_
                                             _%e172800173321%_
                                             _%hd172801173324%_
                                             _%tl172802173326%_))
                                        (_%__match179176179177%_
                                         _%e172773173249%_
                                         _%hd172774173252%_
                                         _%tl172775173254%_
                                         _%e172776173257%_
                                         _%hd172777173260%_
                                         _%tl172778173262%_
                                         _%e172779173265%_
                                         _%hd172780173268%_
                                         _%tl172781173270%_
                                         _%e172782173273%_
                                         _%hd172783173276%_
                                         _%tl172784173278%_
                                         _%e172785173281%_
                                         _%hd172786173284%_
                                         _%tl172787173286%_
                                         _%e172788173289%_
                                         _%hd172789173292%_
                                         _%tl172790173294%_
                                         _%e172791173297%_
                                         _%hd172792173300%_
                                         _%tl172793173302%_
                                         _%e172794173305%_
                                         _%hd172795173308%_
                                         _%tl172796173310%_))))
                                (_%__match179176179177%_
                                 _%e172773173249%_
                                 _%hd172774173252%_
                                 _%tl172775173254%_
                                 _%e172776173257%_
                                 _%hd172777173260%_
                                 _%tl172778173262%_
                                 _%e172779173265%_
                                 _%hd172780173268%_
                                 _%tl172781173270%_
                                 _%e172782173273%_
                                 _%hd172783173276%_
                                 _%tl172784173278%_
                                 _%e172785173281%_
                                 _%hd172786173284%_
                                 _%tl172787173286%_
                                 _%e172788173289%_
                                 _%hd172789173292%_
                                 _%tl172790173294%_
                                 _%e172791173297%_
                                 _%hd172792173300%_
                                 _%tl172793173302%_
                                 _%e172794173305%_
                                 _%hd172795173308%_
                                 _%tl172796173310%_))
                            (_%__match179176179177%_
                             _%e172773173249%_
                             _%hd172774173252%_
                             _%tl172775173254%_
                             _%e172776173257%_
                             _%hd172777173260%_
                             _%tl172778173262%_
                             _%e172779173265%_
                             _%hd172780173268%_
                             _%tl172781173270%_
                             _%e172782173273%_
                             _%hd172783173276%_
                             _%tl172784173278%_
                             _%e172785173281%_
                             _%hd172786173284%_
                             _%tl172787173286%_
                             _%e172788173289%_
                             _%hd172789173292%_
                             _%tl172790173294%_
                             _%e172791173297%_
                             _%hd172792173300%_
                             _%tl172793173302%_
                             _%e172794173305%_
                             _%hd172795173308%_
                             _%tl172796173310%_))))
                     (_%__match178894178895%_
                      (lambda (_%e172722173370%_
                               _%hd172723173373%_
                               _%tl172724173375%_
                               _%e172725173378%_
                               _%hd172726173381%_
                               _%tl172727173383%_
                               _%e172728173386%_
                               _%hd172729173389%_
                               _%tl172730173391%_
                               _%e172731173394%_
                               _%hd172732173397%_
                               _%tl172733173399%_
                               _%e172734173402%_
                               _%hd172735173405%_
                               _%tl172736173407%_
                               _%e172737173410%_
                               _%hd172738173413%_
                               _%tl172739173415%_
                               _%e172740173418%_
                               _%hd172741173421%_
                               _%tl172742173423%_
                               _%e172743173426%_
                               _%hd172744173429%_
                               _%tl172745173431%_
                               _%e172746173434%_
                               _%hd172747173437%_
                               _%tl172748173439%_
                               _%e172749173442%_
                               _%hd172750173445%_
                               _%tl172751173447%_
                               _%e172752173450%_
                               _%hd172753173453%_
                               _%tl172754173455%_
                               _%e172755173458%_
                               _%hd172756173461%_
                               _%tl172757173463%_
                               _%e172758173466%_
                               _%hd172759173469%_
                               _%tl172760173471%_
                               _%__splice178687178688%_
                               _%target172761173474%_
                               _%tl172763173476%_)
                        (letrec ((_%loop172764173479%_
                                  (lambda (_%hd172762173482%_
                                           _%args172768173484%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172762173482%_))
                                        (let ((_%e172765173487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172762173482%_))))
                                          (let ((_%lp-tl172767173492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172765173487%_)))
                                                (_%lp-hd172766173490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172765173487%_))))
                                            (_%loop172764173479%_
                                             _%lp-tl172767173492%_
                                             (cons _%lp-hd172766173490%_
                                                   _%args172768173484%_))))
                                        (let ((_%args172769173495%_
                                               (reverse _%args172768173484%_)))
                                          (let ((_%L173498%_
                                                 _%args172769173495%_)
                                                (_%L173499%_
                                                 _%hd172759173469%_)
                                                (_%L173500%_
                                                 _%hd172750173445%_)
                                                (_%L173501%_
                                                 _%hd172741173421%_)
                                                (_%L173502%_
                                                 _%hd172732173397%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173502%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173501%_
                                                        'call-method))
                                                     (let ((__tmp179340
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172661%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173500%_
                                                        __tmp179340)))
                                                (_%__kont178685178686%_
                                                 _%L173498%_
                                                 _%L173499%_
                                                 _%L173500%_
                                                 _%L173501%_
                                                 _%L173502%_)
                                                (_%__kont178697178698%_))))))))
                          (_%loop172764173479%_ _%target172761173474%_ '()))))
                     (_%__match178852178853%_
                      (lambda (_%e172722173370%_
                               _%hd172723173373%_
                               _%tl172724173375%_
                               _%e172725173378%_
                               _%hd172726173381%_
                               _%tl172727173383%_
                               _%e172728173386%_
                               _%hd172729173389%_
                               _%tl172730173391%_
                               _%e172731173394%_
                               _%hd172732173397%_
                               _%tl172733173399%_
                               _%e172734173402%_
                               _%hd172735173405%_
                               _%tl172736173407%_
                               _%e172737173410%_
                               _%hd172738173413%_
                               _%tl172739173415%_
                               _%e172740173418%_
                               _%hd172741173421%_
                               _%tl172742173423%_
                               _%e172743173426%_
                               _%hd172744173429%_
                               _%tl172745173431%_
                               _%e172746173434%_
                               _%hd172747173437%_
                               _%tl172748173439%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd172747173437%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172748173439%_))
                                (let ((_%e172749173442%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172748173439%_))))
                                  (let ((_%tl172751173447%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172749173442%_)))
                                        (_%hd172750173445%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172749173442%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172751173447%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172745173431%_))
                                            (let ((_%e172752173450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172745173431%_))))
                                              (let ((_%tl172754173455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172752173450%_)))
                                                    (_%hd172753173453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172752173450%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd172753173453%_))
                                                    (let ((_%e172755173458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd172753173453%_))))
                                                      (let ((_%tl172757173463%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172755173458%_)))
                    (_%hd172756173461%_
                     (let () (declare (not safe)) (##car _%e172755173458%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd172756173461%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd172756173461%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172757173463%_))
                            (let ((_%e172758173466%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172757173463%_))))
                              (let ((_%tl172760173471%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172758173466%_)))
                                    (_%hd172759173469%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172758173466%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172760173471%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl172754173455%_))
                                        (let ((_%__splice178687178688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl172754173455%_
                                                  '0))))
                                          (let ((_%tl172763173476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178687178688%_
                                                    '1)))
                                                (_%target172761173474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178687178688%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl172763173476%_))
                                                (_%__match178894178895%_
                                                 _%e172722173370%_
                                                 _%hd172723173373%_
                                                 _%tl172724173375%_
                                                 _%e172725173378%_
                                                 _%hd172726173381%_
                                                 _%tl172727173383%_
                                                 _%e172728173386%_
                                                 _%hd172729173389%_
                                                 _%tl172730173391%_
                                                 _%e172731173394%_
                                                 _%hd172732173397%_
                                                 _%tl172733173399%_
                                                 _%e172734173402%_
                                                 _%hd172735173405%_
                                                 _%tl172736173407%_
                                                 _%e172737173410%_
                                                 _%hd172738173413%_
                                                 _%tl172739173415%_
                                                 _%e172740173418%_
                                                 _%hd172741173421%_
                                                 _%tl172742173423%_
                                                 _%e172743173426%_
                                                 _%hd172744173429%_
                                                 _%tl172745173431%_
                                                 _%e172746173434%_
                                                 _%hd172747173437%_
                                                 _%tl172748173439%_
                                                 _%e172749173442%_
                                                 _%hd172750173445%_
                                                 _%tl172751173447%_
                                                 _%e172752173450%_
                                                 _%hd172753173453%_
                                                 _%tl172754173455%_
                                                 _%e172755173458%_
                                                 _%hd172756173461%_
                                                 _%tl172757173463%_
                                                 _%e172758173466%_
                                                 _%hd172759173469%_
                                                 _%tl172760173471%_
                                                 _%__splice178687178688%_
                                                 _%target172761173474%_
                                                 _%tl172763173476%_)
                                                (_%__kont178697178698%_))))
                                        (_%__kont178697178698%_))
                                    (_%__kont178697178698%_))))
                            (_%__kont178697178698%_))
                        (_%__kont178697178698%_))
                    (_%__kont178697178698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178697178698%_))))
                                            (_%__match179176179177%_
                                             _%e172722173370%_
                                             _%hd172723173373%_
                                             _%tl172724173375%_
                                             _%e172725173378%_
                                             _%hd172726173381%_
                                             _%tl172727173383%_
                                             _%e172728173386%_
                                             _%hd172729173389%_
                                             _%tl172730173391%_
                                             _%e172731173394%_
                                             _%hd172732173397%_
                                             _%tl172733173399%_
                                             _%e172734173402%_
                                             _%hd172735173405%_
                                             _%tl172736173407%_
                                             _%e172737173410%_
                                             _%hd172738173413%_
                                             _%tl172739173415%_
                                             _%e172740173418%_
                                             _%hd172741173421%_
                                             _%tl172742173423%_
                                             _%e172743173426%_
                                             _%hd172744173429%_
                                             _%tl172745173431%_))
                                        (_%__match179176179177%_
                                         _%e172722173370%_
                                         _%hd172723173373%_
                                         _%tl172724173375%_
                                         _%e172725173378%_
                                         _%hd172726173381%_
                                         _%tl172727173383%_
                                         _%e172728173386%_
                                         _%hd172729173389%_
                                         _%tl172730173391%_
                                         _%e172731173394%_
                                         _%hd172732173397%_
                                         _%tl172733173399%_
                                         _%e172734173402%_
                                         _%hd172735173405%_
                                         _%tl172736173407%_
                                         _%e172737173410%_
                                         _%hd172738173413%_
                                         _%tl172739173415%_
                                         _%e172740173418%_
                                         _%hd172741173421%_
                                         _%tl172742173423%_
                                         _%e172743173426%_
                                         _%hd172744173429%_
                                         _%tl172745173431%_))))
                                (_%__match179176179177%_
                                 _%e172722173370%_
                                 _%hd172723173373%_
                                 _%tl172724173375%_
                                 _%e172725173378%_
                                 _%hd172726173381%_
                                 _%tl172727173383%_
                                 _%e172728173386%_
                                 _%hd172729173389%_
                                 _%tl172730173391%_
                                 _%e172731173394%_
                                 _%hd172732173397%_
                                 _%tl172733173399%_
                                 _%e172734173402%_
                                 _%hd172735173405%_
                                 _%tl172736173407%_
                                 _%e172737173410%_
                                 _%hd172738173413%_
                                 _%tl172739173415%_
                                 _%e172740173418%_
                                 _%hd172741173421%_
                                 _%tl172742173423%_
                                 _%e172743173426%_
                                 _%hd172744173429%_
                                 _%tl172745173431%_))
                            (_%__match178962178963%_
                             _%e172722173370%_
                             _%hd172723173373%_
                             _%tl172724173375%_
                             _%e172725173378%_
                             _%hd172726173381%_
                             _%tl172727173383%_
                             _%e172728173386%_
                             _%hd172729173389%_
                             _%tl172730173391%_
                             _%e172731173394%_
                             _%hd172732173397%_
                             _%tl172733173399%_
                             _%e172734173402%_
                             _%hd172735173405%_
                             _%tl172736173407%_
                             _%e172737173410%_
                             _%hd172738173413%_
                             _%tl172739173415%_
                             _%e172740173418%_
                             _%hd172741173421%_
                             _%tl172742173423%_
                             _%e172743173426%_
                             _%hd172744173429%_
                             _%tl172745173431%_
                             _%e172746173434%_
                             _%hd172747173437%_
                             _%tl172748173439%_))))
                     (_%__match178784178785%_
                      (lambda (_%e172678173562%_
                               _%hd172679173565%_
                               _%tl172680173567%_
                               _%e172681173570%_
                               _%hd172682173573%_
                               _%tl172683173575%_
                               _%e172684173578%_
                               _%hd172685173581%_
                               _%tl172686173583%_
                               _%e172687173586%_
                               _%hd172688173589%_
                               _%tl172689173591%_
                               _%e172690173594%_
                               _%hd172691173597%_
                               _%tl172692173599%_
                               _%e172693173602%_
                               _%hd172694173605%_
                               _%tl172695173607%_
                               _%e172696173610%_
                               _%hd172697173613%_
                               _%tl172698173615%_
                               _%e172699173618%_
                               _%hd172700173621%_
                               _%tl172701173623%_
                               _%e172702173626%_
                               _%hd172703173629%_
                               _%tl172704173631%_
                               _%e172705173634%_
                               _%hd172706173637%_
                               _%tl172707173639%_
                               _%__splice178683178684%_
                               _%target172708173642%_
                               _%tl172710173644%_)
                        (letrec ((_%loop172711173647%_
                                  (lambda (_%hd172709173650%_
                                           _%args172715173652%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172709173650%_))
                                        (let ((_%e172712173655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172709173650%_))))
                                          (let ((_%lp-tl172714173660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172712173655%_)))
                                                (_%lp-hd172713173658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172712173655%_))))
                                            (_%loop172711173647%_
                                             _%lp-tl172714173660%_
                                             (cons _%lp-hd172713173658%_
                                                   _%args172715173652%_))))
                                        (let ((_%args172716173663%_
                                               (reverse _%args172715173652%_)))
                                          (let ((_%L173666%_
                                                 _%args172716173663%_)
                                                (_%L173667%_
                                                 _%hd172706173637%_)
                                                (_%L173668%_
                                                 _%hd172697173613%_)
                                                (_%L173669%_
                                                 _%hd172688173589%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173669%_
                                                        'call-method))
                                                     (let ((__tmp179341
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172661%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173668%_
                                                        __tmp179341)))
                                                (_%__kont178681178682%_
                                                 _%L173666%_
                                                 _%L173667%_
                                                 _%L173668%_
                                                 _%L173669%_)
                                                (_%__match178972178973%_
                                                 _%e172678173562%_
                                                 _%hd172679173565%_
                                                 _%tl172680173567%_
                                                 _%e172681173570%_
                                                 _%hd172682173573%_
                                                 _%tl172683173575%_
                                                 _%e172684173578%_
                                                 _%hd172685173581%_
                                                 _%tl172686173583%_
                                                 _%e172687173586%_
                                                 _%hd172688173589%_
                                                 _%tl172689173591%_
                                                 _%e172690173594%_
                                                 _%hd172691173597%_
                                                 _%tl172692173599%_
                                                 _%e172693173602%_
                                                 _%hd172694173605%_
                                                 _%tl172695173607%_
                                                 _%e172696173610%_
                                                 _%hd172697173613%_
                                                 _%tl172698173615%_
                                                 _%e172699173618%_
                                                 _%hd172700173621%_
                                                 _%tl172701173623%_
                                                 _%e172702173626%_
                                                 _%hd172703173629%_
                                                 _%tl172704173631%_
                                                 _%e172705173634%_
                                                 _%hd172706173637%_
                                                 _%tl172707173639%_))))))))
                          (_%loop172711173647%_ _%target172708173642%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx178679178680%_))
                    (let ((_%e172678173562%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx178679178680%_))))
                      (let ((_%tl172680173567%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172678173562%_)))
                            (_%hd172679173565%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172678173562%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172680173567%_))
                            (let ((_%e172681173570%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172680173567%_))))
                              (let ((_%tl172683173575%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172681173570%_)))
                                    (_%hd172682173573%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172681173570%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172682173573%_))
                                    (let ((_%e172684173578%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172682173573%_))))
                                      (let ((_%tl172686173583%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172684173578%_)))
                                            (_%hd172685173581%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172684173578%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd172685173581%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd172685173581%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172686173583%_))
                                                    (let ((_%e172687173586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172686173583%_))))
                                                      (let ((_%tl172689173591%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172687173586%_)))
                    (_%hd172688173589%_
                     (let () (declare (not safe)) (##car _%e172687173586%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172689173591%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172683173575%_))
                        (let ((_%e172690173594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172683173575%_))))
                          (let ((_%tl172692173599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172690173594%_)))
                                (_%hd172691173597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172690173594%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172691173597%_))
                                (let ((_%e172693173602%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172691173597%_))))
                                  (let ((_%tl172695173607%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172693173602%_)))
                                        (_%hd172694173605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172693173602%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172694173605%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd172694173605%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172695173607%_))
                                                (let ((_%e172696173610%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172695173607%_))))
                                                  (let ((_%tl172698173615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172696173610%_)))
                                                        (_%hd172697173613%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172696173610%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172698173615%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172692173599%_))
                                                            (let ((_%e172699173618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172692173599%_))))
                      (let ((_%tl172701173623%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172699173618%_)))
                            (_%hd172700173621%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172699173618%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd172700173621%_))
                            (let ((_%e172702173626%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd172700173621%_))))
                              (let ((_%tl172704173631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172702173626%_)))
                                    (_%hd172703173629%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172702173626%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd172703173629%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd172703173629%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172704173631%_))
                                            (let ((_%e172705173634%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172704173631%_))))
                                              (let ((_%tl172707173639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172705173634%_)))
                                                    (_%hd172706173637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172705173634%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172707173639%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl172701173623%_))
                                                        (let ((_%__splice178683178684%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl172701173623%_
                          '0))))
                  (let ((_%tl172710173644%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178683178684%_ '1)))
                        (_%target172708173642%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178683178684%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl172710173644%_))
                        (_%__match178784178785%_
                         _%e172678173562%_
                         _%hd172679173565%_
                         _%tl172680173567%_
                         _%e172681173570%_
                         _%hd172682173573%_
                         _%tl172683173575%_
                         _%e172684173578%_
                         _%hd172685173581%_
                         _%tl172686173583%_
                         _%e172687173586%_
                         _%hd172688173589%_
                         _%tl172689173591%_
                         _%e172690173594%_
                         _%hd172691173597%_
                         _%tl172692173599%_
                         _%e172693173602%_
                         _%hd172694173605%_
                         _%tl172695173607%_
                         _%e172696173610%_
                         _%hd172697173613%_
                         _%tl172698173615%_
                         _%e172699173618%_
                         _%hd172700173621%_
                         _%tl172701173623%_
                         _%e172702173626%_
                         _%hd172703173629%_
                         _%tl172704173631%_
                         _%e172705173634%_
                         _%hd172706173637%_
                         _%tl172707173639%_
                         _%__splice178683178684%_
                         _%target172708173642%_
                         _%tl172710173644%_)
                        (_%__match178972178973%_
                         _%e172678173562%_
                         _%hd172679173565%_
                         _%tl172680173567%_
                         _%e172681173570%_
                         _%hd172682173573%_
                         _%tl172683173575%_
                         _%e172684173578%_
                         _%hd172685173581%_
                         _%tl172686173583%_
                         _%e172687173586%_
                         _%hd172688173589%_
                         _%tl172689173591%_
                         _%e172690173594%_
                         _%hd172691173597%_
                         _%tl172692173599%_
                         _%e172693173602%_
                         _%hd172694173605%_
                         _%tl172695173607%_
                         _%e172696173610%_
                         _%hd172697173613%_
                         _%tl172698173615%_
                         _%e172699173618%_
                         _%hd172700173621%_
                         _%tl172701173623%_
                         _%e172702173626%_
                         _%hd172703173629%_
                         _%tl172704173631%_
                         _%e172705173634%_
                         _%hd172706173637%_
                         _%tl172707173639%_))))
                (_%__match178972178973%_
                 _%e172678173562%_
                 _%hd172679173565%_
                 _%tl172680173567%_
                 _%e172681173570%_
                 _%hd172682173573%_
                 _%tl172683173575%_
                 _%e172684173578%_
                 _%hd172685173581%_
                 _%tl172686173583%_
                 _%e172687173586%_
                 _%hd172688173589%_
                 _%tl172689173591%_
                 _%e172690173594%_
                 _%hd172691173597%_
                 _%tl172692173599%_
                 _%e172693173602%_
                 _%hd172694173605%_
                 _%tl172695173607%_
                 _%e172696173610%_
                 _%hd172697173613%_
                 _%tl172698173615%_
                 _%e172699173618%_
                 _%hd172700173621%_
                 _%tl172701173623%_
                 _%e172702173626%_
                 _%hd172703173629%_
                 _%tl172704173631%_
                 _%e172705173634%_
                 _%hd172706173637%_
                 _%tl172707173639%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match179176179177%_
                                                     _%e172678173562%_
                                                     _%hd172679173565%_
                                                     _%tl172680173567%_
                                                     _%e172681173570%_
                                                     _%hd172682173573%_
                                                     _%tl172683173575%_
                                                     _%e172684173578%_
                                                     _%hd172685173581%_
                                                     _%tl172686173583%_
                                                     _%e172687173586%_
                                                     _%hd172688173589%_
                                                     _%tl172689173591%_
                                                     _%e172690173594%_
                                                     _%hd172691173597%_
                                                     _%tl172692173599%_
                                                     _%e172693173602%_
                                                     _%hd172694173605%_
                                                     _%tl172695173607%_
                                                     _%e172696173610%_
                                                     _%hd172697173613%_
                                                     _%tl172698173615%_
                                                     _%e172699173618%_
                                                     _%hd172700173621%_
                                                     _%tl172701173623%_))))
                                            (_%__match179176179177%_
                                             _%e172678173562%_
                                             _%hd172679173565%_
                                             _%tl172680173567%_
                                             _%e172681173570%_
                                             _%hd172682173573%_
                                             _%tl172683173575%_
                                             _%e172684173578%_
                                             _%hd172685173581%_
                                             _%tl172686173583%_
                                             _%e172687173586%_
                                             _%hd172688173589%_
                                             _%tl172689173591%_
                                             _%e172690173594%_
                                             _%hd172691173597%_
                                             _%tl172692173599%_
                                             _%e172693173602%_
                                             _%hd172694173605%_
                                             _%tl172695173607%_
                                             _%e172696173610%_
                                             _%hd172697173613%_
                                             _%tl172698173615%_
                                             _%e172699173618%_
                                             _%hd172700173621%_
                                             _%tl172701173623%_))
                                        (_%__match178852178853%_
                                         _%e172678173562%_
                                         _%hd172679173565%_
                                         _%tl172680173567%_
                                         _%e172681173570%_
                                         _%hd172682173573%_
                                         _%tl172683173575%_
                                         _%e172684173578%_
                                         _%hd172685173581%_
                                         _%tl172686173583%_
                                         _%e172687173586%_
                                         _%hd172688173589%_
                                         _%tl172689173591%_
                                         _%e172690173594%_
                                         _%hd172691173597%_
                                         _%tl172692173599%_
                                         _%e172693173602%_
                                         _%hd172694173605%_
                                         _%tl172695173607%_
                                         _%e172696173610%_
                                         _%hd172697173613%_
                                         _%tl172698173615%_
                                         _%e172699173618%_
                                         _%hd172700173621%_
                                         _%tl172701173623%_
                                         _%e172702173626%_
                                         _%hd172703173629%_
                                         _%tl172704173631%_))
                                    (_%__match179176179177%_
                                     _%e172678173562%_
                                     _%hd172679173565%_
                                     _%tl172680173567%_
                                     _%e172681173570%_
                                     _%hd172682173573%_
                                     _%tl172683173575%_
                                     _%e172684173578%_
                                     _%hd172685173581%_
                                     _%tl172686173583%_
                                     _%e172687173586%_
                                     _%hd172688173589%_
                                     _%tl172689173591%_
                                     _%e172690173594%_
                                     _%hd172691173597%_
                                     _%tl172692173599%_
                                     _%e172693173602%_
                                     _%hd172694173605%_
                                     _%tl172695173607%_
                                     _%e172696173610%_
                                     _%hd172697173613%_
                                     _%tl172698173615%_
                                     _%e172699173618%_
                                     _%hd172700173621%_
                                     _%tl172701173623%_))))
                            (_%__match179176179177%_
                             _%e172678173562%_
                             _%hd172679173565%_
                             _%tl172680173567%_
                             _%e172681173570%_
                             _%hd172682173573%_
                             _%tl172683173575%_
                             _%e172684173578%_
                             _%hd172685173581%_
                             _%tl172686173583%_
                             _%e172687173586%_
                             _%hd172688173589%_
                             _%tl172689173591%_
                             _%e172690173594%_
                             _%hd172691173597%_
                             _%tl172692173599%_
                             _%e172693173602%_
                             _%hd172694173605%_
                             _%tl172695173607%_
                             _%e172696173610%_
                             _%hd172697173613%_
                             _%tl172698173615%_
                             _%e172699173618%_
                             _%hd172700173621%_
                             _%tl172701173623%_))))
                    (_%__match179114179115%_
                     _%e172678173562%_
                     _%hd172679173565%_
                     _%tl172680173567%_
                     _%e172681173570%_
                     _%hd172682173573%_
                     _%tl172683173575%_
                     _%e172684173578%_
                     _%hd172685173581%_
                     _%tl172686173583%_
                     _%e172687173586%_
                     _%hd172688173589%_
                     _%tl172689173591%_
                     _%e172690173594%_
                     _%hd172691173597%_
                     _%tl172692173599%_
                     _%e172693173602%_
                     _%hd172694173605%_
                     _%tl172695173607%_
                     _%e172696173610%_
                     _%hd172697173613%_
                     _%tl172698173615%_))
                (_%__kont178697178698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont178697178698%_))
                                            (_%__kont178697178698%_))
                                        (_%__kont178697178698%_))))
                                (_%__kont178697178698%_))))
                        (_%__kont178697178698%_))
                    (_%__kont178697178698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178697178698%_))
                                                (_%__kont178697178698%_))
                                            (_%__kont178697178698%_))))
                                    (_%__kont178697178698%_))))
                            (_%__kont178697178698%_))))
                    (_%__kont178697178698%_))))))))))
