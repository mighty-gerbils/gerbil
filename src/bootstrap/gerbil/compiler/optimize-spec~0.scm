(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1742237316)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp179208 (list gxc#::identity::t))
            (__tmp179207 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp179208
         '()
         __tmp179207
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args178005%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args178005%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp179209
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
        (__make-promise __tmp179209)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx177997%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self178000%_
                (let ((__obj179200
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj179200))
               (__tmp179210
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self178000%_ _%stx177997%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179210
           gxc#current-compile-method
           _%self178000%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp179212 (list gxc#::false::t))
            (__tmp179211 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp179212
         '()
         __tmp179211
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args177994%_
        (apply make-instance gxc#::extract-receiver::t _%$args177994%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp179213
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
        (__make-promise __tmp179213)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx177986%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self177989%_
                (let ((__obj179202
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj179202))
               (__tmp179214
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177989%_ _%stx177986%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179214
           gxc#current-compile-method
           _%self177989%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp179216 (list gxc#::void::t))
            (__tmp179215 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp179216
         '(receiver methods slots)
         __tmp179215
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args177983%_
        (apply make-instance gxc#::collect-object-refs::t _%$args177983%_)))
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
      (let ((__tmp179217
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
        (__make-promise __tmp179217)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords177949%_
               _%receiver177944177950%_
               _%methods177945177952%_
               _%slots177946177954%_
               _%stx177956%_)
        (let* ((_%receiver177959%_
                (if (eq? _%receiver177944177950%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177944177950%_))
               (_%methods177961%_
                (if (eq? _%methods177945177952%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177945177952%_))
               (_%slots177963%_
                (if (eq? _%slots177946177954%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177946177954%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self177965%_
                  (let ((__obj179204
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
                       __obj179204
                       _%receiver177959%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179204
                       _%methods177961%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179204
                       _%slots177963%_
                       '3
                       '#f
                       '#f))
                    __obj179204))
                 (__tmp179218
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177965%_ _%stx177956%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179218
             gxc#current-compile-method
             _%self177965%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords177972%_ . _%args177973%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords177972%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177972%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177972%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177972%_
                  'slots:
                  absent-value))
               _%args177973%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args177947177979%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args177947177979%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp179220 (list gxc#::basic-xform-expression::t))
            (__tmp179219 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp179220
         '(receiver klass methods slots)
         __tmp179219
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args177940%_
        (apply make-instance gxc#::subst-object-refs::t _%$args177940%_)))
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
      (let ((__tmp179221
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
        (__make-promise __tmp179221)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords177902%_
               _%receiver177896177903%_
               _%klass177897177905%_
               _%methods177898177907%_
               _%slots177899177909%_
               _%stx177911%_)
        (let* ((_%receiver177914%_
                (if (eq? _%receiver177896177903%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177896177903%_))
               (_%klass177916%_
                (if (eq? _%klass177897177905%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass177897177905%_))
               (_%methods177918%_
                (if (eq? _%methods177898177907%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177898177907%_))
               (_%slots177920%_
                (if (eq? _%slots177899177909%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177899177909%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self177922%_
                  (let ((__obj179206
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
                       __obj179206
                       _%receiver177914%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179206
                       _%klass177916%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179206
                       _%methods177918%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179206
                       _%slots177920%_
                       '4
                       '#f
                       '#f))
                    __obj179206))
                 (__tmp179222
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177922%_ _%stx177911%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179222
             gxc#current-compile-method
             _%self177922%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords177929%_ . _%args177930%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords177929%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177929%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177929%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177929%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177929%_
                  'slots:
                  absent-value))
               _%args177930%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args177900177936%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args177900177936%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self175011%_ _%stx175012%_)
        (letrec ((_%generate-method-bind175014%_
                  (lambda (_%$klass177888%_
                           _%$method-table177889%_
                           _%id177890%_
                           _%$id177891%_)
                    (let ((_%$tmp177893%_
                           (let ((__tmp179223
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179223))))
                      (cons (cons _%$id177891%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp177893%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table177889%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id177890%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp177893%_ '()))
                    (cons (cons '%#ref (cons _%$tmp177893%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id177890%_
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
                 (_%generate-slot-bind175015%_
                  (lambda (_%$klass177882%_ _%id177883%_ _%$id177884%_)
                    (let ((_%$tmp177886%_
                           (let ((__tmp179224
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179224))))
                      (cons (cons _%$id177884%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp177886%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass177882%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id177883%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp177886%_ '()))
                        (cons (cons '%#ref (cons _%$tmp177886%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id177883%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl175016%_
                  (lambda (_%$klass177876%_
                           _%$method-table177877%_
                           _%methods-bind177878%_
                           _%slots-bind177879%_
                           _%specializer-impl177880%_)
                    (let ((__tmp179225
                           (cons '%#lambda
                                 (cons (cons _%$klass177876%_
                                             (cons _%$method-table177877%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind177879%_
                                                            _%methods-bind177878%_))
                                                         (cons _%specializer-impl177880%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179225 _%stx175012%_))))
                 (_%generate-specializer-def175017%_
                  (lambda (_%id177872%_
                           _%specializer-id177873%_
                           _%specializer-impl177874%_)
                    (let ((__tmp179226
                           (cons '%#begin
                                 (cons _%stx175012%_
                                       (cons (let ((__tmp179227
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id177873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl177874%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179227
                                                _%stx175012%_))
                                             (cons (let ((__tmp179228
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id177872%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id177873%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179228
                                                      _%stx175012%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179226 _%stx175012%_)))))
          (let* ((_%__stx178094178095%_ _%stx175012%_)
                 (_%g175020175040%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx178094178095%_)))))
            (let ((_%__kont178096178097%_
                   (lambda (_%L175084%_ _%L175085%_)
                     (let ((_%method-calls175104%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs175105%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty175106%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?175108%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls175104%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs175105%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L175084%_))
                             (let* ((_%__stx178008178009%_ _%L175084%_)
                                    (_%g175496175514%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx178008178009%_)))))
                               (let ((_%__kont178010178011%_
                                      (lambda (_%L175550%_
                                               _%L175551%_
                                               _%L175552%_)
                                        (let ((_%receiver175572%_
                                               (let ((_%$e175569%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L175550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e175569%_
                                                     _%$e175569%_
                                                     _%L175552%_))))
                                          (for-each
                                           (lambda (_%g175573175575%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver175572%_
                                              _%method-calls175104%_
                                              _%slot-refs175105%_
                                              _%g175573175575%_))
                                           _%L175550%_)
                                          (if (_%no-specializer?175108%_)
                                              _%stx175012%_
                                              (let* ((_%specializer-id175584%_
                                                      (let* ((_%id175578%_
                                                              (let ((__tmp179229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L175085%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179229 '"::specialize")))
                     (_%specializer-id175581%_
                      (let ((__tmp179230
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx175012%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175578%_ __tmp179230))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175581%_))
                _%specializer-id175581%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175586%_
                                                      (let ((__tmp179231
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179231)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175588%_
                                                      (let ((__tmp179232
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179232)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175590%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls175104%_)))
                                                     (_%$methods175594%_
                                                      (map (lambda (_%id175592%_)
                                                             (let ((__tmp179233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175592%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179233)))
                   _%methods175590%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175603%_
                                                      (for-each
                                                       (lambda (_%g175595175598%_
                                                                _%g175596175600%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls175104%_
                                                            _%g175595175598%_
                                                            _%g175596175600%_)))
                                                       _%methods175590%_
                                                       _%$methods175594%_))
                                                     (_%methods-bind175613%_
                                                      (map (lambda (_%g175605175608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175606175610%_)
                     (_%generate-method-bind175014%_
                      _%$klass175586%_
                      _%$method-table175588%_
                      _%g175605175608%_
                      _%g175606175610%_))
                   _%methods175590%_
                   _%$methods175594%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175615%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs175105%_)))
                                                     (_%$slots175619%_
                                                      (map (lambda (_%id175617%_)
                                                             (let ((__tmp179234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175617%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179234)))
                   _%slots175615%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175628%_
                                                      (for-each
                                                       (lambda (_%g175620175623%_
                                                                _%g175621175625%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs175105%_
                                                            _%g175620175623%_
                                                            _%g175621175625%_)))
                                                       _%slots175615%_
                                                       _%$slots175619%_))
                                                     (_%slots-bind175637%_
                                                      (map (lambda (_%g175629175632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175630175634%_)
                     (_%generate-slot-bind175015%_
                      _%$klass175586%_
                      _%g175629175632%_
                      _%g175630175634%_))
                   _%slots175615%_
                   _%$slots175619%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body175643%_
                                                      (map (lambda (_%g175638175640%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver175572%_
                                                              _%$klass175586%_
                                                              _%method-calls175104%_
                                                              _%slot-refs175105%_
                                                              _%g175638175640%_))
                                                           _%L175550%_))
                                                     (_%specializer-impl175645%_
                                                      (let ((__tmp179235
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L175552%_ _%L175551%_)
                                 _%specializer-body175643%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179235 _%stx175012%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175647%_
                                                      (_%generate-specializer-impl175016%_
                                                       _%$klass175586%_
                                                       _%$method-table175588%_
                                                       _%methods-bind175613%_
                                                       _%slots-bind175637%_
                                                       _%specializer-impl175645%_)))
                                                (let ((__tmp179237
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L175085%_)))
                                                      (__tmp179236
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175584%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179237
                                                   '" => "
                                                   __tmp179236))
                                                (_%generate-specializer-def175017%_
                                                 _%L175085%_
                                                 _%specializer-id175584%_
                                                 _%specializer-impl175647%_))))))
                                     (_%__kont178012178013%_
                                      (lambda () _%stx175012%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx178008178009%_))
                                     (let ((_%e175501175526%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx178008178009%_))))
                                       (let ((_%tl175503175531%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e175501175526%_)))
                                             (_%hd175502175529%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e175501175526%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl175503175531%_))
                                             (let ((_%e175504175534%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl175503175531%_))))
                                               (let ((_%tl175506175539%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e175504175534%_)))
                                                     (_%hd175505175537%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e175504175534%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd175505175537%_))
                                                     (let ((_%e175507175542%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd175505175537%_))))
                                                       (let ((_%tl175509175547%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e175507175542%_)))
                     (_%hd175508175545%_
                      (let () (declare (not safe)) (##car _%e175507175542%_))))
                 (_%__kont178010178011%_
                  _%tl175506175539%_
                  _%tl175509175547%_
                  _%hd175508175545%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont178012178013%_))))
                                             (_%__kont178012178013%_))))
                                     (_%__kont178012178013%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L175084%_))
                                 (let* ((_%g175654175673%_
                                         (lambda (_%g175655175670%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g175655175670%_))))
                                        (_%g175653175971%_
                                         (lambda (_%g175655175676%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g175655175676%_))
                                               (let ((_%e175657175678%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g175655175676%_))))
                                                 (let ((_%hd175658175681%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175657175678%_)))
                                                       (_%tl175659175683%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175657175678%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl175659175683%_))
                                                       (let ((_g179238_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl175659175683%_ '0))))
                 (begin
                   (let ((_g179239_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g179238_)
                                (##values-length _g179238_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g179239_ 2)))
                         (error "Context expects 2 values" _g179239_)))
                   (let ((_%target175660175686%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179238_ 0)))
                         (_%tl175662175688%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179238_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl175662175688%_))
                         (letrec ((_%loop175663175691%_
                                   (lambda (_%hd175661175694%_
                                            _%clause175667175696%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175661175694%_))
                                         (let ((_%e175664175699%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175661175694%_))))
                                           (let ((_%lp-hd175665175702%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175664175699%_)))
                                                 (_%lp-tl175666175704%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175664175699%_))))
                                             (_%loop175663175691%_
                                              _%lp-tl175666175704%_
                                              (cons _%lp-hd175665175702%_
                                                    _%clause175667175696%_))))
                                         (let ((_%clause175668175707%_
                                                (reverse _%clause175667175696%_)))
                                           ((lambda (_%L175710%_)
                                              (for-each
                                               (lambda (_%clause175724%_)
                                                 (let* ((_%__stx178034178035%_
                                                         _%clause175724%_)
                                                        (_%g175727175742%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx178034178035%_)))))
                                                   (let ((_%__kont178036178037%_
                                                          (lambda (_%L175770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L175771%_
                           _%L175772%_)
                    (let ((_%receiver175791%_
                           (let ((_%$e175788%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L175770%_))))
                             (if _%$e175788%_ _%$e175788%_ _%L175772%_))))
                      (for-each
                       (lambda (_%g175792175794%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver175791%_
                          _%method-calls175104%_
                          _%slot-refs175105%_
                          _%g175792175794%_))
                       _%L175770%_))))
                 (_%__kont178038178039%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx178034178035%_))
                                                         (let ((_%e175732175754%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx178034178035%_))))
                   (let ((_%tl175734175759%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e175732175754%_)))
                         (_%hd175733175757%_
                          (let ()
                            (declare (not safe))
                            (##car _%e175732175754%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd175733175757%_))
                         (let ((_%e175735175762%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd175733175757%_))))
                           (let ((_%tl175737175767%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e175735175762%_)))
                                 (_%hd175736175765%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e175735175762%_))))
                             (_%__kont178036178037%_
                              _%tl175734175759%_
                              _%tl175737175767%_
                              _%hd175736175765%_)))
                         (_%__kont178038178039%_))))
                 (_%__kont178038178039%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp179240
                                                      (lambda (_%g175799175802%_
                                                               _%g175800175804%_)
                                                        (cons _%g175799175802%_
                                                              _%g175800175804%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179240
                                                  '()
                                                  _%L175710%_)))
                                              (if (_%no-specializer?175108%_)
                                                  _%stx175012%_
                                                  (let* ((_%specializer-id175813%_
                                                          (let* ((_%id175807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179241
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L175085%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179241 '"::specialize")))
                         (_%specializer-id175810%_
                          (let ((__tmp179242
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx175012%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id175807%_
                             __tmp179242))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id175810%_))
                    _%specializer-id175810%_))
                 (_%$klass175815%_
                  (let ((__tmp179243
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179243)))
                 (_%$method-table175817%_
                  (let ((__tmp179244
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179244)))
                 (_%methods175819%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls175104%_)))
                 (_%$methods175823%_
                  (map (lambda (_%id175821%_)
                         (let ((__tmp179245 (gensym _%id175821%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179245)))
                       _%methods175819%_))
                 (_%_175832%_
                  (for-each
                   (lambda (_%g175824175827%_ _%g175825175829%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls175104%_
                        _%g175824175827%_
                        _%g175825175829%_)))
                   _%methods175819%_
                   _%$methods175823%_))
                 (_%methods-bind175842%_
                  (map (lambda (_%g175834175837%_ _%g175835175839%_)
                         (_%generate-method-bind175014%_
                          _%$klass175815%_
                          _%$method-table175817%_
                          _%g175834175837%_
                          _%g175835175839%_))
                       _%methods175819%_
                       _%$methods175823%_))
                 (_%slots175844%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs175105%_)))
                 (_%$slots175848%_
                  (map (lambda (_%id175846%_)
                         (let ((__tmp179246 (gensym _%id175846%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179246)))
                       _%slots175844%_))
                 (_%_175857%_
                  (for-each
                   (lambda (_%g175849175852%_ _%g175850175854%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs175105%_
                        _%g175849175852%_
                        _%g175850175854%_)))
                   _%slots175844%_
                   _%$slots175848%_))
                 (_%slots-bind175866%_
                  (map (lambda (_%g175858175861%_ _%g175859175863%_)
                         (_%generate-slot-bind175015%_
                          _%$klass175815%_
                          _%g175858175861%_
                          _%g175859175863%_))
                       _%slots175844%_
                       _%$slots175848%_))
                 (_%specializer-clauses175964%_
                  (map (lambda (_%clause175868%_)
                         (let* ((_%__stx178054178055%_ _%clause175868%_)
                                (_%g175871175886%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx178054178055%_)))))
                           (let ((_%__kont178056178057%_
                                  (lambda (_%L175914%_ _%L175915%_ _%L175916%_)
                                    (let* ((_%receiver175945%_
                                            (let ((_%$e175942%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L175914%_))))
                                              (if _%$e175942%_
                                                  _%$e175942%_
                                                  _%L175916%_)))
                                           (_%body175951%_
                                            (map (lambda (_%g175946175948%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver175945%_
                                                    _%$klass175815%_
                                                    _%method-calls175104%_
                                                    _%slot-refs175105%_
                                                    _%g175946175948%_))
                                                 _%L175914%_)))
                                      (cons (cons _%L175916%_ _%L175915%_)
                                            _%body175951%_))))
                                 (_%__kont178058178059%_
                                  (lambda () _%clause175868%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx178054178055%_))
                                 (let ((_%e175876175898%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx178054178055%_))))
                                   (let ((_%tl175878175903%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e175876175898%_)))
                                         (_%hd175877175901%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e175876175898%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175877175901%_))
                                         (let ((_%e175879175906%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175877175901%_))))
                                           (let ((_%tl175881175911%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175879175906%_)))
                                                 (_%hd175880175909%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175879175906%_))))
                                             (_%__kont178056178057%_
                                              _%tl175878175903%_
                                              _%tl175881175911%_
                                              _%hd175880175909%_)))
                                         (_%__kont178058178059%_))))
                                 (_%__kont178058178059%_)))))
                       (let ((__tmp179247
                              (lambda (_%g175956175959%_ _%g175957175961%_)
                                (cons _%g175956175959%_ _%g175957175961%_))))
                         (declare (not safe))
                         (__foldr1 __tmp179247 '() _%L175710%_))))
                 (_%specializer-impl175966%_
                  (let ((__tmp179248
                         (cons '%#case-lambda _%specializer-clauses175964%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179248 _%stx175012%_)))
                 (_%specializer-impl175968%_
                  (_%generate-specializer-impl175016%_
                   _%$klass175815%_
                   _%$method-table175817%_
                   _%methods-bind175842%_
                   _%slots-bind175866%_
                   _%specializer-impl175966%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179250
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L175085%_)))
                                                          (__tmp179249
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id175813%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179250
                                                       '" => "
                                                       __tmp179249))
                                                    (_%generate-specializer-def175017%_
                                                     _%L175085%_
                                                     _%specializer-id175813%_
                                                     _%specializer-impl175968%_))))
                                            _%clause175668175707%_))))))
                           (_%loop175663175691%_ _%target175660175686%_ '()))
                         (_%g175654175673%_ _%g175655175676%_)))))
               (_%g175654175673%_ _%g175655175676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175654175673%_
                                                _%g175655175676%_)))))
                                   (_%g175653175971%_ _%L175084%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L175084%_))
                                     (let* ((_%g175975176005%_
                                             (lambda (_%g175976176002%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175976176002%_))))
                                            (_%g175974176636%_
                                             (lambda (_%g175976176008%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175976176008%_))
                                                   (let ((_%e175980176010%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175976176008%_))))
                                                     (let ((_%hd175981176013%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175980176010%_)))
                                                           (_%tl175982176015%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175980176010%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175982176015%_))
                                                           (let ((_%e175983176018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175982176015%_))))
                     (let ((_%hd175984176021%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175983176018%_)))
                           (_%tl175985176023%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175983176018%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175984176021%_))
                           (let ((_%e175986176026%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175984176021%_))))
                             (let ((_%hd175987176029%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175986176026%_)))
                                   (_%tl175988176031%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175986176026%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175987176029%_))
                                   (let ((_%e175989176034%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175987176029%_))))
                                     (let ((_%hd175990176037%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175989176034%_)))
                                           (_%tl175991176039%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175989176034%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd175990176037%_))
                                           (let ((_%e175992176042%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd175990176037%_))))
                                             (let ((_%hd175993176045%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175992176042%_)))
                                                   (_%tl175994176047%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175992176042%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175994176047%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl175991176039%_))
                                                       (let ((_%e175995176050%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl175991176039%_))))
                 (let ((_%hd175996176053%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175995176050%_)))
                       (_%tl175997176055%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175995176050%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175997176055%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl175988176031%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175985176023%_))
                               (let ((_%e175998176058%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175985176023%_))))
                                 (let ((_%hd175999176061%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175998176058%_)))
                                       (_%tl176000176063%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175998176058%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl176000176063%_))
                                       ((lambda (_%L176066%_
                                                 _%L176067%_
                                                 _%L176068%_)
                                          (let* ((_%g176092176110%_
                                                  (lambda (_%g176093176107%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g176093176107%_))))
                                                 (_%g176091176166%_
                                                  (lambda (_%g176093176113%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g176093176113%_))
                                                        (let ((_%e176097176115%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g176093176113%_))))
                  (let ((_%hd176098176118%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176097176115%_)))
                        (_%tl176099176120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176097176115%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl176099176120%_))
                        (let ((_%e176100176123%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl176099176120%_))))
                          (let ((_%hd176101176126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176100176123%_)))
                                (_%tl176102176128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176100176123%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd176101176126%_))
                                (let ((_%e176103176131%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd176101176126%_))))
                                  (let ((_%hd176104176134%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176103176131%_)))
                                        (_%tl176105176136%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176103176131%_))))
                                    ((lambda (_%L176139%_
                                              _%L176140%_
                                              _%L176141%_)
                                       (let ((_%receiver176160%_
                                              (let ((_%$e176157%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L176139%_))))
                                                (if _%$e176157%_
                                                    _%$e176157%_
                                                    _%L176141%_))))
                                         (for-each
                                          (lambda (_%g176161176163%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver176160%_
                                             _%method-calls175104%_
                                             _%slot-refs175105%_
                                             _%g176161176163%_))
                                          _%L176139%_)))
                                     _%tl176102176128%_
                                     _%tl176105176136%_
                                     _%hd176104176134%_)))
                                (_%g176092176110%_ _%g176093176113%_))))
                        (_%g176092176110%_ _%g176093176113%_))))
                (_%g176092176110%_ _%g176093176113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g176091176166%_ _%L176067%_))
                                          (let* ((_%g176169176188%_
                                                  (lambda (_%g176170176185%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g176170176185%_))))
                                                 (_%g176168176312%_
                                                  (lambda (_%g176170176191%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g176170176191%_))
                                                        (let ((_%e176172176193%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g176170176191%_))))
                  (let ((_%hd176173176196%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176172176193%_)))
                        (_%tl176174176198%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176172176193%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176174176198%_))
                        (let ((_g179251_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl176174176198%_
                                  '0))))
                          (begin
                            (let ((_g179252_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g179251_)
                                         (##values-length _g179251_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g179252_ 2)))
                                  (error "Context expects 2 values"
                                         _g179252_)))
                            (let ((_%target176175176201%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179251_ 0)))
                                  (_%tl176177176203%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179251_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl176177176203%_))
                                  (letrec ((_%loop176178176206%_
                                            (lambda (_%hd176176176209%_
                                                     _%clause176182176211%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd176176176209%_))
                                                  (let ((_%e176179176214%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd176176176209%_))))
                                                    (let ((_%lp-hd176180176217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176179176214%_)))
                                                          (_%lp-tl176181176219%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176179176214%_))))
                                                      (_%loop176178176206%_
                                                       _%lp-tl176181176219%_
                                                       (cons _%lp-hd176180176217%_
                                                             _%clause176182176211%_))))
                                                  (let ((_%clause176183176222%_
                                                         (reverse _%clause176182176211%_)))
                                                    ((lambda (_%L176225%_)
                                                       (for-each
                                                        (lambda (_%clause176238%_)
                                                          (let* ((_%g176240176255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g176241176252%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176241176252%_))))
                         (_%g176239176302%_
                          (lambda (_%g176241176258%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176241176258%_))
                                (let ((_%e176245176260%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176241176258%_))))
                                  (let ((_%hd176246176263%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176245176260%_)))
                                        (_%tl176247176265%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176245176260%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176246176263%_))
                                        (let ((_%e176248176268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176246176263%_))))
                                          (let ((_%hd176249176271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176248176268%_)))
                                                (_%tl176250176273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176248176268%_))))
                                            ((lambda (_%L176276%_
                                                      _%L176277%_
                                                      _%L176278%_)
                                               (let ((_%receiver176296%_
                                                      (let ((_%$e176293%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L176276%_))))
                (if _%$e176293%_ _%$e176293%_ _%L176278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g176297176299%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver176296%_
                                                     _%method-calls175104%_
                                                     _%slot-refs175105%_
                                                     _%g176297176299%_))
                                                  _%L176276%_)))
                                             _%tl176247176265%_
                                             _%tl176250176273%_
                                             _%hd176249176271%_)))
                                        (_%g176240176255%_
                                         _%g176241176258%_))))
                                (_%g176240176255%_ _%g176241176258%_)))))
                    (_%g176239176302%_ _%clause176238%_)))
                (let ((__tmp179253
                       (lambda (_%g176304176307%_ _%g176305176309%_)
                         (cons _%g176304176307%_ _%g176305176309%_))))
                  (declare (not safe))
                  (__foldr1 __tmp179253 '() _%L176225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause176183176222%_))))))
                                    (_%loop176178176206%_
                                     _%target176175176201%_
                                     '()))
                                  (_%g176169176188%_ _%g176170176191%_)))))
                        (_%g176169176188%_ _%g176170176191%_))))
                (_%g176169176188%_ _%g176170176191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g176168176312%_ _%L176066%_))
                                          (if (_%no-specializer?175108%_)
                                              _%stx175012%_
                                              (let* ((_%specializer-id176321%_
                                                      (let* ((_%id176315%_
                                                              (let ((__tmp179254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L175085%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179254 '"::specialize")))
                     (_%specializer-id176318%_
                      (let ((__tmp179255
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx175012%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id176315%_ __tmp179255))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id176318%_))
                _%specializer-id176318%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass176323%_
                                                      (let ((__tmp179256
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179256)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table176325%_
                                                      (let ((__tmp179257
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179257)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods176327%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls175104%_)))
                                                     (_%$methods176331%_
                                                      (map (lambda (_%id176329%_)
                                                             (let ((__tmp179258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176329%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179258)))
                   _%methods176327%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176340%_
                                                      (for-each
                                                       (lambda (_%g176332176335%_
                                                                _%g176333176337%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls175104%_
                                                            _%g176332176335%_
                                                            _%g176333176337%_)))
                                                       _%methods176327%_
                                                       _%$methods176331%_))
                                                     (_%methods-bind176350%_
                                                      (map (lambda (_%g176342176345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176343176347%_)
                     (_%generate-method-bind175014%_
                      _%$klass176323%_
                      _%$method-table176325%_
                      _%g176342176345%_
                      _%g176343176347%_))
                   _%methods176327%_
                   _%$methods176331%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots176352%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs175105%_)))
                                                     (_%$slots176356%_
                                                      (map (lambda (_%id176354%_)
                                                             (let ((__tmp179259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176354%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179259)))
                   _%slots176352%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176365%_
                                                      (for-each
                                                       (lambda (_%g176357176360%_
                                                                _%g176358176362%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs175105%_
                                                            _%g176357176360%_
                                                            _%g176358176362%_)))
                                                       _%slots176352%_
                                                       _%$slots176356%_))
                                                     (_%slots-bind176374%_
                                                      (map (lambda (_%g176366176369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176367176371%_)
                     (_%generate-slot-bind175015%_
                      _%$klass176323%_
                      _%g176366176369%_
                      _%g176367176371%_))
                   _%slots176352%_
                   _%$slots176356%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr176466%_
                                                      (let* ((_%g176376176394%_
                                                              (lambda (_%g176377176391%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176377176391%_))))
                     (_%g176375176463%_
                      (lambda (_%g176377176397%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176377176397%_))
                            (let ((_%e176381176399%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176377176397%_))))
                              (let ((_%hd176382176402%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176381176399%_)))
                                    (_%tl176383176404%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176381176399%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176383176404%_))
                                    (let ((_%e176384176407%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176383176404%_))))
                                      (let ((_%hd176385176410%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176384176407%_)))
                                            (_%tl176386176412%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176384176407%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176385176410%_))
                                            (let ((_%e176387176415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176385176410%_))))
                                              (let ((_%hd176388176418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176387176415%_)))
                                                    (_%tl176389176420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176387176415%_))))
                                                ((lambda (_%L176423%_
                                                          _%L176424%_
                                                          _%L176425%_)
                                                   (let* ((_%receiver176454%_
                                                           (let ((_%$e176451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L176423%_))))
                     (if _%$e176451%_ _%$e176451%_ _%L176425%_)))
                  (_%body176460%_
                   (map (lambda (_%g176455176457%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver176454%_
                           _%$klass176323%_
                           _%method-calls175104%_
                           _%slot-refs175105%_
                           _%g176455176457%_))
                        _%L176423%_))
                  (__tmp179260
                   (cons '%#lambda
                         (cons (cons _%L176425%_ _%L176424%_)
                               _%body176460%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179260
                                                      _%L176067%_)))
                                                 _%tl176386176412%_
                                                 _%tl176389176420%_
                                                 _%hd176388176418%_)))
                                            (_%g176376176394%_
                                             _%g176377176397%_))))
                                    (_%g176376176394%_ _%g176377176397%_))))
                            (_%g176376176394%_ _%g176377176397%_)))))
                (_%g176375176463%_ _%L176067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr176629%_
                                                      (let* ((_%g176468176487%_
                                                              (lambda (_%g176469176484%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176469176484%_))))
                     (_%g176467176626%_
                      (lambda (_%g176469176490%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176469176490%_))
                            (let ((_%e176471176492%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176469176490%_))))
                              (let ((_%hd176472176495%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176471176492%_)))
                                    (_%tl176473176497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176471176492%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl176473176497%_))
                                    (let ((_g179261_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl176473176497%_
                                              '0))))
                                      (begin
                                        (let ((_g179262_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g179261_)
                                                     (##values-length
                                                      _g179261_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g179262_ 2)))
                                              (error "Context expects 2 values"
                                                     _g179262_)))
                                        (let ((_%target176474176500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179261_ 0)))
                                              (_%tl176476176502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179261_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176476176502%_))
                                              (letrec ((_%loop176477176505%_
                                                        (lambda (_%hd176475176508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause176481176510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176475176508%_))
                      (let ((_%e176478176513%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176475176508%_))))
                        (let ((_%lp-hd176479176516%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176478176513%_)))
                              (_%lp-tl176480176518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176478176513%_))))
                          (_%loop176477176505%_
                           _%lp-tl176480176518%_
                           (cons _%lp-hd176479176516%_
                                 _%clause176481176510%_))))
                      (let ((_%clause176482176521%_
                             (reverse _%clause176481176510%_)))
                        ((lambda (_%L176524%_)
                           (let* ((_%clauses176624%_
                                   (map (lambda (_%clause176538%_)
                                          (let* ((_%__stx178074178075%_
                                                  _%clause176538%_)
                                                 (_%g176541176556%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx178074178075%_)))))
                                            (let ((_%__kont178076178077%_
                                                   (lambda (_%L176584%_
                                                            _%L176585%_
                                                            _%L176586%_)
                                                     (let* ((_%receiver176605%_
                                                             (let ((_%$e176602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L176584%_))))
                       (if _%$e176602%_ _%$e176602%_ _%L176586%_)))
                    (_%body176611%_
                     (map (lambda (_%g176606176608%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver176605%_
                             _%$klass176323%_
                             _%method-calls175104%_
                             _%slot-refs175105%_
                             _%g176606176608%_))
                          _%L176584%_)))
               (cons (cons _%L176586%_ _%L176585%_) _%body176611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178078178079%_
                                                   (lambda ()
                                                     _%clause176538%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx178074178075%_))
                                                  (let ((_%e176546176568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx178074178075%_))))
                                                    (let ((_%tl176548176573%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176546176568%_)))
                                                          (_%hd176547176571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176546176568%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd176547176571%_))
                                                          (let ((_%e176549176576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd176547176571%_))))
                    (let ((_%tl176551176581%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e176549176576%_)))
                          (_%hd176550176579%_
                           (let ()
                             (declare (not safe))
                             (##car _%e176549176576%_))))
                      (_%__kont178076178077%_
                       _%tl176548176573%_
                       _%tl176551176581%_
                       _%hd176550176579%_)))
                  (_%__kont178078178079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178078178079%_)))))
                                        (let ((__tmp179263
                                               (lambda (_%g176616176619%_
                                                        _%g176617176621%_)
                                                 (cons _%g176616176619%_
                                                       _%g176617176621%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp179263
                                           '()
                                           _%L176524%_))))
                                  (__tmp179264
                                   (cons '%#case-lambda _%clauses176624%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179264 _%L176066%_)))
                         _%clause176482176521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176477176505%_
                                                 _%target176474176500%_
                                                 '()))
                                              (_%g176468176487%_
                                               _%g176469176490%_)))))
                                    (_%g176468176487%_ _%g176469176490%_))))
                            (_%g176468176487%_ _%g176469176490%_)))))
                (_%g176467176626%_ _%L176066%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176631%_
                                                      (let ((__tmp179265
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L176068%_ '())
                                             (cons _%specializer-lambda-expr176466%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr176629%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179265 _%stx175012%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176633%_
                                                      (_%generate-specializer-impl175016%_
                                                       _%$klass176323%_
                                                       _%$method-table176325%_
                                                       _%methods-bind176350%_
                                                       _%slots-bind176374%_
                                                       _%specializer-impl176631%_)))
                                                (let ((__tmp179267
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L175085%_)))
                                                      (__tmp179266
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id176321%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179267
                                                   '" => "
                                                   __tmp179266))
                                                (_%generate-specializer-def175017%_
                                                 _%L175085%_
                                                 _%specializer-id176321%_
                                                 _%specializer-impl176633%_))))
                                        _%hd175999176061%_
                                        _%hd175996176053%_
                                        _%hd175993176045%_)
                                       (_%g175975176005%_ _%g175976176008%_))))
                               (_%g175975176005%_ _%g175976176008%_))
                           (_%g175975176005%_ _%g175976176008%_))
                       (_%g175975176005%_ _%g175976176008%_))))
               (_%g175975176005%_ _%g175976176008%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175975176005%_
                                                    _%g175976176008%_))))
                                           (_%g175975176005%_
                                            _%g175976176008%_))))
                                   (_%g175975176005%_ _%g175976176008%_))))
                           (_%g175975176005%_ _%g175976176008%_))))
                   (_%g175975176005%_ _%g175976176008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175975176005%_
                                                    _%g175976176008%_)))))
                                       (_%g175974176636%_ _%L175084%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L175084%_))
                                         (let* ((_%g176640176693%_
                                                 (lambda (_%g176641176690%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176641176690%_))))
                                                (_%g176639177864%_
                                                 (lambda (_%g176641176696%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176641176696%_))
                                                       (let ((_%e176647176698%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176641176696%_))))
                 (let ((_%hd176648176701%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176647176698%_)))
                       (_%tl176649176703%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176647176698%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd176648176701%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd176648176701%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl176649176703%_))
                               (let ((_%e176650176706%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl176649176703%_))))
                                 (let ((_%hd176651176709%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176650176706%_)))
                                       (_%tl176652176711%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176650176706%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176651176709%_))
                                       (let ((_%e176653176714%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176651176709%_))))
                                         (let ((_%hd176654176717%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176653176714%_)))
                                               (_%tl176655176719%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176653176714%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176654176717%_))
                                               (let ((_%e176656176722%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176654176717%_))))
                                                 (let ((_%hd176657176725%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176656176722%_)))
                                                       (_%tl176658176727%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176656176722%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd176657176725%_))
                                                       (let ((_%e176659176730%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd176657176725%_))))
                 (let ((_%hd176660176733%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176659176730%_)))
                       (_%tl176661176735%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176659176730%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl176661176735%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl176658176727%_))
                           (let ((_%e176662176738%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl176658176727%_))))
                             (let ((_%hd176663176741%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176662176738%_)))
                                   (_%tl176664176743%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176662176738%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176663176741%_))
                                   (let ((_%e176665176746%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176663176741%_))))
                                     (let ((_%hd176666176749%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176665176746%_)))
                                           (_%tl176667176751%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176665176746%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd176666176749%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd176666176749%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl176667176751%_))
                                                   (let ((_%e176668176754%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl176667176751%_))))
                                                     (let ((_%hd176669176757%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176668176754%_)))
                                                           (_%tl176670176759%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176668176754%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd176669176757%_))
                                                           (let ((_%e176671176762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd176669176757%_))))
                     (let ((_%hd176672176765%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176671176762%_)))
                           (_%tl176673176767%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176671176762%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd176672176765%_))
                           (let ((_%e176674176770%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd176672176765%_))))
                             (let ((_%hd176675176773%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176674176770%_)))
                                   (_%tl176676176775%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176674176770%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176675176773%_))
                                   (let ((_%e176677176778%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176675176773%_))))
                                     (let ((_%hd176678176781%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176677176778%_)))
                                           (_%tl176679176783%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176677176778%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176679176783%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl176676176775%_))
                                               (let ((_%e176680176786%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl176676176775%_))))
                                                 (let ((_%hd176681176789%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176680176786%_)))
                                                       (_%tl176682176791%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176680176786%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176682176791%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl176673176767%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl176670176759%_))
                       (let ((_%e176683176794%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176670176759%_))))
                         (let ((_%hd176684176797%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176683176794%_)))
                               (_%tl176685176799%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176683176794%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176685176799%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl176664176743%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl176655176719%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl176652176711%_))
                                           (let ((_%e176686176802%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl176652176711%_))))
                                             (let ((_%hd176687176805%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e176686176802%_)))
                                                   (_%tl176688176807%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e176686176802%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl176688176807%_))
                                                   ((lambda (_%L176810%_
                                                             _%L176811%_
                                                             _%L176812%_
                                                             _%L176813%_
                                                             _%L176814%_)
                                                      (let* ((_%g176854176916%_
                                                              (lambda (_%g176855176913%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176855176913%_))))
                     (_%g176853177861%_
                      (lambda (_%g176855176919%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176855176919%_))
                            (let ((_%e176861176921%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176855176919%_))))
                              (let ((_%hd176862176924%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176861176921%_)))
                                    (_%tl176863176926%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176861176921%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd176862176924%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd176862176924%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl176863176926%_))
                                            (let ((_%e176864176929%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl176863176926%_))))
                                              (let ((_%hd176865176932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176864176929%_)))
                                                    (_%tl176866176934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176864176929%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176866176934%_))
                                                    (let ((_%e176867176937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176866176934%_))))
                                                      (let ((_%hd176868176940%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176867176937%_)))
                    (_%tl176869176942%_
                     (let () (declare (not safe)) (##cdr _%e176867176937%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd176868176940%_))
                    (let ((_%e176870176945%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd176868176940%_))))
                      (let ((_%hd176871176948%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176870176945%_)))
                            (_%tl176872176950%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176870176945%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd176871176948%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd176871176948%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176872176950%_))
                                    (let ((_%e176873176953%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176872176950%_))))
                                      (let ((_%hd176874176956%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176873176953%_)))
                                            (_%tl176875176958%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176873176953%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176874176956%_))
                                            (let ((_%e176876176961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176874176956%_))))
                                              (let ((_%hd176877176964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176876176961%_)))
                                                    (_%tl176878176966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176876176961%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd176877176964%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd176877176964%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl176878176966%_))
                                                            (let ((_%e176879176969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl176878176966%_))))
                      (let ((_%hd176880176972%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176879176969%_)))
                            (_%tl176881176974%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176879176969%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176881176974%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl176875176958%_))
                                (let ((_%e176882176977%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl176875176958%_))))
                                  (let ((_%hd176883176980%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176882176977%_)))
                                        (_%tl176884176982%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176882176977%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176883176980%_))
                                        (let ((_%e176885176985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176883176980%_))))
                                          (let ((_%hd176886176988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176885176985%_)))
                                                (_%tl176887176990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176885176985%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd176886176988%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd176886176988%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl176887176990%_))
                                                        (let ((_%e176888176993%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl176887176990%_))))
                  (let ((_%hd176889176996%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176888176993%_)))
                        (_%tl176890176998%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176888176993%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl176890176998%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176884176982%_))
                            (let ((_%e176891177001%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176884176982%_))))
                              (let ((_%hd176892177004%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176891177001%_)))
                                    (_%tl176893177006%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176891177001%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd176892177004%_))
                                    (let ((_%e176894177009%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd176892177004%_))))
                                      (let ((_%hd176895177012%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176894177009%_)))
                                            (_%tl176896177014%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176894177009%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd176895177012%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd176895177012%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176896177014%_))
                                                    (let ((_%e176897177017%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176896177014%_))))
                                                      (let ((_%hd176898177020%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176897177017%_)))
                    (_%tl176899177022%_
                     (let () (declare (not safe)) (##cdr _%e176897177017%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl176899177022%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176893177006%_))
                        (if (let ((__tmp179268
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl176893177006%_))))
                              (declare (not safe))
                              (##fx>= __tmp179268 '1))
                            (let ((_g179269_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176893177006%_
                                      '1))))
                              (begin
                                (let ((_g179270_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179269_)
                                             (##values-length _g179269_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179270_ 2)))
                                      (error "Context expects 2 values"
                                             _g179270_)))
                                (let ((_%target176900177025%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179269_ 0)))
                                      (_%tl176902177027%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179269_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176902177027%_))
                                      (let ((_%e176909177030%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176902177027%_))))
                                        (let ((_%hd176910177033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176909177030%_)))
                                              (_%tl176911177035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176909177030%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176911177035%_))
                                              (letrec ((_%loop176903177038%_
                                                        (lambda (_%hd176901177041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref176907177043%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176901177041%_))
                      (let ((_%e176904177046%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176901177041%_))))
                        (let ((_%lp-hd176905177049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176904177046%_)))
                              (_%lp-tl176906177051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176904177046%_))))
                          (_%loop176903177038%_
                           _%lp-tl176906177051%_
                           (cons _%lp-hd176905177049%_
                                 _%kw-ref176907177043%_))))
                      (let ((_%kw-ref176908177054%_
                             (reverse _%kw-ref176907177043%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176869176942%_))
                            ((lambda (_%L177057%_
                                      _%L177058%_
                                      _%L177059%_
                                      _%L177060%_
                                      _%L177061%_)
                               (let* ((_%kw-count177112%_
                                       (length (let ((__tmp179271
                                                      (lambda (_%g177104177107%_
                                                               _%g177105177109%_)
                                                        (cons _%g177104177107%_
                                                              _%g177105177109%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179271
                                                  '()
                                                  _%L177058%_))))
                                      (_%self-index177114%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count177112%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L176812%_))
                                     (let* ((_%g177118177132%_
                                             (lambda (_%g177119177129%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g177119177129%_))))
                                            (_%g177117177255%_
                                             (lambda (_%g177119177135%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g177119177135%_))
                                                   (let ((_%e177122177137%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g177119177135%_))))
                                                     (let ((_%hd177123177140%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e177122177137%_)))
                                                           (_%tl177124177142%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e177122177137%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177124177142%_))
                                                           (let ((_%e177125177145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177124177142%_))))
                     (let ((_%hd177126177148%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177125177145%_)))
                           (_%tl177127177150%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177125177145%_))))
                       ((lambda (_%L177153%_ _%L177154%_)
                          (let* ((_%self177171%_
                                  (list-ref _%L177154%_ _%self-index177114%_))
                                 (_%receiver177176%_
                                  (let ((_%$e177173%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L177153%_))))
                                    (if _%$e177173%_
                                        _%$e177173%_
                                        _%self177171%_))))
                            (for-each
                             (lambda (_%g177178177180%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver177176%_
                                _%method-calls175104%_
                                _%slot-refs175105%_
                                _%g177178177180%_))
                             _%L177153%_)
                            (if (_%no-specializer?175108%_)
                                _%stx175012%_
                                (let* ((_%specializer-id177189%_
                                        (let* ((_%id177183%_
                                                (let ((__tmp179272
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L175085%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp179272
                                                   '"::specialize")))
                                               (_%specializer-id177186%_
                                                (let ((__tmp179273
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx175012%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id177183%_
                                                   __tmp179273))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id177186%_))
                                          _%specializer-id177186%_))
                                       (_%$klass177191%_
                                        (let ((__tmp179274
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179274)))
                                       (_%$method-table177193%_
                                        (let ((__tmp179275
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179275)))
                                       (_%methods177195%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls175104%_)))
                                       (_%$methods177199%_
                                        (map (lambda (_%id177197%_)
                                               (let ((__tmp179276
                                                      (gensym _%id177197%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179276)))
                                             _%methods177195%_))
                                       (_%_177208%_
                                        (for-each
                                         (lambda (_%g177200177203%_
                                                  _%g177201177205%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls175104%_
                                              _%g177200177203%_
                                              _%g177201177205%_)))
                                         _%methods177195%_
                                         _%$methods177199%_))
                                       (_%methods-bind177218%_
                                        (map (lambda (_%g177210177213%_
                                                      _%g177211177215%_)
                                               (_%generate-method-bind175014%_
                                                _%$klass177191%_
                                                _%$method-table177193%_
                                                _%g177210177213%_
                                                _%g177211177215%_))
                                             _%methods177195%_
                                             _%$methods177199%_))
                                       (_%slots177220%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs175105%_)))
                                       (_%$slots177224%_
                                        (map (lambda (_%id177222%_)
                                               (let ((__tmp179277
                                                      (gensym _%id177222%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179277)))
                                             _%slots177220%_))
                                       (_%_177233%_
                                        (for-each
                                         (lambda (_%g177225177228%_
                                                  _%g177226177230%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs175105%_
                                              _%g177225177228%_
                                              _%g177226177230%_)))
                                         _%slots177220%_
                                         _%$slots177224%_))
                                       (_%slots-bind177242%_
                                        (map (lambda (_%g177234177237%_
                                                      _%g177235177239%_)
                                               (_%generate-slot-bind175015%_
                                                _%$klass177191%_
                                                _%g177234177237%_
                                                _%g177235177239%_))
                                             _%slots177220%_
                                             _%$slots177224%_))
                                       (_%specializer-impl177250%_
                                        (let* ((_%specializer-body177248%_
                                                (map (lambda (_%g177243177245%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver177176%_
                                                        _%$klass177191%_
                                                        _%method-calls175104%_
                                                        _%slot-refs175105%_
                                                        _%g177243177245%_))
                                                     _%L177153%_))
                                               (__tmp179278
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L176814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L176813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp179279
                                   (cons '%#lambda
                                         (cons _%L177154%_
                                               _%specializer-body177248%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp179279 _%L176812%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L176811%_ '())))
                                      '()))
                          '())
                    (cons _%L176810%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp179278
                                           _%stx175012%_)))
                                       (_%specializer-impl177252%_
                                        (_%generate-specializer-impl175016%_
                                         _%$klass177191%_
                                         _%$method-table177193%_
                                         _%methods-bind177218%_
                                         _%slots-bind177242%_
                                         _%specializer-impl177250%_)))
                                  (let ((__tmp179281
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L175085%_)))
                                        (__tmp179280
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id177189%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp179281
                                     '" => "
                                     __tmp179280))
                                  (_%generate-specializer-def175017%_
                                   _%L175085%_
                                   _%specializer-id177189%_
                                   _%specializer-impl177252%_)))))
                        _%tl177127177150%_
                        _%hd177126177148%_)))
                   (_%g177118177132%_ _%g177119177135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g177118177132%_
                                                    _%g177119177135%_)))))
                                       (_%g177117177255%_ _%L176812%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L176812%_))
                                         (let* ((_%g177259177289%_
                                                 (lambda (_%g177260177286%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g177260177286%_))))
                                                (_%g177258177857%_
                                                 (lambda (_%g177260177292%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g177260177292%_))
                                                       (let ((_%e177264177294%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g177260177292%_))))
                 (let ((_%hd177265177297%_
                        (let ()
                          (declare (not safe))
                          (##car _%e177264177294%_)))
                       (_%tl177266177299%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e177264177294%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl177266177299%_))
                       (let ((_%e177267177302%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl177266177299%_))))
                         (let ((_%hd177268177305%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e177267177302%_)))
                               (_%tl177269177307%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e177267177302%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd177268177305%_))
                               (let ((_%e177270177310%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd177268177305%_))))
                                 (let ((_%hd177271177313%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e177270177310%_)))
                                       (_%tl177272177315%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e177270177310%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd177271177313%_))
                                       (let ((_%e177273177318%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd177271177313%_))))
                                         (let ((_%hd177274177321%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e177273177318%_)))
                                               (_%tl177275177323%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e177273177318%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd177274177321%_))
                                               (let ((_%e177276177326%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd177274177321%_))))
                                                 (let ((_%hd177277177329%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e177276177326%_)))
                                                       (_%tl177278177331%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e177276177326%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl177278177331%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177275177323%_))
                                                           (let ((_%e177279177334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177275177323%_))))
                     (let ((_%hd177280177337%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177279177334%_)))
                           (_%tl177281177339%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177279177334%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl177281177339%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl177272177315%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl177269177307%_))
                                   (let ((_%e177282177342%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl177269177307%_))))
                                     (let ((_%hd177283177345%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e177282177342%_)))
                                           (_%tl177284177347%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e177282177342%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl177284177347%_))
                                           ((lambda (_%L177350%_
                                                     _%L177351%_
                                                     _%L177352%_)
                                              (let* ((_%g177376177390%_
                                                      (lambda (_%g177377177387%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177377177387%_))))
                                                     (_%g177375177437%_
                                                      (lambda (_%g177377177393%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177377177393%_))
                                                            (let ((_%e177380177395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177377177393%_))))
                      (let ((_%hd177381177398%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177380177395%_)))
                            (_%tl177382177400%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177380177395%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl177382177400%_))
                            (let ((_%e177383177403%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl177382177400%_))))
                              (let ((_%hd177384177406%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e177383177403%_)))
                                    (_%tl177385177408%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e177383177403%_))))
                                ((lambda (_%L177411%_ _%L177412%_)
                                   (let* ((_%self177425%_
                                           (list-ref
                                            _%L177412%_
                                            _%self-index177114%_))
                                          (_%receiver177430%_
                                           (let ((_%$e177427%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L177411%_))))
                                             (if _%$e177427%_
                                                 _%$e177427%_
                                                 _%self177425%_))))
                                     (for-each
                                      (lambda (_%g177432177434%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver177430%_
                                         _%method-calls175104%_
                                         _%slot-refs175105%_
                                         _%g177432177434%_))
                                      _%L177411%_)))
                                 _%tl177385177408%_
                                 _%hd177384177406%_)))
                            (_%g177376177390%_ _%g177377177393%_))))
                    (_%g177376177390%_ _%g177377177393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177375177437%_
                                                 _%L177351%_))
                                              (let* ((_%g177440177459%_
                                                      (lambda (_%g177441177456%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177441177456%_))))
                                                     (_%g177439177570%_
                                                      (lambda (_%g177441177462%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177441177462%_))
                                                            (let ((_%e177443177464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177441177462%_))))
                      (let ((_%hd177444177467%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177443177464%_)))
                            (_%tl177445177469%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177443177464%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl177445177469%_))
                            (let ((_g179282_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl177445177469%_
                                      '0))))
                              (begin
                                (let ((_g179283_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179282_)
                                             (##values-length _g179282_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179283_ 2)))
                                      (error "Context expects 2 values"
                                             _g179283_)))
                                (let ((_%target177446177472%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179282_ 0)))
                                      (_%tl177448177474%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179282_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177448177474%_))
                                      (letrec ((_%loop177449177477%_
                                                (lambda (_%hd177447177480%_
                                                         _%clause177453177482%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd177447177480%_))
                                                      (let ((_%e177450177485%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd177447177480%_))))
                (let ((_%lp-hd177451177488%_
                       (let () (declare (not safe)) (##car _%e177450177485%_)))
                      (_%lp-tl177452177490%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e177450177485%_))))
                  (_%loop177449177477%_
                   _%lp-tl177452177490%_
                   (cons _%lp-hd177451177488%_ _%clause177453177482%_))))
              (let ((_%clause177454177493%_ (reverse _%clause177453177482%_)))
                ((lambda (_%L177496%_)
                   (for-each
                    (lambda (_%clause177509%_)
                      (let* ((_%g177511177522%_
                              (lambda (_%g177512177519%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g177512177519%_))))
                             (_%g177510177560%_
                              (lambda (_%g177512177525%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g177512177525%_))
                                    (let ((_%e177515177527%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g177512177525%_))))
                                      (let ((_%hd177516177530%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e177515177527%_)))
                                            (_%tl177517177532%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e177515177527%_))))
                                        ((lambda (_%L177535%_ _%L177536%_)
                                           (let* ((_%self177548%_
                                                   (list-ref
                                                    _%L177536%_
                                                    _%self-index177114%_))
                                                  (_%receiver177553%_
                                                   (let ((_%$e177550%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L177535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e177550%_
                                                         _%$e177550%_
                                                         _%self177548%_))))
                                             (for-each
                                              (lambda (_%g177555177557%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver177553%_
                                                 _%method-calls175104%_
                                                 _%slot-refs175105%_
                                                 _%g177555177557%_))
                                              _%L177535%_)))
                                         _%tl177517177532%_
                                         _%hd177516177530%_)))
                                    (_%g177511177522%_ _%g177512177525%_)))))
                        (_%g177510177560%_ _%clause177509%_)))
                    (let ((__tmp179284
                           (lambda (_%g177562177565%_ _%g177563177567%_)
                             (cons _%g177562177565%_ _%g177563177567%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179284 '() _%L177496%_))))
                 _%clause177454177493%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop177449177477%_
                                         _%target177446177472%_
                                         '()))
                                      (_%g177440177459%_ _%g177441177462%_)))))
                            (_%g177440177459%_ _%g177441177462%_))))
                    (_%g177440177459%_ _%g177441177462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177439177570%_
                                                 _%L177350%_))
                                              (if (_%no-specializer?175108%_)
                                                  _%stx175012%_
                                                  (let* ((_%specializer-id177579%_
                                                          (let* ((_%id177573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179285
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L175085%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179285 '"::specialize")))
                         (_%specializer-id177576%_
                          (let ((__tmp179286
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx175012%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id177573%_
                             __tmp179286))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id177576%_))
                    _%specializer-id177576%_))
                 (_%$klass177581%_
                  (let ((__tmp179287
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179287)))
                 (_%$method-table177583%_
                  (let ((__tmp179288
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179288)))
                 (_%methods177585%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls175104%_)))
                 (_%$methods177589%_
                  (map (lambda (_%id177587%_)
                         (let ((__tmp179289 (gensym _%id177587%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179289)))
                       _%methods177585%_))
                 (_%_177598%_
                  (for-each
                   (lambda (_%g177590177593%_ _%g177591177595%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls175104%_
                        _%g177590177593%_
                        _%g177591177595%_)))
                   _%methods177585%_
                   _%$methods177589%_))
                 (_%methods-bind177608%_
                  (map (lambda (_%g177600177603%_ _%g177601177605%_)
                         (_%generate-method-bind175014%_
                          _%$klass177581%_
                          _%$method-table177583%_
                          _%g177600177603%_
                          _%g177601177605%_))
                       _%methods177585%_
                       _%$methods177589%_))
                 (_%slots177610%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs175105%_)))
                 (_%$slots177614%_
                  (map (lambda (_%id177612%_)
                         (let ((__tmp179290 (gensym _%id177612%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179290)))
                       _%slots177610%_))
                 (_%_177623%_
                  (for-each
                   (lambda (_%g177615177618%_ _%g177616177620%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs175105%_
                        _%g177615177618%_
                        _%g177616177620%_)))
                   _%slots177610%_
                   _%$slots177614%_))
                 (_%slots-bind177632%_
                  (map (lambda (_%g177624177627%_ _%g177625177629%_)
                         (_%generate-slot-bind175015%_
                          _%$klass177581%_
                          _%g177624177627%_
                          _%g177625177629%_))
                       _%slots177610%_
                       _%$slots177614%_))
                 (_%specializer-lambda-expr177710%_
                  (let* ((_%g177634177648%_
                          (lambda (_%g177635177645%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177635177645%_))))
                         (_%g177633177707%_
                          (lambda (_%g177635177651%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177635177651%_))
                                (let ((_%e177638177653%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177635177651%_))))
                                  (let ((_%hd177639177656%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177638177653%_)))
                                        (_%tl177640177658%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177638177653%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl177640177658%_))
                                        (let ((_%e177641177661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl177640177658%_))))
                                          (let ((_%hd177642177664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e177641177661%_)))
                                                (_%tl177643177666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e177641177661%_))))
                                            ((lambda (_%L177669%_ _%L177670%_)
                                               (let* ((_%self177693%_
                                                       (list-ref
                                                        _%L177670%_
                                                        _%self-index177114%_))
                                                      (_%receiver177698%_
                                                       (let ((_%$e177695%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L177669%_))))
                 (if _%$e177695%_ _%$e177695%_ _%self177693%_)))
              (_%body177704%_
               (map (lambda (_%g177699177701%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver177698%_
                       _%$klass177581%_
                       _%method-calls175104%_
                       _%slot-refs175105%_
                       _%g177699177701%_))
                    _%L177669%_))
              (__tmp179291 (cons '%#lambda (cons _%L177670%_ _%body177704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp179291
                                                  _%L177351%_)))
                                             _%tl177643177666%_
                                             _%hd177642177664%_)))
                                        (_%g177634177648%_
                                         _%g177635177651%_))))
                                (_%g177634177648%_ _%g177635177651%_)))))
                    (_%g177633177707%_ _%L177351%_)))
                 (_%specializer-case-lambda-expr177850%_
                  (let* ((_%g177712177731%_
                          (lambda (_%g177713177728%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177713177728%_))))
                         (_%g177711177847%_
                          (lambda (_%g177713177734%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177713177734%_))
                                (let ((_%e177715177736%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177713177734%_))))
                                  (let ((_%hd177716177739%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177715177736%_)))
                                        (_%tl177717177741%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177715177736%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl177717177741%_))
                                        (let ((_g179292_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl177717177741%_
                                                  '0))))
                                          (begin
                                            (let ((_g179293_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g179292_)
                                                         (##values-length
                                                          _g179292_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g179293_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g179293_)))
                                            (let ((_%target177718177744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179292_
                                                      0)))
                                                  (_%tl177720177746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179292_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl177720177746%_))
                                                  (letrec ((_%loop177721177749%_
                                                            (lambda (_%hd177719177752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause177725177754%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd177719177752%_))
                          (let ((_%e177722177757%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd177719177752%_))))
                            (let ((_%lp-hd177723177760%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177722177757%_)))
                                  (_%lp-tl177724177762%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177722177757%_))))
                              (_%loop177721177749%_
                               _%lp-tl177724177762%_
                               (cons _%lp-hd177723177760%_
                                     _%clause177725177754%_))))
                          (let ((_%clause177726177765%_
                                 (reverse _%clause177725177754%_)))
                            ((lambda (_%L177768%_)
                               (let* ((_%clauses177845%_
                                       (map (lambda (_%clause177782%_)
                                              (let* ((_%g177784177795%_
                                                      (lambda (_%g177785177792%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177785177792%_))))
                                                     (_%g177783177835%_
                                                      (lambda (_%g177785177798%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177785177798%_))
                                                            (let ((_%e177788177800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177785177798%_))))
                      (let ((_%hd177789177803%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177788177800%_)))
                            (_%tl177790177805%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177788177800%_))))
                        ((lambda (_%L177808%_ _%L177809%_)
                           (let* ((_%self177821%_
                                   (list-ref _%L177809%_ _%self-index177114%_))
                                  (_%receiver177826%_
                                   (let ((_%$e177823%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L177808%_))))
                                     (if _%$e177823%_
                                         _%$e177823%_
                                         _%self177821%_)))
                                  (_%body177832%_
                                   (map (lambda (_%g177827177829%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver177826%_
                                           _%$klass177581%_
                                           _%method-calls175104%_
                                           _%slot-refs175105%_
                                           _%g177827177829%_))
                                        _%L177808%_)))
                             (cons _%L177809%_ _%body177832%_)))
                         _%tl177790177805%_
                         _%hd177789177803%_)))
                    (_%g177784177795%_ _%g177785177798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177783177835%_
                                                 _%clause177782%_)))
                                            (let ((__tmp179294
                                                   (lambda (_%g177837177840%_
                                                            _%g177838177842%_)
                                                     (cons _%g177837177840%_
                                                           _%g177838177842%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp179294
                                               '()
                                               _%L177768%_))))
                                      (__tmp179295
                                       (cons '%#case-lambda
                                             _%clauses177845%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp179295
                                  _%L177350%_)))
                             _%clause177726177765%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop177721177749%_
                                                     _%target177718177744%_
                                                     '()))
                                                  (_%g177712177731%_
                                                   _%g177713177734%_)))))
                                        (_%g177712177731%_
                                         _%g177713177734%_))))
                                (_%g177712177731%_ _%g177713177734%_)))))
                    (_%g177711177847%_ _%L177350%_)))
                 (_%specializer-impl177852%_
                  (let ((__tmp179296
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L176814%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L176813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp179297
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L177352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr177710%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr177850%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179297
                                                _%stx175012%_))
                                             '()))
                                 '())
                           (cons _%L176811%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L176810%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179296 _%stx175012%_)))
                 (_%specializer-impl177854%_
                  (_%generate-specializer-impl175016%_
                   _%$klass177581%_
                   _%$method-table177583%_
                   _%methods-bind177608%_
                   _%slots-bind177632%_
                   _%specializer-impl177852%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179299
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L175085%_)))
                                                          (__tmp179298
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id177579%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179299
                                                       '" => "
                                                       __tmp179298))
                                                    (_%generate-specializer-def175017%_
                                                     _%L175085%_
                                                     _%specializer-id177579%_
                                                     _%specializer-impl177854%_))))
                                            _%hd177283177345%_
                                            _%hd177280177337%_
                                            _%hd177277177329%_)
                                           (_%g177259177289%_
                                            _%g177260177292%_))))
                                   (_%g177259177289%_ _%g177260177292%_))
                               (_%g177259177289%_ _%g177260177292%_))
                           (_%g177259177289%_ _%g177260177292%_))))
                   (_%g177259177289%_ _%g177260177292%_))
               (_%g177259177289%_ _%g177260177292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g177259177289%_
                                                _%g177260177292%_))))
                                       (_%g177259177289%_ _%g177260177292%_))))
                               (_%g177259177289%_ _%g177260177292%_))))
                       (_%g177259177289%_ _%g177260177292%_))))
               (_%g177259177289%_ _%g177260177292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g177258177857%_ _%L176812%_))
                                         _%stx175012%_))))
                             _%hd176910177033%_
                             _%kw-ref176908177054%_
                             _%hd176898177020%_
                             _%hd176889176996%_
                             _%hd176880176972%_)
                            (_%g176854176916%_ _%g176855176919%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176903177038%_
                                                 _%target176900177025%_
                                                 '()))
                                              (_%g176854176916%_
                                               _%g176855176919%_))))
                                      (_%g176854176916%_ _%g176855176919%_)))))
                            (_%g176854176916%_ _%g176855176919%_))
                        (_%g176854176916%_ _%g176855176919%_))
                    (_%g176854176916%_ _%g176855176919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176854176916%_
                                                     _%g176855176919%_))
                                                (_%g176854176916%_
                                                 _%g176855176919%_))
                                            (_%g176854176916%_
                                             _%g176855176919%_))))
                                    (_%g176854176916%_ _%g176855176919%_))))
                            (_%g176854176916%_ _%g176855176919%_))
                        (_%g176854176916%_ _%g176855176919%_))))
                (_%g176854176916%_ _%g176855176919%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176854176916%_
                                                     _%g176855176919%_))
                                                (_%g176854176916%_
                                                 _%g176855176919%_))))
                                        (_%g176854176916%_
                                         _%g176855176919%_))))
                                (_%g176854176916%_ _%g176855176919%_))
                            (_%g176854176916%_ _%g176855176919%_))))
                    (_%g176854176916%_ _%g176855176919%_))
                (_%g176854176916%_ _%g176855176919%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176854176916%_
                                                     _%g176855176919%_))))
                                            (_%g176854176916%_
                                             _%g176855176919%_))))
                                    (_%g176854176916%_ _%g176855176919%_))
                                (_%g176854176916%_ _%g176855176919%_))
                            (_%g176854176916%_ _%g176855176919%_))))
                    (_%g176854176916%_ _%g176855176919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176854176916%_
                                                     _%g176855176919%_))))
                                            (_%g176854176916%_
                                             _%g176855176919%_))
                                        (_%g176854176916%_ _%g176855176919%_))
                                    (_%g176854176916%_ _%g176855176919%_))))
                            (_%g176854176916%_ _%g176855176919%_)))))
                (_%g176853177861%_ _%L176811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd176687176805%_
                                                    _%hd176684176797%_
                                                    _%hd176681176789%_
                                                    _%hd176678176781%_
                                                    _%hd176660176733%_)
                                                   (_%g176640176693%_
                                                    _%g176641176696%_))))
                                           (_%g176640176693%_
                                            _%g176641176696%_))
                                       (_%g176640176693%_ _%g176641176696%_))
                                   (_%g176640176693%_ _%g176641176696%_))
                               (_%g176640176693%_ _%g176641176696%_))))
                       (_%g176640176693%_ _%g176641176696%_))
                   (_%g176640176693%_ _%g176641176696%_))
               (_%g176640176693%_ _%g176641176696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176640176693%_
                                                _%g176641176696%_))
                                           (_%g176640176693%_
                                            _%g176641176696%_))))
                                   (_%g176640176693%_ _%g176641176696%_))))
                           (_%g176640176693%_ _%g176641176696%_))))
                   (_%g176640176693%_ _%g176641176696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176640176693%_
                                                    _%g176641176696%_))
                                               (_%g176640176693%_
                                                _%g176641176696%_))
                                           (_%g176640176693%_
                                            _%g176641176696%_))))
                                   (_%g176640176693%_ _%g176641176696%_))))
                           (_%g176640176693%_ _%g176641176696%_))
                       (_%g176640176693%_ _%g176641176696%_))))
               (_%g176640176693%_ _%g176641176696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176640176693%_
                                                _%g176641176696%_))))
                                       (_%g176640176693%_ _%g176641176696%_))))
                               (_%g176640176693%_ _%g176641176696%_))
                           (_%g176640176693%_ _%g176641176696%_))
                       (_%g176640176693%_ _%g176641176696%_))))
               (_%g176640176693%_ _%g176641176696%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176639177864%_ _%L175084%_))
                                         _%stx175012%_))))))))
                  (_%__kont178098178099%_ (lambda () _%stx175012%_)))
              (let ((_%__match178127178128%_
                     (lambda (_%e175024175052%_
                              _%hd175025175055%_
                              _%tl175026175057%_
                              _%e175027175060%_
                              _%hd175028175063%_
                              _%tl175029175065%_
                              _%e175030175068%_
                              _%hd175031175071%_
                              _%tl175032175073%_
                              _%e175033175076%_
                              _%hd175034175079%_
                              _%tl175035175081%_)
                       (let ((_%L175084%_ _%hd175034175079%_)
                             (_%L175085%_ _%hd175031175071%_))
                         (if (let ((__tmp179300
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L175085%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp179300))
                             (_%__kont178096178097%_ _%L175084%_ _%L175085%_)
                             (_%__kont178098178099%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx178094178095%_))
                    (let ((_%e175024175052%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx178094178095%_))))
                      (let ((_%tl175026175057%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175024175052%_)))
                            (_%hd175025175055%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175024175052%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175026175057%_))
                            (let ((_%e175027175060%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175026175057%_))))
                              (let ((_%tl175029175065%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175027175060%_)))
                                    (_%hd175028175063%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175027175060%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd175028175063%_))
                                    (let ((_%e175030175068%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd175028175063%_))))
                                      (let ((_%tl175032175073%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175030175068%_)))
                                            (_%hd175031175071%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175030175068%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl175032175073%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl175029175065%_))
                                                (let ((_%e175033175076%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl175029175065%_))))
                                                  (let ((_%tl175035175081%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e175033175076%_)))
                                                        (_%hd175034175079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e175033175076%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl175035175081%_))
                                                        (_%__match178127178128%_
                                                         _%e175024175052%_
                                                         _%hd175025175055%_
                                                         _%tl175026175057%_
                                                         _%e175027175060%_
                                                         _%hd175028175063%_
                                                         _%tl175029175065%_
                                                         _%e175030175068%_
                                                         _%hd175031175071%_
                                                         _%tl175032175073%_
                                                         _%e175033175076%_
                                                         _%hd175034175079%_
                                                         _%tl175035175081%_)
                                                        (_%__kont178098178099%_))))
                                                (_%__kont178098178099%_))
                                            (_%__kont178098178099%_))))
                                    (_%__kont178098178099%_))))
                            (_%__kont178098178099%_))))
                    (_%__kont178098178099%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self174864%_ _%stx174865%_)
        (let* ((_%__stx178130178131%_ _%stx174865%_)
               (_%g174868174901%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx178130178131%_)))))
          (let ((_%__kont178132178133%_ (lambda (_%L174991%_) _%L174991%_))
                (_%__kont178134178135%_
                 (lambda (_%L174930%_ _%L174931%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self174864%_ _%L174930%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx178130178131%_))
                (let ((_%e174871174951%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx178130178131%_))))
                  (let ((_%tl174873174956%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174871174951%_)))
                        (_%hd174872174954%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174871174951%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174873174956%_))
                        (let ((_%e174874174959%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174873174956%_))))
                          (let ((_%tl174876174964%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174874174959%_)))
                                (_%hd174875174962%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174874174959%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174875174962%_))
                                (let ((_%e174877174967%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174875174962%_))))
                                  (let ((_%tl174879174972%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174877174967%_)))
                                        (_%hd174878174970%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174877174967%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd174878174970%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd174878174970%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174879174972%_))
                                                (let ((_%e174880174975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174879174972%_))))
                                                  (let ((_%tl174882174980%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174880174975%_)))
                                                        (_%hd174881174978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174880174975%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174882174980%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174876174964%_))
                                                            (let ((_%e174883174983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174876174964%_))))
                      (let ((_%tl174885174988%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174883174983%_)))
                            (_%hd174884174986%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174883174983%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174885174988%_))
                            (_%__kont178132178133%_ _%hd174881174978%_)
                            (let ()
                              (declare (not safe))
                              (_%g174868174901%_)))))
                    (let () (declare (not safe)) (_%g174868174901%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl174876174964%_))
                    (let ((_%e174894174922%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174876174964%_))))
                      (let ((_%tl174896174927%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174894174922%_)))
                            (_%hd174895174925%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174894174922%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174896174927%_))
                            (_%__kont178134178135%_
                             _%hd174895174925%_
                             _%hd174875174962%_)
                            (let ()
                              (declare (not safe))
                              (_%g174868174901%_)))))
                    (let () (declare (not safe)) (_%g174868174901%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174876174964%_))
                                                    (let ((_%e174894174922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174876174964%_))))
                                                      (let ((_%tl174896174927%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e174894174922%_)))
                    (_%hd174895174925%_
                     (let () (declare (not safe)) (##car _%e174894174922%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174896174927%_))
                    (_%__kont178134178135%_
                     _%hd174895174925%_
                     _%hd174875174962%_)
                    (let () (declare (not safe)) (_%g174868174901%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174868174901%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174876174964%_))
                                                (let ((_%e174894174922%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174876174964%_))))
                                                  (let ((_%tl174896174927%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174894174922%_)))
                                                        (_%hd174895174925%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174894174922%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174896174927%_))
                                                        (_%__kont178134178135%_
                                                         _%hd174895174925%_
                                                         _%hd174875174962%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g174868174901%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g174868174901%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174876174964%_))
                                            (let ((_%e174894174922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174876174964%_))))
                                              (let ((_%tl174896174927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174894174922%_)))
                                                    (_%hd174895174925%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174894174922%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl174896174927%_))
                                                    (_%__kont178134178135%_
                                                     _%hd174895174925%_
                                                     _%hd174875174962%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174868174901%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g174868174901%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174876174964%_))
                                    (let ((_%e174894174922%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174876174964%_))))
                                      (let ((_%tl174896174927%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174894174922%_)))
                                            (_%hd174895174925%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174894174922%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174896174927%_))
                                            (_%__kont178134178135%_
                                             _%hd174895174925%_
                                             _%hd174875174962%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g174868174901%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g174868174901%_))))))
                        (let () (declare (not safe)) (_%g174868174901%_)))))
                (let () (declare (not safe)) (_%g174868174901%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self174780%_ _%stx174781%_)
        (let* ((_%g174783174804%_
                (lambda (_%g174784174801%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g174784174801%_))))
               (_%g174782174861%_
                (lambda (_%g174784174807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g174784174807%_))
                      (let ((_%e174788174809%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g174784174807%_))))
                        (let ((_%hd174789174812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174788174809%_)))
                              (_%tl174790174814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174788174809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl174790174814%_))
                              (let ((_%e174791174817%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl174790174814%_))))
                                (let ((_%hd174792174820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e174791174817%_)))
                                      (_%tl174793174822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e174791174817%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174793174822%_))
                                      (let ((_%e174794174825%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174793174822%_))))
                                        (let ((_%hd174795174828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174794174825%_)))
                                              (_%tl174796174830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174794174825%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl174796174830%_))
                                              (let ((_%e174797174833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl174796174830%_))))
                                                (let ((_%hd174798174836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e174797174833%_)))
                                                      (_%tl174799174838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e174797174833%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl174799174838%_))
                                                      ((lambda (_%L174841%_
                                                                _%L174842%_
                                                                _%L174843%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self174780%_
                                                            _%L174842%_)))
                                                       _%hd174798174836%_
                                                       _%hd174795174828%_
                                                       _%hd174792174820%_)
                                                      (_%g174783174804%_
                                                       _%g174784174807%_))))
                                              (_%g174783174804%_
                                               _%g174784174807%_))))
                                      (_%g174783174804%_ _%g174784174807%_))))
                              (_%g174783174804%_ _%g174784174807%_))))
                      (_%g174783174804%_ _%g174784174807%_)))))
          (_%g174782174861%_ _%stx174781%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self173741%_ _%stx173742%_)
        (let* ((_%__stx178196178197%_ _%stx173742%_)
               (_%g173750173972%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx178196178197%_)))))
          (let ((_%__kont178198178199%_
                 (lambda (_%L174729%_ _%L174730%_ _%L174731%_ _%L174732%_)
                   (let ((__tmp179302
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173741%_ 'methods)))
                         (__tmp179301
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174730%_))))
                     (declare (not safe))
                     (hash-put! __tmp179302 __tmp179301 '#t))
                   (for-each
                    (lambda (_%g174765174767%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173741%_ _%g174765174767%_)))
                    (let ((__tmp179303
                           (lambda (_%g174769174772%_ _%g174770174774%_)
                             (cons _%g174769174772%_ _%g174770174774%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179303 '() _%L174729%_)))))
                (_%__kont178202178203%_
                 (lambda (_%L174564%_
                          _%L174565%_
                          _%L174566%_
                          _%L174567%_
                          _%L174568%_)
                   (let ((__tmp179305
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173741%_ 'methods)))
                         (__tmp179304
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174565%_))))
                     (declare (not safe))
                     (hash-put! __tmp179305 __tmp179304 '#t))
                   (for-each
                    (lambda (_%g174608174610%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173741%_ _%g174608174610%_)))
                    (let ((__tmp179306
                           (lambda (_%g174612174615%_ _%g174613174617%_)
                             (cons _%g174612174615%_ _%g174613174617%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179306 '() _%L174564%_)))))
                (_%__kont178206178207%_
                 (lambda (_%L174397%_ _%L174398%_ _%L174399%_)
                   (let ((__tmp179308
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173741%_ 'slots)))
                         (__tmp179307
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174397%_))))
                     (declare (not safe))
                     (hash-put! __tmp179308 __tmp179307 '#t))))
                (_%__kont178208178209%_
                 (lambda (_%L174274%_ _%L174275%_ _%L174276%_ _%L174277%_)
                   (let ((__tmp179310
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173741%_ 'slots)))
                         (__tmp179309
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174275%_))))
                     (declare (not safe))
                     (hash-put! __tmp179310 __tmp179309 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173741%_ _%L174274%_))))
                (_%__kont178210178211%_
                 (lambda (_%L174148%_ _%L174149%_)
                   (let* ((_%accessor174171%_
                           (let ((__tmp179311
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L174149%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179311)))
                          (_%klass174173%_
                           (let ((__tmp179312
                                  (##structure-ref
                                   _%accessor174171%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173742%_
                              __tmp179312)))
                          (_%slot174175%_
                           (##structure-ref
                            _%accessor174171%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor174171%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass174173%_
                                    _%slot174175%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass174173%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179314
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173741%_ 'slots)))
                               (__tmp179313
                                (##structure-ref
                                 _%accessor174171%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp179314 __tmp179313 '#t))))))
                (_%__kont178212178213%_
                 (lambda (_%L174048%_ _%L174049%_ _%L174050%_)
                   (let* ((_%mutator174077%_
                           (let ((__tmp179315
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L174050%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179315)))
                          (_%klass174079%_
                           (let ((__tmp179316
                                  (##structure-ref
                                   _%mutator174077%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173742%_
                              __tmp179316)))
                          (_%slot174081%_
                           (##structure-ref
                            _%mutator174077%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator174077%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass174079%_
                                    _%slot174081%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass174079%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179317
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173741%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp179317 _%slot174081%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self173741%_ _%L174048%_)))))
                (_%__kont178214178215%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self173741%_ _%stx173742%_)))))
            (let* ((_%__match178695178696%_
                    (lambda (_%e173944173984%_
                             _%hd173945173987%_
                             _%tl173946173989%_
                             _%e173947173992%_
                             _%hd173948173995%_
                             _%tl173949173997%_
                             _%e173950174000%_
                             _%hd173951174003%_
                             _%tl173952174005%_
                             _%e173953174008%_
                             _%hd173954174011%_
                             _%tl173955174013%_
                             _%e173956174016%_
                             _%hd173957174019%_
                             _%tl173958174021%_
                             _%e173959174024%_
                             _%hd173960174027%_
                             _%tl173961174029%_
                             _%e173962174032%_
                             _%hd173963174035%_
                             _%tl173964174037%_
                             _%e173965174040%_
                             _%hd173966174043%_
                             _%tl173967174045%_)
                      (let ((_%L174048%_ _%hd173966174043%_)
                            (_%L174049%_ _%hd173963174035%_)
                            (_%L174050%_ _%hd173954174011%_))
                        (if (and (let ((__tmp179318
                                        (let ((__tmp179319
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L174050%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179319))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179318
                                    'gxc#!mutator::t))
                                 (let ((__tmp179320
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173741%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174049%_
                                    __tmp179320)))
                            (_%__kont178212178213%_
                             _%L174048%_
                             _%L174049%_
                             _%L174050%_)
                            (_%__kont178214178215%_)))))
                   (_%__match178693178694%_
                    (lambda (_%e173944173984%_
                             _%hd173945173987%_
                             _%tl173946173989%_
                             _%e173947173992%_
                             _%hd173948173995%_
                             _%tl173949173997%_
                             _%e173950174000%_
                             _%hd173951174003%_
                             _%tl173952174005%_
                             _%e173953174008%_
                             _%hd173954174011%_
                             _%tl173955174013%_
                             _%e173956174016%_
                             _%hd173957174019%_
                             _%tl173958174021%_
                             _%e173959174024%_
                             _%hd173960174027%_
                             _%tl173961174029%_
                             _%e173962174032%_
                             _%hd173963174035%_
                             _%tl173964174037%_
                             _%e173965174040%_
                             _%hd173966174043%_
                             _%tl173967174045%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173967174045%_))
                          (_%__match178695178696%_
                           _%e173944173984%_
                           _%hd173945173987%_
                           _%tl173946173989%_
                           _%e173947173992%_
                           _%hd173948173995%_
                           _%tl173949173997%_
                           _%e173950174000%_
                           _%hd173951174003%_
                           _%tl173952174005%_
                           _%e173953174008%_
                           _%hd173954174011%_
                           _%tl173955174013%_
                           _%e173956174016%_
                           _%hd173957174019%_
                           _%tl173958174021%_
                           _%e173959174024%_
                           _%hd173960174027%_
                           _%tl173961174029%_
                           _%e173962174032%_
                           _%hd173963174035%_
                           _%tl173964174037%_
                           _%e173965174040%_
                           _%hd173966174043%_
                           _%tl173967174045%_)
                          (_%__kont178214178215%_))))
                   (_%__match178687178688%_
                    (lambda (_%e173944173984%_
                             _%hd173945173987%_
                             _%tl173946173989%_
                             _%e173947173992%_
                             _%hd173948173995%_
                             _%tl173949173997%_
                             _%e173950174000%_
                             _%hd173951174003%_
                             _%tl173952174005%_
                             _%e173953174008%_
                             _%hd173954174011%_
                             _%tl173955174013%_
                             _%e173956174016%_
                             _%hd173957174019%_
                             _%tl173958174021%_
                             _%e173959174024%_
                             _%hd173960174027%_
                             _%tl173961174029%_
                             _%e173962174032%_
                             _%hd173963174035%_
                             _%tl173964174037%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173958174021%_))
                          (let ((_%e173965174040%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173958174021%_))))
                            (let ((_%tl173967174045%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173965174040%_)))
                                  (_%hd173966174043%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173965174040%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173967174045%_))
                                  (_%__match178695178696%_
                                   _%e173944173984%_
                                   _%hd173945173987%_
                                   _%tl173946173989%_
                                   _%e173947173992%_
                                   _%hd173948173995%_
                                   _%tl173949173997%_
                                   _%e173950174000%_
                                   _%hd173951174003%_
                                   _%tl173952174005%_
                                   _%e173953174008%_
                                   _%hd173954174011%_
                                   _%tl173955174013%_
                                   _%e173956174016%_
                                   _%hd173957174019%_
                                   _%tl173958174021%_
                                   _%e173959174024%_
                                   _%hd173960174027%_
                                   _%tl173961174029%_
                                   _%e173962174032%_
                                   _%hd173963174035%_
                                   _%tl173964174037%_
                                   _%e173965174040%_
                                   _%hd173966174043%_
                                   _%tl173967174045%_)
                                  (_%__kont178214178215%_))))
                          (_%__kont178214178215%_))))
                   (_%__match178633178634%_
                    (lambda (_%e173920174092%_
                             _%hd173921174095%_
                             _%tl173922174097%_
                             _%e173923174100%_
                             _%hd173924174103%_
                             _%tl173925174105%_
                             _%e173926174108%_
                             _%hd173927174111%_
                             _%tl173928174113%_
                             _%e173929174116%_
                             _%hd173930174119%_
                             _%tl173931174121%_
                             _%e173932174124%_
                             _%hd173933174127%_
                             _%tl173934174129%_
                             _%e173935174132%_
                             _%hd173936174135%_
                             _%tl173937174137%_
                             _%e173938174140%_
                             _%hd173939174143%_
                             _%tl173940174145%_)
                      (let ((_%L174148%_ _%hd173939174143%_)
                            (_%L174149%_ _%hd173930174119%_))
                        (if (and (let ((__tmp179321
                                        (let ((__tmp179322
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L174149%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179322))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179321
                                    'gxc#!accessor::t))
                                 (let ((__tmp179323
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173741%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174148%_
                                    __tmp179323)))
                            (_%__kont178210178211%_ _%L174148%_ _%L174149%_)
                            (_%__kont178214178215%_)))))
                   (_%__match178631178632%_
                    (lambda (_%e173920174092%_
                             _%hd173921174095%_
                             _%tl173922174097%_
                             _%e173923174100%_
                             _%hd173924174103%_
                             _%tl173925174105%_
                             _%e173926174108%_
                             _%hd173927174111%_
                             _%tl173928174113%_
                             _%e173929174116%_
                             _%hd173930174119%_
                             _%tl173931174121%_
                             _%e173932174124%_
                             _%hd173933174127%_
                             _%tl173934174129%_
                             _%e173935174132%_
                             _%hd173936174135%_
                             _%tl173937174137%_
                             _%e173938174140%_
                             _%hd173939174143%_
                             _%tl173940174145%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173934174129%_))
                          (_%__match178633178634%_
                           _%e173920174092%_
                           _%hd173921174095%_
                           _%tl173922174097%_
                           _%e173923174100%_
                           _%hd173924174103%_
                           _%tl173925174105%_
                           _%e173926174108%_
                           _%hd173927174111%_
                           _%tl173928174113%_
                           _%e173929174116%_
                           _%hd173930174119%_
                           _%tl173931174121%_
                           _%e173932174124%_
                           _%hd173933174127%_
                           _%tl173934174129%_
                           _%e173935174132%_
                           _%hd173936174135%_
                           _%tl173937174137%_
                           _%e173938174140%_
                           _%hd173939174143%_
                           _%tl173940174145%_)
                          (_%__match178687178688%_
                           _%e173920174092%_
                           _%hd173921174095%_
                           _%tl173922174097%_
                           _%e173923174100%_
                           _%hd173924174103%_
                           _%tl173925174105%_
                           _%e173926174108%_
                           _%hd173927174111%_
                           _%tl173928174113%_
                           _%e173929174116%_
                           _%hd173930174119%_
                           _%tl173931174121%_
                           _%e173932174124%_
                           _%hd173933174127%_
                           _%tl173934174129%_
                           _%e173935174132%_
                           _%hd173936174135%_
                           _%tl173937174137%_
                           _%e173938174140%_
                           _%hd173939174143%_
                           _%tl173940174145%_))))
                   (_%__match178577178578%_
                    (lambda (_%e173885174186%_
                             _%hd173886174189%_
                             _%tl173887174191%_
                             _%e173888174194%_
                             _%hd173889174197%_
                             _%tl173890174199%_
                             _%e173891174202%_
                             _%hd173892174205%_
                             _%tl173893174207%_
                             _%e173894174210%_
                             _%hd173895174213%_
                             _%tl173896174215%_
                             _%e173897174218%_
                             _%hd173898174221%_
                             _%tl173899174223%_
                             _%e173900174226%_
                             _%hd173901174229%_
                             _%tl173902174231%_
                             _%e173903174234%_
                             _%hd173904174237%_
                             _%tl173905174239%_
                             _%e173906174242%_
                             _%hd173907174245%_
                             _%tl173908174247%_
                             _%e173909174250%_
                             _%hd173910174253%_
                             _%tl173911174255%_
                             _%e173912174258%_
                             _%hd173913174261%_
                             _%tl173914174263%_
                             _%e173915174266%_
                             _%hd173916174269%_
                             _%tl173917174271%_)
                      (let ((_%L174274%_ _%hd173916174269%_)
                            (_%L174275%_ _%hd173913174261%_)
                            (_%L174276%_ _%hd173904174237%_)
                            (_%L174277%_ _%hd173895174213%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174277%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174277%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp179324
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173741%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174276%_
                                    __tmp179324)))
                            (_%__kont178208178209%_
                             _%L174274%_
                             _%L174275%_
                             _%L174276%_
                             _%L174277%_)
                            (_%__kont178214178215%_)))))
                   (_%__match178569178570%_
                    (lambda (_%e173885174186%_
                             _%hd173886174189%_
                             _%tl173887174191%_
                             _%e173888174194%_
                             _%hd173889174197%_
                             _%tl173890174199%_
                             _%e173891174202%_
                             _%hd173892174205%_
                             _%tl173893174207%_
                             _%e173894174210%_
                             _%hd173895174213%_
                             _%tl173896174215%_
                             _%e173897174218%_
                             _%hd173898174221%_
                             _%tl173899174223%_
                             _%e173900174226%_
                             _%hd173901174229%_
                             _%tl173902174231%_
                             _%e173903174234%_
                             _%hd173904174237%_
                             _%tl173905174239%_
                             _%e173906174242%_
                             _%hd173907174245%_
                             _%tl173908174247%_
                             _%e173909174250%_
                             _%hd173910174253%_
                             _%tl173911174255%_
                             _%e173912174258%_
                             _%hd173913174261%_
                             _%tl173914174263%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173908174247%_))
                          (let ((_%e173915174266%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173908174247%_))))
                            (let ((_%tl173917174271%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173915174266%_)))
                                  (_%hd173916174269%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173915174266%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173917174271%_))
                                  (_%__match178577178578%_
                                   _%e173885174186%_
                                   _%hd173886174189%_
                                   _%tl173887174191%_
                                   _%e173888174194%_
                                   _%hd173889174197%_
                                   _%tl173890174199%_
                                   _%e173891174202%_
                                   _%hd173892174205%_
                                   _%tl173893174207%_
                                   _%e173894174210%_
                                   _%hd173895174213%_
                                   _%tl173896174215%_
                                   _%e173897174218%_
                                   _%hd173898174221%_
                                   _%tl173899174223%_
                                   _%e173900174226%_
                                   _%hd173901174229%_
                                   _%tl173902174231%_
                                   _%e173903174234%_
                                   _%hd173904174237%_
                                   _%tl173905174239%_
                                   _%e173906174242%_
                                   _%hd173907174245%_
                                   _%tl173908174247%_
                                   _%e173909174250%_
                                   _%hd173910174253%_
                                   _%tl173911174255%_
                                   _%e173912174258%_
                                   _%hd173913174261%_
                                   _%tl173914174263%_
                                   _%e173915174266%_
                                   _%hd173916174269%_
                                   _%tl173917174271%_)
                                  (_%__kont178214178215%_))))
                          (_%__match178693178694%_
                           _%e173885174186%_
                           _%hd173886174189%_
                           _%tl173887174191%_
                           _%e173888174194%_
                           _%hd173889174197%_
                           _%tl173890174199%_
                           _%e173891174202%_
                           _%hd173892174205%_
                           _%tl173893174207%_
                           _%e173894174210%_
                           _%hd173895174213%_
                           _%tl173896174215%_
                           _%e173897174218%_
                           _%hd173898174221%_
                           _%tl173899174223%_
                           _%e173900174226%_
                           _%hd173901174229%_
                           _%tl173902174231%_
                           _%e173903174234%_
                           _%hd173904174237%_
                           _%tl173905174239%_
                           _%e173906174242%_
                           _%hd173907174245%_
                           _%tl173908174247%_))))
                   (_%__match178491178492%_
                    (lambda (_%e173851174317%_
                             _%hd173852174320%_
                             _%tl173853174322%_
                             _%e173854174325%_
                             _%hd173855174328%_
                             _%tl173856174330%_
                             _%e173857174333%_
                             _%hd173858174336%_
                             _%tl173859174338%_
                             _%e173860174341%_
                             _%hd173861174344%_
                             _%tl173862174346%_
                             _%e173863174349%_
                             _%hd173864174352%_
                             _%tl173865174354%_
                             _%e173866174357%_
                             _%hd173867174360%_
                             _%tl173868174362%_
                             _%e173869174365%_
                             _%hd173870174368%_
                             _%tl173871174370%_
                             _%e173872174373%_
                             _%hd173873174376%_
                             _%tl173874174378%_
                             _%e173875174381%_
                             _%hd173876174384%_
                             _%tl173877174386%_
                             _%e173878174389%_
                             _%hd173879174392%_
                             _%tl173880174394%_)
                      (let ((_%L174397%_ _%hd173879174392%_)
                            (_%L174398%_ _%hd173870174368%_)
                            (_%L174399%_ _%hd173861174344%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174399%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174399%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp179325
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173741%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174398%_
                                    __tmp179325)))
                            (_%__kont178206178207%_
                             _%L174397%_
                             _%L174398%_
                             _%L174399%_)
                            (_%__match178695178696%_
                             _%e173851174317%_
                             _%hd173852174320%_
                             _%tl173853174322%_
                             _%e173854174325%_
                             _%hd173855174328%_
                             _%tl173856174330%_
                             _%e173857174333%_
                             _%hd173858174336%_
                             _%tl173859174338%_
                             _%e173860174341%_
                             _%hd173861174344%_
                             _%tl173862174346%_
                             _%e173863174349%_
                             _%hd173864174352%_
                             _%tl173865174354%_
                             _%e173866174357%_
                             _%hd173867174360%_
                             _%tl173868174362%_
                             _%e173869174365%_
                             _%hd173870174368%_
                             _%tl173871174370%_
                             _%e173872174373%_
                             _%hd173873174376%_
                             _%tl173874174378%_)))))
                   (_%__match178489178490%_
                    (lambda (_%e173851174317%_
                             _%hd173852174320%_
                             _%tl173853174322%_
                             _%e173854174325%_
                             _%hd173855174328%_
                             _%tl173856174330%_
                             _%e173857174333%_
                             _%hd173858174336%_
                             _%tl173859174338%_
                             _%e173860174341%_
                             _%hd173861174344%_
                             _%tl173862174346%_
                             _%e173863174349%_
                             _%hd173864174352%_
                             _%tl173865174354%_
                             _%e173866174357%_
                             _%hd173867174360%_
                             _%tl173868174362%_
                             _%e173869174365%_
                             _%hd173870174368%_
                             _%tl173871174370%_
                             _%e173872174373%_
                             _%hd173873174376%_
                             _%tl173874174378%_
                             _%e173875174381%_
                             _%hd173876174384%_
                             _%tl173877174386%_
                             _%e173878174389%_
                             _%hd173879174392%_
                             _%tl173880174394%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173874174378%_))
                          (_%__match178491178492%_
                           _%e173851174317%_
                           _%hd173852174320%_
                           _%tl173853174322%_
                           _%e173854174325%_
                           _%hd173855174328%_
                           _%tl173856174330%_
                           _%e173857174333%_
                           _%hd173858174336%_
                           _%tl173859174338%_
                           _%e173860174341%_
                           _%hd173861174344%_
                           _%tl173862174346%_
                           _%e173863174349%_
                           _%hd173864174352%_
                           _%tl173865174354%_
                           _%e173866174357%_
                           _%hd173867174360%_
                           _%tl173868174362%_
                           _%e173869174365%_
                           _%hd173870174368%_
                           _%tl173871174370%_
                           _%e173872174373%_
                           _%hd173873174376%_
                           _%tl173874174378%_
                           _%e173875174381%_
                           _%hd173876174384%_
                           _%tl173877174386%_
                           _%e173878174389%_
                           _%hd173879174392%_
                           _%tl173880174394%_)
                          (_%__match178569178570%_
                           _%e173851174317%_
                           _%hd173852174320%_
                           _%tl173853174322%_
                           _%e173854174325%_
                           _%hd173855174328%_
                           _%tl173856174330%_
                           _%e173857174333%_
                           _%hd173858174336%_
                           _%tl173859174338%_
                           _%e173860174341%_
                           _%hd173861174344%_
                           _%tl173862174346%_
                           _%e173863174349%_
                           _%hd173864174352%_
                           _%tl173865174354%_
                           _%e173866174357%_
                           _%hd173867174360%_
                           _%tl173868174362%_
                           _%e173869174365%_
                           _%hd173870174368%_
                           _%tl173871174370%_
                           _%e173872174373%_
                           _%hd173873174376%_
                           _%tl173874174378%_
                           _%e173875174381%_
                           _%hd173876174384%_
                           _%tl173877174386%_
                           _%e173878174389%_
                           _%hd173879174392%_
                           _%tl173880174394%_))))
                   (_%__match178479178480%_
                    (lambda (_%e173851174317%_
                             _%hd173852174320%_
                             _%tl173853174322%_
                             _%e173854174325%_
                             _%hd173855174328%_
                             _%tl173856174330%_
                             _%e173857174333%_
                             _%hd173858174336%_
                             _%tl173859174338%_
                             _%e173860174341%_
                             _%hd173861174344%_
                             _%tl173862174346%_
                             _%e173863174349%_
                             _%hd173864174352%_
                             _%tl173865174354%_
                             _%e173866174357%_
                             _%hd173867174360%_
                             _%tl173868174362%_
                             _%e173869174365%_
                             _%hd173870174368%_
                             _%tl173871174370%_
                             _%e173872174373%_
                             _%hd173873174376%_
                             _%tl173874174378%_
                             _%e173875174381%_
                             _%hd173876174384%_
                             _%tl173877174386%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd173876174384%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173877174386%_))
                              (let ((_%e173878174389%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173877174386%_))))
                                (let ((_%tl173880174394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173878174389%_)))
                                      (_%hd173879174392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173878174389%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173880174394%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl173874174378%_))
                                          (_%__match178491178492%_
                                           _%e173851174317%_
                                           _%hd173852174320%_
                                           _%tl173853174322%_
                                           _%e173854174325%_
                                           _%hd173855174328%_
                                           _%tl173856174330%_
                                           _%e173857174333%_
                                           _%hd173858174336%_
                                           _%tl173859174338%_
                                           _%e173860174341%_
                                           _%hd173861174344%_
                                           _%tl173862174346%_
                                           _%e173863174349%_
                                           _%hd173864174352%_
                                           _%tl173865174354%_
                                           _%e173866174357%_
                                           _%hd173867174360%_
                                           _%tl173868174362%_
                                           _%e173869174365%_
                                           _%hd173870174368%_
                                           _%tl173871174370%_
                                           _%e173872174373%_
                                           _%hd173873174376%_
                                           _%tl173874174378%_
                                           _%e173875174381%_
                                           _%hd173876174384%_
                                           _%tl173877174386%_
                                           _%e173878174389%_
                                           _%hd173879174392%_
                                           _%tl173880174394%_)
                                          (_%__match178569178570%_
                                           _%e173851174317%_
                                           _%hd173852174320%_
                                           _%tl173853174322%_
                                           _%e173854174325%_
                                           _%hd173855174328%_
                                           _%tl173856174330%_
                                           _%e173857174333%_
                                           _%hd173858174336%_
                                           _%tl173859174338%_
                                           _%e173860174341%_
                                           _%hd173861174344%_
                                           _%tl173862174346%_
                                           _%e173863174349%_
                                           _%hd173864174352%_
                                           _%tl173865174354%_
                                           _%e173866174357%_
                                           _%hd173867174360%_
                                           _%tl173868174362%_
                                           _%e173869174365%_
                                           _%hd173870174368%_
                                           _%tl173871174370%_
                                           _%e173872174373%_
                                           _%hd173873174376%_
                                           _%tl173874174378%_
                                           _%e173875174381%_
                                           _%hd173876174384%_
                                           _%tl173877174386%_
                                           _%e173878174389%_
                                           _%hd173879174392%_
                                           _%tl173880174394%_))
                                      (_%__match178693178694%_
                                       _%e173851174317%_
                                       _%hd173852174320%_
                                       _%tl173853174322%_
                                       _%e173854174325%_
                                       _%hd173855174328%_
                                       _%tl173856174330%_
                                       _%e173857174333%_
                                       _%hd173858174336%_
                                       _%tl173859174338%_
                                       _%e173860174341%_
                                       _%hd173861174344%_
                                       _%tl173862174346%_
                                       _%e173863174349%_
                                       _%hd173864174352%_
                                       _%tl173865174354%_
                                       _%e173866174357%_
                                       _%hd173867174360%_
                                       _%tl173868174362%_
                                       _%e173869174365%_
                                       _%hd173870174368%_
                                       _%tl173871174370%_
                                       _%e173872174373%_
                                       _%hd173873174376%_
                                       _%tl173874174378%_))))
                              (_%__match178693178694%_
                               _%e173851174317%_
                               _%hd173852174320%_
                               _%tl173853174322%_
                               _%e173854174325%_
                               _%hd173855174328%_
                               _%tl173856174330%_
                               _%e173857174333%_
                               _%hd173858174336%_
                               _%tl173859174338%_
                               _%e173860174341%_
                               _%hd173861174344%_
                               _%tl173862174346%_
                               _%e173863174349%_
                               _%hd173864174352%_
                               _%tl173865174354%_
                               _%e173866174357%_
                               _%hd173867174360%_
                               _%tl173868174362%_
                               _%e173869174365%_
                               _%hd173870174368%_
                               _%tl173871174370%_
                               _%e173872174373%_
                               _%hd173873174376%_
                               _%tl173874174378%_))
                          (_%__match178693178694%_
                           _%e173851174317%_
                           _%hd173852174320%_
                           _%tl173853174322%_
                           _%e173854174325%_
                           _%hd173855174328%_
                           _%tl173856174330%_
                           _%e173857174333%_
                           _%hd173858174336%_
                           _%tl173859174338%_
                           _%e173860174341%_
                           _%hd173861174344%_
                           _%tl173862174346%_
                           _%e173863174349%_
                           _%hd173864174352%_
                           _%tl173865174354%_
                           _%e173866174357%_
                           _%hd173867174360%_
                           _%tl173868174362%_
                           _%e173869174365%_
                           _%hd173870174368%_
                           _%tl173871174370%_
                           _%e173872174373%_
                           _%hd173873174376%_
                           _%tl173874174378%_))))
                   (_%__match178411178412%_
                    (lambda (_%e173800174436%_
                             _%hd173801174439%_
                             _%tl173802174441%_
                             _%e173803174444%_
                             _%hd173804174447%_
                             _%tl173805174449%_
                             _%e173806174452%_
                             _%hd173807174455%_
                             _%tl173808174457%_
                             _%e173809174460%_
                             _%hd173810174463%_
                             _%tl173811174465%_
                             _%e173812174468%_
                             _%hd173813174471%_
                             _%tl173814174473%_
                             _%e173815174476%_
                             _%hd173816174479%_
                             _%tl173817174481%_
                             _%e173818174484%_
                             _%hd173819174487%_
                             _%tl173820174489%_
                             _%e173821174492%_
                             _%hd173822174495%_
                             _%tl173823174497%_
                             _%e173824174500%_
                             _%hd173825174503%_
                             _%tl173826174505%_
                             _%e173827174508%_
                             _%hd173828174511%_
                             _%tl173829174513%_
                             _%e173830174516%_
                             _%hd173831174519%_
                             _%tl173832174521%_
                             _%e173833174524%_
                             _%hd173834174527%_
                             _%tl173835174529%_
                             _%e173836174532%_
                             _%hd173837174535%_
                             _%tl173838174537%_
                             _%__splice178204178205%_
                             _%target173839174540%_
                             _%tl173841174542%_)
                      (letrec ((_%loop173842174545%_
                                (lambda (_%hd173840174548%_
                                         _%args173846174550%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173840174548%_))
                                      (let ((_%e173843174553%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173840174548%_))))
                                        (let ((_%lp-tl173845174558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173843174553%_)))
                                              (_%lp-hd173844174556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173843174553%_))))
                                          (_%loop173842174545%_
                                           _%lp-tl173845174558%_
                                           (cons _%lp-hd173844174556%_
                                                 _%args173846174550%_))))
                                      (let ((_%args173847174561%_
                                             (reverse _%args173846174550%_)))
                                        (let ((_%L174564%_
                                               _%args173847174561%_)
                                              (_%L174565%_ _%hd173837174535%_)
                                              (_%L174566%_ _%hd173828174511%_)
                                              (_%L174567%_ _%hd173819174487%_)
                                              (_%L174568%_ _%hd173810174463%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174568%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174567%_
                                                      'call-method))
                                                   (let ((__tmp179326
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173741%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174566%_
                                                      __tmp179326)))
                                              (_%__kont178202178203%_
                                               _%L174564%_
                                               _%L174565%_
                                               _%L174566%_
                                               _%L174567%_
                                               _%L174568%_)
                                              (_%__kont178214178215%_))))))))
                        (_%loop173842174545%_ _%target173839174540%_ '()))))
                   (_%__match178369178370%_
                    (lambda (_%e173800174436%_
                             _%hd173801174439%_
                             _%tl173802174441%_
                             _%e173803174444%_
                             _%hd173804174447%_
                             _%tl173805174449%_
                             _%e173806174452%_
                             _%hd173807174455%_
                             _%tl173808174457%_
                             _%e173809174460%_
                             _%hd173810174463%_
                             _%tl173811174465%_
                             _%e173812174468%_
                             _%hd173813174471%_
                             _%tl173814174473%_
                             _%e173815174476%_
                             _%hd173816174479%_
                             _%tl173817174481%_
                             _%e173818174484%_
                             _%hd173819174487%_
                             _%tl173820174489%_
                             _%e173821174492%_
                             _%hd173822174495%_
                             _%tl173823174497%_
                             _%e173824174500%_
                             _%hd173825174503%_
                             _%tl173826174505%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd173825174503%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173826174505%_))
                              (let ((_%e173827174508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173826174505%_))))
                                (let ((_%tl173829174513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173827174508%_)))
                                      (_%hd173828174511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173827174508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173829174513%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173823174497%_))
                                          (let ((_%e173830174516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173823174497%_))))
                                            (let ((_%tl173832174521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173830174516%_)))
                                                  (_%hd173831174519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173830174516%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173831174519%_))
                                                  (let ((_%e173833174524%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173831174519%_))))
                                                    (let ((_%tl173835174529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173833174524%_)))
                                                          (_%hd173834174527%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173833174524%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd173834174527%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd173834174527%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173835174529%_))
                          (let ((_%e173836174532%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173835174529%_))))
                            (let ((_%tl173838174537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173836174532%_)))
                                  (_%hd173837174535%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173836174532%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173838174537%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl173832174521%_))
                                      (let ((_%__splice178204178205%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl173832174521%_
                                                '0))))
                                        (let ((_%tl173841174542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178204178205%_
                                                  '1)))
                                              (_%target173839174540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178204178205%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173841174542%_))
                                              (_%__match178411178412%_
                                               _%e173800174436%_
                                               _%hd173801174439%_
                                               _%tl173802174441%_
                                               _%e173803174444%_
                                               _%hd173804174447%_
                                               _%tl173805174449%_
                                               _%e173806174452%_
                                               _%hd173807174455%_
                                               _%tl173808174457%_
                                               _%e173809174460%_
                                               _%hd173810174463%_
                                               _%tl173811174465%_
                                               _%e173812174468%_
                                               _%hd173813174471%_
                                               _%tl173814174473%_
                                               _%e173815174476%_
                                               _%hd173816174479%_
                                               _%tl173817174481%_
                                               _%e173818174484%_
                                               _%hd173819174487%_
                                               _%tl173820174489%_
                                               _%e173821174492%_
                                               _%hd173822174495%_
                                               _%tl173823174497%_
                                               _%e173824174500%_
                                               _%hd173825174503%_
                                               _%tl173826174505%_
                                               _%e173827174508%_
                                               _%hd173828174511%_
                                               _%tl173829174513%_
                                               _%e173830174516%_
                                               _%hd173831174519%_
                                               _%tl173832174521%_
                                               _%e173833174524%_
                                               _%hd173834174527%_
                                               _%tl173835174529%_
                                               _%e173836174532%_
                                               _%hd173837174535%_
                                               _%tl173838174537%_
                                               _%__splice178204178205%_
                                               _%target173839174540%_
                                               _%tl173841174542%_)
                                              (_%__kont178214178215%_))))
                                      (_%__kont178214178215%_))
                                  (_%__kont178214178215%_))))
                          (_%__kont178214178215%_))
                      (_%__kont178214178215%_))
                  (_%__kont178214178215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178214178215%_))))
                                          (_%__match178693178694%_
                                           _%e173800174436%_
                                           _%hd173801174439%_
                                           _%tl173802174441%_
                                           _%e173803174444%_
                                           _%hd173804174447%_
                                           _%tl173805174449%_
                                           _%e173806174452%_
                                           _%hd173807174455%_
                                           _%tl173808174457%_
                                           _%e173809174460%_
                                           _%hd173810174463%_
                                           _%tl173811174465%_
                                           _%e173812174468%_
                                           _%hd173813174471%_
                                           _%tl173814174473%_
                                           _%e173815174476%_
                                           _%hd173816174479%_
                                           _%tl173817174481%_
                                           _%e173818174484%_
                                           _%hd173819174487%_
                                           _%tl173820174489%_
                                           _%e173821174492%_
                                           _%hd173822174495%_
                                           _%tl173823174497%_))
                                      (_%__match178693178694%_
                                       _%e173800174436%_
                                       _%hd173801174439%_
                                       _%tl173802174441%_
                                       _%e173803174444%_
                                       _%hd173804174447%_
                                       _%tl173805174449%_
                                       _%e173806174452%_
                                       _%hd173807174455%_
                                       _%tl173808174457%_
                                       _%e173809174460%_
                                       _%hd173810174463%_
                                       _%tl173811174465%_
                                       _%e173812174468%_
                                       _%hd173813174471%_
                                       _%tl173814174473%_
                                       _%e173815174476%_
                                       _%hd173816174479%_
                                       _%tl173817174481%_
                                       _%e173818174484%_
                                       _%hd173819174487%_
                                       _%tl173820174489%_
                                       _%e173821174492%_
                                       _%hd173822174495%_
                                       _%tl173823174497%_))))
                              (_%__match178693178694%_
                               _%e173800174436%_
                               _%hd173801174439%_
                               _%tl173802174441%_
                               _%e173803174444%_
                               _%hd173804174447%_
                               _%tl173805174449%_
                               _%e173806174452%_
                               _%hd173807174455%_
                               _%tl173808174457%_
                               _%e173809174460%_
                               _%hd173810174463%_
                               _%tl173811174465%_
                               _%e173812174468%_
                               _%hd173813174471%_
                               _%tl173814174473%_
                               _%e173815174476%_
                               _%hd173816174479%_
                               _%tl173817174481%_
                               _%e173818174484%_
                               _%hd173819174487%_
                               _%tl173820174489%_
                               _%e173821174492%_
                               _%hd173822174495%_
                               _%tl173823174497%_))
                          (_%__match178479178480%_
                           _%e173800174436%_
                           _%hd173801174439%_
                           _%tl173802174441%_
                           _%e173803174444%_
                           _%hd173804174447%_
                           _%tl173805174449%_
                           _%e173806174452%_
                           _%hd173807174455%_
                           _%tl173808174457%_
                           _%e173809174460%_
                           _%hd173810174463%_
                           _%tl173811174465%_
                           _%e173812174468%_
                           _%hd173813174471%_
                           _%tl173814174473%_
                           _%e173815174476%_
                           _%hd173816174479%_
                           _%tl173817174481%_
                           _%e173818174484%_
                           _%hd173819174487%_
                           _%tl173820174489%_
                           _%e173821174492%_
                           _%hd173822174495%_
                           _%tl173823174497%_
                           _%e173824174500%_
                           _%hd173825174503%_
                           _%tl173826174505%_))))
                   (_%__match178301178302%_
                    (lambda (_%e173756174625%_
                             _%hd173757174628%_
                             _%tl173758174630%_
                             _%e173759174633%_
                             _%hd173760174636%_
                             _%tl173761174638%_
                             _%e173762174641%_
                             _%hd173763174644%_
                             _%tl173764174646%_
                             _%e173765174649%_
                             _%hd173766174652%_
                             _%tl173767174654%_
                             _%e173768174657%_
                             _%hd173769174660%_
                             _%tl173770174662%_
                             _%e173771174665%_
                             _%hd173772174668%_
                             _%tl173773174670%_
                             _%e173774174673%_
                             _%hd173775174676%_
                             _%tl173776174678%_
                             _%e173777174681%_
                             _%hd173778174684%_
                             _%tl173779174686%_
                             _%e173780174689%_
                             _%hd173781174692%_
                             _%tl173782174694%_
                             _%e173783174697%_
                             _%hd173784174700%_
                             _%tl173785174702%_
                             _%__splice178200178201%_
                             _%target173786174705%_
                             _%tl173788174707%_)
                      (letrec ((_%loop173789174710%_
                                (lambda (_%hd173787174713%_
                                         _%args173793174715%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173787174713%_))
                                      (let ((_%e173790174718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173787174713%_))))
                                        (let ((_%lp-tl173792174723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173790174718%_)))
                                              (_%lp-hd173791174721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173790174718%_))))
                                          (_%loop173789174710%_
                                           _%lp-tl173792174723%_
                                           (cons _%lp-hd173791174721%_
                                                 _%args173793174715%_))))
                                      (let ((_%args173794174726%_
                                             (reverse _%args173793174715%_)))
                                        (let ((_%L174729%_
                                               _%args173794174726%_)
                                              (_%L174730%_ _%hd173784174700%_)
                                              (_%L174731%_ _%hd173775174676%_)
                                              (_%L174732%_ _%hd173766174652%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174732%_
                                                      'call-method))
                                                   (let ((__tmp179327
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173741%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174731%_
                                                      __tmp179327)))
                                              (_%__kont178198178199%_
                                               _%L174729%_
                                               _%L174730%_
                                               _%L174731%_
                                               _%L174732%_)
                                              (_%__match178489178490%_
                                               _%e173756174625%_
                                               _%hd173757174628%_
                                               _%tl173758174630%_
                                               _%e173759174633%_
                                               _%hd173760174636%_
                                               _%tl173761174638%_
                                               _%e173762174641%_
                                               _%hd173763174644%_
                                               _%tl173764174646%_
                                               _%e173765174649%_
                                               _%hd173766174652%_
                                               _%tl173767174654%_
                                               _%e173768174657%_
                                               _%hd173769174660%_
                                               _%tl173770174662%_
                                               _%e173771174665%_
                                               _%hd173772174668%_
                                               _%tl173773174670%_
                                               _%e173774174673%_
                                               _%hd173775174676%_
                                               _%tl173776174678%_
                                               _%e173777174681%_
                                               _%hd173778174684%_
                                               _%tl173779174686%_
                                               _%e173780174689%_
                                               _%hd173781174692%_
                                               _%tl173782174694%_
                                               _%e173783174697%_
                                               _%hd173784174700%_
                                               _%tl173785174702%_))))))))
                        (_%loop173789174710%_ _%target173786174705%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx178196178197%_))
                  (let ((_%e173756174625%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx178196178197%_))))
                    (let ((_%tl173758174630%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173756174625%_)))
                          (_%hd173757174628%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173756174625%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173758174630%_))
                          (let ((_%e173759174633%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173758174630%_))))
                            (let ((_%tl173761174638%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173759174633%_)))
                                  (_%hd173760174636%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173759174633%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd173760174636%_))
                                  (let ((_%e173762174641%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd173760174636%_))))
                                    (let ((_%tl173764174646%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e173762174641%_)))
                                          (_%hd173763174644%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e173762174641%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd173763174644%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd173763174644%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl173764174646%_))
                                                  (let ((_%e173765174649%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl173764174646%_))))
                                                    (let ((_%tl173767174654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173765174649%_)))
                                                          (_%hd173766174652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173765174649%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl173767174654%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl173761174638%_))
                      (let ((_%e173768174657%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl173761174638%_))))
                        (let ((_%tl173770174662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173768174657%_)))
                              (_%hd173769174660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173768174657%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd173769174660%_))
                              (let ((_%e173771174665%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd173769174660%_))))
                                (let ((_%tl173773174670%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173771174665%_)))
                                      (_%hd173772174668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173771174665%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd173772174668%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd173772174668%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173773174670%_))
                                              (let ((_%e173774174673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173773174670%_))))
                                                (let ((_%tl173776174678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173774174673%_)))
                                                      (_%hd173775174676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173774174673%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173776174678%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl173770174662%_))
                                                          (let ((_%e173777174681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl173770174662%_))))
                    (let ((_%tl173779174686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173777174681%_)))
                          (_%hd173778174684%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173777174681%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd173778174684%_))
                          (let ((_%e173780174689%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd173778174684%_))))
                            (let ((_%tl173782174694%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173780174689%_)))
                                  (_%hd173781174692%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173780174689%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd173781174692%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd173781174692%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173782174694%_))
                                          (let ((_%e173783174697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173782174694%_))))
                                            (let ((_%tl173785174702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173783174697%_)))
                                                  (_%hd173784174700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173783174697%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl173785174702%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl173779174686%_))
                                                      (let ((_%__splice178200178201%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl173779174686%_
                        '0))))
                (let ((_%tl173788174707%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice178200178201%_ '1)))
                      (_%target173786174705%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice178200178201%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl173788174707%_))
                      (_%__match178301178302%_
                       _%e173756174625%_
                       _%hd173757174628%_
                       _%tl173758174630%_
                       _%e173759174633%_
                       _%hd173760174636%_
                       _%tl173761174638%_
                       _%e173762174641%_
                       _%hd173763174644%_
                       _%tl173764174646%_
                       _%e173765174649%_
                       _%hd173766174652%_
                       _%tl173767174654%_
                       _%e173768174657%_
                       _%hd173769174660%_
                       _%tl173770174662%_
                       _%e173771174665%_
                       _%hd173772174668%_
                       _%tl173773174670%_
                       _%e173774174673%_
                       _%hd173775174676%_
                       _%tl173776174678%_
                       _%e173777174681%_
                       _%hd173778174684%_
                       _%tl173779174686%_
                       _%e173780174689%_
                       _%hd173781174692%_
                       _%tl173782174694%_
                       _%e173783174697%_
                       _%hd173784174700%_
                       _%tl173785174702%_
                       _%__splice178200178201%_
                       _%target173786174705%_
                       _%tl173788174707%_)
                      (_%__match178489178490%_
                       _%e173756174625%_
                       _%hd173757174628%_
                       _%tl173758174630%_
                       _%e173759174633%_
                       _%hd173760174636%_
                       _%tl173761174638%_
                       _%e173762174641%_
                       _%hd173763174644%_
                       _%tl173764174646%_
                       _%e173765174649%_
                       _%hd173766174652%_
                       _%tl173767174654%_
                       _%e173768174657%_
                       _%hd173769174660%_
                       _%tl173770174662%_
                       _%e173771174665%_
                       _%hd173772174668%_
                       _%tl173773174670%_
                       _%e173774174673%_
                       _%hd173775174676%_
                       _%tl173776174678%_
                       _%e173777174681%_
                       _%hd173778174684%_
                       _%tl173779174686%_
                       _%e173780174689%_
                       _%hd173781174692%_
                       _%tl173782174694%_
                       _%e173783174697%_
                       _%hd173784174700%_
                       _%tl173785174702%_))))
              (_%__match178489178490%_
               _%e173756174625%_
               _%hd173757174628%_
               _%tl173758174630%_
               _%e173759174633%_
               _%hd173760174636%_
               _%tl173761174638%_
               _%e173762174641%_
               _%hd173763174644%_
               _%tl173764174646%_
               _%e173765174649%_
               _%hd173766174652%_
               _%tl173767174654%_
               _%e173768174657%_
               _%hd173769174660%_
               _%tl173770174662%_
               _%e173771174665%_
               _%hd173772174668%_
               _%tl173773174670%_
               _%e173774174673%_
               _%hd173775174676%_
               _%tl173776174678%_
               _%e173777174681%_
               _%hd173778174684%_
               _%tl173779174686%_
               _%e173780174689%_
               _%hd173781174692%_
               _%tl173782174694%_
               _%e173783174697%_
               _%hd173784174700%_
               _%tl173785174702%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match178693178694%_
                                                   _%e173756174625%_
                                                   _%hd173757174628%_
                                                   _%tl173758174630%_
                                                   _%e173759174633%_
                                                   _%hd173760174636%_
                                                   _%tl173761174638%_
                                                   _%e173762174641%_
                                                   _%hd173763174644%_
                                                   _%tl173764174646%_
                                                   _%e173765174649%_
                                                   _%hd173766174652%_
                                                   _%tl173767174654%_
                                                   _%e173768174657%_
                                                   _%hd173769174660%_
                                                   _%tl173770174662%_
                                                   _%e173771174665%_
                                                   _%hd173772174668%_
                                                   _%tl173773174670%_
                                                   _%e173774174673%_
                                                   _%hd173775174676%_
                                                   _%tl173776174678%_
                                                   _%e173777174681%_
                                                   _%hd173778174684%_
                                                   _%tl173779174686%_))))
                                          (_%__match178693178694%_
                                           _%e173756174625%_
                                           _%hd173757174628%_
                                           _%tl173758174630%_
                                           _%e173759174633%_
                                           _%hd173760174636%_
                                           _%tl173761174638%_
                                           _%e173762174641%_
                                           _%hd173763174644%_
                                           _%tl173764174646%_
                                           _%e173765174649%_
                                           _%hd173766174652%_
                                           _%tl173767174654%_
                                           _%e173768174657%_
                                           _%hd173769174660%_
                                           _%tl173770174662%_
                                           _%e173771174665%_
                                           _%hd173772174668%_
                                           _%tl173773174670%_
                                           _%e173774174673%_
                                           _%hd173775174676%_
                                           _%tl173776174678%_
                                           _%e173777174681%_
                                           _%hd173778174684%_
                                           _%tl173779174686%_))
                                      (_%__match178369178370%_
                                       _%e173756174625%_
                                       _%hd173757174628%_
                                       _%tl173758174630%_
                                       _%e173759174633%_
                                       _%hd173760174636%_
                                       _%tl173761174638%_
                                       _%e173762174641%_
                                       _%hd173763174644%_
                                       _%tl173764174646%_
                                       _%e173765174649%_
                                       _%hd173766174652%_
                                       _%tl173767174654%_
                                       _%e173768174657%_
                                       _%hd173769174660%_
                                       _%tl173770174662%_
                                       _%e173771174665%_
                                       _%hd173772174668%_
                                       _%tl173773174670%_
                                       _%e173774174673%_
                                       _%hd173775174676%_
                                       _%tl173776174678%_
                                       _%e173777174681%_
                                       _%hd173778174684%_
                                       _%tl173779174686%_
                                       _%e173780174689%_
                                       _%hd173781174692%_
                                       _%tl173782174694%_))
                                  (_%__match178693178694%_
                                   _%e173756174625%_
                                   _%hd173757174628%_
                                   _%tl173758174630%_
                                   _%e173759174633%_
                                   _%hd173760174636%_
                                   _%tl173761174638%_
                                   _%e173762174641%_
                                   _%hd173763174644%_
                                   _%tl173764174646%_
                                   _%e173765174649%_
                                   _%hd173766174652%_
                                   _%tl173767174654%_
                                   _%e173768174657%_
                                   _%hd173769174660%_
                                   _%tl173770174662%_
                                   _%e173771174665%_
                                   _%hd173772174668%_
                                   _%tl173773174670%_
                                   _%e173774174673%_
                                   _%hd173775174676%_
                                   _%tl173776174678%_
                                   _%e173777174681%_
                                   _%hd173778174684%_
                                   _%tl173779174686%_))))
                          (_%__match178693178694%_
                           _%e173756174625%_
                           _%hd173757174628%_
                           _%tl173758174630%_
                           _%e173759174633%_
                           _%hd173760174636%_
                           _%tl173761174638%_
                           _%e173762174641%_
                           _%hd173763174644%_
                           _%tl173764174646%_
                           _%e173765174649%_
                           _%hd173766174652%_
                           _%tl173767174654%_
                           _%e173768174657%_
                           _%hd173769174660%_
                           _%tl173770174662%_
                           _%e173771174665%_
                           _%hd173772174668%_
                           _%tl173773174670%_
                           _%e173774174673%_
                           _%hd173775174676%_
                           _%tl173776174678%_
                           _%e173777174681%_
                           _%hd173778174684%_
                           _%tl173779174686%_))))
                  (_%__match178631178632%_
                   _%e173756174625%_
                   _%hd173757174628%_
                   _%tl173758174630%_
                   _%e173759174633%_
                   _%hd173760174636%_
                   _%tl173761174638%_
                   _%e173762174641%_
                   _%hd173763174644%_
                   _%tl173764174646%_
                   _%e173765174649%_
                   _%hd173766174652%_
                   _%tl173767174654%_
                   _%e173768174657%_
                   _%hd173769174660%_
                   _%tl173770174662%_
                   _%e173771174665%_
                   _%hd173772174668%_
                   _%tl173773174670%_
                   _%e173774174673%_
                   _%hd173775174676%_
                   _%tl173776174678%_))
              (_%__kont178214178215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont178214178215%_))
                                          (_%__kont178214178215%_))
                                      (_%__kont178214178215%_))))
                              (_%__kont178214178215%_))))
                      (_%__kont178214178215%_))
                  (_%__kont178214178215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178214178215%_))
                                              (_%__kont178214178215%_))
                                          (_%__kont178214178215%_))))
                                  (_%__kont178214178215%_))))
                          (_%__kont178214178215%_))))
                  (_%__kont178214178215%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self172680%_ _%stx172681%_)
        (letrec ((_%force-e172683%_
                  (lambda (_%target173739%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target173739%_ '()))
                                      '()))))))
          (let* ((_%__stx178698178699%_ _%stx172681%_)
                 (_%g172691172913%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx178698178699%_)))))
            (let ((_%__kont178700178701%_
                   (lambda (_%L173685%_ _%L173686%_ _%L173687%_ _%L173688%_)
                     (let ((_%$method173733%_
                            (let ((__tmp179329
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172680%_ 'methods)))
                                  (__tmp179328
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173686%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179329 __tmp179328)))
                           (_%args173734%_
                            (map (lambda (_%g173721173723%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172680%_
                                      _%g173721173723%_)))
                                 (let ((__tmp179330
                                        (lambda (_%g173725173728%_
                                                 _%g173726173730%_)
                                          (cons _%g173725173728%_
                                                _%g173726173730%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179330 '() _%L173685%_)))))
                       (let ((__tmp179331
                              (cons '%#call
                                    (cons (_%force-e172683%_ _%$method173733%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172680%_
                                                               'receiver))
                                                            '()))
                                                _%args173734%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179331 _%stx172681%_)))))
                  (_%__kont178704178705%_
                   (lambda (_%L173517%_
                            _%L173518%_
                            _%L173519%_
                            _%L173520%_
                            _%L173521%_)
                     (let ((_%$method173573%_
                            (let ((__tmp179333
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172680%_ 'methods)))
                                  (__tmp179332
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173518%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179333 __tmp179332)))
                           (_%args173574%_
                            (map (lambda (_%g173561173563%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172680%_
                                      _%g173561173563%_)))
                                 (let ((__tmp179334
                                        (lambda (_%g173565173568%_
                                                 _%g173566173570%_)
                                          (cons _%g173565173568%_
                                                _%g173566173570%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179334 '() _%L173517%_)))))
                       (let ((__tmp179335
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e172683%_
                                                 _%$method173573%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172680%_ 'receiver))
                          '()))
              _%args173574%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179335 _%stx172681%_)))))
                  (_%__kont178708178709%_
                   (lambda (_%L173348%_ _%L173349%_ _%L173350%_)
                     (let* ((_%$field173382%_
                             (let ((__tmp179337
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self172680%_ 'slots)))
                                   (__tmp179336
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L173348%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp179337 __tmp179336)))
                            (__tmp179338
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self172680%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field173382%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self172680%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp179338 _%stx172681%_))))
                  (_%__kont178710178711%_
                   (lambda (_%L173222%_ _%L173223%_ _%L173224%_ _%L173225%_)
                     (let ((_%$field173260%_
                            (let ((__tmp179340
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172680%_ 'slots)))
                                  (__tmp179339
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173223%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179340 __tmp179339)))
                           (_%expr173261%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self172680%_ _%L173222%_))))
                       (let ((__tmp179341
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self172680%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field173260%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172680%_ 'receiver))
                          '()))
              (cons _%expr173261%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179341 _%stx172681%_)))))
                  (_%__kont178712178713%_
                   (lambda (_%L173094%_ _%L173095%_)
                     (let* ((_%accessor173117%_
                             (let ((__tmp179342
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L173095%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179342)))
                            (_%klass173119%_
                             (let ((__tmp179343
                                    (##structure-ref
                                     _%accessor173117%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172681%_
                                __tmp179343)))
                            (_%slot173121%_
                             (##structure-ref
                              _%accessor173117%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor173117%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass173119%_
                                      _%slot173121%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass173119%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx172681%_
                           (let* ((_%$field173127%_
                                   (let ((__tmp179344
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172680%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179344 _%slot173121%_)))
                                  (__tmp179345
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172680%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field173127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172680%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179345
                              _%stx172681%_))))))
                  (_%__kont178714178715%_
                   (lambda (_%L172989%_ _%L172990%_ _%L172991%_)
                     (let* ((_%mutator173019%_
                             (let ((__tmp179346
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172991%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179346)))
                            (_%klass173021%_
                             (let ((__tmp179347
                                    (##structure-ref
                                     _%mutator173019%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172681%_
                                __tmp179347)))
                            (_%slot173023%_
                             (##structure-ref
                              _%mutator173019%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr173025%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self172680%_ _%L172989%_))))
                       (if (if (##structure-ref
                                _%mutator173019%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass173021%_
                                      _%slot173023%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass173021%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp179348
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L172991%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L172990%_
                                                                '()))
                                                    (cons _%expr173025%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179348 _%stx172681%_))
                           (let* ((_%$field173031%_
                                   (let ((__tmp179349
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172680%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179349 _%slot173023%_)))
                                  (__tmp179350
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172680%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field173031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172680%_ 'receiver))
                               '()))
                   (cons _%expr173025%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179350
                              _%stx172681%_))))))
                  (_%__kont178716178717%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self172680%_ _%stx172681%_)))))
              (let* ((_%__match179197179198%_
                      (lambda (_%e172885172925%_
                               _%hd172886172928%_
                               _%tl172887172930%_
                               _%e172888172933%_
                               _%hd172889172936%_
                               _%tl172890172938%_
                               _%e172891172941%_
                               _%hd172892172944%_
                               _%tl172893172946%_
                               _%e172894172949%_
                               _%hd172895172952%_
                               _%tl172896172954%_
                               _%e172897172957%_
                               _%hd172898172960%_
                               _%tl172899172962%_
                               _%e172900172965%_
                               _%hd172901172968%_
                               _%tl172902172970%_
                               _%e172903172973%_
                               _%hd172904172976%_
                               _%tl172905172978%_
                               _%e172906172981%_
                               _%hd172907172984%_
                               _%tl172908172986%_)
                        (let ((_%L172989%_ _%hd172907172984%_)
                              (_%L172990%_ _%hd172904172976%_)
                              (_%L172991%_ _%hd172895172952%_))
                          (if (and (let ((__tmp179351
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172680%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172990%_
                                      __tmp179351))
                                   (let ((__tmp179352
                                          (let ((__tmp179353
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172991%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179353))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179352
                                      'gxc#!mutator::t)))
                              (_%__kont178714178715%_
                               _%L172989%_
                               _%L172990%_
                               _%L172991%_)
                              (_%__kont178716178717%_)))))
                     (_%__match179195179196%_
                      (lambda (_%e172885172925%_
                               _%hd172886172928%_
                               _%tl172887172930%_
                               _%e172888172933%_
                               _%hd172889172936%_
                               _%tl172890172938%_
                               _%e172891172941%_
                               _%hd172892172944%_
                               _%tl172893172946%_
                               _%e172894172949%_
                               _%hd172895172952%_
                               _%tl172896172954%_
                               _%e172897172957%_
                               _%hd172898172960%_
                               _%tl172899172962%_
                               _%e172900172965%_
                               _%hd172901172968%_
                               _%tl172902172970%_
                               _%e172903172973%_
                               _%hd172904172976%_
                               _%tl172905172978%_
                               _%e172906172981%_
                               _%hd172907172984%_
                               _%tl172908172986%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172908172986%_))
                            (_%__match179197179198%_
                             _%e172885172925%_
                             _%hd172886172928%_
                             _%tl172887172930%_
                             _%e172888172933%_
                             _%hd172889172936%_
                             _%tl172890172938%_
                             _%e172891172941%_
                             _%hd172892172944%_
                             _%tl172893172946%_
                             _%e172894172949%_
                             _%hd172895172952%_
                             _%tl172896172954%_
                             _%e172897172957%_
                             _%hd172898172960%_
                             _%tl172899172962%_
                             _%e172900172965%_
                             _%hd172901172968%_
                             _%tl172902172970%_
                             _%e172903172973%_
                             _%hd172904172976%_
                             _%tl172905172978%_
                             _%e172906172981%_
                             _%hd172907172984%_
                             _%tl172908172986%_)
                            (_%__kont178716178717%_))))
                     (_%__match179189179190%_
                      (lambda (_%e172885172925%_
                               _%hd172886172928%_
                               _%tl172887172930%_
                               _%e172888172933%_
                               _%hd172889172936%_
                               _%tl172890172938%_
                               _%e172891172941%_
                               _%hd172892172944%_
                               _%tl172893172946%_
                               _%e172894172949%_
                               _%hd172895172952%_
                               _%tl172896172954%_
                               _%e172897172957%_
                               _%hd172898172960%_
                               _%tl172899172962%_
                               _%e172900172965%_
                               _%hd172901172968%_
                               _%tl172902172970%_
                               _%e172903172973%_
                               _%hd172904172976%_
                               _%tl172905172978%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172899172962%_))
                            (let ((_%e172906172981%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172899172962%_))))
                              (let ((_%tl172908172986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172906172981%_)))
                                    (_%hd172907172984%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172906172981%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172908172986%_))
                                    (_%__match179197179198%_
                                     _%e172885172925%_
                                     _%hd172886172928%_
                                     _%tl172887172930%_
                                     _%e172888172933%_
                                     _%hd172889172936%_
                                     _%tl172890172938%_
                                     _%e172891172941%_
                                     _%hd172892172944%_
                                     _%tl172893172946%_
                                     _%e172894172949%_
                                     _%hd172895172952%_
                                     _%tl172896172954%_
                                     _%e172897172957%_
                                     _%hd172898172960%_
                                     _%tl172899172962%_
                                     _%e172900172965%_
                                     _%hd172901172968%_
                                     _%tl172902172970%_
                                     _%e172903172973%_
                                     _%hd172904172976%_
                                     _%tl172905172978%_
                                     _%e172906172981%_
                                     _%hd172907172984%_
                                     _%tl172908172986%_)
                                    (_%__kont178716178717%_))))
                            (_%__kont178716178717%_))))
                     (_%__match179135179136%_
                      (lambda (_%e172861173038%_
                               _%hd172862173041%_
                               _%tl172863173043%_
                               _%e172864173046%_
                               _%hd172865173049%_
                               _%tl172866173051%_
                               _%e172867173054%_
                               _%hd172868173057%_
                               _%tl172869173059%_
                               _%e172870173062%_
                               _%hd172871173065%_
                               _%tl172872173067%_
                               _%e172873173070%_
                               _%hd172874173073%_
                               _%tl172875173075%_
                               _%e172876173078%_
                               _%hd172877173081%_
                               _%tl172878173083%_
                               _%e172879173086%_
                               _%hd172880173089%_
                               _%tl172881173091%_)
                        (let ((_%L173094%_ _%hd172880173089%_)
                              (_%L173095%_ _%hd172871173065%_))
                          (if (and (let ((__tmp179354
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172680%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173094%_
                                      __tmp179354))
                                   (let ((__tmp179355
                                          (let ((__tmp179356
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L173095%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179356))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179355
                                      'gxc#!accessor::t)))
                              (_%__kont178712178713%_ _%L173094%_ _%L173095%_)
                              (_%__kont178716178717%_)))))
                     (_%__match179133179134%_
                      (lambda (_%e172861173038%_
                               _%hd172862173041%_
                               _%tl172863173043%_
                               _%e172864173046%_
                               _%hd172865173049%_
                               _%tl172866173051%_
                               _%e172867173054%_
                               _%hd172868173057%_
                               _%tl172869173059%_
                               _%e172870173062%_
                               _%hd172871173065%_
                               _%tl172872173067%_
                               _%e172873173070%_
                               _%hd172874173073%_
                               _%tl172875173075%_
                               _%e172876173078%_
                               _%hd172877173081%_
                               _%tl172878173083%_
                               _%e172879173086%_
                               _%hd172880173089%_
                               _%tl172881173091%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172875173075%_))
                            (_%__match179135179136%_
                             _%e172861173038%_
                             _%hd172862173041%_
                             _%tl172863173043%_
                             _%e172864173046%_
                             _%hd172865173049%_
                             _%tl172866173051%_
                             _%e172867173054%_
                             _%hd172868173057%_
                             _%tl172869173059%_
                             _%e172870173062%_
                             _%hd172871173065%_
                             _%tl172872173067%_
                             _%e172873173070%_
                             _%hd172874173073%_
                             _%tl172875173075%_
                             _%e172876173078%_
                             _%hd172877173081%_
                             _%tl172878173083%_
                             _%e172879173086%_
                             _%hd172880173089%_
                             _%tl172881173091%_)
                            (_%__match179189179190%_
                             _%e172861173038%_
                             _%hd172862173041%_
                             _%tl172863173043%_
                             _%e172864173046%_
                             _%hd172865173049%_
                             _%tl172866173051%_
                             _%e172867173054%_
                             _%hd172868173057%_
                             _%tl172869173059%_
                             _%e172870173062%_
                             _%hd172871173065%_
                             _%tl172872173067%_
                             _%e172873173070%_
                             _%hd172874173073%_
                             _%tl172875173075%_
                             _%e172876173078%_
                             _%hd172877173081%_
                             _%tl172878173083%_
                             _%e172879173086%_
                             _%hd172880173089%_
                             _%tl172881173091%_))))
                     (_%__match179079179080%_
                      (lambda (_%e172826173134%_
                               _%hd172827173137%_
                               _%tl172828173139%_
                               _%e172829173142%_
                               _%hd172830173145%_
                               _%tl172831173147%_
                               _%e172832173150%_
                               _%hd172833173153%_
                               _%tl172834173155%_
                               _%e172835173158%_
                               _%hd172836173161%_
                               _%tl172837173163%_
                               _%e172838173166%_
                               _%hd172839173169%_
                               _%tl172840173171%_
                               _%e172841173174%_
                               _%hd172842173177%_
                               _%tl172843173179%_
                               _%e172844173182%_
                               _%hd172845173185%_
                               _%tl172846173187%_
                               _%e172847173190%_
                               _%hd172848173193%_
                               _%tl172849173195%_
                               _%e172850173198%_
                               _%hd172851173201%_
                               _%tl172852173203%_
                               _%e172853173206%_
                               _%hd172854173209%_
                               _%tl172855173211%_
                               _%e172856173214%_
                               _%hd172857173217%_
                               _%tl172858173219%_)
                        (let ((_%L173222%_ _%hd172857173217%_)
                              (_%L173223%_ _%hd172854173209%_)
                              (_%L173224%_ _%hd172845173185%_)
                              (_%L173225%_ _%hd172836173161%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173225%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173225%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp179357
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172680%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173224%_
                                      __tmp179357)))
                              (_%__kont178710178711%_
                               _%L173222%_
                               _%L173223%_
                               _%L173224%_
                               _%L173225%_)
                              (_%__kont178716178717%_)))))
                     (_%__match179071179072%_
                      (lambda (_%e172826173134%_
                               _%hd172827173137%_
                               _%tl172828173139%_
                               _%e172829173142%_
                               _%hd172830173145%_
                               _%tl172831173147%_
                               _%e172832173150%_
                               _%hd172833173153%_
                               _%tl172834173155%_
                               _%e172835173158%_
                               _%hd172836173161%_
                               _%tl172837173163%_
                               _%e172838173166%_
                               _%hd172839173169%_
                               _%tl172840173171%_
                               _%e172841173174%_
                               _%hd172842173177%_
                               _%tl172843173179%_
                               _%e172844173182%_
                               _%hd172845173185%_
                               _%tl172846173187%_
                               _%e172847173190%_
                               _%hd172848173193%_
                               _%tl172849173195%_
                               _%e172850173198%_
                               _%hd172851173201%_
                               _%tl172852173203%_
                               _%e172853173206%_
                               _%hd172854173209%_
                               _%tl172855173211%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172849173195%_))
                            (let ((_%e172856173214%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172849173195%_))))
                              (let ((_%tl172858173219%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172856173214%_)))
                                    (_%hd172857173217%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172856173214%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172858173219%_))
                                    (_%__match179079179080%_
                                     _%e172826173134%_
                                     _%hd172827173137%_
                                     _%tl172828173139%_
                                     _%e172829173142%_
                                     _%hd172830173145%_
                                     _%tl172831173147%_
                                     _%e172832173150%_
                                     _%hd172833173153%_
                                     _%tl172834173155%_
                                     _%e172835173158%_
                                     _%hd172836173161%_
                                     _%tl172837173163%_
                                     _%e172838173166%_
                                     _%hd172839173169%_
                                     _%tl172840173171%_
                                     _%e172841173174%_
                                     _%hd172842173177%_
                                     _%tl172843173179%_
                                     _%e172844173182%_
                                     _%hd172845173185%_
                                     _%tl172846173187%_
                                     _%e172847173190%_
                                     _%hd172848173193%_
                                     _%tl172849173195%_
                                     _%e172850173198%_
                                     _%hd172851173201%_
                                     _%tl172852173203%_
                                     _%e172853173206%_
                                     _%hd172854173209%_
                                     _%tl172855173211%_
                                     _%e172856173214%_
                                     _%hd172857173217%_
                                     _%tl172858173219%_)
                                    (_%__kont178716178717%_))))
                            (_%__match179195179196%_
                             _%e172826173134%_
                             _%hd172827173137%_
                             _%tl172828173139%_
                             _%e172829173142%_
                             _%hd172830173145%_
                             _%tl172831173147%_
                             _%e172832173150%_
                             _%hd172833173153%_
                             _%tl172834173155%_
                             _%e172835173158%_
                             _%hd172836173161%_
                             _%tl172837173163%_
                             _%e172838173166%_
                             _%hd172839173169%_
                             _%tl172840173171%_
                             _%e172841173174%_
                             _%hd172842173177%_
                             _%tl172843173179%_
                             _%e172844173182%_
                             _%hd172845173185%_
                             _%tl172846173187%_
                             _%e172847173190%_
                             _%hd172848173193%_
                             _%tl172849173195%_))))
                     (_%__match178993178994%_
                      (lambda (_%e172792173268%_
                               _%hd172793173271%_
                               _%tl172794173273%_
                               _%e172795173276%_
                               _%hd172796173279%_
                               _%tl172797173281%_
                               _%e172798173284%_
                               _%hd172799173287%_
                               _%tl172800173289%_
                               _%e172801173292%_
                               _%hd172802173295%_
                               _%tl172803173297%_
                               _%e172804173300%_
                               _%hd172805173303%_
                               _%tl172806173305%_
                               _%e172807173308%_
                               _%hd172808173311%_
                               _%tl172809173313%_
                               _%e172810173316%_
                               _%hd172811173319%_
                               _%tl172812173321%_
                               _%e172813173324%_
                               _%hd172814173327%_
                               _%tl172815173329%_
                               _%e172816173332%_
                               _%hd172817173335%_
                               _%tl172818173337%_
                               _%e172819173340%_
                               _%hd172820173343%_
                               _%tl172821173345%_)
                        (let ((_%L173348%_ _%hd172820173343%_)
                              (_%L173349%_ _%hd172811173319%_)
                              (_%L173350%_ _%hd172802173295%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173350%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173350%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp179358
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172680%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173349%_
                                      __tmp179358)))
                              (_%__kont178708178709%_
                               _%L173348%_
                               _%L173349%_
                               _%L173350%_)
                              (_%__match179197179198%_
                               _%e172792173268%_
                               _%hd172793173271%_
                               _%tl172794173273%_
                               _%e172795173276%_
                               _%hd172796173279%_
                               _%tl172797173281%_
                               _%e172798173284%_
                               _%hd172799173287%_
                               _%tl172800173289%_
                               _%e172801173292%_
                               _%hd172802173295%_
                               _%tl172803173297%_
                               _%e172804173300%_
                               _%hd172805173303%_
                               _%tl172806173305%_
                               _%e172807173308%_
                               _%hd172808173311%_
                               _%tl172809173313%_
                               _%e172810173316%_
                               _%hd172811173319%_
                               _%tl172812173321%_
                               _%e172813173324%_
                               _%hd172814173327%_
                               _%tl172815173329%_)))))
                     (_%__match178991178992%_
                      (lambda (_%e172792173268%_
                               _%hd172793173271%_
                               _%tl172794173273%_
                               _%e172795173276%_
                               _%hd172796173279%_
                               _%tl172797173281%_
                               _%e172798173284%_
                               _%hd172799173287%_
                               _%tl172800173289%_
                               _%e172801173292%_
                               _%hd172802173295%_
                               _%tl172803173297%_
                               _%e172804173300%_
                               _%hd172805173303%_
                               _%tl172806173305%_
                               _%e172807173308%_
                               _%hd172808173311%_
                               _%tl172809173313%_
                               _%e172810173316%_
                               _%hd172811173319%_
                               _%tl172812173321%_
                               _%e172813173324%_
                               _%hd172814173327%_
                               _%tl172815173329%_
                               _%e172816173332%_
                               _%hd172817173335%_
                               _%tl172818173337%_
                               _%e172819173340%_
                               _%hd172820173343%_
                               _%tl172821173345%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172815173329%_))
                            (_%__match178993178994%_
                             _%e172792173268%_
                             _%hd172793173271%_
                             _%tl172794173273%_
                             _%e172795173276%_
                             _%hd172796173279%_
                             _%tl172797173281%_
                             _%e172798173284%_
                             _%hd172799173287%_
                             _%tl172800173289%_
                             _%e172801173292%_
                             _%hd172802173295%_
                             _%tl172803173297%_
                             _%e172804173300%_
                             _%hd172805173303%_
                             _%tl172806173305%_
                             _%e172807173308%_
                             _%hd172808173311%_
                             _%tl172809173313%_
                             _%e172810173316%_
                             _%hd172811173319%_
                             _%tl172812173321%_
                             _%e172813173324%_
                             _%hd172814173327%_
                             _%tl172815173329%_
                             _%e172816173332%_
                             _%hd172817173335%_
                             _%tl172818173337%_
                             _%e172819173340%_
                             _%hd172820173343%_
                             _%tl172821173345%_)
                            (_%__match179071179072%_
                             _%e172792173268%_
                             _%hd172793173271%_
                             _%tl172794173273%_
                             _%e172795173276%_
                             _%hd172796173279%_
                             _%tl172797173281%_
                             _%e172798173284%_
                             _%hd172799173287%_
                             _%tl172800173289%_
                             _%e172801173292%_
                             _%hd172802173295%_
                             _%tl172803173297%_
                             _%e172804173300%_
                             _%hd172805173303%_
                             _%tl172806173305%_
                             _%e172807173308%_
                             _%hd172808173311%_
                             _%tl172809173313%_
                             _%e172810173316%_
                             _%hd172811173319%_
                             _%tl172812173321%_
                             _%e172813173324%_
                             _%hd172814173327%_
                             _%tl172815173329%_
                             _%e172816173332%_
                             _%hd172817173335%_
                             _%tl172818173337%_
                             _%e172819173340%_
                             _%hd172820173343%_
                             _%tl172821173345%_))))
                     (_%__match178981178982%_
                      (lambda (_%e172792173268%_
                               _%hd172793173271%_
                               _%tl172794173273%_
                               _%e172795173276%_
                               _%hd172796173279%_
                               _%tl172797173281%_
                               _%e172798173284%_
                               _%hd172799173287%_
                               _%tl172800173289%_
                               _%e172801173292%_
                               _%hd172802173295%_
                               _%tl172803173297%_
                               _%e172804173300%_
                               _%hd172805173303%_
                               _%tl172806173305%_
                               _%e172807173308%_
                               _%hd172808173311%_
                               _%tl172809173313%_
                               _%e172810173316%_
                               _%hd172811173319%_
                               _%tl172812173321%_
                               _%e172813173324%_
                               _%hd172814173327%_
                               _%tl172815173329%_
                               _%e172816173332%_
                               _%hd172817173335%_
                               _%tl172818173337%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd172817173335%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172818173337%_))
                                (let ((_%e172819173340%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172818173337%_))))
                                  (let ((_%tl172821173345%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172819173340%_)))
                                        (_%hd172820173343%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172819173340%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172821173345%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172815173329%_))
                                            (_%__match178993178994%_
                                             _%e172792173268%_
                                             _%hd172793173271%_
                                             _%tl172794173273%_
                                             _%e172795173276%_
                                             _%hd172796173279%_
                                             _%tl172797173281%_
                                             _%e172798173284%_
                                             _%hd172799173287%_
                                             _%tl172800173289%_
                                             _%e172801173292%_
                                             _%hd172802173295%_
                                             _%tl172803173297%_
                                             _%e172804173300%_
                                             _%hd172805173303%_
                                             _%tl172806173305%_
                                             _%e172807173308%_
                                             _%hd172808173311%_
                                             _%tl172809173313%_
                                             _%e172810173316%_
                                             _%hd172811173319%_
                                             _%tl172812173321%_
                                             _%e172813173324%_
                                             _%hd172814173327%_
                                             _%tl172815173329%_
                                             _%e172816173332%_
                                             _%hd172817173335%_
                                             _%tl172818173337%_
                                             _%e172819173340%_
                                             _%hd172820173343%_
                                             _%tl172821173345%_)
                                            (_%__match179071179072%_
                                             _%e172792173268%_
                                             _%hd172793173271%_
                                             _%tl172794173273%_
                                             _%e172795173276%_
                                             _%hd172796173279%_
                                             _%tl172797173281%_
                                             _%e172798173284%_
                                             _%hd172799173287%_
                                             _%tl172800173289%_
                                             _%e172801173292%_
                                             _%hd172802173295%_
                                             _%tl172803173297%_
                                             _%e172804173300%_
                                             _%hd172805173303%_
                                             _%tl172806173305%_
                                             _%e172807173308%_
                                             _%hd172808173311%_
                                             _%tl172809173313%_
                                             _%e172810173316%_
                                             _%hd172811173319%_
                                             _%tl172812173321%_
                                             _%e172813173324%_
                                             _%hd172814173327%_
                                             _%tl172815173329%_
                                             _%e172816173332%_
                                             _%hd172817173335%_
                                             _%tl172818173337%_
                                             _%e172819173340%_
                                             _%hd172820173343%_
                                             _%tl172821173345%_))
                                        (_%__match179195179196%_
                                         _%e172792173268%_
                                         _%hd172793173271%_
                                         _%tl172794173273%_
                                         _%e172795173276%_
                                         _%hd172796173279%_
                                         _%tl172797173281%_
                                         _%e172798173284%_
                                         _%hd172799173287%_
                                         _%tl172800173289%_
                                         _%e172801173292%_
                                         _%hd172802173295%_
                                         _%tl172803173297%_
                                         _%e172804173300%_
                                         _%hd172805173303%_
                                         _%tl172806173305%_
                                         _%e172807173308%_
                                         _%hd172808173311%_
                                         _%tl172809173313%_
                                         _%e172810173316%_
                                         _%hd172811173319%_
                                         _%tl172812173321%_
                                         _%e172813173324%_
                                         _%hd172814173327%_
                                         _%tl172815173329%_))))
                                (_%__match179195179196%_
                                 _%e172792173268%_
                                 _%hd172793173271%_
                                 _%tl172794173273%_
                                 _%e172795173276%_
                                 _%hd172796173279%_
                                 _%tl172797173281%_
                                 _%e172798173284%_
                                 _%hd172799173287%_
                                 _%tl172800173289%_
                                 _%e172801173292%_
                                 _%hd172802173295%_
                                 _%tl172803173297%_
                                 _%e172804173300%_
                                 _%hd172805173303%_
                                 _%tl172806173305%_
                                 _%e172807173308%_
                                 _%hd172808173311%_
                                 _%tl172809173313%_
                                 _%e172810173316%_
                                 _%hd172811173319%_
                                 _%tl172812173321%_
                                 _%e172813173324%_
                                 _%hd172814173327%_
                                 _%tl172815173329%_))
                            (_%__match179195179196%_
                             _%e172792173268%_
                             _%hd172793173271%_
                             _%tl172794173273%_
                             _%e172795173276%_
                             _%hd172796173279%_
                             _%tl172797173281%_
                             _%e172798173284%_
                             _%hd172799173287%_
                             _%tl172800173289%_
                             _%e172801173292%_
                             _%hd172802173295%_
                             _%tl172803173297%_
                             _%e172804173300%_
                             _%hd172805173303%_
                             _%tl172806173305%_
                             _%e172807173308%_
                             _%hd172808173311%_
                             _%tl172809173313%_
                             _%e172810173316%_
                             _%hd172811173319%_
                             _%tl172812173321%_
                             _%e172813173324%_
                             _%hd172814173327%_
                             _%tl172815173329%_))))
                     (_%__match178913178914%_
                      (lambda (_%e172741173389%_
                               _%hd172742173392%_
                               _%tl172743173394%_
                               _%e172744173397%_
                               _%hd172745173400%_
                               _%tl172746173402%_
                               _%e172747173405%_
                               _%hd172748173408%_
                               _%tl172749173410%_
                               _%e172750173413%_
                               _%hd172751173416%_
                               _%tl172752173418%_
                               _%e172753173421%_
                               _%hd172754173424%_
                               _%tl172755173426%_
                               _%e172756173429%_
                               _%hd172757173432%_
                               _%tl172758173434%_
                               _%e172759173437%_
                               _%hd172760173440%_
                               _%tl172761173442%_
                               _%e172762173445%_
                               _%hd172763173448%_
                               _%tl172764173450%_
                               _%e172765173453%_
                               _%hd172766173456%_
                               _%tl172767173458%_
                               _%e172768173461%_
                               _%hd172769173464%_
                               _%tl172770173466%_
                               _%e172771173469%_
                               _%hd172772173472%_
                               _%tl172773173474%_
                               _%e172774173477%_
                               _%hd172775173480%_
                               _%tl172776173482%_
                               _%e172777173485%_
                               _%hd172778173488%_
                               _%tl172779173490%_
                               _%__splice178706178707%_
                               _%target172780173493%_
                               _%tl172782173495%_)
                        (letrec ((_%loop172783173498%_
                                  (lambda (_%hd172781173501%_
                                           _%args172787173503%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172781173501%_))
                                        (let ((_%e172784173506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172781173501%_))))
                                          (let ((_%lp-tl172786173511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172784173506%_)))
                                                (_%lp-hd172785173509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172784173506%_))))
                                            (_%loop172783173498%_
                                             _%lp-tl172786173511%_
                                             (cons _%lp-hd172785173509%_
                                                   _%args172787173503%_))))
                                        (let ((_%args172788173514%_
                                               (reverse _%args172787173503%_)))
                                          (let ((_%L173517%_
                                                 _%args172788173514%_)
                                                (_%L173518%_
                                                 _%hd172778173488%_)
                                                (_%L173519%_
                                                 _%hd172769173464%_)
                                                (_%L173520%_
                                                 _%hd172760173440%_)
                                                (_%L173521%_
                                                 _%hd172751173416%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173521%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173520%_
                                                        'call-method))
                                                     (let ((__tmp179359
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172680%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173519%_
                                                        __tmp179359)))
                                                (_%__kont178704178705%_
                                                 _%L173517%_
                                                 _%L173518%_
                                                 _%L173519%_
                                                 _%L173520%_
                                                 _%L173521%_)
                                                (_%__kont178716178717%_))))))))
                          (_%loop172783173498%_ _%target172780173493%_ '()))))
                     (_%__match178871178872%_
                      (lambda (_%e172741173389%_
                               _%hd172742173392%_
                               _%tl172743173394%_
                               _%e172744173397%_
                               _%hd172745173400%_
                               _%tl172746173402%_
                               _%e172747173405%_
                               _%hd172748173408%_
                               _%tl172749173410%_
                               _%e172750173413%_
                               _%hd172751173416%_
                               _%tl172752173418%_
                               _%e172753173421%_
                               _%hd172754173424%_
                               _%tl172755173426%_
                               _%e172756173429%_
                               _%hd172757173432%_
                               _%tl172758173434%_
                               _%e172759173437%_
                               _%hd172760173440%_
                               _%tl172761173442%_
                               _%e172762173445%_
                               _%hd172763173448%_
                               _%tl172764173450%_
                               _%e172765173453%_
                               _%hd172766173456%_
                               _%tl172767173458%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd172766173456%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172767173458%_))
                                (let ((_%e172768173461%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172767173458%_))))
                                  (let ((_%tl172770173466%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172768173461%_)))
                                        (_%hd172769173464%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172768173461%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172770173466%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172764173450%_))
                                            (let ((_%e172771173469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172764173450%_))))
                                              (let ((_%tl172773173474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172771173469%_)))
                                                    (_%hd172772173472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172771173469%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd172772173472%_))
                                                    (let ((_%e172774173477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd172772173472%_))))
                                                      (let ((_%tl172776173482%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172774173477%_)))
                    (_%hd172775173480%_
                     (let () (declare (not safe)) (##car _%e172774173477%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd172775173480%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd172775173480%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172776173482%_))
                            (let ((_%e172777173485%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172776173482%_))))
                              (let ((_%tl172779173490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172777173485%_)))
                                    (_%hd172778173488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172777173485%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172779173490%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl172773173474%_))
                                        (let ((_%__splice178706178707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl172773173474%_
                                                  '0))))
                                          (let ((_%tl172782173495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178706178707%_
                                                    '1)))
                                                (_%target172780173493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178706178707%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl172782173495%_))
                                                (_%__match178913178914%_
                                                 _%e172741173389%_
                                                 _%hd172742173392%_
                                                 _%tl172743173394%_
                                                 _%e172744173397%_
                                                 _%hd172745173400%_
                                                 _%tl172746173402%_
                                                 _%e172747173405%_
                                                 _%hd172748173408%_
                                                 _%tl172749173410%_
                                                 _%e172750173413%_
                                                 _%hd172751173416%_
                                                 _%tl172752173418%_
                                                 _%e172753173421%_
                                                 _%hd172754173424%_
                                                 _%tl172755173426%_
                                                 _%e172756173429%_
                                                 _%hd172757173432%_
                                                 _%tl172758173434%_
                                                 _%e172759173437%_
                                                 _%hd172760173440%_
                                                 _%tl172761173442%_
                                                 _%e172762173445%_
                                                 _%hd172763173448%_
                                                 _%tl172764173450%_
                                                 _%e172765173453%_
                                                 _%hd172766173456%_
                                                 _%tl172767173458%_
                                                 _%e172768173461%_
                                                 _%hd172769173464%_
                                                 _%tl172770173466%_
                                                 _%e172771173469%_
                                                 _%hd172772173472%_
                                                 _%tl172773173474%_
                                                 _%e172774173477%_
                                                 _%hd172775173480%_
                                                 _%tl172776173482%_
                                                 _%e172777173485%_
                                                 _%hd172778173488%_
                                                 _%tl172779173490%_
                                                 _%__splice178706178707%_
                                                 _%target172780173493%_
                                                 _%tl172782173495%_)
                                                (_%__kont178716178717%_))))
                                        (_%__kont178716178717%_))
                                    (_%__kont178716178717%_))))
                            (_%__kont178716178717%_))
                        (_%__kont178716178717%_))
                    (_%__kont178716178717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178716178717%_))))
                                            (_%__match179195179196%_
                                             _%e172741173389%_
                                             _%hd172742173392%_
                                             _%tl172743173394%_
                                             _%e172744173397%_
                                             _%hd172745173400%_
                                             _%tl172746173402%_
                                             _%e172747173405%_
                                             _%hd172748173408%_
                                             _%tl172749173410%_
                                             _%e172750173413%_
                                             _%hd172751173416%_
                                             _%tl172752173418%_
                                             _%e172753173421%_
                                             _%hd172754173424%_
                                             _%tl172755173426%_
                                             _%e172756173429%_
                                             _%hd172757173432%_
                                             _%tl172758173434%_
                                             _%e172759173437%_
                                             _%hd172760173440%_
                                             _%tl172761173442%_
                                             _%e172762173445%_
                                             _%hd172763173448%_
                                             _%tl172764173450%_))
                                        (_%__match179195179196%_
                                         _%e172741173389%_
                                         _%hd172742173392%_
                                         _%tl172743173394%_
                                         _%e172744173397%_
                                         _%hd172745173400%_
                                         _%tl172746173402%_
                                         _%e172747173405%_
                                         _%hd172748173408%_
                                         _%tl172749173410%_
                                         _%e172750173413%_
                                         _%hd172751173416%_
                                         _%tl172752173418%_
                                         _%e172753173421%_
                                         _%hd172754173424%_
                                         _%tl172755173426%_
                                         _%e172756173429%_
                                         _%hd172757173432%_
                                         _%tl172758173434%_
                                         _%e172759173437%_
                                         _%hd172760173440%_
                                         _%tl172761173442%_
                                         _%e172762173445%_
                                         _%hd172763173448%_
                                         _%tl172764173450%_))))
                                (_%__match179195179196%_
                                 _%e172741173389%_
                                 _%hd172742173392%_
                                 _%tl172743173394%_
                                 _%e172744173397%_
                                 _%hd172745173400%_
                                 _%tl172746173402%_
                                 _%e172747173405%_
                                 _%hd172748173408%_
                                 _%tl172749173410%_
                                 _%e172750173413%_
                                 _%hd172751173416%_
                                 _%tl172752173418%_
                                 _%e172753173421%_
                                 _%hd172754173424%_
                                 _%tl172755173426%_
                                 _%e172756173429%_
                                 _%hd172757173432%_
                                 _%tl172758173434%_
                                 _%e172759173437%_
                                 _%hd172760173440%_
                                 _%tl172761173442%_
                                 _%e172762173445%_
                                 _%hd172763173448%_
                                 _%tl172764173450%_))
                            (_%__match178981178982%_
                             _%e172741173389%_
                             _%hd172742173392%_
                             _%tl172743173394%_
                             _%e172744173397%_
                             _%hd172745173400%_
                             _%tl172746173402%_
                             _%e172747173405%_
                             _%hd172748173408%_
                             _%tl172749173410%_
                             _%e172750173413%_
                             _%hd172751173416%_
                             _%tl172752173418%_
                             _%e172753173421%_
                             _%hd172754173424%_
                             _%tl172755173426%_
                             _%e172756173429%_
                             _%hd172757173432%_
                             _%tl172758173434%_
                             _%e172759173437%_
                             _%hd172760173440%_
                             _%tl172761173442%_
                             _%e172762173445%_
                             _%hd172763173448%_
                             _%tl172764173450%_
                             _%e172765173453%_
                             _%hd172766173456%_
                             _%tl172767173458%_))))
                     (_%__match178803178804%_
                      (lambda (_%e172697173581%_
                               _%hd172698173584%_
                               _%tl172699173586%_
                               _%e172700173589%_
                               _%hd172701173592%_
                               _%tl172702173594%_
                               _%e172703173597%_
                               _%hd172704173600%_
                               _%tl172705173602%_
                               _%e172706173605%_
                               _%hd172707173608%_
                               _%tl172708173610%_
                               _%e172709173613%_
                               _%hd172710173616%_
                               _%tl172711173618%_
                               _%e172712173621%_
                               _%hd172713173624%_
                               _%tl172714173626%_
                               _%e172715173629%_
                               _%hd172716173632%_
                               _%tl172717173634%_
                               _%e172718173637%_
                               _%hd172719173640%_
                               _%tl172720173642%_
                               _%e172721173645%_
                               _%hd172722173648%_
                               _%tl172723173650%_
                               _%e172724173653%_
                               _%hd172725173656%_
                               _%tl172726173658%_
                               _%__splice178702178703%_
                               _%target172727173661%_
                               _%tl172729173663%_)
                        (letrec ((_%loop172730173666%_
                                  (lambda (_%hd172728173669%_
                                           _%args172734173671%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172728173669%_))
                                        (let ((_%e172731173674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172728173669%_))))
                                          (let ((_%lp-tl172733173679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172731173674%_)))
                                                (_%lp-hd172732173677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172731173674%_))))
                                            (_%loop172730173666%_
                                             _%lp-tl172733173679%_
                                             (cons _%lp-hd172732173677%_
                                                   _%args172734173671%_))))
                                        (let ((_%args172735173682%_
                                               (reverse _%args172734173671%_)))
                                          (let ((_%L173685%_
                                                 _%args172735173682%_)
                                                (_%L173686%_
                                                 _%hd172725173656%_)
                                                (_%L173687%_
                                                 _%hd172716173632%_)
                                                (_%L173688%_
                                                 _%hd172707173608%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173688%_
                                                        'call-method))
                                                     (let ((__tmp179360
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172680%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173687%_
                                                        __tmp179360)))
                                                (_%__kont178700178701%_
                                                 _%L173685%_
                                                 _%L173686%_
                                                 _%L173687%_
                                                 _%L173688%_)
                                                (_%__match178991178992%_
                                                 _%e172697173581%_
                                                 _%hd172698173584%_
                                                 _%tl172699173586%_
                                                 _%e172700173589%_
                                                 _%hd172701173592%_
                                                 _%tl172702173594%_
                                                 _%e172703173597%_
                                                 _%hd172704173600%_
                                                 _%tl172705173602%_
                                                 _%e172706173605%_
                                                 _%hd172707173608%_
                                                 _%tl172708173610%_
                                                 _%e172709173613%_
                                                 _%hd172710173616%_
                                                 _%tl172711173618%_
                                                 _%e172712173621%_
                                                 _%hd172713173624%_
                                                 _%tl172714173626%_
                                                 _%e172715173629%_
                                                 _%hd172716173632%_
                                                 _%tl172717173634%_
                                                 _%e172718173637%_
                                                 _%hd172719173640%_
                                                 _%tl172720173642%_
                                                 _%e172721173645%_
                                                 _%hd172722173648%_
                                                 _%tl172723173650%_
                                                 _%e172724173653%_
                                                 _%hd172725173656%_
                                                 _%tl172726173658%_))))))))
                          (_%loop172730173666%_ _%target172727173661%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx178698178699%_))
                    (let ((_%e172697173581%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx178698178699%_))))
                      (let ((_%tl172699173586%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172697173581%_)))
                            (_%hd172698173584%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172697173581%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172699173586%_))
                            (let ((_%e172700173589%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172699173586%_))))
                              (let ((_%tl172702173594%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172700173589%_)))
                                    (_%hd172701173592%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172700173589%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172701173592%_))
                                    (let ((_%e172703173597%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172701173592%_))))
                                      (let ((_%tl172705173602%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172703173597%_)))
                                            (_%hd172704173600%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172703173597%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd172704173600%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd172704173600%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172705173602%_))
                                                    (let ((_%e172706173605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172705173602%_))))
                                                      (let ((_%tl172708173610%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172706173605%_)))
                    (_%hd172707173608%_
                     (let () (declare (not safe)) (##car _%e172706173605%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172708173610%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172702173594%_))
                        (let ((_%e172709173613%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172702173594%_))))
                          (let ((_%tl172711173618%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172709173613%_)))
                                (_%hd172710173616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172709173613%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172710173616%_))
                                (let ((_%e172712173621%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172710173616%_))))
                                  (let ((_%tl172714173626%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172712173621%_)))
                                        (_%hd172713173624%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172712173621%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172713173624%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd172713173624%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172714173626%_))
                                                (let ((_%e172715173629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172714173626%_))))
                                                  (let ((_%tl172717173634%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172715173629%_)))
                                                        (_%hd172716173632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172715173629%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172717173634%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172711173618%_))
                                                            (let ((_%e172718173637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172711173618%_))))
                      (let ((_%tl172720173642%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172718173637%_)))
                            (_%hd172719173640%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172718173637%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd172719173640%_))
                            (let ((_%e172721173645%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd172719173640%_))))
                              (let ((_%tl172723173650%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172721173645%_)))
                                    (_%hd172722173648%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172721173645%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd172722173648%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd172722173648%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172723173650%_))
                                            (let ((_%e172724173653%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172723173650%_))))
                                              (let ((_%tl172726173658%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172724173653%_)))
                                                    (_%hd172725173656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172724173653%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172726173658%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl172720173642%_))
                                                        (let ((_%__splice178702178703%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl172720173642%_
                          '0))))
                  (let ((_%tl172729173663%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178702178703%_ '1)))
                        (_%target172727173661%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178702178703%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl172729173663%_))
                        (_%__match178803178804%_
                         _%e172697173581%_
                         _%hd172698173584%_
                         _%tl172699173586%_
                         _%e172700173589%_
                         _%hd172701173592%_
                         _%tl172702173594%_
                         _%e172703173597%_
                         _%hd172704173600%_
                         _%tl172705173602%_
                         _%e172706173605%_
                         _%hd172707173608%_
                         _%tl172708173610%_
                         _%e172709173613%_
                         _%hd172710173616%_
                         _%tl172711173618%_
                         _%e172712173621%_
                         _%hd172713173624%_
                         _%tl172714173626%_
                         _%e172715173629%_
                         _%hd172716173632%_
                         _%tl172717173634%_
                         _%e172718173637%_
                         _%hd172719173640%_
                         _%tl172720173642%_
                         _%e172721173645%_
                         _%hd172722173648%_
                         _%tl172723173650%_
                         _%e172724173653%_
                         _%hd172725173656%_
                         _%tl172726173658%_
                         _%__splice178702178703%_
                         _%target172727173661%_
                         _%tl172729173663%_)
                        (_%__match178991178992%_
                         _%e172697173581%_
                         _%hd172698173584%_
                         _%tl172699173586%_
                         _%e172700173589%_
                         _%hd172701173592%_
                         _%tl172702173594%_
                         _%e172703173597%_
                         _%hd172704173600%_
                         _%tl172705173602%_
                         _%e172706173605%_
                         _%hd172707173608%_
                         _%tl172708173610%_
                         _%e172709173613%_
                         _%hd172710173616%_
                         _%tl172711173618%_
                         _%e172712173621%_
                         _%hd172713173624%_
                         _%tl172714173626%_
                         _%e172715173629%_
                         _%hd172716173632%_
                         _%tl172717173634%_
                         _%e172718173637%_
                         _%hd172719173640%_
                         _%tl172720173642%_
                         _%e172721173645%_
                         _%hd172722173648%_
                         _%tl172723173650%_
                         _%e172724173653%_
                         _%hd172725173656%_
                         _%tl172726173658%_))))
                (_%__match178991178992%_
                 _%e172697173581%_
                 _%hd172698173584%_
                 _%tl172699173586%_
                 _%e172700173589%_
                 _%hd172701173592%_
                 _%tl172702173594%_
                 _%e172703173597%_
                 _%hd172704173600%_
                 _%tl172705173602%_
                 _%e172706173605%_
                 _%hd172707173608%_
                 _%tl172708173610%_
                 _%e172709173613%_
                 _%hd172710173616%_
                 _%tl172711173618%_
                 _%e172712173621%_
                 _%hd172713173624%_
                 _%tl172714173626%_
                 _%e172715173629%_
                 _%hd172716173632%_
                 _%tl172717173634%_
                 _%e172718173637%_
                 _%hd172719173640%_
                 _%tl172720173642%_
                 _%e172721173645%_
                 _%hd172722173648%_
                 _%tl172723173650%_
                 _%e172724173653%_
                 _%hd172725173656%_
                 _%tl172726173658%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match179195179196%_
                                                     _%e172697173581%_
                                                     _%hd172698173584%_
                                                     _%tl172699173586%_
                                                     _%e172700173589%_
                                                     _%hd172701173592%_
                                                     _%tl172702173594%_
                                                     _%e172703173597%_
                                                     _%hd172704173600%_
                                                     _%tl172705173602%_
                                                     _%e172706173605%_
                                                     _%hd172707173608%_
                                                     _%tl172708173610%_
                                                     _%e172709173613%_
                                                     _%hd172710173616%_
                                                     _%tl172711173618%_
                                                     _%e172712173621%_
                                                     _%hd172713173624%_
                                                     _%tl172714173626%_
                                                     _%e172715173629%_
                                                     _%hd172716173632%_
                                                     _%tl172717173634%_
                                                     _%e172718173637%_
                                                     _%hd172719173640%_
                                                     _%tl172720173642%_))))
                                            (_%__match179195179196%_
                                             _%e172697173581%_
                                             _%hd172698173584%_
                                             _%tl172699173586%_
                                             _%e172700173589%_
                                             _%hd172701173592%_
                                             _%tl172702173594%_
                                             _%e172703173597%_
                                             _%hd172704173600%_
                                             _%tl172705173602%_
                                             _%e172706173605%_
                                             _%hd172707173608%_
                                             _%tl172708173610%_
                                             _%e172709173613%_
                                             _%hd172710173616%_
                                             _%tl172711173618%_
                                             _%e172712173621%_
                                             _%hd172713173624%_
                                             _%tl172714173626%_
                                             _%e172715173629%_
                                             _%hd172716173632%_
                                             _%tl172717173634%_
                                             _%e172718173637%_
                                             _%hd172719173640%_
                                             _%tl172720173642%_))
                                        (_%__match178871178872%_
                                         _%e172697173581%_
                                         _%hd172698173584%_
                                         _%tl172699173586%_
                                         _%e172700173589%_
                                         _%hd172701173592%_
                                         _%tl172702173594%_
                                         _%e172703173597%_
                                         _%hd172704173600%_
                                         _%tl172705173602%_
                                         _%e172706173605%_
                                         _%hd172707173608%_
                                         _%tl172708173610%_
                                         _%e172709173613%_
                                         _%hd172710173616%_
                                         _%tl172711173618%_
                                         _%e172712173621%_
                                         _%hd172713173624%_
                                         _%tl172714173626%_
                                         _%e172715173629%_
                                         _%hd172716173632%_
                                         _%tl172717173634%_
                                         _%e172718173637%_
                                         _%hd172719173640%_
                                         _%tl172720173642%_
                                         _%e172721173645%_
                                         _%hd172722173648%_
                                         _%tl172723173650%_))
                                    (_%__match179195179196%_
                                     _%e172697173581%_
                                     _%hd172698173584%_
                                     _%tl172699173586%_
                                     _%e172700173589%_
                                     _%hd172701173592%_
                                     _%tl172702173594%_
                                     _%e172703173597%_
                                     _%hd172704173600%_
                                     _%tl172705173602%_
                                     _%e172706173605%_
                                     _%hd172707173608%_
                                     _%tl172708173610%_
                                     _%e172709173613%_
                                     _%hd172710173616%_
                                     _%tl172711173618%_
                                     _%e172712173621%_
                                     _%hd172713173624%_
                                     _%tl172714173626%_
                                     _%e172715173629%_
                                     _%hd172716173632%_
                                     _%tl172717173634%_
                                     _%e172718173637%_
                                     _%hd172719173640%_
                                     _%tl172720173642%_))))
                            (_%__match179195179196%_
                             _%e172697173581%_
                             _%hd172698173584%_
                             _%tl172699173586%_
                             _%e172700173589%_
                             _%hd172701173592%_
                             _%tl172702173594%_
                             _%e172703173597%_
                             _%hd172704173600%_
                             _%tl172705173602%_
                             _%e172706173605%_
                             _%hd172707173608%_
                             _%tl172708173610%_
                             _%e172709173613%_
                             _%hd172710173616%_
                             _%tl172711173618%_
                             _%e172712173621%_
                             _%hd172713173624%_
                             _%tl172714173626%_
                             _%e172715173629%_
                             _%hd172716173632%_
                             _%tl172717173634%_
                             _%e172718173637%_
                             _%hd172719173640%_
                             _%tl172720173642%_))))
                    (_%__match179133179134%_
                     _%e172697173581%_
                     _%hd172698173584%_
                     _%tl172699173586%_
                     _%e172700173589%_
                     _%hd172701173592%_
                     _%tl172702173594%_
                     _%e172703173597%_
                     _%hd172704173600%_
                     _%tl172705173602%_
                     _%e172706173605%_
                     _%hd172707173608%_
                     _%tl172708173610%_
                     _%e172709173613%_
                     _%hd172710173616%_
                     _%tl172711173618%_
                     _%e172712173621%_
                     _%hd172713173624%_
                     _%tl172714173626%_
                     _%e172715173629%_
                     _%hd172716173632%_
                     _%tl172717173634%_))
                (_%__kont178716178717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont178716178717%_))
                                            (_%__kont178716178717%_))
                                        (_%__kont178716178717%_))))
                                (_%__kont178716178717%_))))
                        (_%__kont178716178717%_))
                    (_%__kont178716178717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178716178717%_))
                                                (_%__kont178716178717%_))
                                            (_%__kont178716178717%_))))
                                    (_%__kont178716178717%_))))
                            (_%__kont178716178717%_))))
                    (_%__kont178716178717%_))))))))))
