(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1742222175)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp179188 (list gxc#::identity::t))
            (__tmp179187 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp179188
         '()
         __tmp179187
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args177985%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args177985%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp179189
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
        (__make-promise __tmp179189)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx177977%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self177980%_
                (let ((__obj179180
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj179180))
               (__tmp179190
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177980%_ _%stx177977%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179190
           gxc#current-compile-method
           _%self177980%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp179192 (list gxc#::false::t))
            (__tmp179191 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp179192
         '()
         __tmp179191
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args177974%_
        (apply make-instance gxc#::extract-receiver::t _%$args177974%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp179193
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
        (__make-promise __tmp179193)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx177966%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self177969%_
                (let ((__obj179182
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj179182))
               (__tmp179194
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177969%_ _%stx177966%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179194
           gxc#current-compile-method
           _%self177969%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp179196 (list gxc#::void::t))
            (__tmp179195 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp179196
         '(receiver methods slots)
         __tmp179195
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args177963%_
        (apply make-instance gxc#::collect-object-refs::t _%$args177963%_)))
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
      (let ((__tmp179197
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
        (__make-promise __tmp179197)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords177929%_
               _%receiver177924177930%_
               _%methods177925177932%_
               _%slots177926177934%_
               _%stx177936%_)
        (let* ((_%receiver177939%_
                (if (eq? _%receiver177924177930%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177924177930%_))
               (_%methods177941%_
                (if (eq? _%methods177925177932%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177925177932%_))
               (_%slots177943%_
                (if (eq? _%slots177926177934%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177926177934%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self177945%_
                  (let ((__obj179184
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
                       __obj179184
                       _%receiver177939%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179184
                       _%methods177941%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179184
                       _%slots177943%_
                       '3
                       '#f
                       '#f))
                    __obj179184))
                 (__tmp179198
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177945%_ _%stx177936%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179198
             gxc#current-compile-method
             _%self177945%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords177952%_ . _%args177953%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords177952%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177952%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177952%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177952%_
                  'slots:
                  absent-value))
               _%args177953%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args177927177959%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args177927177959%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp179200 (list gxc#::basic-xform-expression::t))
            (__tmp179199 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp179200
         '(receiver klass methods slots)
         __tmp179199
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args177920%_
        (apply make-instance gxc#::subst-object-refs::t _%$args177920%_)))
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
      (let ((__tmp179201
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
        (__make-promise __tmp179201)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords177882%_
               _%receiver177876177883%_
               _%klass177877177885%_
               _%methods177878177887%_
               _%slots177879177889%_
               _%stx177891%_)
        (let* ((_%receiver177894%_
                (if (eq? _%receiver177876177883%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177876177883%_))
               (_%klass177896%_
                (if (eq? _%klass177877177885%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass177877177885%_))
               (_%methods177898%_
                (if (eq? _%methods177878177887%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177878177887%_))
               (_%slots177900%_
                (if (eq? _%slots177879177889%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177879177889%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self177902%_
                  (let ((__obj179186
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
                       __obj179186
                       _%receiver177894%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179186
                       _%klass177896%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179186
                       _%methods177898%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179186
                       _%slots177900%_
                       '4
                       '#f
                       '#f))
                    __obj179186))
                 (__tmp179202
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177902%_ _%stx177891%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179202
             gxc#current-compile-method
             _%self177902%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords177909%_ . _%args177910%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords177909%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177909%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177909%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177909%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177909%_
                  'slots:
                  absent-value))
               _%args177910%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args177880177916%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args177880177916%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self174991%_ _%stx174992%_)
        (letrec ((_%generate-method-bind174994%_
                  (lambda (_%$klass177868%_
                           _%$method-table177869%_
                           _%id177870%_
                           _%$id177871%_)
                    (let ((_%$tmp177873%_
                           (let ((__tmp179203
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179203))))
                      (cons (cons _%$id177871%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp177873%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table177869%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id177870%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp177873%_ '()))
                    (cons (cons '%#ref (cons _%$tmp177873%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id177870%_
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
                 (_%generate-slot-bind174995%_
                  (lambda (_%$klass177862%_ _%id177863%_ _%$id177864%_)
                    (let ((_%$tmp177866%_
                           (let ((__tmp179204
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179204))))
                      (cons (cons _%$id177864%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp177866%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass177862%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id177863%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp177866%_ '()))
                        (cons (cons '%#ref (cons _%$tmp177866%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id177863%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl174996%_
                  (lambda (_%$klass177856%_
                           _%$method-table177857%_
                           _%methods-bind177858%_
                           _%slots-bind177859%_
                           _%specializer-impl177860%_)
                    (let ((__tmp179205
                           (cons '%#lambda
                                 (cons (cons _%$klass177856%_
                                             (cons _%$method-table177857%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind177859%_
                                                            _%methods-bind177858%_))
                                                         (cons _%specializer-impl177860%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179205 _%stx174992%_))))
                 (_%generate-specializer-def174997%_
                  (lambda (_%id177852%_
                           _%specializer-id177853%_
                           _%specializer-impl177854%_)
                    (let ((__tmp179206
                           (cons '%#begin
                                 (cons _%stx174992%_
                                       (cons (let ((__tmp179207
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id177853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl177854%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179207
                                                _%stx174992%_))
                                             (cons (let ((__tmp179208
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id177852%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id177853%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179208
                                                      _%stx174992%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179206 _%stx174992%_)))))
          (let* ((_%__stx178074178075%_ _%stx174992%_)
                 (_%g175000175020%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx178074178075%_)))))
            (let ((_%__kont178076178077%_
                   (lambda (_%L175064%_ _%L175065%_)
                     (let ((_%method-calls175084%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs175085%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty175086%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?175088%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls175084%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs175085%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L175064%_))
                             (let* ((_%__stx177988177989%_ _%L175064%_)
                                    (_%g175476175494%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx177988177989%_)))))
                               (let ((_%__kont177990177991%_
                                      (lambda (_%L175530%_
                                               _%L175531%_
                                               _%L175532%_)
                                        (let ((_%receiver175552%_
                                               (let ((_%$e175549%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L175530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e175549%_
                                                     _%$e175549%_
                                                     _%L175532%_))))
                                          (for-each
                                           (lambda (_%g175553175555%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver175552%_
                                              _%method-calls175084%_
                                              _%slot-refs175085%_
                                              _%g175553175555%_))
                                           _%L175530%_)
                                          (if (_%no-specializer?175088%_)
                                              _%stx174992%_
                                              (let* ((_%specializer-id175564%_
                                                      (let* ((_%id175558%_
                                                              (let ((__tmp179209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L175065%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179209 '"::specialize")))
                     (_%specializer-id175561%_
                      (let ((__tmp179210
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174992%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175558%_ __tmp179210))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175561%_))
                _%specializer-id175561%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175566%_
                                                      (let ((__tmp179211
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179211)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175568%_
                                                      (let ((__tmp179212
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179212)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175570%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls175084%_)))
                                                     (_%$methods175574%_
                                                      (map (lambda (_%id175572%_)
                                                             (let ((__tmp179213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175572%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179213)))
                   _%methods175570%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175583%_
                                                      (for-each
                                                       (lambda (_%g175575175578%_
                                                                _%g175576175580%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls175084%_
                                                            _%g175575175578%_
                                                            _%g175576175580%_)))
                                                       _%methods175570%_
                                                       _%$methods175574%_))
                                                     (_%methods-bind175593%_
                                                      (map (lambda (_%g175585175588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175586175590%_)
                     (_%generate-method-bind174994%_
                      _%$klass175566%_
                      _%$method-table175568%_
                      _%g175585175588%_
                      _%g175586175590%_))
                   _%methods175570%_
                   _%$methods175574%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175595%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs175085%_)))
                                                     (_%$slots175599%_
                                                      (map (lambda (_%id175597%_)
                                                             (let ((__tmp179214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175597%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179214)))
                   _%slots175595%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175608%_
                                                      (for-each
                                                       (lambda (_%g175600175603%_
                                                                _%g175601175605%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs175085%_
                                                            _%g175600175603%_
                                                            _%g175601175605%_)))
                                                       _%slots175595%_
                                                       _%$slots175599%_))
                                                     (_%slots-bind175617%_
                                                      (map (lambda (_%g175609175612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175610175614%_)
                     (_%generate-slot-bind174995%_
                      _%$klass175566%_
                      _%g175609175612%_
                      _%g175610175614%_))
                   _%slots175595%_
                   _%$slots175599%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body175623%_
                                                      (map (lambda (_%g175618175620%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver175552%_
                                                              _%$klass175566%_
                                                              _%method-calls175084%_
                                                              _%slot-refs175085%_
                                                              _%g175618175620%_))
                                                           _%L175530%_))
                                                     (_%specializer-impl175625%_
                                                      (let ((__tmp179215
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L175532%_ _%L175531%_)
                                 _%specializer-body175623%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179215 _%stx174992%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175627%_
                                                      (_%generate-specializer-impl174996%_
                                                       _%$klass175566%_
                                                       _%$method-table175568%_
                                                       _%methods-bind175593%_
                                                       _%slots-bind175617%_
                                                       _%specializer-impl175625%_)))
                                                (let ((__tmp179217
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L175065%_)))
                                                      (__tmp179216
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175564%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179217
                                                   '" => "
                                                   __tmp179216))
                                                (_%generate-specializer-def174997%_
                                                 _%L175065%_
                                                 _%specializer-id175564%_
                                                 _%specializer-impl175627%_))))))
                                     (_%__kont177992177993%_
                                      (lambda () _%stx174992%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx177988177989%_))
                                     (let ((_%e175481175506%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx177988177989%_))))
                                       (let ((_%tl175483175511%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e175481175506%_)))
                                             (_%hd175482175509%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e175481175506%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl175483175511%_))
                                             (let ((_%e175484175514%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl175483175511%_))))
                                               (let ((_%tl175486175519%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e175484175514%_)))
                                                     (_%hd175485175517%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e175484175514%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd175485175517%_))
                                                     (let ((_%e175487175522%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd175485175517%_))))
                                                       (let ((_%tl175489175527%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e175487175522%_)))
                     (_%hd175488175525%_
                      (let () (declare (not safe)) (##car _%e175487175522%_))))
                 (_%__kont177990177991%_
                  _%tl175486175519%_
                  _%tl175489175527%_
                  _%hd175488175525%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont177992177993%_))))
                                             (_%__kont177992177993%_))))
                                     (_%__kont177992177993%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L175064%_))
                                 (let* ((_%g175634175653%_
                                         (lambda (_%g175635175650%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g175635175650%_))))
                                        (_%g175633175951%_
                                         (lambda (_%g175635175656%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g175635175656%_))
                                               (let ((_%e175637175658%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g175635175656%_))))
                                                 (let ((_%hd175638175661%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175637175658%_)))
                                                       (_%tl175639175663%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175637175658%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl175639175663%_))
                                                       (let ((_g179218_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl175639175663%_ '0))))
                 (begin
                   (let ((_g179219_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g179218_)
                                (##values-length _g179218_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g179219_ 2)))
                         (error "Context expects 2 values" _g179219_)))
                   (let ((_%target175640175666%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179218_ 0)))
                         (_%tl175642175668%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179218_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl175642175668%_))
                         (letrec ((_%loop175643175671%_
                                   (lambda (_%hd175641175674%_
                                            _%clause175647175676%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175641175674%_))
                                         (let ((_%e175644175679%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175641175674%_))))
                                           (let ((_%lp-hd175645175682%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175644175679%_)))
                                                 (_%lp-tl175646175684%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175644175679%_))))
                                             (_%loop175643175671%_
                                              _%lp-tl175646175684%_
                                              (cons _%lp-hd175645175682%_
                                                    _%clause175647175676%_))))
                                         (let ((_%clause175648175687%_
                                                (reverse _%clause175647175676%_)))
                                           ((lambda (_%L175690%_)
                                              (for-each
                                               (lambda (_%clause175704%_)
                                                 (let* ((_%__stx178014178015%_
                                                         _%clause175704%_)
                                                        (_%g175707175722%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx178014178015%_)))))
                                                   (let ((_%__kont178016178017%_
                                                          (lambda (_%L175750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L175751%_
                           _%L175752%_)
                    (let ((_%receiver175771%_
                           (let ((_%$e175768%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L175750%_))))
                             (if _%$e175768%_ _%$e175768%_ _%L175752%_))))
                      (for-each
                       (lambda (_%g175772175774%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver175771%_
                          _%method-calls175084%_
                          _%slot-refs175085%_
                          _%g175772175774%_))
                       _%L175750%_))))
                 (_%__kont178018178019%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx178014178015%_))
                                                         (let ((_%e175712175734%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx178014178015%_))))
                   (let ((_%tl175714175739%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e175712175734%_)))
                         (_%hd175713175737%_
                          (let ()
                            (declare (not safe))
                            (##car _%e175712175734%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd175713175737%_))
                         (let ((_%e175715175742%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd175713175737%_))))
                           (let ((_%tl175717175747%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e175715175742%_)))
                                 (_%hd175716175745%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e175715175742%_))))
                             (_%__kont178016178017%_
                              _%tl175714175739%_
                              _%tl175717175747%_
                              _%hd175716175745%_)))
                         (_%__kont178018178019%_))))
                 (_%__kont178018178019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp179220
                                                      (lambda (_%g175779175782%_
                                                               _%g175780175784%_)
                                                        (cons _%g175779175782%_
                                                              _%g175780175784%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179220
                                                  '()
                                                  _%L175690%_)))
                                              (if (_%no-specializer?175088%_)
                                                  _%stx174992%_
                                                  (let* ((_%specializer-id175793%_
                                                          (let* ((_%id175787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179221
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L175065%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179221 '"::specialize")))
                         (_%specializer-id175790%_
                          (let ((__tmp179222
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174992%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id175787%_
                             __tmp179222))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id175790%_))
                    _%specializer-id175790%_))
                 (_%$klass175795%_
                  (let ((__tmp179223
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179223)))
                 (_%$method-table175797%_
                  (let ((__tmp179224
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179224)))
                 (_%methods175799%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls175084%_)))
                 (_%$methods175803%_
                  (map (lambda (_%id175801%_)
                         (let ((__tmp179225 (gensym _%id175801%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179225)))
                       _%methods175799%_))
                 (_%_175812%_
                  (for-each
                   (lambda (_%g175804175807%_ _%g175805175809%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls175084%_
                        _%g175804175807%_
                        _%g175805175809%_)))
                   _%methods175799%_
                   _%$methods175803%_))
                 (_%methods-bind175822%_
                  (map (lambda (_%g175814175817%_ _%g175815175819%_)
                         (_%generate-method-bind174994%_
                          _%$klass175795%_
                          _%$method-table175797%_
                          _%g175814175817%_
                          _%g175815175819%_))
                       _%methods175799%_
                       _%$methods175803%_))
                 (_%slots175824%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs175085%_)))
                 (_%$slots175828%_
                  (map (lambda (_%id175826%_)
                         (let ((__tmp179226 (gensym _%id175826%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179226)))
                       _%slots175824%_))
                 (_%_175837%_
                  (for-each
                   (lambda (_%g175829175832%_ _%g175830175834%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs175085%_
                        _%g175829175832%_
                        _%g175830175834%_)))
                   _%slots175824%_
                   _%$slots175828%_))
                 (_%slots-bind175846%_
                  (map (lambda (_%g175838175841%_ _%g175839175843%_)
                         (_%generate-slot-bind174995%_
                          _%$klass175795%_
                          _%g175838175841%_
                          _%g175839175843%_))
                       _%slots175824%_
                       _%$slots175828%_))
                 (_%specializer-clauses175944%_
                  (map (lambda (_%clause175848%_)
                         (let* ((_%__stx178034178035%_ _%clause175848%_)
                                (_%g175851175866%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx178034178035%_)))))
                           (let ((_%__kont178036178037%_
                                  (lambda (_%L175894%_ _%L175895%_ _%L175896%_)
                                    (let* ((_%receiver175925%_
                                            (let ((_%$e175922%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L175894%_))))
                                              (if _%$e175922%_
                                                  _%$e175922%_
                                                  _%L175896%_)))
                                           (_%body175931%_
                                            (map (lambda (_%g175926175928%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver175925%_
                                                    _%$klass175795%_
                                                    _%method-calls175084%_
                                                    _%slot-refs175085%_
                                                    _%g175926175928%_))
                                                 _%L175894%_)))
                                      (cons (cons _%L175896%_ _%L175895%_)
                                            _%body175931%_))))
                                 (_%__kont178038178039%_
                                  (lambda () _%clause175848%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx178034178035%_))
                                 (let ((_%e175856175878%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx178034178035%_))))
                                   (let ((_%tl175858175883%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e175856175878%_)))
                                         (_%hd175857175881%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e175856175878%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175857175881%_))
                                         (let ((_%e175859175886%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175857175881%_))))
                                           (let ((_%tl175861175891%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175859175886%_)))
                                                 (_%hd175860175889%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175859175886%_))))
                                             (_%__kont178036178037%_
                                              _%tl175858175883%_
                                              _%tl175861175891%_
                                              _%hd175860175889%_)))
                                         (_%__kont178038178039%_))))
                                 (_%__kont178038178039%_)))))
                       (let ((__tmp179227
                              (lambda (_%g175936175939%_ _%g175937175941%_)
                                (cons _%g175936175939%_ _%g175937175941%_))))
                         (declare (not safe))
                         (__foldr1 __tmp179227 '() _%L175690%_))))
                 (_%specializer-impl175946%_
                  (let ((__tmp179228
                         (cons '%#case-lambda _%specializer-clauses175944%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179228 _%stx174992%_)))
                 (_%specializer-impl175948%_
                  (_%generate-specializer-impl174996%_
                   _%$klass175795%_
                   _%$method-table175797%_
                   _%methods-bind175822%_
                   _%slots-bind175846%_
                   _%specializer-impl175946%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179230
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L175065%_)))
                                                          (__tmp179229
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id175793%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179230
                                                       '" => "
                                                       __tmp179229))
                                                    (_%generate-specializer-def174997%_
                                                     _%L175065%_
                                                     _%specializer-id175793%_
                                                     _%specializer-impl175948%_))))
                                            _%clause175648175687%_))))))
                           (_%loop175643175671%_ _%target175640175666%_ '()))
                         (_%g175634175653%_ _%g175635175656%_)))))
               (_%g175634175653%_ _%g175635175656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175634175653%_
                                                _%g175635175656%_)))))
                                   (_%g175633175951%_ _%L175064%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L175064%_))
                                     (let* ((_%g175955175985%_
                                             (lambda (_%g175956175982%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175956175982%_))))
                                            (_%g175954176616%_
                                             (lambda (_%g175956175988%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175956175988%_))
                                                   (let ((_%e175960175990%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175956175988%_))))
                                                     (let ((_%hd175961175993%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175960175990%_)))
                                                           (_%tl175962175995%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175960175990%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175962175995%_))
                                                           (let ((_%e175963175998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175962175995%_))))
                     (let ((_%hd175964176001%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175963175998%_)))
                           (_%tl175965176003%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175963175998%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175964176001%_))
                           (let ((_%e175966176006%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175964176001%_))))
                             (let ((_%hd175967176009%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175966176006%_)))
                                   (_%tl175968176011%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175966176006%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175967176009%_))
                                   (let ((_%e175969176014%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175967176009%_))))
                                     (let ((_%hd175970176017%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175969176014%_)))
                                           (_%tl175971176019%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175969176014%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd175970176017%_))
                                           (let ((_%e175972176022%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd175970176017%_))))
                                             (let ((_%hd175973176025%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175972176022%_)))
                                                   (_%tl175974176027%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175972176022%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175974176027%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl175971176019%_))
                                                       (let ((_%e175975176030%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl175971176019%_))))
                 (let ((_%hd175976176033%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175975176030%_)))
                       (_%tl175977176035%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175975176030%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175977176035%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl175968176011%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175965176003%_))
                               (let ((_%e175978176038%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175965176003%_))))
                                 (let ((_%hd175979176041%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175978176038%_)))
                                       (_%tl175980176043%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175978176038%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175980176043%_))
                                       ((lambda (_%L176046%_
                                                 _%L176047%_
                                                 _%L176048%_)
                                          (let* ((_%g176072176090%_
                                                  (lambda (_%g176073176087%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g176073176087%_))))
                                                 (_%g176071176146%_
                                                  (lambda (_%g176073176093%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g176073176093%_))
                                                        (let ((_%e176077176095%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g176073176093%_))))
                  (let ((_%hd176078176098%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176077176095%_)))
                        (_%tl176079176100%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176077176095%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl176079176100%_))
                        (let ((_%e176080176103%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl176079176100%_))))
                          (let ((_%hd176081176106%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e176080176103%_)))
                                (_%tl176082176108%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e176080176103%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd176081176106%_))
                                (let ((_%e176083176111%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd176081176106%_))))
                                  (let ((_%hd176084176114%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176083176111%_)))
                                        (_%tl176085176116%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176083176111%_))))
                                    ((lambda (_%L176119%_
                                              _%L176120%_
                                              _%L176121%_)
                                       (let ((_%receiver176140%_
                                              (let ((_%$e176137%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L176119%_))))
                                                (if _%$e176137%_
                                                    _%$e176137%_
                                                    _%L176121%_))))
                                         (for-each
                                          (lambda (_%g176141176143%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver176140%_
                                             _%method-calls175084%_
                                             _%slot-refs175085%_
                                             _%g176141176143%_))
                                          _%L176119%_)))
                                     _%tl176082176108%_
                                     _%tl176085176116%_
                                     _%hd176084176114%_)))
                                (_%g176072176090%_ _%g176073176093%_))))
                        (_%g176072176090%_ _%g176073176093%_))))
                (_%g176072176090%_ _%g176073176093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g176071176146%_ _%L176047%_))
                                          (let* ((_%g176149176168%_
                                                  (lambda (_%g176150176165%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g176150176165%_))))
                                                 (_%g176148176292%_
                                                  (lambda (_%g176150176171%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g176150176171%_))
                                                        (let ((_%e176152176173%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g176150176171%_))))
                  (let ((_%hd176153176176%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176152176173%_)))
                        (_%tl176154176178%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176152176173%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176154176178%_))
                        (let ((_g179231_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl176154176178%_
                                  '0))))
                          (begin
                            (let ((_g179232_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g179231_)
                                         (##values-length _g179231_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g179232_ 2)))
                                  (error "Context expects 2 values"
                                         _g179232_)))
                            (let ((_%target176155176181%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179231_ 0)))
                                  (_%tl176157176183%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179231_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl176157176183%_))
                                  (letrec ((_%loop176158176186%_
                                            (lambda (_%hd176156176189%_
                                                     _%clause176162176191%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd176156176189%_))
                                                  (let ((_%e176159176194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd176156176189%_))))
                                                    (let ((_%lp-hd176160176197%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176159176194%_)))
                                                          (_%lp-tl176161176199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176159176194%_))))
                                                      (_%loop176158176186%_
                                                       _%lp-tl176161176199%_
                                                       (cons _%lp-hd176160176197%_
                                                             _%clause176162176191%_))))
                                                  (let ((_%clause176163176202%_
                                                         (reverse _%clause176162176191%_)))
                                                    ((lambda (_%L176205%_)
                                                       (for-each
                                                        (lambda (_%clause176218%_)
                                                          (let* ((_%g176220176235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g176221176232%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176221176232%_))))
                         (_%g176219176282%_
                          (lambda (_%g176221176238%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176221176238%_))
                                (let ((_%e176225176240%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176221176238%_))))
                                  (let ((_%hd176226176243%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176225176240%_)))
                                        (_%tl176227176245%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176225176240%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176226176243%_))
                                        (let ((_%e176228176248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176226176243%_))))
                                          (let ((_%hd176229176251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176228176248%_)))
                                                (_%tl176230176253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176228176248%_))))
                                            ((lambda (_%L176256%_
                                                      _%L176257%_
                                                      _%L176258%_)
                                               (let ((_%receiver176276%_
                                                      (let ((_%$e176273%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L176256%_))))
                (if _%$e176273%_ _%$e176273%_ _%L176258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g176277176279%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver176276%_
                                                     _%method-calls175084%_
                                                     _%slot-refs175085%_
                                                     _%g176277176279%_))
                                                  _%L176256%_)))
                                             _%tl176227176245%_
                                             _%tl176230176253%_
                                             _%hd176229176251%_)))
                                        (_%g176220176235%_
                                         _%g176221176238%_))))
                                (_%g176220176235%_ _%g176221176238%_)))))
                    (_%g176219176282%_ _%clause176218%_)))
                (let ((__tmp179233
                       (lambda (_%g176284176287%_ _%g176285176289%_)
                         (cons _%g176284176287%_ _%g176285176289%_))))
                  (declare (not safe))
                  (__foldr1 __tmp179233 '() _%L176205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause176163176202%_))))))
                                    (_%loop176158176186%_
                                     _%target176155176181%_
                                     '()))
                                  (_%g176149176168%_ _%g176150176171%_)))))
                        (_%g176149176168%_ _%g176150176171%_))))
                (_%g176149176168%_ _%g176150176171%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g176148176292%_ _%L176046%_))
                                          (if (_%no-specializer?175088%_)
                                              _%stx174992%_
                                              (let* ((_%specializer-id176301%_
                                                      (let* ((_%id176295%_
                                                              (let ((__tmp179234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L175065%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179234 '"::specialize")))
                     (_%specializer-id176298%_
                      (let ((__tmp179235
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174992%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id176295%_ __tmp179235))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id176298%_))
                _%specializer-id176298%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass176303%_
                                                      (let ((__tmp179236
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179236)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table176305%_
                                                      (let ((__tmp179237
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179237)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods176307%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls175084%_)))
                                                     (_%$methods176311%_
                                                      (map (lambda (_%id176309%_)
                                                             (let ((__tmp179238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176309%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179238)))
                   _%methods176307%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176320%_
                                                      (for-each
                                                       (lambda (_%g176312176315%_
                                                                _%g176313176317%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls175084%_
                                                            _%g176312176315%_
                                                            _%g176313176317%_)))
                                                       _%methods176307%_
                                                       _%$methods176311%_))
                                                     (_%methods-bind176330%_
                                                      (map (lambda (_%g176322176325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176323176327%_)
                     (_%generate-method-bind174994%_
                      _%$klass176303%_
                      _%$method-table176305%_
                      _%g176322176325%_
                      _%g176323176327%_))
                   _%methods176307%_
                   _%$methods176311%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots176332%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs175085%_)))
                                                     (_%$slots176336%_
                                                      (map (lambda (_%id176334%_)
                                                             (let ((__tmp179239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176334%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179239)))
                   _%slots176332%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176345%_
                                                      (for-each
                                                       (lambda (_%g176337176340%_
                                                                _%g176338176342%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs175085%_
                                                            _%g176337176340%_
                                                            _%g176338176342%_)))
                                                       _%slots176332%_
                                                       _%$slots176336%_))
                                                     (_%slots-bind176354%_
                                                      (map (lambda (_%g176346176349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176347176351%_)
                     (_%generate-slot-bind174995%_
                      _%$klass176303%_
                      _%g176346176349%_
                      _%g176347176351%_))
                   _%slots176332%_
                   _%$slots176336%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr176446%_
                                                      (let* ((_%g176356176374%_
                                                              (lambda (_%g176357176371%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176357176371%_))))
                     (_%g176355176443%_
                      (lambda (_%g176357176377%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176357176377%_))
                            (let ((_%e176361176379%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176357176377%_))))
                              (let ((_%hd176362176382%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176361176379%_)))
                                    (_%tl176363176384%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176361176379%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176363176384%_))
                                    (let ((_%e176364176387%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176363176384%_))))
                                      (let ((_%hd176365176390%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176364176387%_)))
                                            (_%tl176366176392%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176364176387%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176365176390%_))
                                            (let ((_%e176367176395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176365176390%_))))
                                              (let ((_%hd176368176398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176367176395%_)))
                                                    (_%tl176369176400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176367176395%_))))
                                                ((lambda (_%L176403%_
                                                          _%L176404%_
                                                          _%L176405%_)
                                                   (let* ((_%receiver176434%_
                                                           (let ((_%$e176431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L176403%_))))
                     (if _%$e176431%_ _%$e176431%_ _%L176405%_)))
                  (_%body176440%_
                   (map (lambda (_%g176435176437%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver176434%_
                           _%$klass176303%_
                           _%method-calls175084%_
                           _%slot-refs175085%_
                           _%g176435176437%_))
                        _%L176403%_))
                  (__tmp179240
                   (cons '%#lambda
                         (cons (cons _%L176405%_ _%L176404%_)
                               _%body176440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179240
                                                      _%L176047%_)))
                                                 _%tl176366176392%_
                                                 _%tl176369176400%_
                                                 _%hd176368176398%_)))
                                            (_%g176356176374%_
                                             _%g176357176377%_))))
                                    (_%g176356176374%_ _%g176357176377%_))))
                            (_%g176356176374%_ _%g176357176377%_)))))
                (_%g176355176443%_ _%L176047%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr176609%_
                                                      (let* ((_%g176448176467%_
                                                              (lambda (_%g176449176464%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176449176464%_))))
                     (_%g176447176606%_
                      (lambda (_%g176449176470%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176449176470%_))
                            (let ((_%e176451176472%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176449176470%_))))
                              (let ((_%hd176452176475%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176451176472%_)))
                                    (_%tl176453176477%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176451176472%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl176453176477%_))
                                    (let ((_g179241_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl176453176477%_
                                              '0))))
                                      (begin
                                        (let ((_g179242_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g179241_)
                                                     (##values-length
                                                      _g179241_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g179242_ 2)))
                                              (error "Context expects 2 values"
                                                     _g179242_)))
                                        (let ((_%target176454176480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179241_ 0)))
                                              (_%tl176456176482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179241_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176456176482%_))
                                              (letrec ((_%loop176457176485%_
                                                        (lambda (_%hd176455176488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause176461176490%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176455176488%_))
                      (let ((_%e176458176493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176455176488%_))))
                        (let ((_%lp-hd176459176496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176458176493%_)))
                              (_%lp-tl176460176498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176458176493%_))))
                          (_%loop176457176485%_
                           _%lp-tl176460176498%_
                           (cons _%lp-hd176459176496%_
                                 _%clause176461176490%_))))
                      (let ((_%clause176462176501%_
                             (reverse _%clause176461176490%_)))
                        ((lambda (_%L176504%_)
                           (let* ((_%clauses176604%_
                                   (map (lambda (_%clause176518%_)
                                          (let* ((_%__stx178054178055%_
                                                  _%clause176518%_)
                                                 (_%g176521176536%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx178054178055%_)))))
                                            (let ((_%__kont178056178057%_
                                                   (lambda (_%L176564%_
                                                            _%L176565%_
                                                            _%L176566%_)
                                                     (let* ((_%receiver176585%_
                                                             (let ((_%$e176582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L176564%_))))
                       (if _%$e176582%_ _%$e176582%_ _%L176566%_)))
                    (_%body176591%_
                     (map (lambda (_%g176586176588%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver176585%_
                             _%$klass176303%_
                             _%method-calls175084%_
                             _%slot-refs175085%_
                             _%g176586176588%_))
                          _%L176564%_)))
               (cons (cons _%L176566%_ _%L176565%_) _%body176591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178058178059%_
                                                   (lambda ()
                                                     _%clause176518%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx178054178055%_))
                                                  (let ((_%e176526176548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx178054178055%_))))
                                                    (let ((_%tl176528176553%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176526176548%_)))
                                                          (_%hd176527176551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176526176548%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd176527176551%_))
                                                          (let ((_%e176529176556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd176527176551%_))))
                    (let ((_%tl176531176561%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e176529176556%_)))
                          (_%hd176530176559%_
                           (let ()
                             (declare (not safe))
                             (##car _%e176529176556%_))))
                      (_%__kont178056178057%_
                       _%tl176528176553%_
                       _%tl176531176561%_
                       _%hd176530176559%_)))
                  (_%__kont178058178059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178058178059%_)))))
                                        (let ((__tmp179243
                                               (lambda (_%g176596176599%_
                                                        _%g176597176601%_)
                                                 (cons _%g176596176599%_
                                                       _%g176597176601%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp179243
                                           '()
                                           _%L176504%_))))
                                  (__tmp179244
                                   (cons '%#case-lambda _%clauses176604%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179244 _%L176046%_)))
                         _%clause176462176501%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176457176485%_
                                                 _%target176454176480%_
                                                 '()))
                                              (_%g176448176467%_
                                               _%g176449176470%_)))))
                                    (_%g176448176467%_ _%g176449176470%_))))
                            (_%g176448176467%_ _%g176449176470%_)))))
                (_%g176447176606%_ _%L176046%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176611%_
                                                      (let ((__tmp179245
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L176048%_ '())
                                             (cons _%specializer-lambda-expr176446%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr176609%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179245 _%stx174992%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176613%_
                                                      (_%generate-specializer-impl174996%_
                                                       _%$klass176303%_
                                                       _%$method-table176305%_
                                                       _%methods-bind176330%_
                                                       _%slots-bind176354%_
                                                       _%specializer-impl176611%_)))
                                                (let ((__tmp179247
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L175065%_)))
                                                      (__tmp179246
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id176301%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179247
                                                   '" => "
                                                   __tmp179246))
                                                (_%generate-specializer-def174997%_
                                                 _%L175065%_
                                                 _%specializer-id176301%_
                                                 _%specializer-impl176613%_))))
                                        _%hd175979176041%_
                                        _%hd175976176033%_
                                        _%hd175973176025%_)
                                       (_%g175955175985%_ _%g175956175988%_))))
                               (_%g175955175985%_ _%g175956175988%_))
                           (_%g175955175985%_ _%g175956175988%_))
                       (_%g175955175985%_ _%g175956175988%_))))
               (_%g175955175985%_ _%g175956175988%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175955175985%_
                                                    _%g175956175988%_))))
                                           (_%g175955175985%_
                                            _%g175956175988%_))))
                                   (_%g175955175985%_ _%g175956175988%_))))
                           (_%g175955175985%_ _%g175956175988%_))))
                   (_%g175955175985%_ _%g175956175988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175955175985%_
                                                    _%g175956175988%_)))))
                                       (_%g175954176616%_ _%L175064%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L175064%_))
                                         (let* ((_%g176620176673%_
                                                 (lambda (_%g176621176670%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176621176670%_))))
                                                (_%g176619177844%_
                                                 (lambda (_%g176621176676%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176621176676%_))
                                                       (let ((_%e176627176678%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176621176676%_))))
                 (let ((_%hd176628176681%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176627176678%_)))
                       (_%tl176629176683%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176627176678%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd176628176681%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd176628176681%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl176629176683%_))
                               (let ((_%e176630176686%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl176629176683%_))))
                                 (let ((_%hd176631176689%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176630176686%_)))
                                       (_%tl176632176691%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176630176686%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176631176689%_))
                                       (let ((_%e176633176694%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176631176689%_))))
                                         (let ((_%hd176634176697%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176633176694%_)))
                                               (_%tl176635176699%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176633176694%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176634176697%_))
                                               (let ((_%e176636176702%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176634176697%_))))
                                                 (let ((_%hd176637176705%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176636176702%_)))
                                                       (_%tl176638176707%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176636176702%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd176637176705%_))
                                                       (let ((_%e176639176710%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd176637176705%_))))
                 (let ((_%hd176640176713%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176639176710%_)))
                       (_%tl176641176715%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176639176710%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl176641176715%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl176638176707%_))
                           (let ((_%e176642176718%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl176638176707%_))))
                             (let ((_%hd176643176721%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176642176718%_)))
                                   (_%tl176644176723%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176642176718%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176643176721%_))
                                   (let ((_%e176645176726%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176643176721%_))))
                                     (let ((_%hd176646176729%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176645176726%_)))
                                           (_%tl176647176731%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176645176726%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd176646176729%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd176646176729%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl176647176731%_))
                                                   (let ((_%e176648176734%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl176647176731%_))))
                                                     (let ((_%hd176649176737%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176648176734%_)))
                                                           (_%tl176650176739%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176648176734%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd176649176737%_))
                                                           (let ((_%e176651176742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd176649176737%_))))
                     (let ((_%hd176652176745%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176651176742%_)))
                           (_%tl176653176747%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176651176742%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd176652176745%_))
                           (let ((_%e176654176750%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd176652176745%_))))
                             (let ((_%hd176655176753%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176654176750%_)))
                                   (_%tl176656176755%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176654176750%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176655176753%_))
                                   (let ((_%e176657176758%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176655176753%_))))
                                     (let ((_%hd176658176761%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176657176758%_)))
                                           (_%tl176659176763%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176657176758%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176659176763%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl176656176755%_))
                                               (let ((_%e176660176766%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl176656176755%_))))
                                                 (let ((_%hd176661176769%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176660176766%_)))
                                                       (_%tl176662176771%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176660176766%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176662176771%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl176653176747%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl176650176739%_))
                       (let ((_%e176663176774%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176650176739%_))))
                         (let ((_%hd176664176777%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176663176774%_)))
                               (_%tl176665176779%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176663176774%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176665176779%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl176644176723%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl176635176699%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl176632176691%_))
                                           (let ((_%e176666176782%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl176632176691%_))))
                                             (let ((_%hd176667176785%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e176666176782%_)))
                                                   (_%tl176668176787%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e176666176782%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl176668176787%_))
                                                   ((lambda (_%L176790%_
                                                             _%L176791%_
                                                             _%L176792%_
                                                             _%L176793%_
                                                             _%L176794%_)
                                                      (let* ((_%g176834176896%_
                                                              (lambda (_%g176835176893%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176835176893%_))))
                     (_%g176833177841%_
                      (lambda (_%g176835176899%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176835176899%_))
                            (let ((_%e176841176901%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176835176899%_))))
                              (let ((_%hd176842176904%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176841176901%_)))
                                    (_%tl176843176906%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176841176901%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd176842176904%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd176842176904%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl176843176906%_))
                                            (let ((_%e176844176909%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl176843176906%_))))
                                              (let ((_%hd176845176912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176844176909%_)))
                                                    (_%tl176846176914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176844176909%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176846176914%_))
                                                    (let ((_%e176847176917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176846176914%_))))
                                                      (let ((_%hd176848176920%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176847176917%_)))
                    (_%tl176849176922%_
                     (let () (declare (not safe)) (##cdr _%e176847176917%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd176848176920%_))
                    (let ((_%e176850176925%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd176848176920%_))))
                      (let ((_%hd176851176928%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176850176925%_)))
                            (_%tl176852176930%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176850176925%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd176851176928%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd176851176928%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176852176930%_))
                                    (let ((_%e176853176933%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176852176930%_))))
                                      (let ((_%hd176854176936%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176853176933%_)))
                                            (_%tl176855176938%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176853176933%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176854176936%_))
                                            (let ((_%e176856176941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176854176936%_))))
                                              (let ((_%hd176857176944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176856176941%_)))
                                                    (_%tl176858176946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176856176941%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd176857176944%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd176857176944%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl176858176946%_))
                                                            (let ((_%e176859176949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl176858176946%_))))
                      (let ((_%hd176860176952%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176859176949%_)))
                            (_%tl176861176954%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176859176949%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176861176954%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl176855176938%_))
                                (let ((_%e176862176957%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl176855176938%_))))
                                  (let ((_%hd176863176960%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176862176957%_)))
                                        (_%tl176864176962%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176862176957%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176863176960%_))
                                        (let ((_%e176865176965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176863176960%_))))
                                          (let ((_%hd176866176968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176865176965%_)))
                                                (_%tl176867176970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176865176965%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd176866176968%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd176866176968%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl176867176970%_))
                                                        (let ((_%e176868176973%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl176867176970%_))))
                  (let ((_%hd176869176976%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176868176973%_)))
                        (_%tl176870176978%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176868176973%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl176870176978%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176864176962%_))
                            (let ((_%e176871176981%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176864176962%_))))
                              (let ((_%hd176872176984%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176871176981%_)))
                                    (_%tl176873176986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176871176981%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd176872176984%_))
                                    (let ((_%e176874176989%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd176872176984%_))))
                                      (let ((_%hd176875176992%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176874176989%_)))
                                            (_%tl176876176994%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176874176989%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd176875176992%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd176875176992%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176876176994%_))
                                                    (let ((_%e176877176997%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176876176994%_))))
                                                      (let ((_%hd176878177000%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176877176997%_)))
                    (_%tl176879177002%_
                     (let () (declare (not safe)) (##cdr _%e176877176997%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl176879177002%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176873176986%_))
                        (if (let ((__tmp179248
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl176873176986%_))))
                              (declare (not safe))
                              (##fx>= __tmp179248 '1))
                            (let ((_g179249_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176873176986%_
                                      '1))))
                              (begin
                                (let ((_g179250_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179249_)
                                             (##values-length _g179249_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179250_ 2)))
                                      (error "Context expects 2 values"
                                             _g179250_)))
                                (let ((_%target176880177005%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179249_ 0)))
                                      (_%tl176882177007%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179249_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176882177007%_))
                                      (let ((_%e176889177010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176882177007%_))))
                                        (let ((_%hd176890177013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176889177010%_)))
                                              (_%tl176891177015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176889177010%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176891177015%_))
                                              (letrec ((_%loop176883177018%_
                                                        (lambda (_%hd176881177021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref176887177023%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176881177021%_))
                      (let ((_%e176884177026%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176881177021%_))))
                        (let ((_%lp-hd176885177029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176884177026%_)))
                              (_%lp-tl176886177031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176884177026%_))))
                          (_%loop176883177018%_
                           _%lp-tl176886177031%_
                           (cons _%lp-hd176885177029%_
                                 _%kw-ref176887177023%_))))
                      (let ((_%kw-ref176888177034%_
                             (reverse _%kw-ref176887177023%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176849176922%_))
                            ((lambda (_%L177037%_
                                      _%L177038%_
                                      _%L177039%_
                                      _%L177040%_
                                      _%L177041%_)
                               (let* ((_%kw-count177092%_
                                       (length (let ((__tmp179251
                                                      (lambda (_%g177084177087%_
                                                               _%g177085177089%_)
                                                        (cons _%g177084177087%_
                                                              _%g177085177089%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179251
                                                  '()
                                                  _%L177038%_))))
                                      (_%self-index177094%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count177092%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L176792%_))
                                     (let* ((_%g177098177112%_
                                             (lambda (_%g177099177109%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g177099177109%_))))
                                            (_%g177097177235%_
                                             (lambda (_%g177099177115%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g177099177115%_))
                                                   (let ((_%e177102177117%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g177099177115%_))))
                                                     (let ((_%hd177103177120%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e177102177117%_)))
                                                           (_%tl177104177122%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e177102177117%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177104177122%_))
                                                           (let ((_%e177105177125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177104177122%_))))
                     (let ((_%hd177106177128%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177105177125%_)))
                           (_%tl177107177130%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177105177125%_))))
                       ((lambda (_%L177133%_ _%L177134%_)
                          (let* ((_%self177151%_
                                  (list-ref _%L177134%_ _%self-index177094%_))
                                 (_%receiver177156%_
                                  (let ((_%$e177153%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L177133%_))))
                                    (if _%$e177153%_
                                        _%$e177153%_
                                        _%self177151%_))))
                            (for-each
                             (lambda (_%g177158177160%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver177156%_
                                _%method-calls175084%_
                                _%slot-refs175085%_
                                _%g177158177160%_))
                             _%L177133%_)
                            (if (_%no-specializer?175088%_)
                                _%stx174992%_
                                (let* ((_%specializer-id177169%_
                                        (let* ((_%id177163%_
                                                (let ((__tmp179252
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L175065%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp179252
                                                   '"::specialize")))
                                               (_%specializer-id177166%_
                                                (let ((__tmp179253
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx174992%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id177163%_
                                                   __tmp179253))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id177166%_))
                                          _%specializer-id177166%_))
                                       (_%$klass177171%_
                                        (let ((__tmp179254
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179254)))
                                       (_%$method-table177173%_
                                        (let ((__tmp179255
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179255)))
                                       (_%methods177175%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls175084%_)))
                                       (_%$methods177179%_
                                        (map (lambda (_%id177177%_)
                                               (let ((__tmp179256
                                                      (gensym _%id177177%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179256)))
                                             _%methods177175%_))
                                       (_%_177188%_
                                        (for-each
                                         (lambda (_%g177180177183%_
                                                  _%g177181177185%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls175084%_
                                              _%g177180177183%_
                                              _%g177181177185%_)))
                                         _%methods177175%_
                                         _%$methods177179%_))
                                       (_%methods-bind177198%_
                                        (map (lambda (_%g177190177193%_
                                                      _%g177191177195%_)
                                               (_%generate-method-bind174994%_
                                                _%$klass177171%_
                                                _%$method-table177173%_
                                                _%g177190177193%_
                                                _%g177191177195%_))
                                             _%methods177175%_
                                             _%$methods177179%_))
                                       (_%slots177200%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs175085%_)))
                                       (_%$slots177204%_
                                        (map (lambda (_%id177202%_)
                                               (let ((__tmp179257
                                                      (gensym _%id177202%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179257)))
                                             _%slots177200%_))
                                       (_%_177213%_
                                        (for-each
                                         (lambda (_%g177205177208%_
                                                  _%g177206177210%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs175085%_
                                              _%g177205177208%_
                                              _%g177206177210%_)))
                                         _%slots177200%_
                                         _%$slots177204%_))
                                       (_%slots-bind177222%_
                                        (map (lambda (_%g177214177217%_
                                                      _%g177215177219%_)
                                               (_%generate-slot-bind174995%_
                                                _%$klass177171%_
                                                _%g177214177217%_
                                                _%g177215177219%_))
                                             _%slots177200%_
                                             _%$slots177204%_))
                                       (_%specializer-impl177230%_
                                        (let* ((_%specializer-body177228%_
                                                (map (lambda (_%g177223177225%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver177156%_
                                                        _%$klass177171%_
                                                        _%method-calls175084%_
                                                        _%slot-refs175085%_
                                                        _%g177223177225%_))
                                                     _%L177133%_))
                                               (__tmp179258
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L176794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L176793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp179259
                                   (cons '%#lambda
                                         (cons _%L177134%_
                                               _%specializer-body177228%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp179259 _%L176792%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L176791%_ '())))
                                      '()))
                          '())
                    (cons _%L176790%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp179258
                                           _%stx174992%_)))
                                       (_%specializer-impl177232%_
                                        (_%generate-specializer-impl174996%_
                                         _%$klass177171%_
                                         _%$method-table177173%_
                                         _%methods-bind177198%_
                                         _%slots-bind177222%_
                                         _%specializer-impl177230%_)))
                                  (let ((__tmp179261
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L175065%_)))
                                        (__tmp179260
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id177169%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp179261
                                     '" => "
                                     __tmp179260))
                                  (_%generate-specializer-def174997%_
                                   _%L175065%_
                                   _%specializer-id177169%_
                                   _%specializer-impl177232%_)))))
                        _%tl177107177130%_
                        _%hd177106177128%_)))
                   (_%g177098177112%_ _%g177099177115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g177098177112%_
                                                    _%g177099177115%_)))))
                                       (_%g177097177235%_ _%L176792%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L176792%_))
                                         (let* ((_%g177239177269%_
                                                 (lambda (_%g177240177266%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g177240177266%_))))
                                                (_%g177238177837%_
                                                 (lambda (_%g177240177272%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g177240177272%_))
                                                       (let ((_%e177244177274%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g177240177272%_))))
                 (let ((_%hd177245177277%_
                        (let ()
                          (declare (not safe))
                          (##car _%e177244177274%_)))
                       (_%tl177246177279%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e177244177274%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl177246177279%_))
                       (let ((_%e177247177282%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl177246177279%_))))
                         (let ((_%hd177248177285%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e177247177282%_)))
                               (_%tl177249177287%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e177247177282%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd177248177285%_))
                               (let ((_%e177250177290%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd177248177285%_))))
                                 (let ((_%hd177251177293%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e177250177290%_)))
                                       (_%tl177252177295%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e177250177290%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd177251177293%_))
                                       (let ((_%e177253177298%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd177251177293%_))))
                                         (let ((_%hd177254177301%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e177253177298%_)))
                                               (_%tl177255177303%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e177253177298%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd177254177301%_))
                                               (let ((_%e177256177306%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd177254177301%_))))
                                                 (let ((_%hd177257177309%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e177256177306%_)))
                                                       (_%tl177258177311%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e177256177306%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl177258177311%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177255177303%_))
                                                           (let ((_%e177259177314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177255177303%_))))
                     (let ((_%hd177260177317%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177259177314%_)))
                           (_%tl177261177319%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177259177314%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl177261177319%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl177252177295%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl177249177287%_))
                                   (let ((_%e177262177322%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl177249177287%_))))
                                     (let ((_%hd177263177325%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e177262177322%_)))
                                           (_%tl177264177327%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e177262177322%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl177264177327%_))
                                           ((lambda (_%L177330%_
                                                     _%L177331%_
                                                     _%L177332%_)
                                              (let* ((_%g177356177370%_
                                                      (lambda (_%g177357177367%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177357177367%_))))
                                                     (_%g177355177417%_
                                                      (lambda (_%g177357177373%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177357177373%_))
                                                            (let ((_%e177360177375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177357177373%_))))
                      (let ((_%hd177361177378%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177360177375%_)))
                            (_%tl177362177380%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177360177375%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl177362177380%_))
                            (let ((_%e177363177383%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl177362177380%_))))
                              (let ((_%hd177364177386%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e177363177383%_)))
                                    (_%tl177365177388%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e177363177383%_))))
                                ((lambda (_%L177391%_ _%L177392%_)
                                   (let* ((_%self177405%_
                                           (list-ref
                                            _%L177392%_
                                            _%self-index177094%_))
                                          (_%receiver177410%_
                                           (let ((_%$e177407%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L177391%_))))
                                             (if _%$e177407%_
                                                 _%$e177407%_
                                                 _%self177405%_))))
                                     (for-each
                                      (lambda (_%g177412177414%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver177410%_
                                         _%method-calls175084%_
                                         _%slot-refs175085%_
                                         _%g177412177414%_))
                                      _%L177391%_)))
                                 _%tl177365177388%_
                                 _%hd177364177386%_)))
                            (_%g177356177370%_ _%g177357177373%_))))
                    (_%g177356177370%_ _%g177357177373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177355177417%_
                                                 _%L177331%_))
                                              (let* ((_%g177420177439%_
                                                      (lambda (_%g177421177436%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177421177436%_))))
                                                     (_%g177419177550%_
                                                      (lambda (_%g177421177442%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177421177442%_))
                                                            (let ((_%e177423177444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177421177442%_))))
                      (let ((_%hd177424177447%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177423177444%_)))
                            (_%tl177425177449%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177423177444%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl177425177449%_))
                            (let ((_g179262_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl177425177449%_
                                      '0))))
                              (begin
                                (let ((_g179263_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179262_)
                                             (##values-length _g179262_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179263_ 2)))
                                      (error "Context expects 2 values"
                                             _g179263_)))
                                (let ((_%target177426177452%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179262_ 0)))
                                      (_%tl177428177454%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179262_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177428177454%_))
                                      (letrec ((_%loop177429177457%_
                                                (lambda (_%hd177427177460%_
                                                         _%clause177433177462%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd177427177460%_))
                                                      (let ((_%e177430177465%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd177427177460%_))))
                (let ((_%lp-hd177431177468%_
                       (let () (declare (not safe)) (##car _%e177430177465%_)))
                      (_%lp-tl177432177470%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e177430177465%_))))
                  (_%loop177429177457%_
                   _%lp-tl177432177470%_
                   (cons _%lp-hd177431177468%_ _%clause177433177462%_))))
              (let ((_%clause177434177473%_ (reverse _%clause177433177462%_)))
                ((lambda (_%L177476%_)
                   (for-each
                    (lambda (_%clause177489%_)
                      (let* ((_%g177491177502%_
                              (lambda (_%g177492177499%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g177492177499%_))))
                             (_%g177490177540%_
                              (lambda (_%g177492177505%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g177492177505%_))
                                    (let ((_%e177495177507%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g177492177505%_))))
                                      (let ((_%hd177496177510%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e177495177507%_)))
                                            (_%tl177497177512%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e177495177507%_))))
                                        ((lambda (_%L177515%_ _%L177516%_)
                                           (let* ((_%self177528%_
                                                   (list-ref
                                                    _%L177516%_
                                                    _%self-index177094%_))
                                                  (_%receiver177533%_
                                                   (let ((_%$e177530%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L177515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e177530%_
                                                         _%$e177530%_
                                                         _%self177528%_))))
                                             (for-each
                                              (lambda (_%g177535177537%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver177533%_
                                                 _%method-calls175084%_
                                                 _%slot-refs175085%_
                                                 _%g177535177537%_))
                                              _%L177515%_)))
                                         _%tl177497177512%_
                                         _%hd177496177510%_)))
                                    (_%g177491177502%_ _%g177492177505%_)))))
                        (_%g177490177540%_ _%clause177489%_)))
                    (let ((__tmp179264
                           (lambda (_%g177542177545%_ _%g177543177547%_)
                             (cons _%g177542177545%_ _%g177543177547%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179264 '() _%L177476%_))))
                 _%clause177434177473%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop177429177457%_
                                         _%target177426177452%_
                                         '()))
                                      (_%g177420177439%_ _%g177421177442%_)))))
                            (_%g177420177439%_ _%g177421177442%_))))
                    (_%g177420177439%_ _%g177421177442%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177419177550%_
                                                 _%L177330%_))
                                              (if (_%no-specializer?175088%_)
                                                  _%stx174992%_
                                                  (let* ((_%specializer-id177559%_
                                                          (let* ((_%id177553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179265
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L175065%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179265 '"::specialize")))
                         (_%specializer-id177556%_
                          (let ((__tmp179266
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174992%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id177553%_
                             __tmp179266))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id177556%_))
                    _%specializer-id177556%_))
                 (_%$klass177561%_
                  (let ((__tmp179267
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179267)))
                 (_%$method-table177563%_
                  (let ((__tmp179268
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179268)))
                 (_%methods177565%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls175084%_)))
                 (_%$methods177569%_
                  (map (lambda (_%id177567%_)
                         (let ((__tmp179269 (gensym _%id177567%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179269)))
                       _%methods177565%_))
                 (_%_177578%_
                  (for-each
                   (lambda (_%g177570177573%_ _%g177571177575%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls175084%_
                        _%g177570177573%_
                        _%g177571177575%_)))
                   _%methods177565%_
                   _%$methods177569%_))
                 (_%methods-bind177588%_
                  (map (lambda (_%g177580177583%_ _%g177581177585%_)
                         (_%generate-method-bind174994%_
                          _%$klass177561%_
                          _%$method-table177563%_
                          _%g177580177583%_
                          _%g177581177585%_))
                       _%methods177565%_
                       _%$methods177569%_))
                 (_%slots177590%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs175085%_)))
                 (_%$slots177594%_
                  (map (lambda (_%id177592%_)
                         (let ((__tmp179270 (gensym _%id177592%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179270)))
                       _%slots177590%_))
                 (_%_177603%_
                  (for-each
                   (lambda (_%g177595177598%_ _%g177596177600%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs175085%_
                        _%g177595177598%_
                        _%g177596177600%_)))
                   _%slots177590%_
                   _%$slots177594%_))
                 (_%slots-bind177612%_
                  (map (lambda (_%g177604177607%_ _%g177605177609%_)
                         (_%generate-slot-bind174995%_
                          _%$klass177561%_
                          _%g177604177607%_
                          _%g177605177609%_))
                       _%slots177590%_
                       _%$slots177594%_))
                 (_%specializer-lambda-expr177690%_
                  (let* ((_%g177614177628%_
                          (lambda (_%g177615177625%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177615177625%_))))
                         (_%g177613177687%_
                          (lambda (_%g177615177631%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177615177631%_))
                                (let ((_%e177618177633%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177615177631%_))))
                                  (let ((_%hd177619177636%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177618177633%_)))
                                        (_%tl177620177638%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177618177633%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl177620177638%_))
                                        (let ((_%e177621177641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl177620177638%_))))
                                          (let ((_%hd177622177644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e177621177641%_)))
                                                (_%tl177623177646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e177621177641%_))))
                                            ((lambda (_%L177649%_ _%L177650%_)
                                               (let* ((_%self177673%_
                                                       (list-ref
                                                        _%L177650%_
                                                        _%self-index177094%_))
                                                      (_%receiver177678%_
                                                       (let ((_%$e177675%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L177649%_))))
                 (if _%$e177675%_ _%$e177675%_ _%self177673%_)))
              (_%body177684%_
               (map (lambda (_%g177679177681%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver177678%_
                       _%$klass177561%_
                       _%method-calls175084%_
                       _%slot-refs175085%_
                       _%g177679177681%_))
                    _%L177649%_))
              (__tmp179271 (cons '%#lambda (cons _%L177650%_ _%body177684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp179271
                                                  _%L177331%_)))
                                             _%tl177623177646%_
                                             _%hd177622177644%_)))
                                        (_%g177614177628%_
                                         _%g177615177631%_))))
                                (_%g177614177628%_ _%g177615177631%_)))))
                    (_%g177613177687%_ _%L177331%_)))
                 (_%specializer-case-lambda-expr177830%_
                  (let* ((_%g177692177711%_
                          (lambda (_%g177693177708%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177693177708%_))))
                         (_%g177691177827%_
                          (lambda (_%g177693177714%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177693177714%_))
                                (let ((_%e177695177716%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177693177714%_))))
                                  (let ((_%hd177696177719%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177695177716%_)))
                                        (_%tl177697177721%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177695177716%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl177697177721%_))
                                        (let ((_g179272_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl177697177721%_
                                                  '0))))
                                          (begin
                                            (let ((_g179273_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g179272_)
                                                         (##values-length
                                                          _g179272_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g179273_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g179273_)))
                                            (let ((_%target177698177724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179272_
                                                      0)))
                                                  (_%tl177700177726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179272_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl177700177726%_))
                                                  (letrec ((_%loop177701177729%_
                                                            (lambda (_%hd177699177732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause177705177734%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd177699177732%_))
                          (let ((_%e177702177737%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd177699177732%_))))
                            (let ((_%lp-hd177703177740%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177702177737%_)))
                                  (_%lp-tl177704177742%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177702177737%_))))
                              (_%loop177701177729%_
                               _%lp-tl177704177742%_
                               (cons _%lp-hd177703177740%_
                                     _%clause177705177734%_))))
                          (let ((_%clause177706177745%_
                                 (reverse _%clause177705177734%_)))
                            ((lambda (_%L177748%_)
                               (let* ((_%clauses177825%_
                                       (map (lambda (_%clause177762%_)
                                              (let* ((_%g177764177775%_
                                                      (lambda (_%g177765177772%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177765177772%_))))
                                                     (_%g177763177815%_
                                                      (lambda (_%g177765177778%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177765177778%_))
                                                            (let ((_%e177768177780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177765177778%_))))
                      (let ((_%hd177769177783%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177768177780%_)))
                            (_%tl177770177785%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177768177780%_))))
                        ((lambda (_%L177788%_ _%L177789%_)
                           (let* ((_%self177801%_
                                   (list-ref _%L177789%_ _%self-index177094%_))
                                  (_%receiver177806%_
                                   (let ((_%$e177803%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L177788%_))))
                                     (if _%$e177803%_
                                         _%$e177803%_
                                         _%self177801%_)))
                                  (_%body177812%_
                                   (map (lambda (_%g177807177809%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver177806%_
                                           _%$klass177561%_
                                           _%method-calls175084%_
                                           _%slot-refs175085%_
                                           _%g177807177809%_))
                                        _%L177788%_)))
                             (cons _%L177789%_ _%body177812%_)))
                         _%tl177770177785%_
                         _%hd177769177783%_)))
                    (_%g177764177775%_ _%g177765177778%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177763177815%_
                                                 _%clause177762%_)))
                                            (let ((__tmp179274
                                                   (lambda (_%g177817177820%_
                                                            _%g177818177822%_)
                                                     (cons _%g177817177820%_
                                                           _%g177818177822%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp179274
                                               '()
                                               _%L177748%_))))
                                      (__tmp179275
                                       (cons '%#case-lambda
                                             _%clauses177825%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp179275
                                  _%L177330%_)))
                             _%clause177706177745%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop177701177729%_
                                                     _%target177698177724%_
                                                     '()))
                                                  (_%g177692177711%_
                                                   _%g177693177714%_)))))
                                        (_%g177692177711%_
                                         _%g177693177714%_))))
                                (_%g177692177711%_ _%g177693177714%_)))))
                    (_%g177691177827%_ _%L177330%_)))
                 (_%specializer-impl177832%_
                  (let ((__tmp179276
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L176794%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L176793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp179277
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L177332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr177690%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr177830%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179277
                                                _%stx174992%_))
                                             '()))
                                 '())
                           (cons _%L176791%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L176790%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179276 _%stx174992%_)))
                 (_%specializer-impl177834%_
                  (_%generate-specializer-impl174996%_
                   _%$klass177561%_
                   _%$method-table177563%_
                   _%methods-bind177588%_
                   _%slots-bind177612%_
                   _%specializer-impl177832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179279
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L175065%_)))
                                                          (__tmp179278
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id177559%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179279
                                                       '" => "
                                                       __tmp179278))
                                                    (_%generate-specializer-def174997%_
                                                     _%L175065%_
                                                     _%specializer-id177559%_
                                                     _%specializer-impl177834%_))))
                                            _%hd177263177325%_
                                            _%hd177260177317%_
                                            _%hd177257177309%_)
                                           (_%g177239177269%_
                                            _%g177240177272%_))))
                                   (_%g177239177269%_ _%g177240177272%_))
                               (_%g177239177269%_ _%g177240177272%_))
                           (_%g177239177269%_ _%g177240177272%_))))
                   (_%g177239177269%_ _%g177240177272%_))
               (_%g177239177269%_ _%g177240177272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g177239177269%_
                                                _%g177240177272%_))))
                                       (_%g177239177269%_ _%g177240177272%_))))
                               (_%g177239177269%_ _%g177240177272%_))))
                       (_%g177239177269%_ _%g177240177272%_))))
               (_%g177239177269%_ _%g177240177272%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g177238177837%_ _%L176792%_))
                                         _%stx174992%_))))
                             _%hd176890177013%_
                             _%kw-ref176888177034%_
                             _%hd176878177000%_
                             _%hd176869176976%_
                             _%hd176860176952%_)
                            (_%g176834176896%_ _%g176835176899%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176883177018%_
                                                 _%target176880177005%_
                                                 '()))
                                              (_%g176834176896%_
                                               _%g176835176899%_))))
                                      (_%g176834176896%_ _%g176835176899%_)))))
                            (_%g176834176896%_ _%g176835176899%_))
                        (_%g176834176896%_ _%g176835176899%_))
                    (_%g176834176896%_ _%g176835176899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176834176896%_
                                                     _%g176835176899%_))
                                                (_%g176834176896%_
                                                 _%g176835176899%_))
                                            (_%g176834176896%_
                                             _%g176835176899%_))))
                                    (_%g176834176896%_ _%g176835176899%_))))
                            (_%g176834176896%_ _%g176835176899%_))
                        (_%g176834176896%_ _%g176835176899%_))))
                (_%g176834176896%_ _%g176835176899%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176834176896%_
                                                     _%g176835176899%_))
                                                (_%g176834176896%_
                                                 _%g176835176899%_))))
                                        (_%g176834176896%_
                                         _%g176835176899%_))))
                                (_%g176834176896%_ _%g176835176899%_))
                            (_%g176834176896%_ _%g176835176899%_))))
                    (_%g176834176896%_ _%g176835176899%_))
                (_%g176834176896%_ _%g176835176899%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176834176896%_
                                                     _%g176835176899%_))))
                                            (_%g176834176896%_
                                             _%g176835176899%_))))
                                    (_%g176834176896%_ _%g176835176899%_))
                                (_%g176834176896%_ _%g176835176899%_))
                            (_%g176834176896%_ _%g176835176899%_))))
                    (_%g176834176896%_ _%g176835176899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176834176896%_
                                                     _%g176835176899%_))))
                                            (_%g176834176896%_
                                             _%g176835176899%_))
                                        (_%g176834176896%_ _%g176835176899%_))
                                    (_%g176834176896%_ _%g176835176899%_))))
                            (_%g176834176896%_ _%g176835176899%_)))))
                (_%g176833177841%_ _%L176791%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd176667176785%_
                                                    _%hd176664176777%_
                                                    _%hd176661176769%_
                                                    _%hd176658176761%_
                                                    _%hd176640176713%_)
                                                   (_%g176620176673%_
                                                    _%g176621176676%_))))
                                           (_%g176620176673%_
                                            _%g176621176676%_))
                                       (_%g176620176673%_ _%g176621176676%_))
                                   (_%g176620176673%_ _%g176621176676%_))
                               (_%g176620176673%_ _%g176621176676%_))))
                       (_%g176620176673%_ _%g176621176676%_))
                   (_%g176620176673%_ _%g176621176676%_))
               (_%g176620176673%_ _%g176621176676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176620176673%_
                                                _%g176621176676%_))
                                           (_%g176620176673%_
                                            _%g176621176676%_))))
                                   (_%g176620176673%_ _%g176621176676%_))))
                           (_%g176620176673%_ _%g176621176676%_))))
                   (_%g176620176673%_ _%g176621176676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176620176673%_
                                                    _%g176621176676%_))
                                               (_%g176620176673%_
                                                _%g176621176676%_))
                                           (_%g176620176673%_
                                            _%g176621176676%_))))
                                   (_%g176620176673%_ _%g176621176676%_))))
                           (_%g176620176673%_ _%g176621176676%_))
                       (_%g176620176673%_ _%g176621176676%_))))
               (_%g176620176673%_ _%g176621176676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176620176673%_
                                                _%g176621176676%_))))
                                       (_%g176620176673%_ _%g176621176676%_))))
                               (_%g176620176673%_ _%g176621176676%_))
                           (_%g176620176673%_ _%g176621176676%_))
                       (_%g176620176673%_ _%g176621176676%_))))
               (_%g176620176673%_ _%g176621176676%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176619177844%_ _%L175064%_))
                                         _%stx174992%_))))))))
                  (_%__kont178078178079%_ (lambda () _%stx174992%_)))
              (let ((_%__match178107178108%_
                     (lambda (_%e175004175032%_
                              _%hd175005175035%_
                              _%tl175006175037%_
                              _%e175007175040%_
                              _%hd175008175043%_
                              _%tl175009175045%_
                              _%e175010175048%_
                              _%hd175011175051%_
                              _%tl175012175053%_
                              _%e175013175056%_
                              _%hd175014175059%_
                              _%tl175015175061%_)
                       (let ((_%L175064%_ _%hd175014175059%_)
                             (_%L175065%_ _%hd175011175051%_))
                         (if (let ((__tmp179280
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L175065%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp179280))
                             (_%__kont178076178077%_ _%L175064%_ _%L175065%_)
                             (_%__kont178078178079%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx178074178075%_))
                    (let ((_%e175004175032%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx178074178075%_))))
                      (let ((_%tl175006175037%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175004175032%_)))
                            (_%hd175005175035%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175004175032%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175006175037%_))
                            (let ((_%e175007175040%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175006175037%_))))
                              (let ((_%tl175009175045%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175007175040%_)))
                                    (_%hd175008175043%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175007175040%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd175008175043%_))
                                    (let ((_%e175010175048%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd175008175043%_))))
                                      (let ((_%tl175012175053%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175010175048%_)))
                                            (_%hd175011175051%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175010175048%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl175012175053%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl175009175045%_))
                                                (let ((_%e175013175056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl175009175045%_))))
                                                  (let ((_%tl175015175061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e175013175056%_)))
                                                        (_%hd175014175059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e175013175056%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl175015175061%_))
                                                        (_%__match178107178108%_
                                                         _%e175004175032%_
                                                         _%hd175005175035%_
                                                         _%tl175006175037%_
                                                         _%e175007175040%_
                                                         _%hd175008175043%_
                                                         _%tl175009175045%_
                                                         _%e175010175048%_
                                                         _%hd175011175051%_
                                                         _%tl175012175053%_
                                                         _%e175013175056%_
                                                         _%hd175014175059%_
                                                         _%tl175015175061%_)
                                                        (_%__kont178078178079%_))))
                                                (_%__kont178078178079%_))
                                            (_%__kont178078178079%_))))
                                    (_%__kont178078178079%_))))
                            (_%__kont178078178079%_))))
                    (_%__kont178078178079%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self174844%_ _%stx174845%_)
        (let* ((_%__stx178110178111%_ _%stx174845%_)
               (_%g174848174881%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx178110178111%_)))))
          (let ((_%__kont178112178113%_ (lambda (_%L174971%_) _%L174971%_))
                (_%__kont178114178115%_
                 (lambda (_%L174910%_ _%L174911%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self174844%_ _%L174910%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx178110178111%_))
                (let ((_%e174851174931%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx178110178111%_))))
                  (let ((_%tl174853174936%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174851174931%_)))
                        (_%hd174852174934%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174851174931%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174853174936%_))
                        (let ((_%e174854174939%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174853174936%_))))
                          (let ((_%tl174856174944%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174854174939%_)))
                                (_%hd174855174942%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174854174939%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174855174942%_))
                                (let ((_%e174857174947%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174855174942%_))))
                                  (let ((_%tl174859174952%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174857174947%_)))
                                        (_%hd174858174950%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174857174947%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd174858174950%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd174858174950%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174859174952%_))
                                                (let ((_%e174860174955%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174859174952%_))))
                                                  (let ((_%tl174862174960%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174860174955%_)))
                                                        (_%hd174861174958%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174860174955%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174862174960%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174856174944%_))
                                                            (let ((_%e174863174963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174856174944%_))))
                      (let ((_%tl174865174968%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174863174963%_)))
                            (_%hd174864174966%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174863174963%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174865174968%_))
                            (_%__kont178112178113%_ _%hd174861174958%_)
                            (let ()
                              (declare (not safe))
                              (_%g174848174881%_)))))
                    (let () (declare (not safe)) (_%g174848174881%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl174856174944%_))
                    (let ((_%e174874174902%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174856174944%_))))
                      (let ((_%tl174876174907%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174874174902%_)))
                            (_%hd174875174905%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174874174902%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174876174907%_))
                            (_%__kont178114178115%_
                             _%hd174875174905%_
                             _%hd174855174942%_)
                            (let ()
                              (declare (not safe))
                              (_%g174848174881%_)))))
                    (let () (declare (not safe)) (_%g174848174881%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174856174944%_))
                                                    (let ((_%e174874174902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174856174944%_))))
                                                      (let ((_%tl174876174907%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e174874174902%_)))
                    (_%hd174875174905%_
                     (let () (declare (not safe)) (##car _%e174874174902%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174876174907%_))
                    (_%__kont178114178115%_
                     _%hd174875174905%_
                     _%hd174855174942%_)
                    (let () (declare (not safe)) (_%g174848174881%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174848174881%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174856174944%_))
                                                (let ((_%e174874174902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174856174944%_))))
                                                  (let ((_%tl174876174907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174874174902%_)))
                                                        (_%hd174875174905%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174874174902%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174876174907%_))
                                                        (_%__kont178114178115%_
                                                         _%hd174875174905%_
                                                         _%hd174855174942%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g174848174881%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g174848174881%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174856174944%_))
                                            (let ((_%e174874174902%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174856174944%_))))
                                              (let ((_%tl174876174907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174874174902%_)))
                                                    (_%hd174875174905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174874174902%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl174876174907%_))
                                                    (_%__kont178114178115%_
                                                     _%hd174875174905%_
                                                     _%hd174855174942%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174848174881%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g174848174881%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174856174944%_))
                                    (let ((_%e174874174902%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174856174944%_))))
                                      (let ((_%tl174876174907%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174874174902%_)))
                                            (_%hd174875174905%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174874174902%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174876174907%_))
                                            (_%__kont178114178115%_
                                             _%hd174875174905%_
                                             _%hd174855174942%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g174848174881%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g174848174881%_))))))
                        (let () (declare (not safe)) (_%g174848174881%_)))))
                (let () (declare (not safe)) (_%g174848174881%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self174760%_ _%stx174761%_)
        (let* ((_%g174763174784%_
                (lambda (_%g174764174781%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g174764174781%_))))
               (_%g174762174841%_
                (lambda (_%g174764174787%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g174764174787%_))
                      (let ((_%e174768174789%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g174764174787%_))))
                        (let ((_%hd174769174792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174768174789%_)))
                              (_%tl174770174794%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174768174789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl174770174794%_))
                              (let ((_%e174771174797%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl174770174794%_))))
                                (let ((_%hd174772174800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e174771174797%_)))
                                      (_%tl174773174802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e174771174797%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174773174802%_))
                                      (let ((_%e174774174805%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174773174802%_))))
                                        (let ((_%hd174775174808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174774174805%_)))
                                              (_%tl174776174810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174774174805%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl174776174810%_))
                                              (let ((_%e174777174813%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl174776174810%_))))
                                                (let ((_%hd174778174816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e174777174813%_)))
                                                      (_%tl174779174818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e174777174813%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl174779174818%_))
                                                      ((lambda (_%L174821%_
                                                                _%L174822%_
                                                                _%L174823%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self174760%_
                                                            _%L174822%_)))
                                                       _%hd174778174816%_
                                                       _%hd174775174808%_
                                                       _%hd174772174800%_)
                                                      (_%g174763174784%_
                                                       _%g174764174787%_))))
                                              (_%g174763174784%_
                                               _%g174764174787%_))))
                                      (_%g174763174784%_ _%g174764174787%_))))
                              (_%g174763174784%_ _%g174764174787%_))))
                      (_%g174763174784%_ _%g174764174787%_)))))
          (_%g174762174841%_ _%stx174761%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self173721%_ _%stx173722%_)
        (let* ((_%__stx178176178177%_ _%stx173722%_)
               (_%g173730173952%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx178176178177%_)))))
          (let ((_%__kont178178178179%_
                 (lambda (_%L174709%_ _%L174710%_ _%L174711%_ _%L174712%_)
                   (let ((__tmp179282
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173721%_ 'methods)))
                         (__tmp179281
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174710%_))))
                     (declare (not safe))
                     (hash-put! __tmp179282 __tmp179281 '#t))
                   (for-each
                    (lambda (_%g174745174747%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173721%_ _%g174745174747%_)))
                    (let ((__tmp179283
                           (lambda (_%g174749174752%_ _%g174750174754%_)
                             (cons _%g174749174752%_ _%g174750174754%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179283 '() _%L174709%_)))))
                (_%__kont178182178183%_
                 (lambda (_%L174544%_
                          _%L174545%_
                          _%L174546%_
                          _%L174547%_
                          _%L174548%_)
                   (let ((__tmp179285
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173721%_ 'methods)))
                         (__tmp179284
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174545%_))))
                     (declare (not safe))
                     (hash-put! __tmp179285 __tmp179284 '#t))
                   (for-each
                    (lambda (_%g174588174590%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173721%_ _%g174588174590%_)))
                    (let ((__tmp179286
                           (lambda (_%g174592174595%_ _%g174593174597%_)
                             (cons _%g174592174595%_ _%g174593174597%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179286 '() _%L174544%_)))))
                (_%__kont178186178187%_
                 (lambda (_%L174377%_ _%L174378%_ _%L174379%_)
                   (let ((__tmp179288
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173721%_ 'slots)))
                         (__tmp179287
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174377%_))))
                     (declare (not safe))
                     (hash-put! __tmp179288 __tmp179287 '#t))))
                (_%__kont178188178189%_
                 (lambda (_%L174254%_ _%L174255%_ _%L174256%_ _%L174257%_)
                   (let ((__tmp179290
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173721%_ 'slots)))
                         (__tmp179289
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174255%_))))
                     (declare (not safe))
                     (hash-put! __tmp179290 __tmp179289 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173721%_ _%L174254%_))))
                (_%__kont178190178191%_
                 (lambda (_%L174128%_ _%L174129%_)
                   (let* ((_%accessor174151%_
                           (let ((__tmp179291
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L174129%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179291)))
                          (_%klass174153%_
                           (let ((__tmp179292
                                  (##structure-ref
                                   _%accessor174151%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173722%_
                              __tmp179292)))
                          (_%slot174155%_
                           (##structure-ref
                            _%accessor174151%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor174151%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass174153%_
                                    _%slot174155%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass174153%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179294
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173721%_ 'slots)))
                               (__tmp179293
                                (##structure-ref
                                 _%accessor174151%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp179294 __tmp179293 '#t))))))
                (_%__kont178192178193%_
                 (lambda (_%L174028%_ _%L174029%_ _%L174030%_)
                   (let* ((_%mutator174057%_
                           (let ((__tmp179295
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L174030%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179295)))
                          (_%klass174059%_
                           (let ((__tmp179296
                                  (##structure-ref
                                   _%mutator174057%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173722%_
                              __tmp179296)))
                          (_%slot174061%_
                           (##structure-ref
                            _%mutator174057%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator174057%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass174059%_
                                    _%slot174061%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass174059%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179297
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173721%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp179297 _%slot174061%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self173721%_ _%L174028%_)))))
                (_%__kont178194178195%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self173721%_ _%stx173722%_)))))
            (let* ((_%__match178675178676%_
                    (lambda (_%e173924173964%_
                             _%hd173925173967%_
                             _%tl173926173969%_
                             _%e173927173972%_
                             _%hd173928173975%_
                             _%tl173929173977%_
                             _%e173930173980%_
                             _%hd173931173983%_
                             _%tl173932173985%_
                             _%e173933173988%_
                             _%hd173934173991%_
                             _%tl173935173993%_
                             _%e173936173996%_
                             _%hd173937173999%_
                             _%tl173938174001%_
                             _%e173939174004%_
                             _%hd173940174007%_
                             _%tl173941174009%_
                             _%e173942174012%_
                             _%hd173943174015%_
                             _%tl173944174017%_
                             _%e173945174020%_
                             _%hd173946174023%_
                             _%tl173947174025%_)
                      (let ((_%L174028%_ _%hd173946174023%_)
                            (_%L174029%_ _%hd173943174015%_)
                            (_%L174030%_ _%hd173934173991%_))
                        (if (and (let ((__tmp179298
                                        (let ((__tmp179299
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L174030%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179299))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179298
                                    'gxc#!mutator::t))
                                 (let ((__tmp179300
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173721%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174029%_
                                    __tmp179300)))
                            (_%__kont178192178193%_
                             _%L174028%_
                             _%L174029%_
                             _%L174030%_)
                            (_%__kont178194178195%_)))))
                   (_%__match178673178674%_
                    (lambda (_%e173924173964%_
                             _%hd173925173967%_
                             _%tl173926173969%_
                             _%e173927173972%_
                             _%hd173928173975%_
                             _%tl173929173977%_
                             _%e173930173980%_
                             _%hd173931173983%_
                             _%tl173932173985%_
                             _%e173933173988%_
                             _%hd173934173991%_
                             _%tl173935173993%_
                             _%e173936173996%_
                             _%hd173937173999%_
                             _%tl173938174001%_
                             _%e173939174004%_
                             _%hd173940174007%_
                             _%tl173941174009%_
                             _%e173942174012%_
                             _%hd173943174015%_
                             _%tl173944174017%_
                             _%e173945174020%_
                             _%hd173946174023%_
                             _%tl173947174025%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173947174025%_))
                          (_%__match178675178676%_
                           _%e173924173964%_
                           _%hd173925173967%_
                           _%tl173926173969%_
                           _%e173927173972%_
                           _%hd173928173975%_
                           _%tl173929173977%_
                           _%e173930173980%_
                           _%hd173931173983%_
                           _%tl173932173985%_
                           _%e173933173988%_
                           _%hd173934173991%_
                           _%tl173935173993%_
                           _%e173936173996%_
                           _%hd173937173999%_
                           _%tl173938174001%_
                           _%e173939174004%_
                           _%hd173940174007%_
                           _%tl173941174009%_
                           _%e173942174012%_
                           _%hd173943174015%_
                           _%tl173944174017%_
                           _%e173945174020%_
                           _%hd173946174023%_
                           _%tl173947174025%_)
                          (_%__kont178194178195%_))))
                   (_%__match178667178668%_
                    (lambda (_%e173924173964%_
                             _%hd173925173967%_
                             _%tl173926173969%_
                             _%e173927173972%_
                             _%hd173928173975%_
                             _%tl173929173977%_
                             _%e173930173980%_
                             _%hd173931173983%_
                             _%tl173932173985%_
                             _%e173933173988%_
                             _%hd173934173991%_
                             _%tl173935173993%_
                             _%e173936173996%_
                             _%hd173937173999%_
                             _%tl173938174001%_
                             _%e173939174004%_
                             _%hd173940174007%_
                             _%tl173941174009%_
                             _%e173942174012%_
                             _%hd173943174015%_
                             _%tl173944174017%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173938174001%_))
                          (let ((_%e173945174020%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173938174001%_))))
                            (let ((_%tl173947174025%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173945174020%_)))
                                  (_%hd173946174023%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173945174020%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173947174025%_))
                                  (_%__match178675178676%_
                                   _%e173924173964%_
                                   _%hd173925173967%_
                                   _%tl173926173969%_
                                   _%e173927173972%_
                                   _%hd173928173975%_
                                   _%tl173929173977%_
                                   _%e173930173980%_
                                   _%hd173931173983%_
                                   _%tl173932173985%_
                                   _%e173933173988%_
                                   _%hd173934173991%_
                                   _%tl173935173993%_
                                   _%e173936173996%_
                                   _%hd173937173999%_
                                   _%tl173938174001%_
                                   _%e173939174004%_
                                   _%hd173940174007%_
                                   _%tl173941174009%_
                                   _%e173942174012%_
                                   _%hd173943174015%_
                                   _%tl173944174017%_
                                   _%e173945174020%_
                                   _%hd173946174023%_
                                   _%tl173947174025%_)
                                  (_%__kont178194178195%_))))
                          (_%__kont178194178195%_))))
                   (_%__match178613178614%_
                    (lambda (_%e173900174072%_
                             _%hd173901174075%_
                             _%tl173902174077%_
                             _%e173903174080%_
                             _%hd173904174083%_
                             _%tl173905174085%_
                             _%e173906174088%_
                             _%hd173907174091%_
                             _%tl173908174093%_
                             _%e173909174096%_
                             _%hd173910174099%_
                             _%tl173911174101%_
                             _%e173912174104%_
                             _%hd173913174107%_
                             _%tl173914174109%_
                             _%e173915174112%_
                             _%hd173916174115%_
                             _%tl173917174117%_
                             _%e173918174120%_
                             _%hd173919174123%_
                             _%tl173920174125%_)
                      (let ((_%L174128%_ _%hd173919174123%_)
                            (_%L174129%_ _%hd173910174099%_))
                        (if (and (let ((__tmp179301
                                        (let ((__tmp179302
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L174129%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179302))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179301
                                    'gxc#!accessor::t))
                                 (let ((__tmp179303
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173721%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174128%_
                                    __tmp179303)))
                            (_%__kont178190178191%_ _%L174128%_ _%L174129%_)
                            (_%__kont178194178195%_)))))
                   (_%__match178611178612%_
                    (lambda (_%e173900174072%_
                             _%hd173901174075%_
                             _%tl173902174077%_
                             _%e173903174080%_
                             _%hd173904174083%_
                             _%tl173905174085%_
                             _%e173906174088%_
                             _%hd173907174091%_
                             _%tl173908174093%_
                             _%e173909174096%_
                             _%hd173910174099%_
                             _%tl173911174101%_
                             _%e173912174104%_
                             _%hd173913174107%_
                             _%tl173914174109%_
                             _%e173915174112%_
                             _%hd173916174115%_
                             _%tl173917174117%_
                             _%e173918174120%_
                             _%hd173919174123%_
                             _%tl173920174125%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173914174109%_))
                          (_%__match178613178614%_
                           _%e173900174072%_
                           _%hd173901174075%_
                           _%tl173902174077%_
                           _%e173903174080%_
                           _%hd173904174083%_
                           _%tl173905174085%_
                           _%e173906174088%_
                           _%hd173907174091%_
                           _%tl173908174093%_
                           _%e173909174096%_
                           _%hd173910174099%_
                           _%tl173911174101%_
                           _%e173912174104%_
                           _%hd173913174107%_
                           _%tl173914174109%_
                           _%e173915174112%_
                           _%hd173916174115%_
                           _%tl173917174117%_
                           _%e173918174120%_
                           _%hd173919174123%_
                           _%tl173920174125%_)
                          (_%__match178667178668%_
                           _%e173900174072%_
                           _%hd173901174075%_
                           _%tl173902174077%_
                           _%e173903174080%_
                           _%hd173904174083%_
                           _%tl173905174085%_
                           _%e173906174088%_
                           _%hd173907174091%_
                           _%tl173908174093%_
                           _%e173909174096%_
                           _%hd173910174099%_
                           _%tl173911174101%_
                           _%e173912174104%_
                           _%hd173913174107%_
                           _%tl173914174109%_
                           _%e173915174112%_
                           _%hd173916174115%_
                           _%tl173917174117%_
                           _%e173918174120%_
                           _%hd173919174123%_
                           _%tl173920174125%_))))
                   (_%__match178557178558%_
                    (lambda (_%e173865174166%_
                             _%hd173866174169%_
                             _%tl173867174171%_
                             _%e173868174174%_
                             _%hd173869174177%_
                             _%tl173870174179%_
                             _%e173871174182%_
                             _%hd173872174185%_
                             _%tl173873174187%_
                             _%e173874174190%_
                             _%hd173875174193%_
                             _%tl173876174195%_
                             _%e173877174198%_
                             _%hd173878174201%_
                             _%tl173879174203%_
                             _%e173880174206%_
                             _%hd173881174209%_
                             _%tl173882174211%_
                             _%e173883174214%_
                             _%hd173884174217%_
                             _%tl173885174219%_
                             _%e173886174222%_
                             _%hd173887174225%_
                             _%tl173888174227%_
                             _%e173889174230%_
                             _%hd173890174233%_
                             _%tl173891174235%_
                             _%e173892174238%_
                             _%hd173893174241%_
                             _%tl173894174243%_
                             _%e173895174246%_
                             _%hd173896174249%_
                             _%tl173897174251%_)
                      (let ((_%L174254%_ _%hd173896174249%_)
                            (_%L174255%_ _%hd173893174241%_)
                            (_%L174256%_ _%hd173884174217%_)
                            (_%L174257%_ _%hd173875174193%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174257%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174257%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp179304
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173721%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174256%_
                                    __tmp179304)))
                            (_%__kont178188178189%_
                             _%L174254%_
                             _%L174255%_
                             _%L174256%_
                             _%L174257%_)
                            (_%__kont178194178195%_)))))
                   (_%__match178549178550%_
                    (lambda (_%e173865174166%_
                             _%hd173866174169%_
                             _%tl173867174171%_
                             _%e173868174174%_
                             _%hd173869174177%_
                             _%tl173870174179%_
                             _%e173871174182%_
                             _%hd173872174185%_
                             _%tl173873174187%_
                             _%e173874174190%_
                             _%hd173875174193%_
                             _%tl173876174195%_
                             _%e173877174198%_
                             _%hd173878174201%_
                             _%tl173879174203%_
                             _%e173880174206%_
                             _%hd173881174209%_
                             _%tl173882174211%_
                             _%e173883174214%_
                             _%hd173884174217%_
                             _%tl173885174219%_
                             _%e173886174222%_
                             _%hd173887174225%_
                             _%tl173888174227%_
                             _%e173889174230%_
                             _%hd173890174233%_
                             _%tl173891174235%_
                             _%e173892174238%_
                             _%hd173893174241%_
                             _%tl173894174243%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173888174227%_))
                          (let ((_%e173895174246%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173888174227%_))))
                            (let ((_%tl173897174251%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173895174246%_)))
                                  (_%hd173896174249%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173895174246%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173897174251%_))
                                  (_%__match178557178558%_
                                   _%e173865174166%_
                                   _%hd173866174169%_
                                   _%tl173867174171%_
                                   _%e173868174174%_
                                   _%hd173869174177%_
                                   _%tl173870174179%_
                                   _%e173871174182%_
                                   _%hd173872174185%_
                                   _%tl173873174187%_
                                   _%e173874174190%_
                                   _%hd173875174193%_
                                   _%tl173876174195%_
                                   _%e173877174198%_
                                   _%hd173878174201%_
                                   _%tl173879174203%_
                                   _%e173880174206%_
                                   _%hd173881174209%_
                                   _%tl173882174211%_
                                   _%e173883174214%_
                                   _%hd173884174217%_
                                   _%tl173885174219%_
                                   _%e173886174222%_
                                   _%hd173887174225%_
                                   _%tl173888174227%_
                                   _%e173889174230%_
                                   _%hd173890174233%_
                                   _%tl173891174235%_
                                   _%e173892174238%_
                                   _%hd173893174241%_
                                   _%tl173894174243%_
                                   _%e173895174246%_
                                   _%hd173896174249%_
                                   _%tl173897174251%_)
                                  (_%__kont178194178195%_))))
                          (_%__match178673178674%_
                           _%e173865174166%_
                           _%hd173866174169%_
                           _%tl173867174171%_
                           _%e173868174174%_
                           _%hd173869174177%_
                           _%tl173870174179%_
                           _%e173871174182%_
                           _%hd173872174185%_
                           _%tl173873174187%_
                           _%e173874174190%_
                           _%hd173875174193%_
                           _%tl173876174195%_
                           _%e173877174198%_
                           _%hd173878174201%_
                           _%tl173879174203%_
                           _%e173880174206%_
                           _%hd173881174209%_
                           _%tl173882174211%_
                           _%e173883174214%_
                           _%hd173884174217%_
                           _%tl173885174219%_
                           _%e173886174222%_
                           _%hd173887174225%_
                           _%tl173888174227%_))))
                   (_%__match178471178472%_
                    (lambda (_%e173831174297%_
                             _%hd173832174300%_
                             _%tl173833174302%_
                             _%e173834174305%_
                             _%hd173835174308%_
                             _%tl173836174310%_
                             _%e173837174313%_
                             _%hd173838174316%_
                             _%tl173839174318%_
                             _%e173840174321%_
                             _%hd173841174324%_
                             _%tl173842174326%_
                             _%e173843174329%_
                             _%hd173844174332%_
                             _%tl173845174334%_
                             _%e173846174337%_
                             _%hd173847174340%_
                             _%tl173848174342%_
                             _%e173849174345%_
                             _%hd173850174348%_
                             _%tl173851174350%_
                             _%e173852174353%_
                             _%hd173853174356%_
                             _%tl173854174358%_
                             _%e173855174361%_
                             _%hd173856174364%_
                             _%tl173857174366%_
                             _%e173858174369%_
                             _%hd173859174372%_
                             _%tl173860174374%_)
                      (let ((_%L174377%_ _%hd173859174372%_)
                            (_%L174378%_ _%hd173850174348%_)
                            (_%L174379%_ _%hd173841174324%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174379%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174379%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp179305
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173721%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174378%_
                                    __tmp179305)))
                            (_%__kont178186178187%_
                             _%L174377%_
                             _%L174378%_
                             _%L174379%_)
                            (_%__match178675178676%_
                             _%e173831174297%_
                             _%hd173832174300%_
                             _%tl173833174302%_
                             _%e173834174305%_
                             _%hd173835174308%_
                             _%tl173836174310%_
                             _%e173837174313%_
                             _%hd173838174316%_
                             _%tl173839174318%_
                             _%e173840174321%_
                             _%hd173841174324%_
                             _%tl173842174326%_
                             _%e173843174329%_
                             _%hd173844174332%_
                             _%tl173845174334%_
                             _%e173846174337%_
                             _%hd173847174340%_
                             _%tl173848174342%_
                             _%e173849174345%_
                             _%hd173850174348%_
                             _%tl173851174350%_
                             _%e173852174353%_
                             _%hd173853174356%_
                             _%tl173854174358%_)))))
                   (_%__match178469178470%_
                    (lambda (_%e173831174297%_
                             _%hd173832174300%_
                             _%tl173833174302%_
                             _%e173834174305%_
                             _%hd173835174308%_
                             _%tl173836174310%_
                             _%e173837174313%_
                             _%hd173838174316%_
                             _%tl173839174318%_
                             _%e173840174321%_
                             _%hd173841174324%_
                             _%tl173842174326%_
                             _%e173843174329%_
                             _%hd173844174332%_
                             _%tl173845174334%_
                             _%e173846174337%_
                             _%hd173847174340%_
                             _%tl173848174342%_
                             _%e173849174345%_
                             _%hd173850174348%_
                             _%tl173851174350%_
                             _%e173852174353%_
                             _%hd173853174356%_
                             _%tl173854174358%_
                             _%e173855174361%_
                             _%hd173856174364%_
                             _%tl173857174366%_
                             _%e173858174369%_
                             _%hd173859174372%_
                             _%tl173860174374%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173854174358%_))
                          (_%__match178471178472%_
                           _%e173831174297%_
                           _%hd173832174300%_
                           _%tl173833174302%_
                           _%e173834174305%_
                           _%hd173835174308%_
                           _%tl173836174310%_
                           _%e173837174313%_
                           _%hd173838174316%_
                           _%tl173839174318%_
                           _%e173840174321%_
                           _%hd173841174324%_
                           _%tl173842174326%_
                           _%e173843174329%_
                           _%hd173844174332%_
                           _%tl173845174334%_
                           _%e173846174337%_
                           _%hd173847174340%_
                           _%tl173848174342%_
                           _%e173849174345%_
                           _%hd173850174348%_
                           _%tl173851174350%_
                           _%e173852174353%_
                           _%hd173853174356%_
                           _%tl173854174358%_
                           _%e173855174361%_
                           _%hd173856174364%_
                           _%tl173857174366%_
                           _%e173858174369%_
                           _%hd173859174372%_
                           _%tl173860174374%_)
                          (_%__match178549178550%_
                           _%e173831174297%_
                           _%hd173832174300%_
                           _%tl173833174302%_
                           _%e173834174305%_
                           _%hd173835174308%_
                           _%tl173836174310%_
                           _%e173837174313%_
                           _%hd173838174316%_
                           _%tl173839174318%_
                           _%e173840174321%_
                           _%hd173841174324%_
                           _%tl173842174326%_
                           _%e173843174329%_
                           _%hd173844174332%_
                           _%tl173845174334%_
                           _%e173846174337%_
                           _%hd173847174340%_
                           _%tl173848174342%_
                           _%e173849174345%_
                           _%hd173850174348%_
                           _%tl173851174350%_
                           _%e173852174353%_
                           _%hd173853174356%_
                           _%tl173854174358%_
                           _%e173855174361%_
                           _%hd173856174364%_
                           _%tl173857174366%_
                           _%e173858174369%_
                           _%hd173859174372%_
                           _%tl173860174374%_))))
                   (_%__match178459178460%_
                    (lambda (_%e173831174297%_
                             _%hd173832174300%_
                             _%tl173833174302%_
                             _%e173834174305%_
                             _%hd173835174308%_
                             _%tl173836174310%_
                             _%e173837174313%_
                             _%hd173838174316%_
                             _%tl173839174318%_
                             _%e173840174321%_
                             _%hd173841174324%_
                             _%tl173842174326%_
                             _%e173843174329%_
                             _%hd173844174332%_
                             _%tl173845174334%_
                             _%e173846174337%_
                             _%hd173847174340%_
                             _%tl173848174342%_
                             _%e173849174345%_
                             _%hd173850174348%_
                             _%tl173851174350%_
                             _%e173852174353%_
                             _%hd173853174356%_
                             _%tl173854174358%_
                             _%e173855174361%_
                             _%hd173856174364%_
                             _%tl173857174366%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd173856174364%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173857174366%_))
                              (let ((_%e173858174369%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173857174366%_))))
                                (let ((_%tl173860174374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173858174369%_)))
                                      (_%hd173859174372%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173858174369%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173860174374%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl173854174358%_))
                                          (_%__match178471178472%_
                                           _%e173831174297%_
                                           _%hd173832174300%_
                                           _%tl173833174302%_
                                           _%e173834174305%_
                                           _%hd173835174308%_
                                           _%tl173836174310%_
                                           _%e173837174313%_
                                           _%hd173838174316%_
                                           _%tl173839174318%_
                                           _%e173840174321%_
                                           _%hd173841174324%_
                                           _%tl173842174326%_
                                           _%e173843174329%_
                                           _%hd173844174332%_
                                           _%tl173845174334%_
                                           _%e173846174337%_
                                           _%hd173847174340%_
                                           _%tl173848174342%_
                                           _%e173849174345%_
                                           _%hd173850174348%_
                                           _%tl173851174350%_
                                           _%e173852174353%_
                                           _%hd173853174356%_
                                           _%tl173854174358%_
                                           _%e173855174361%_
                                           _%hd173856174364%_
                                           _%tl173857174366%_
                                           _%e173858174369%_
                                           _%hd173859174372%_
                                           _%tl173860174374%_)
                                          (_%__match178549178550%_
                                           _%e173831174297%_
                                           _%hd173832174300%_
                                           _%tl173833174302%_
                                           _%e173834174305%_
                                           _%hd173835174308%_
                                           _%tl173836174310%_
                                           _%e173837174313%_
                                           _%hd173838174316%_
                                           _%tl173839174318%_
                                           _%e173840174321%_
                                           _%hd173841174324%_
                                           _%tl173842174326%_
                                           _%e173843174329%_
                                           _%hd173844174332%_
                                           _%tl173845174334%_
                                           _%e173846174337%_
                                           _%hd173847174340%_
                                           _%tl173848174342%_
                                           _%e173849174345%_
                                           _%hd173850174348%_
                                           _%tl173851174350%_
                                           _%e173852174353%_
                                           _%hd173853174356%_
                                           _%tl173854174358%_
                                           _%e173855174361%_
                                           _%hd173856174364%_
                                           _%tl173857174366%_
                                           _%e173858174369%_
                                           _%hd173859174372%_
                                           _%tl173860174374%_))
                                      (_%__match178673178674%_
                                       _%e173831174297%_
                                       _%hd173832174300%_
                                       _%tl173833174302%_
                                       _%e173834174305%_
                                       _%hd173835174308%_
                                       _%tl173836174310%_
                                       _%e173837174313%_
                                       _%hd173838174316%_
                                       _%tl173839174318%_
                                       _%e173840174321%_
                                       _%hd173841174324%_
                                       _%tl173842174326%_
                                       _%e173843174329%_
                                       _%hd173844174332%_
                                       _%tl173845174334%_
                                       _%e173846174337%_
                                       _%hd173847174340%_
                                       _%tl173848174342%_
                                       _%e173849174345%_
                                       _%hd173850174348%_
                                       _%tl173851174350%_
                                       _%e173852174353%_
                                       _%hd173853174356%_
                                       _%tl173854174358%_))))
                              (_%__match178673178674%_
                               _%e173831174297%_
                               _%hd173832174300%_
                               _%tl173833174302%_
                               _%e173834174305%_
                               _%hd173835174308%_
                               _%tl173836174310%_
                               _%e173837174313%_
                               _%hd173838174316%_
                               _%tl173839174318%_
                               _%e173840174321%_
                               _%hd173841174324%_
                               _%tl173842174326%_
                               _%e173843174329%_
                               _%hd173844174332%_
                               _%tl173845174334%_
                               _%e173846174337%_
                               _%hd173847174340%_
                               _%tl173848174342%_
                               _%e173849174345%_
                               _%hd173850174348%_
                               _%tl173851174350%_
                               _%e173852174353%_
                               _%hd173853174356%_
                               _%tl173854174358%_))
                          (_%__match178673178674%_
                           _%e173831174297%_
                           _%hd173832174300%_
                           _%tl173833174302%_
                           _%e173834174305%_
                           _%hd173835174308%_
                           _%tl173836174310%_
                           _%e173837174313%_
                           _%hd173838174316%_
                           _%tl173839174318%_
                           _%e173840174321%_
                           _%hd173841174324%_
                           _%tl173842174326%_
                           _%e173843174329%_
                           _%hd173844174332%_
                           _%tl173845174334%_
                           _%e173846174337%_
                           _%hd173847174340%_
                           _%tl173848174342%_
                           _%e173849174345%_
                           _%hd173850174348%_
                           _%tl173851174350%_
                           _%e173852174353%_
                           _%hd173853174356%_
                           _%tl173854174358%_))))
                   (_%__match178391178392%_
                    (lambda (_%e173780174416%_
                             _%hd173781174419%_
                             _%tl173782174421%_
                             _%e173783174424%_
                             _%hd173784174427%_
                             _%tl173785174429%_
                             _%e173786174432%_
                             _%hd173787174435%_
                             _%tl173788174437%_
                             _%e173789174440%_
                             _%hd173790174443%_
                             _%tl173791174445%_
                             _%e173792174448%_
                             _%hd173793174451%_
                             _%tl173794174453%_
                             _%e173795174456%_
                             _%hd173796174459%_
                             _%tl173797174461%_
                             _%e173798174464%_
                             _%hd173799174467%_
                             _%tl173800174469%_
                             _%e173801174472%_
                             _%hd173802174475%_
                             _%tl173803174477%_
                             _%e173804174480%_
                             _%hd173805174483%_
                             _%tl173806174485%_
                             _%e173807174488%_
                             _%hd173808174491%_
                             _%tl173809174493%_
                             _%e173810174496%_
                             _%hd173811174499%_
                             _%tl173812174501%_
                             _%e173813174504%_
                             _%hd173814174507%_
                             _%tl173815174509%_
                             _%e173816174512%_
                             _%hd173817174515%_
                             _%tl173818174517%_
                             _%__splice178184178185%_
                             _%target173819174520%_
                             _%tl173821174522%_)
                      (letrec ((_%loop173822174525%_
                                (lambda (_%hd173820174528%_
                                         _%args173826174530%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173820174528%_))
                                      (let ((_%e173823174533%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173820174528%_))))
                                        (let ((_%lp-tl173825174538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173823174533%_)))
                                              (_%lp-hd173824174536%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173823174533%_))))
                                          (_%loop173822174525%_
                                           _%lp-tl173825174538%_
                                           (cons _%lp-hd173824174536%_
                                                 _%args173826174530%_))))
                                      (let ((_%args173827174541%_
                                             (reverse _%args173826174530%_)))
                                        (let ((_%L174544%_
                                               _%args173827174541%_)
                                              (_%L174545%_ _%hd173817174515%_)
                                              (_%L174546%_ _%hd173808174491%_)
                                              (_%L174547%_ _%hd173799174467%_)
                                              (_%L174548%_ _%hd173790174443%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174548%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174547%_
                                                      'call-method))
                                                   (let ((__tmp179306
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173721%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174546%_
                                                      __tmp179306)))
                                              (_%__kont178182178183%_
                                               _%L174544%_
                                               _%L174545%_
                                               _%L174546%_
                                               _%L174547%_
                                               _%L174548%_)
                                              (_%__kont178194178195%_))))))))
                        (_%loop173822174525%_ _%target173819174520%_ '()))))
                   (_%__match178349178350%_
                    (lambda (_%e173780174416%_
                             _%hd173781174419%_
                             _%tl173782174421%_
                             _%e173783174424%_
                             _%hd173784174427%_
                             _%tl173785174429%_
                             _%e173786174432%_
                             _%hd173787174435%_
                             _%tl173788174437%_
                             _%e173789174440%_
                             _%hd173790174443%_
                             _%tl173791174445%_
                             _%e173792174448%_
                             _%hd173793174451%_
                             _%tl173794174453%_
                             _%e173795174456%_
                             _%hd173796174459%_
                             _%tl173797174461%_
                             _%e173798174464%_
                             _%hd173799174467%_
                             _%tl173800174469%_
                             _%e173801174472%_
                             _%hd173802174475%_
                             _%tl173803174477%_
                             _%e173804174480%_
                             _%hd173805174483%_
                             _%tl173806174485%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd173805174483%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173806174485%_))
                              (let ((_%e173807174488%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173806174485%_))))
                                (let ((_%tl173809174493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173807174488%_)))
                                      (_%hd173808174491%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173807174488%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173809174493%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173803174477%_))
                                          (let ((_%e173810174496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173803174477%_))))
                                            (let ((_%tl173812174501%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173810174496%_)))
                                                  (_%hd173811174499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173810174496%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173811174499%_))
                                                  (let ((_%e173813174504%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173811174499%_))))
                                                    (let ((_%tl173815174509%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173813174504%_)))
                                                          (_%hd173814174507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173813174504%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd173814174507%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd173814174507%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173815174509%_))
                          (let ((_%e173816174512%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173815174509%_))))
                            (let ((_%tl173818174517%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173816174512%_)))
                                  (_%hd173817174515%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173816174512%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173818174517%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl173812174501%_))
                                      (let ((_%__splice178184178185%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl173812174501%_
                                                '0))))
                                        (let ((_%tl173821174522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178184178185%_
                                                  '1)))
                                              (_%target173819174520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178184178185%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173821174522%_))
                                              (_%__match178391178392%_
                                               _%e173780174416%_
                                               _%hd173781174419%_
                                               _%tl173782174421%_
                                               _%e173783174424%_
                                               _%hd173784174427%_
                                               _%tl173785174429%_
                                               _%e173786174432%_
                                               _%hd173787174435%_
                                               _%tl173788174437%_
                                               _%e173789174440%_
                                               _%hd173790174443%_
                                               _%tl173791174445%_
                                               _%e173792174448%_
                                               _%hd173793174451%_
                                               _%tl173794174453%_
                                               _%e173795174456%_
                                               _%hd173796174459%_
                                               _%tl173797174461%_
                                               _%e173798174464%_
                                               _%hd173799174467%_
                                               _%tl173800174469%_
                                               _%e173801174472%_
                                               _%hd173802174475%_
                                               _%tl173803174477%_
                                               _%e173804174480%_
                                               _%hd173805174483%_
                                               _%tl173806174485%_
                                               _%e173807174488%_
                                               _%hd173808174491%_
                                               _%tl173809174493%_
                                               _%e173810174496%_
                                               _%hd173811174499%_
                                               _%tl173812174501%_
                                               _%e173813174504%_
                                               _%hd173814174507%_
                                               _%tl173815174509%_
                                               _%e173816174512%_
                                               _%hd173817174515%_
                                               _%tl173818174517%_
                                               _%__splice178184178185%_
                                               _%target173819174520%_
                                               _%tl173821174522%_)
                                              (_%__kont178194178195%_))))
                                      (_%__kont178194178195%_))
                                  (_%__kont178194178195%_))))
                          (_%__kont178194178195%_))
                      (_%__kont178194178195%_))
                  (_%__kont178194178195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178194178195%_))))
                                          (_%__match178673178674%_
                                           _%e173780174416%_
                                           _%hd173781174419%_
                                           _%tl173782174421%_
                                           _%e173783174424%_
                                           _%hd173784174427%_
                                           _%tl173785174429%_
                                           _%e173786174432%_
                                           _%hd173787174435%_
                                           _%tl173788174437%_
                                           _%e173789174440%_
                                           _%hd173790174443%_
                                           _%tl173791174445%_
                                           _%e173792174448%_
                                           _%hd173793174451%_
                                           _%tl173794174453%_
                                           _%e173795174456%_
                                           _%hd173796174459%_
                                           _%tl173797174461%_
                                           _%e173798174464%_
                                           _%hd173799174467%_
                                           _%tl173800174469%_
                                           _%e173801174472%_
                                           _%hd173802174475%_
                                           _%tl173803174477%_))
                                      (_%__match178673178674%_
                                       _%e173780174416%_
                                       _%hd173781174419%_
                                       _%tl173782174421%_
                                       _%e173783174424%_
                                       _%hd173784174427%_
                                       _%tl173785174429%_
                                       _%e173786174432%_
                                       _%hd173787174435%_
                                       _%tl173788174437%_
                                       _%e173789174440%_
                                       _%hd173790174443%_
                                       _%tl173791174445%_
                                       _%e173792174448%_
                                       _%hd173793174451%_
                                       _%tl173794174453%_
                                       _%e173795174456%_
                                       _%hd173796174459%_
                                       _%tl173797174461%_
                                       _%e173798174464%_
                                       _%hd173799174467%_
                                       _%tl173800174469%_
                                       _%e173801174472%_
                                       _%hd173802174475%_
                                       _%tl173803174477%_))))
                              (_%__match178673178674%_
                               _%e173780174416%_
                               _%hd173781174419%_
                               _%tl173782174421%_
                               _%e173783174424%_
                               _%hd173784174427%_
                               _%tl173785174429%_
                               _%e173786174432%_
                               _%hd173787174435%_
                               _%tl173788174437%_
                               _%e173789174440%_
                               _%hd173790174443%_
                               _%tl173791174445%_
                               _%e173792174448%_
                               _%hd173793174451%_
                               _%tl173794174453%_
                               _%e173795174456%_
                               _%hd173796174459%_
                               _%tl173797174461%_
                               _%e173798174464%_
                               _%hd173799174467%_
                               _%tl173800174469%_
                               _%e173801174472%_
                               _%hd173802174475%_
                               _%tl173803174477%_))
                          (_%__match178459178460%_
                           _%e173780174416%_
                           _%hd173781174419%_
                           _%tl173782174421%_
                           _%e173783174424%_
                           _%hd173784174427%_
                           _%tl173785174429%_
                           _%e173786174432%_
                           _%hd173787174435%_
                           _%tl173788174437%_
                           _%e173789174440%_
                           _%hd173790174443%_
                           _%tl173791174445%_
                           _%e173792174448%_
                           _%hd173793174451%_
                           _%tl173794174453%_
                           _%e173795174456%_
                           _%hd173796174459%_
                           _%tl173797174461%_
                           _%e173798174464%_
                           _%hd173799174467%_
                           _%tl173800174469%_
                           _%e173801174472%_
                           _%hd173802174475%_
                           _%tl173803174477%_
                           _%e173804174480%_
                           _%hd173805174483%_
                           _%tl173806174485%_))))
                   (_%__match178281178282%_
                    (lambda (_%e173736174605%_
                             _%hd173737174608%_
                             _%tl173738174610%_
                             _%e173739174613%_
                             _%hd173740174616%_
                             _%tl173741174618%_
                             _%e173742174621%_
                             _%hd173743174624%_
                             _%tl173744174626%_
                             _%e173745174629%_
                             _%hd173746174632%_
                             _%tl173747174634%_
                             _%e173748174637%_
                             _%hd173749174640%_
                             _%tl173750174642%_
                             _%e173751174645%_
                             _%hd173752174648%_
                             _%tl173753174650%_
                             _%e173754174653%_
                             _%hd173755174656%_
                             _%tl173756174658%_
                             _%e173757174661%_
                             _%hd173758174664%_
                             _%tl173759174666%_
                             _%e173760174669%_
                             _%hd173761174672%_
                             _%tl173762174674%_
                             _%e173763174677%_
                             _%hd173764174680%_
                             _%tl173765174682%_
                             _%__splice178180178181%_
                             _%target173766174685%_
                             _%tl173768174687%_)
                      (letrec ((_%loop173769174690%_
                                (lambda (_%hd173767174693%_
                                         _%args173773174695%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173767174693%_))
                                      (let ((_%e173770174698%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173767174693%_))))
                                        (let ((_%lp-tl173772174703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173770174698%_)))
                                              (_%lp-hd173771174701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173770174698%_))))
                                          (_%loop173769174690%_
                                           _%lp-tl173772174703%_
                                           (cons _%lp-hd173771174701%_
                                                 _%args173773174695%_))))
                                      (let ((_%args173774174706%_
                                             (reverse _%args173773174695%_)))
                                        (let ((_%L174709%_
                                               _%args173774174706%_)
                                              (_%L174710%_ _%hd173764174680%_)
                                              (_%L174711%_ _%hd173755174656%_)
                                              (_%L174712%_ _%hd173746174632%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174712%_
                                                      'call-method))
                                                   (let ((__tmp179307
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173721%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174711%_
                                                      __tmp179307)))
                                              (_%__kont178178178179%_
                                               _%L174709%_
                                               _%L174710%_
                                               _%L174711%_
                                               _%L174712%_)
                                              (_%__match178469178470%_
                                               _%e173736174605%_
                                               _%hd173737174608%_
                                               _%tl173738174610%_
                                               _%e173739174613%_
                                               _%hd173740174616%_
                                               _%tl173741174618%_
                                               _%e173742174621%_
                                               _%hd173743174624%_
                                               _%tl173744174626%_
                                               _%e173745174629%_
                                               _%hd173746174632%_
                                               _%tl173747174634%_
                                               _%e173748174637%_
                                               _%hd173749174640%_
                                               _%tl173750174642%_
                                               _%e173751174645%_
                                               _%hd173752174648%_
                                               _%tl173753174650%_
                                               _%e173754174653%_
                                               _%hd173755174656%_
                                               _%tl173756174658%_
                                               _%e173757174661%_
                                               _%hd173758174664%_
                                               _%tl173759174666%_
                                               _%e173760174669%_
                                               _%hd173761174672%_
                                               _%tl173762174674%_
                                               _%e173763174677%_
                                               _%hd173764174680%_
                                               _%tl173765174682%_))))))))
                        (_%loop173769174690%_ _%target173766174685%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx178176178177%_))
                  (let ((_%e173736174605%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx178176178177%_))))
                    (let ((_%tl173738174610%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173736174605%_)))
                          (_%hd173737174608%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173736174605%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173738174610%_))
                          (let ((_%e173739174613%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173738174610%_))))
                            (let ((_%tl173741174618%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173739174613%_)))
                                  (_%hd173740174616%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173739174613%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd173740174616%_))
                                  (let ((_%e173742174621%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd173740174616%_))))
                                    (let ((_%tl173744174626%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e173742174621%_)))
                                          (_%hd173743174624%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e173742174621%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd173743174624%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd173743174624%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl173744174626%_))
                                                  (let ((_%e173745174629%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl173744174626%_))))
                                                    (let ((_%tl173747174634%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173745174629%_)))
                                                          (_%hd173746174632%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173745174629%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl173747174634%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl173741174618%_))
                      (let ((_%e173748174637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl173741174618%_))))
                        (let ((_%tl173750174642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173748174637%_)))
                              (_%hd173749174640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173748174637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd173749174640%_))
                              (let ((_%e173751174645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd173749174640%_))))
                                (let ((_%tl173753174650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173751174645%_)))
                                      (_%hd173752174648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173751174645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd173752174648%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd173752174648%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173753174650%_))
                                              (let ((_%e173754174653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173753174650%_))))
                                                (let ((_%tl173756174658%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173754174653%_)))
                                                      (_%hd173755174656%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173754174653%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173756174658%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl173750174642%_))
                                                          (let ((_%e173757174661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl173750174642%_))))
                    (let ((_%tl173759174666%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173757174661%_)))
                          (_%hd173758174664%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173757174661%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd173758174664%_))
                          (let ((_%e173760174669%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd173758174664%_))))
                            (let ((_%tl173762174674%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173760174669%_)))
                                  (_%hd173761174672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173760174669%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd173761174672%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd173761174672%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173762174674%_))
                                          (let ((_%e173763174677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173762174674%_))))
                                            (let ((_%tl173765174682%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173763174677%_)))
                                                  (_%hd173764174680%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173763174677%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl173765174682%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl173759174666%_))
                                                      (let ((_%__splice178180178181%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl173759174666%_
                        '0))))
                (let ((_%tl173768174687%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice178180178181%_ '1)))
                      (_%target173766174685%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice178180178181%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl173768174687%_))
                      (_%__match178281178282%_
                       _%e173736174605%_
                       _%hd173737174608%_
                       _%tl173738174610%_
                       _%e173739174613%_
                       _%hd173740174616%_
                       _%tl173741174618%_
                       _%e173742174621%_
                       _%hd173743174624%_
                       _%tl173744174626%_
                       _%e173745174629%_
                       _%hd173746174632%_
                       _%tl173747174634%_
                       _%e173748174637%_
                       _%hd173749174640%_
                       _%tl173750174642%_
                       _%e173751174645%_
                       _%hd173752174648%_
                       _%tl173753174650%_
                       _%e173754174653%_
                       _%hd173755174656%_
                       _%tl173756174658%_
                       _%e173757174661%_
                       _%hd173758174664%_
                       _%tl173759174666%_
                       _%e173760174669%_
                       _%hd173761174672%_
                       _%tl173762174674%_
                       _%e173763174677%_
                       _%hd173764174680%_
                       _%tl173765174682%_
                       _%__splice178180178181%_
                       _%target173766174685%_
                       _%tl173768174687%_)
                      (_%__match178469178470%_
                       _%e173736174605%_
                       _%hd173737174608%_
                       _%tl173738174610%_
                       _%e173739174613%_
                       _%hd173740174616%_
                       _%tl173741174618%_
                       _%e173742174621%_
                       _%hd173743174624%_
                       _%tl173744174626%_
                       _%e173745174629%_
                       _%hd173746174632%_
                       _%tl173747174634%_
                       _%e173748174637%_
                       _%hd173749174640%_
                       _%tl173750174642%_
                       _%e173751174645%_
                       _%hd173752174648%_
                       _%tl173753174650%_
                       _%e173754174653%_
                       _%hd173755174656%_
                       _%tl173756174658%_
                       _%e173757174661%_
                       _%hd173758174664%_
                       _%tl173759174666%_
                       _%e173760174669%_
                       _%hd173761174672%_
                       _%tl173762174674%_
                       _%e173763174677%_
                       _%hd173764174680%_
                       _%tl173765174682%_))))
              (_%__match178469178470%_
               _%e173736174605%_
               _%hd173737174608%_
               _%tl173738174610%_
               _%e173739174613%_
               _%hd173740174616%_
               _%tl173741174618%_
               _%e173742174621%_
               _%hd173743174624%_
               _%tl173744174626%_
               _%e173745174629%_
               _%hd173746174632%_
               _%tl173747174634%_
               _%e173748174637%_
               _%hd173749174640%_
               _%tl173750174642%_
               _%e173751174645%_
               _%hd173752174648%_
               _%tl173753174650%_
               _%e173754174653%_
               _%hd173755174656%_
               _%tl173756174658%_
               _%e173757174661%_
               _%hd173758174664%_
               _%tl173759174666%_
               _%e173760174669%_
               _%hd173761174672%_
               _%tl173762174674%_
               _%e173763174677%_
               _%hd173764174680%_
               _%tl173765174682%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match178673178674%_
                                                   _%e173736174605%_
                                                   _%hd173737174608%_
                                                   _%tl173738174610%_
                                                   _%e173739174613%_
                                                   _%hd173740174616%_
                                                   _%tl173741174618%_
                                                   _%e173742174621%_
                                                   _%hd173743174624%_
                                                   _%tl173744174626%_
                                                   _%e173745174629%_
                                                   _%hd173746174632%_
                                                   _%tl173747174634%_
                                                   _%e173748174637%_
                                                   _%hd173749174640%_
                                                   _%tl173750174642%_
                                                   _%e173751174645%_
                                                   _%hd173752174648%_
                                                   _%tl173753174650%_
                                                   _%e173754174653%_
                                                   _%hd173755174656%_
                                                   _%tl173756174658%_
                                                   _%e173757174661%_
                                                   _%hd173758174664%_
                                                   _%tl173759174666%_))))
                                          (_%__match178673178674%_
                                           _%e173736174605%_
                                           _%hd173737174608%_
                                           _%tl173738174610%_
                                           _%e173739174613%_
                                           _%hd173740174616%_
                                           _%tl173741174618%_
                                           _%e173742174621%_
                                           _%hd173743174624%_
                                           _%tl173744174626%_
                                           _%e173745174629%_
                                           _%hd173746174632%_
                                           _%tl173747174634%_
                                           _%e173748174637%_
                                           _%hd173749174640%_
                                           _%tl173750174642%_
                                           _%e173751174645%_
                                           _%hd173752174648%_
                                           _%tl173753174650%_
                                           _%e173754174653%_
                                           _%hd173755174656%_
                                           _%tl173756174658%_
                                           _%e173757174661%_
                                           _%hd173758174664%_
                                           _%tl173759174666%_))
                                      (_%__match178349178350%_
                                       _%e173736174605%_
                                       _%hd173737174608%_
                                       _%tl173738174610%_
                                       _%e173739174613%_
                                       _%hd173740174616%_
                                       _%tl173741174618%_
                                       _%e173742174621%_
                                       _%hd173743174624%_
                                       _%tl173744174626%_
                                       _%e173745174629%_
                                       _%hd173746174632%_
                                       _%tl173747174634%_
                                       _%e173748174637%_
                                       _%hd173749174640%_
                                       _%tl173750174642%_
                                       _%e173751174645%_
                                       _%hd173752174648%_
                                       _%tl173753174650%_
                                       _%e173754174653%_
                                       _%hd173755174656%_
                                       _%tl173756174658%_
                                       _%e173757174661%_
                                       _%hd173758174664%_
                                       _%tl173759174666%_
                                       _%e173760174669%_
                                       _%hd173761174672%_
                                       _%tl173762174674%_))
                                  (_%__match178673178674%_
                                   _%e173736174605%_
                                   _%hd173737174608%_
                                   _%tl173738174610%_
                                   _%e173739174613%_
                                   _%hd173740174616%_
                                   _%tl173741174618%_
                                   _%e173742174621%_
                                   _%hd173743174624%_
                                   _%tl173744174626%_
                                   _%e173745174629%_
                                   _%hd173746174632%_
                                   _%tl173747174634%_
                                   _%e173748174637%_
                                   _%hd173749174640%_
                                   _%tl173750174642%_
                                   _%e173751174645%_
                                   _%hd173752174648%_
                                   _%tl173753174650%_
                                   _%e173754174653%_
                                   _%hd173755174656%_
                                   _%tl173756174658%_
                                   _%e173757174661%_
                                   _%hd173758174664%_
                                   _%tl173759174666%_))))
                          (_%__match178673178674%_
                           _%e173736174605%_
                           _%hd173737174608%_
                           _%tl173738174610%_
                           _%e173739174613%_
                           _%hd173740174616%_
                           _%tl173741174618%_
                           _%e173742174621%_
                           _%hd173743174624%_
                           _%tl173744174626%_
                           _%e173745174629%_
                           _%hd173746174632%_
                           _%tl173747174634%_
                           _%e173748174637%_
                           _%hd173749174640%_
                           _%tl173750174642%_
                           _%e173751174645%_
                           _%hd173752174648%_
                           _%tl173753174650%_
                           _%e173754174653%_
                           _%hd173755174656%_
                           _%tl173756174658%_
                           _%e173757174661%_
                           _%hd173758174664%_
                           _%tl173759174666%_))))
                  (_%__match178611178612%_
                   _%e173736174605%_
                   _%hd173737174608%_
                   _%tl173738174610%_
                   _%e173739174613%_
                   _%hd173740174616%_
                   _%tl173741174618%_
                   _%e173742174621%_
                   _%hd173743174624%_
                   _%tl173744174626%_
                   _%e173745174629%_
                   _%hd173746174632%_
                   _%tl173747174634%_
                   _%e173748174637%_
                   _%hd173749174640%_
                   _%tl173750174642%_
                   _%e173751174645%_
                   _%hd173752174648%_
                   _%tl173753174650%_
                   _%e173754174653%_
                   _%hd173755174656%_
                   _%tl173756174658%_))
              (_%__kont178194178195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont178194178195%_))
                                          (_%__kont178194178195%_))
                                      (_%__kont178194178195%_))))
                              (_%__kont178194178195%_))))
                      (_%__kont178194178195%_))
                  (_%__kont178194178195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178194178195%_))
                                              (_%__kont178194178195%_))
                                          (_%__kont178194178195%_))))
                                  (_%__kont178194178195%_))))
                          (_%__kont178194178195%_))))
                  (_%__kont178194178195%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self172660%_ _%stx172661%_)
        (letrec ((_%force-e172663%_
                  (lambda (_%target173719%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target173719%_ '()))
                                      '()))))))
          (let* ((_%__stx178678178679%_ _%stx172661%_)
                 (_%g172671172893%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx178678178679%_)))))
            (let ((_%__kont178680178681%_
                   (lambda (_%L173665%_ _%L173666%_ _%L173667%_ _%L173668%_)
                     (let ((_%$method173713%_
                            (let ((__tmp179309
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172660%_ 'methods)))
                                  (__tmp179308
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173666%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179309 __tmp179308)))
                           (_%args173714%_
                            (map (lambda (_%g173701173703%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172660%_
                                      _%g173701173703%_)))
                                 (let ((__tmp179310
                                        (lambda (_%g173705173708%_
                                                 _%g173706173710%_)
                                          (cons _%g173705173708%_
                                                _%g173706173710%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179310 '() _%L173665%_)))))
                       (let ((__tmp179311
                              (cons '%#call
                                    (cons (_%force-e172663%_ _%$method173713%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172660%_
                                                               'receiver))
                                                            '()))
                                                _%args173714%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179311 _%stx172661%_)))))
                  (_%__kont178684178685%_
                   (lambda (_%L173497%_
                            _%L173498%_
                            _%L173499%_
                            _%L173500%_
                            _%L173501%_)
                     (let ((_%$method173553%_
                            (let ((__tmp179313
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172660%_ 'methods)))
                                  (__tmp179312
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173498%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179313 __tmp179312)))
                           (_%args173554%_
                            (map (lambda (_%g173541173543%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172660%_
                                      _%g173541173543%_)))
                                 (let ((__tmp179314
                                        (lambda (_%g173545173548%_
                                                 _%g173546173550%_)
                                          (cons _%g173545173548%_
                                                _%g173546173550%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179314 '() _%L173497%_)))))
                       (let ((__tmp179315
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e172663%_
                                                 _%$method173553%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172660%_ 'receiver))
                          '()))
              _%args173554%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179315 _%stx172661%_)))))
                  (_%__kont178688178689%_
                   (lambda (_%L173328%_ _%L173329%_ _%L173330%_)
                     (let* ((_%$field173362%_
                             (let ((__tmp179317
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self172660%_ 'slots)))
                                   (__tmp179316
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L173328%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp179317 __tmp179316)))
                            (__tmp179318
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self172660%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field173362%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self172660%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp179318 _%stx172661%_))))
                  (_%__kont178690178691%_
                   (lambda (_%L173202%_ _%L173203%_ _%L173204%_ _%L173205%_)
                     (let ((_%$field173240%_
                            (let ((__tmp179320
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172660%_ 'slots)))
                                  (__tmp179319
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173203%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179320 __tmp179319)))
                           (_%expr173241%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self172660%_ _%L173202%_))))
                       (let ((__tmp179321
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self172660%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field173240%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172660%_ 'receiver))
                          '()))
              (cons _%expr173241%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179321 _%stx172661%_)))))
                  (_%__kont178692178693%_
                   (lambda (_%L173074%_ _%L173075%_)
                     (let* ((_%accessor173097%_
                             (let ((__tmp179322
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L173075%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179322)))
                            (_%klass173099%_
                             (let ((__tmp179323
                                    (##structure-ref
                                     _%accessor173097%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172661%_
                                __tmp179323)))
                            (_%slot173101%_
                             (##structure-ref
                              _%accessor173097%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor173097%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass173099%_
                                      _%slot173101%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass173099%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx172661%_
                           (let* ((_%$field173107%_
                                   (let ((__tmp179324
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172660%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179324 _%slot173101%_)))
                                  (__tmp179325
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172660%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field173107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172660%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179325
                              _%stx172661%_))))))
                  (_%__kont178694178695%_
                   (lambda (_%L172969%_ _%L172970%_ _%L172971%_)
                     (let* ((_%mutator172999%_
                             (let ((__tmp179326
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172971%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179326)))
                            (_%klass173001%_
                             (let ((__tmp179327
                                    (##structure-ref
                                     _%mutator172999%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172661%_
                                __tmp179327)))
                            (_%slot173003%_
                             (##structure-ref
                              _%mutator172999%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr173005%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self172660%_ _%L172969%_))))
                       (if (if (##structure-ref
                                _%mutator172999%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass173001%_
                                      _%slot173003%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass173001%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp179328
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L172971%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L172970%_
                                                                '()))
                                                    (cons _%expr173005%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179328 _%stx172661%_))
                           (let* ((_%$field173011%_
                                   (let ((__tmp179329
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172660%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179329 _%slot173003%_)))
                                  (__tmp179330
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172660%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field173011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172660%_ 'receiver))
                               '()))
                   (cons _%expr173005%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179330
                              _%stx172661%_))))))
                  (_%__kont178696178697%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self172660%_ _%stx172661%_)))))
              (let* ((_%__match179177179178%_
                      (lambda (_%e172865172905%_
                               _%hd172866172908%_
                               _%tl172867172910%_
                               _%e172868172913%_
                               _%hd172869172916%_
                               _%tl172870172918%_
                               _%e172871172921%_
                               _%hd172872172924%_
                               _%tl172873172926%_
                               _%e172874172929%_
                               _%hd172875172932%_
                               _%tl172876172934%_
                               _%e172877172937%_
                               _%hd172878172940%_
                               _%tl172879172942%_
                               _%e172880172945%_
                               _%hd172881172948%_
                               _%tl172882172950%_
                               _%e172883172953%_
                               _%hd172884172956%_
                               _%tl172885172958%_
                               _%e172886172961%_
                               _%hd172887172964%_
                               _%tl172888172966%_)
                        (let ((_%L172969%_ _%hd172887172964%_)
                              (_%L172970%_ _%hd172884172956%_)
                              (_%L172971%_ _%hd172875172932%_))
                          (if (and (let ((__tmp179331
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172660%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172970%_
                                      __tmp179331))
                                   (let ((__tmp179332
                                          (let ((__tmp179333
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172971%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179333))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179332
                                      'gxc#!mutator::t)))
                              (_%__kont178694178695%_
                               _%L172969%_
                               _%L172970%_
                               _%L172971%_)
                              (_%__kont178696178697%_)))))
                     (_%__match179175179176%_
                      (lambda (_%e172865172905%_
                               _%hd172866172908%_
                               _%tl172867172910%_
                               _%e172868172913%_
                               _%hd172869172916%_
                               _%tl172870172918%_
                               _%e172871172921%_
                               _%hd172872172924%_
                               _%tl172873172926%_
                               _%e172874172929%_
                               _%hd172875172932%_
                               _%tl172876172934%_
                               _%e172877172937%_
                               _%hd172878172940%_
                               _%tl172879172942%_
                               _%e172880172945%_
                               _%hd172881172948%_
                               _%tl172882172950%_
                               _%e172883172953%_
                               _%hd172884172956%_
                               _%tl172885172958%_
                               _%e172886172961%_
                               _%hd172887172964%_
                               _%tl172888172966%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172888172966%_))
                            (_%__match179177179178%_
                             _%e172865172905%_
                             _%hd172866172908%_
                             _%tl172867172910%_
                             _%e172868172913%_
                             _%hd172869172916%_
                             _%tl172870172918%_
                             _%e172871172921%_
                             _%hd172872172924%_
                             _%tl172873172926%_
                             _%e172874172929%_
                             _%hd172875172932%_
                             _%tl172876172934%_
                             _%e172877172937%_
                             _%hd172878172940%_
                             _%tl172879172942%_
                             _%e172880172945%_
                             _%hd172881172948%_
                             _%tl172882172950%_
                             _%e172883172953%_
                             _%hd172884172956%_
                             _%tl172885172958%_
                             _%e172886172961%_
                             _%hd172887172964%_
                             _%tl172888172966%_)
                            (_%__kont178696178697%_))))
                     (_%__match179169179170%_
                      (lambda (_%e172865172905%_
                               _%hd172866172908%_
                               _%tl172867172910%_
                               _%e172868172913%_
                               _%hd172869172916%_
                               _%tl172870172918%_
                               _%e172871172921%_
                               _%hd172872172924%_
                               _%tl172873172926%_
                               _%e172874172929%_
                               _%hd172875172932%_
                               _%tl172876172934%_
                               _%e172877172937%_
                               _%hd172878172940%_
                               _%tl172879172942%_
                               _%e172880172945%_
                               _%hd172881172948%_
                               _%tl172882172950%_
                               _%e172883172953%_
                               _%hd172884172956%_
                               _%tl172885172958%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172879172942%_))
                            (let ((_%e172886172961%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172879172942%_))))
                              (let ((_%tl172888172966%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172886172961%_)))
                                    (_%hd172887172964%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172886172961%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172888172966%_))
                                    (_%__match179177179178%_
                                     _%e172865172905%_
                                     _%hd172866172908%_
                                     _%tl172867172910%_
                                     _%e172868172913%_
                                     _%hd172869172916%_
                                     _%tl172870172918%_
                                     _%e172871172921%_
                                     _%hd172872172924%_
                                     _%tl172873172926%_
                                     _%e172874172929%_
                                     _%hd172875172932%_
                                     _%tl172876172934%_
                                     _%e172877172937%_
                                     _%hd172878172940%_
                                     _%tl172879172942%_
                                     _%e172880172945%_
                                     _%hd172881172948%_
                                     _%tl172882172950%_
                                     _%e172883172953%_
                                     _%hd172884172956%_
                                     _%tl172885172958%_
                                     _%e172886172961%_
                                     _%hd172887172964%_
                                     _%tl172888172966%_)
                                    (_%__kont178696178697%_))))
                            (_%__kont178696178697%_))))
                     (_%__match179115179116%_
                      (lambda (_%e172841173018%_
                               _%hd172842173021%_
                               _%tl172843173023%_
                               _%e172844173026%_
                               _%hd172845173029%_
                               _%tl172846173031%_
                               _%e172847173034%_
                               _%hd172848173037%_
                               _%tl172849173039%_
                               _%e172850173042%_
                               _%hd172851173045%_
                               _%tl172852173047%_
                               _%e172853173050%_
                               _%hd172854173053%_
                               _%tl172855173055%_
                               _%e172856173058%_
                               _%hd172857173061%_
                               _%tl172858173063%_
                               _%e172859173066%_
                               _%hd172860173069%_
                               _%tl172861173071%_)
                        (let ((_%L173074%_ _%hd172860173069%_)
                              (_%L173075%_ _%hd172851173045%_))
                          (if (and (let ((__tmp179334
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172660%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173074%_
                                      __tmp179334))
                                   (let ((__tmp179335
                                          (let ((__tmp179336
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L173075%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179336))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179335
                                      'gxc#!accessor::t)))
                              (_%__kont178692178693%_ _%L173074%_ _%L173075%_)
                              (_%__kont178696178697%_)))))
                     (_%__match179113179114%_
                      (lambda (_%e172841173018%_
                               _%hd172842173021%_
                               _%tl172843173023%_
                               _%e172844173026%_
                               _%hd172845173029%_
                               _%tl172846173031%_
                               _%e172847173034%_
                               _%hd172848173037%_
                               _%tl172849173039%_
                               _%e172850173042%_
                               _%hd172851173045%_
                               _%tl172852173047%_
                               _%e172853173050%_
                               _%hd172854173053%_
                               _%tl172855173055%_
                               _%e172856173058%_
                               _%hd172857173061%_
                               _%tl172858173063%_
                               _%e172859173066%_
                               _%hd172860173069%_
                               _%tl172861173071%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172855173055%_))
                            (_%__match179115179116%_
                             _%e172841173018%_
                             _%hd172842173021%_
                             _%tl172843173023%_
                             _%e172844173026%_
                             _%hd172845173029%_
                             _%tl172846173031%_
                             _%e172847173034%_
                             _%hd172848173037%_
                             _%tl172849173039%_
                             _%e172850173042%_
                             _%hd172851173045%_
                             _%tl172852173047%_
                             _%e172853173050%_
                             _%hd172854173053%_
                             _%tl172855173055%_
                             _%e172856173058%_
                             _%hd172857173061%_
                             _%tl172858173063%_
                             _%e172859173066%_
                             _%hd172860173069%_
                             _%tl172861173071%_)
                            (_%__match179169179170%_
                             _%e172841173018%_
                             _%hd172842173021%_
                             _%tl172843173023%_
                             _%e172844173026%_
                             _%hd172845173029%_
                             _%tl172846173031%_
                             _%e172847173034%_
                             _%hd172848173037%_
                             _%tl172849173039%_
                             _%e172850173042%_
                             _%hd172851173045%_
                             _%tl172852173047%_
                             _%e172853173050%_
                             _%hd172854173053%_
                             _%tl172855173055%_
                             _%e172856173058%_
                             _%hd172857173061%_
                             _%tl172858173063%_
                             _%e172859173066%_
                             _%hd172860173069%_
                             _%tl172861173071%_))))
                     (_%__match179059179060%_
                      (lambda (_%e172806173114%_
                               _%hd172807173117%_
                               _%tl172808173119%_
                               _%e172809173122%_
                               _%hd172810173125%_
                               _%tl172811173127%_
                               _%e172812173130%_
                               _%hd172813173133%_
                               _%tl172814173135%_
                               _%e172815173138%_
                               _%hd172816173141%_
                               _%tl172817173143%_
                               _%e172818173146%_
                               _%hd172819173149%_
                               _%tl172820173151%_
                               _%e172821173154%_
                               _%hd172822173157%_
                               _%tl172823173159%_
                               _%e172824173162%_
                               _%hd172825173165%_
                               _%tl172826173167%_
                               _%e172827173170%_
                               _%hd172828173173%_
                               _%tl172829173175%_
                               _%e172830173178%_
                               _%hd172831173181%_
                               _%tl172832173183%_
                               _%e172833173186%_
                               _%hd172834173189%_
                               _%tl172835173191%_
                               _%e172836173194%_
                               _%hd172837173197%_
                               _%tl172838173199%_)
                        (let ((_%L173202%_ _%hd172837173197%_)
                              (_%L173203%_ _%hd172834173189%_)
                              (_%L173204%_ _%hd172825173165%_)
                              (_%L173205%_ _%hd172816173141%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173205%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173205%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp179337
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172660%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173204%_
                                      __tmp179337)))
                              (_%__kont178690178691%_
                               _%L173202%_
                               _%L173203%_
                               _%L173204%_
                               _%L173205%_)
                              (_%__kont178696178697%_)))))
                     (_%__match179051179052%_
                      (lambda (_%e172806173114%_
                               _%hd172807173117%_
                               _%tl172808173119%_
                               _%e172809173122%_
                               _%hd172810173125%_
                               _%tl172811173127%_
                               _%e172812173130%_
                               _%hd172813173133%_
                               _%tl172814173135%_
                               _%e172815173138%_
                               _%hd172816173141%_
                               _%tl172817173143%_
                               _%e172818173146%_
                               _%hd172819173149%_
                               _%tl172820173151%_
                               _%e172821173154%_
                               _%hd172822173157%_
                               _%tl172823173159%_
                               _%e172824173162%_
                               _%hd172825173165%_
                               _%tl172826173167%_
                               _%e172827173170%_
                               _%hd172828173173%_
                               _%tl172829173175%_
                               _%e172830173178%_
                               _%hd172831173181%_
                               _%tl172832173183%_
                               _%e172833173186%_
                               _%hd172834173189%_
                               _%tl172835173191%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172829173175%_))
                            (let ((_%e172836173194%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172829173175%_))))
                              (let ((_%tl172838173199%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172836173194%_)))
                                    (_%hd172837173197%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172836173194%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172838173199%_))
                                    (_%__match179059179060%_
                                     _%e172806173114%_
                                     _%hd172807173117%_
                                     _%tl172808173119%_
                                     _%e172809173122%_
                                     _%hd172810173125%_
                                     _%tl172811173127%_
                                     _%e172812173130%_
                                     _%hd172813173133%_
                                     _%tl172814173135%_
                                     _%e172815173138%_
                                     _%hd172816173141%_
                                     _%tl172817173143%_
                                     _%e172818173146%_
                                     _%hd172819173149%_
                                     _%tl172820173151%_
                                     _%e172821173154%_
                                     _%hd172822173157%_
                                     _%tl172823173159%_
                                     _%e172824173162%_
                                     _%hd172825173165%_
                                     _%tl172826173167%_
                                     _%e172827173170%_
                                     _%hd172828173173%_
                                     _%tl172829173175%_
                                     _%e172830173178%_
                                     _%hd172831173181%_
                                     _%tl172832173183%_
                                     _%e172833173186%_
                                     _%hd172834173189%_
                                     _%tl172835173191%_
                                     _%e172836173194%_
                                     _%hd172837173197%_
                                     _%tl172838173199%_)
                                    (_%__kont178696178697%_))))
                            (_%__match179175179176%_
                             _%e172806173114%_
                             _%hd172807173117%_
                             _%tl172808173119%_
                             _%e172809173122%_
                             _%hd172810173125%_
                             _%tl172811173127%_
                             _%e172812173130%_
                             _%hd172813173133%_
                             _%tl172814173135%_
                             _%e172815173138%_
                             _%hd172816173141%_
                             _%tl172817173143%_
                             _%e172818173146%_
                             _%hd172819173149%_
                             _%tl172820173151%_
                             _%e172821173154%_
                             _%hd172822173157%_
                             _%tl172823173159%_
                             _%e172824173162%_
                             _%hd172825173165%_
                             _%tl172826173167%_
                             _%e172827173170%_
                             _%hd172828173173%_
                             _%tl172829173175%_))))
                     (_%__match178973178974%_
                      (lambda (_%e172772173248%_
                               _%hd172773173251%_
                               _%tl172774173253%_
                               _%e172775173256%_
                               _%hd172776173259%_
                               _%tl172777173261%_
                               _%e172778173264%_
                               _%hd172779173267%_
                               _%tl172780173269%_
                               _%e172781173272%_
                               _%hd172782173275%_
                               _%tl172783173277%_
                               _%e172784173280%_
                               _%hd172785173283%_
                               _%tl172786173285%_
                               _%e172787173288%_
                               _%hd172788173291%_
                               _%tl172789173293%_
                               _%e172790173296%_
                               _%hd172791173299%_
                               _%tl172792173301%_
                               _%e172793173304%_
                               _%hd172794173307%_
                               _%tl172795173309%_
                               _%e172796173312%_
                               _%hd172797173315%_
                               _%tl172798173317%_
                               _%e172799173320%_
                               _%hd172800173323%_
                               _%tl172801173325%_)
                        (let ((_%L173328%_ _%hd172800173323%_)
                              (_%L173329%_ _%hd172791173299%_)
                              (_%L173330%_ _%hd172782173275%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173330%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173330%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp179338
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172660%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173329%_
                                      __tmp179338)))
                              (_%__kont178688178689%_
                               _%L173328%_
                               _%L173329%_
                               _%L173330%_)
                              (_%__match179177179178%_
                               _%e172772173248%_
                               _%hd172773173251%_
                               _%tl172774173253%_
                               _%e172775173256%_
                               _%hd172776173259%_
                               _%tl172777173261%_
                               _%e172778173264%_
                               _%hd172779173267%_
                               _%tl172780173269%_
                               _%e172781173272%_
                               _%hd172782173275%_
                               _%tl172783173277%_
                               _%e172784173280%_
                               _%hd172785173283%_
                               _%tl172786173285%_
                               _%e172787173288%_
                               _%hd172788173291%_
                               _%tl172789173293%_
                               _%e172790173296%_
                               _%hd172791173299%_
                               _%tl172792173301%_
                               _%e172793173304%_
                               _%hd172794173307%_
                               _%tl172795173309%_)))))
                     (_%__match178971178972%_
                      (lambda (_%e172772173248%_
                               _%hd172773173251%_
                               _%tl172774173253%_
                               _%e172775173256%_
                               _%hd172776173259%_
                               _%tl172777173261%_
                               _%e172778173264%_
                               _%hd172779173267%_
                               _%tl172780173269%_
                               _%e172781173272%_
                               _%hd172782173275%_
                               _%tl172783173277%_
                               _%e172784173280%_
                               _%hd172785173283%_
                               _%tl172786173285%_
                               _%e172787173288%_
                               _%hd172788173291%_
                               _%tl172789173293%_
                               _%e172790173296%_
                               _%hd172791173299%_
                               _%tl172792173301%_
                               _%e172793173304%_
                               _%hd172794173307%_
                               _%tl172795173309%_
                               _%e172796173312%_
                               _%hd172797173315%_
                               _%tl172798173317%_
                               _%e172799173320%_
                               _%hd172800173323%_
                               _%tl172801173325%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172795173309%_))
                            (_%__match178973178974%_
                             _%e172772173248%_
                             _%hd172773173251%_
                             _%tl172774173253%_
                             _%e172775173256%_
                             _%hd172776173259%_
                             _%tl172777173261%_
                             _%e172778173264%_
                             _%hd172779173267%_
                             _%tl172780173269%_
                             _%e172781173272%_
                             _%hd172782173275%_
                             _%tl172783173277%_
                             _%e172784173280%_
                             _%hd172785173283%_
                             _%tl172786173285%_
                             _%e172787173288%_
                             _%hd172788173291%_
                             _%tl172789173293%_
                             _%e172790173296%_
                             _%hd172791173299%_
                             _%tl172792173301%_
                             _%e172793173304%_
                             _%hd172794173307%_
                             _%tl172795173309%_
                             _%e172796173312%_
                             _%hd172797173315%_
                             _%tl172798173317%_
                             _%e172799173320%_
                             _%hd172800173323%_
                             _%tl172801173325%_)
                            (_%__match179051179052%_
                             _%e172772173248%_
                             _%hd172773173251%_
                             _%tl172774173253%_
                             _%e172775173256%_
                             _%hd172776173259%_
                             _%tl172777173261%_
                             _%e172778173264%_
                             _%hd172779173267%_
                             _%tl172780173269%_
                             _%e172781173272%_
                             _%hd172782173275%_
                             _%tl172783173277%_
                             _%e172784173280%_
                             _%hd172785173283%_
                             _%tl172786173285%_
                             _%e172787173288%_
                             _%hd172788173291%_
                             _%tl172789173293%_
                             _%e172790173296%_
                             _%hd172791173299%_
                             _%tl172792173301%_
                             _%e172793173304%_
                             _%hd172794173307%_
                             _%tl172795173309%_
                             _%e172796173312%_
                             _%hd172797173315%_
                             _%tl172798173317%_
                             _%e172799173320%_
                             _%hd172800173323%_
                             _%tl172801173325%_))))
                     (_%__match178961178962%_
                      (lambda (_%e172772173248%_
                               _%hd172773173251%_
                               _%tl172774173253%_
                               _%e172775173256%_
                               _%hd172776173259%_
                               _%tl172777173261%_
                               _%e172778173264%_
                               _%hd172779173267%_
                               _%tl172780173269%_
                               _%e172781173272%_
                               _%hd172782173275%_
                               _%tl172783173277%_
                               _%e172784173280%_
                               _%hd172785173283%_
                               _%tl172786173285%_
                               _%e172787173288%_
                               _%hd172788173291%_
                               _%tl172789173293%_
                               _%e172790173296%_
                               _%hd172791173299%_
                               _%tl172792173301%_
                               _%e172793173304%_
                               _%hd172794173307%_
                               _%tl172795173309%_
                               _%e172796173312%_
                               _%hd172797173315%_
                               _%tl172798173317%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd172797173315%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172798173317%_))
                                (let ((_%e172799173320%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172798173317%_))))
                                  (let ((_%tl172801173325%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172799173320%_)))
                                        (_%hd172800173323%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172799173320%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172801173325%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172795173309%_))
                                            (_%__match178973178974%_
                                             _%e172772173248%_
                                             _%hd172773173251%_
                                             _%tl172774173253%_
                                             _%e172775173256%_
                                             _%hd172776173259%_
                                             _%tl172777173261%_
                                             _%e172778173264%_
                                             _%hd172779173267%_
                                             _%tl172780173269%_
                                             _%e172781173272%_
                                             _%hd172782173275%_
                                             _%tl172783173277%_
                                             _%e172784173280%_
                                             _%hd172785173283%_
                                             _%tl172786173285%_
                                             _%e172787173288%_
                                             _%hd172788173291%_
                                             _%tl172789173293%_
                                             _%e172790173296%_
                                             _%hd172791173299%_
                                             _%tl172792173301%_
                                             _%e172793173304%_
                                             _%hd172794173307%_
                                             _%tl172795173309%_
                                             _%e172796173312%_
                                             _%hd172797173315%_
                                             _%tl172798173317%_
                                             _%e172799173320%_
                                             _%hd172800173323%_
                                             _%tl172801173325%_)
                                            (_%__match179051179052%_
                                             _%e172772173248%_
                                             _%hd172773173251%_
                                             _%tl172774173253%_
                                             _%e172775173256%_
                                             _%hd172776173259%_
                                             _%tl172777173261%_
                                             _%e172778173264%_
                                             _%hd172779173267%_
                                             _%tl172780173269%_
                                             _%e172781173272%_
                                             _%hd172782173275%_
                                             _%tl172783173277%_
                                             _%e172784173280%_
                                             _%hd172785173283%_
                                             _%tl172786173285%_
                                             _%e172787173288%_
                                             _%hd172788173291%_
                                             _%tl172789173293%_
                                             _%e172790173296%_
                                             _%hd172791173299%_
                                             _%tl172792173301%_
                                             _%e172793173304%_
                                             _%hd172794173307%_
                                             _%tl172795173309%_
                                             _%e172796173312%_
                                             _%hd172797173315%_
                                             _%tl172798173317%_
                                             _%e172799173320%_
                                             _%hd172800173323%_
                                             _%tl172801173325%_))
                                        (_%__match179175179176%_
                                         _%e172772173248%_
                                         _%hd172773173251%_
                                         _%tl172774173253%_
                                         _%e172775173256%_
                                         _%hd172776173259%_
                                         _%tl172777173261%_
                                         _%e172778173264%_
                                         _%hd172779173267%_
                                         _%tl172780173269%_
                                         _%e172781173272%_
                                         _%hd172782173275%_
                                         _%tl172783173277%_
                                         _%e172784173280%_
                                         _%hd172785173283%_
                                         _%tl172786173285%_
                                         _%e172787173288%_
                                         _%hd172788173291%_
                                         _%tl172789173293%_
                                         _%e172790173296%_
                                         _%hd172791173299%_
                                         _%tl172792173301%_
                                         _%e172793173304%_
                                         _%hd172794173307%_
                                         _%tl172795173309%_))))
                                (_%__match179175179176%_
                                 _%e172772173248%_
                                 _%hd172773173251%_
                                 _%tl172774173253%_
                                 _%e172775173256%_
                                 _%hd172776173259%_
                                 _%tl172777173261%_
                                 _%e172778173264%_
                                 _%hd172779173267%_
                                 _%tl172780173269%_
                                 _%e172781173272%_
                                 _%hd172782173275%_
                                 _%tl172783173277%_
                                 _%e172784173280%_
                                 _%hd172785173283%_
                                 _%tl172786173285%_
                                 _%e172787173288%_
                                 _%hd172788173291%_
                                 _%tl172789173293%_
                                 _%e172790173296%_
                                 _%hd172791173299%_
                                 _%tl172792173301%_
                                 _%e172793173304%_
                                 _%hd172794173307%_
                                 _%tl172795173309%_))
                            (_%__match179175179176%_
                             _%e172772173248%_
                             _%hd172773173251%_
                             _%tl172774173253%_
                             _%e172775173256%_
                             _%hd172776173259%_
                             _%tl172777173261%_
                             _%e172778173264%_
                             _%hd172779173267%_
                             _%tl172780173269%_
                             _%e172781173272%_
                             _%hd172782173275%_
                             _%tl172783173277%_
                             _%e172784173280%_
                             _%hd172785173283%_
                             _%tl172786173285%_
                             _%e172787173288%_
                             _%hd172788173291%_
                             _%tl172789173293%_
                             _%e172790173296%_
                             _%hd172791173299%_
                             _%tl172792173301%_
                             _%e172793173304%_
                             _%hd172794173307%_
                             _%tl172795173309%_))))
                     (_%__match178893178894%_
                      (lambda (_%e172721173369%_
                               _%hd172722173372%_
                               _%tl172723173374%_
                               _%e172724173377%_
                               _%hd172725173380%_
                               _%tl172726173382%_
                               _%e172727173385%_
                               _%hd172728173388%_
                               _%tl172729173390%_
                               _%e172730173393%_
                               _%hd172731173396%_
                               _%tl172732173398%_
                               _%e172733173401%_
                               _%hd172734173404%_
                               _%tl172735173406%_
                               _%e172736173409%_
                               _%hd172737173412%_
                               _%tl172738173414%_
                               _%e172739173417%_
                               _%hd172740173420%_
                               _%tl172741173422%_
                               _%e172742173425%_
                               _%hd172743173428%_
                               _%tl172744173430%_
                               _%e172745173433%_
                               _%hd172746173436%_
                               _%tl172747173438%_
                               _%e172748173441%_
                               _%hd172749173444%_
                               _%tl172750173446%_
                               _%e172751173449%_
                               _%hd172752173452%_
                               _%tl172753173454%_
                               _%e172754173457%_
                               _%hd172755173460%_
                               _%tl172756173462%_
                               _%e172757173465%_
                               _%hd172758173468%_
                               _%tl172759173470%_
                               _%__splice178686178687%_
                               _%target172760173473%_
                               _%tl172762173475%_)
                        (letrec ((_%loop172763173478%_
                                  (lambda (_%hd172761173481%_
                                           _%args172767173483%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172761173481%_))
                                        (let ((_%e172764173486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172761173481%_))))
                                          (let ((_%lp-tl172766173491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172764173486%_)))
                                                (_%lp-hd172765173489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172764173486%_))))
                                            (_%loop172763173478%_
                                             _%lp-tl172766173491%_
                                             (cons _%lp-hd172765173489%_
                                                   _%args172767173483%_))))
                                        (let ((_%args172768173494%_
                                               (reverse _%args172767173483%_)))
                                          (let ((_%L173497%_
                                                 _%args172768173494%_)
                                                (_%L173498%_
                                                 _%hd172758173468%_)
                                                (_%L173499%_
                                                 _%hd172749173444%_)
                                                (_%L173500%_
                                                 _%hd172740173420%_)
                                                (_%L173501%_
                                                 _%hd172731173396%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173501%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173500%_
                                                        'call-method))
                                                     (let ((__tmp179339
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172660%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173499%_
                                                        __tmp179339)))
                                                (_%__kont178684178685%_
                                                 _%L173497%_
                                                 _%L173498%_
                                                 _%L173499%_
                                                 _%L173500%_
                                                 _%L173501%_)
                                                (_%__kont178696178697%_))))))))
                          (_%loop172763173478%_ _%target172760173473%_ '()))))
                     (_%__match178851178852%_
                      (lambda (_%e172721173369%_
                               _%hd172722173372%_
                               _%tl172723173374%_
                               _%e172724173377%_
                               _%hd172725173380%_
                               _%tl172726173382%_
                               _%e172727173385%_
                               _%hd172728173388%_
                               _%tl172729173390%_
                               _%e172730173393%_
                               _%hd172731173396%_
                               _%tl172732173398%_
                               _%e172733173401%_
                               _%hd172734173404%_
                               _%tl172735173406%_
                               _%e172736173409%_
                               _%hd172737173412%_
                               _%tl172738173414%_
                               _%e172739173417%_
                               _%hd172740173420%_
                               _%tl172741173422%_
                               _%e172742173425%_
                               _%hd172743173428%_
                               _%tl172744173430%_
                               _%e172745173433%_
                               _%hd172746173436%_
                               _%tl172747173438%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd172746173436%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172747173438%_))
                                (let ((_%e172748173441%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172747173438%_))))
                                  (let ((_%tl172750173446%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172748173441%_)))
                                        (_%hd172749173444%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172748173441%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172750173446%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172744173430%_))
                                            (let ((_%e172751173449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172744173430%_))))
                                              (let ((_%tl172753173454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172751173449%_)))
                                                    (_%hd172752173452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172751173449%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd172752173452%_))
                                                    (let ((_%e172754173457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd172752173452%_))))
                                                      (let ((_%tl172756173462%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172754173457%_)))
                    (_%hd172755173460%_
                     (let () (declare (not safe)) (##car _%e172754173457%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd172755173460%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd172755173460%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172756173462%_))
                            (let ((_%e172757173465%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172756173462%_))))
                              (let ((_%tl172759173470%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172757173465%_)))
                                    (_%hd172758173468%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172757173465%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172759173470%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl172753173454%_))
                                        (let ((_%__splice178686178687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl172753173454%_
                                                  '0))))
                                          (let ((_%tl172762173475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178686178687%_
                                                    '1)))
                                                (_%target172760173473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178686178687%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl172762173475%_))
                                                (_%__match178893178894%_
                                                 _%e172721173369%_
                                                 _%hd172722173372%_
                                                 _%tl172723173374%_
                                                 _%e172724173377%_
                                                 _%hd172725173380%_
                                                 _%tl172726173382%_
                                                 _%e172727173385%_
                                                 _%hd172728173388%_
                                                 _%tl172729173390%_
                                                 _%e172730173393%_
                                                 _%hd172731173396%_
                                                 _%tl172732173398%_
                                                 _%e172733173401%_
                                                 _%hd172734173404%_
                                                 _%tl172735173406%_
                                                 _%e172736173409%_
                                                 _%hd172737173412%_
                                                 _%tl172738173414%_
                                                 _%e172739173417%_
                                                 _%hd172740173420%_
                                                 _%tl172741173422%_
                                                 _%e172742173425%_
                                                 _%hd172743173428%_
                                                 _%tl172744173430%_
                                                 _%e172745173433%_
                                                 _%hd172746173436%_
                                                 _%tl172747173438%_
                                                 _%e172748173441%_
                                                 _%hd172749173444%_
                                                 _%tl172750173446%_
                                                 _%e172751173449%_
                                                 _%hd172752173452%_
                                                 _%tl172753173454%_
                                                 _%e172754173457%_
                                                 _%hd172755173460%_
                                                 _%tl172756173462%_
                                                 _%e172757173465%_
                                                 _%hd172758173468%_
                                                 _%tl172759173470%_
                                                 _%__splice178686178687%_
                                                 _%target172760173473%_
                                                 _%tl172762173475%_)
                                                (_%__kont178696178697%_))))
                                        (_%__kont178696178697%_))
                                    (_%__kont178696178697%_))))
                            (_%__kont178696178697%_))
                        (_%__kont178696178697%_))
                    (_%__kont178696178697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178696178697%_))))
                                            (_%__match179175179176%_
                                             _%e172721173369%_
                                             _%hd172722173372%_
                                             _%tl172723173374%_
                                             _%e172724173377%_
                                             _%hd172725173380%_
                                             _%tl172726173382%_
                                             _%e172727173385%_
                                             _%hd172728173388%_
                                             _%tl172729173390%_
                                             _%e172730173393%_
                                             _%hd172731173396%_
                                             _%tl172732173398%_
                                             _%e172733173401%_
                                             _%hd172734173404%_
                                             _%tl172735173406%_
                                             _%e172736173409%_
                                             _%hd172737173412%_
                                             _%tl172738173414%_
                                             _%e172739173417%_
                                             _%hd172740173420%_
                                             _%tl172741173422%_
                                             _%e172742173425%_
                                             _%hd172743173428%_
                                             _%tl172744173430%_))
                                        (_%__match179175179176%_
                                         _%e172721173369%_
                                         _%hd172722173372%_
                                         _%tl172723173374%_
                                         _%e172724173377%_
                                         _%hd172725173380%_
                                         _%tl172726173382%_
                                         _%e172727173385%_
                                         _%hd172728173388%_
                                         _%tl172729173390%_
                                         _%e172730173393%_
                                         _%hd172731173396%_
                                         _%tl172732173398%_
                                         _%e172733173401%_
                                         _%hd172734173404%_
                                         _%tl172735173406%_
                                         _%e172736173409%_
                                         _%hd172737173412%_
                                         _%tl172738173414%_
                                         _%e172739173417%_
                                         _%hd172740173420%_
                                         _%tl172741173422%_
                                         _%e172742173425%_
                                         _%hd172743173428%_
                                         _%tl172744173430%_))))
                                (_%__match179175179176%_
                                 _%e172721173369%_
                                 _%hd172722173372%_
                                 _%tl172723173374%_
                                 _%e172724173377%_
                                 _%hd172725173380%_
                                 _%tl172726173382%_
                                 _%e172727173385%_
                                 _%hd172728173388%_
                                 _%tl172729173390%_
                                 _%e172730173393%_
                                 _%hd172731173396%_
                                 _%tl172732173398%_
                                 _%e172733173401%_
                                 _%hd172734173404%_
                                 _%tl172735173406%_
                                 _%e172736173409%_
                                 _%hd172737173412%_
                                 _%tl172738173414%_
                                 _%e172739173417%_
                                 _%hd172740173420%_
                                 _%tl172741173422%_
                                 _%e172742173425%_
                                 _%hd172743173428%_
                                 _%tl172744173430%_))
                            (_%__match178961178962%_
                             _%e172721173369%_
                             _%hd172722173372%_
                             _%tl172723173374%_
                             _%e172724173377%_
                             _%hd172725173380%_
                             _%tl172726173382%_
                             _%e172727173385%_
                             _%hd172728173388%_
                             _%tl172729173390%_
                             _%e172730173393%_
                             _%hd172731173396%_
                             _%tl172732173398%_
                             _%e172733173401%_
                             _%hd172734173404%_
                             _%tl172735173406%_
                             _%e172736173409%_
                             _%hd172737173412%_
                             _%tl172738173414%_
                             _%e172739173417%_
                             _%hd172740173420%_
                             _%tl172741173422%_
                             _%e172742173425%_
                             _%hd172743173428%_
                             _%tl172744173430%_
                             _%e172745173433%_
                             _%hd172746173436%_
                             _%tl172747173438%_))))
                     (_%__match178783178784%_
                      (lambda (_%e172677173561%_
                               _%hd172678173564%_
                               _%tl172679173566%_
                               _%e172680173569%_
                               _%hd172681173572%_
                               _%tl172682173574%_
                               _%e172683173577%_
                               _%hd172684173580%_
                               _%tl172685173582%_
                               _%e172686173585%_
                               _%hd172687173588%_
                               _%tl172688173590%_
                               _%e172689173593%_
                               _%hd172690173596%_
                               _%tl172691173598%_
                               _%e172692173601%_
                               _%hd172693173604%_
                               _%tl172694173606%_
                               _%e172695173609%_
                               _%hd172696173612%_
                               _%tl172697173614%_
                               _%e172698173617%_
                               _%hd172699173620%_
                               _%tl172700173622%_
                               _%e172701173625%_
                               _%hd172702173628%_
                               _%tl172703173630%_
                               _%e172704173633%_
                               _%hd172705173636%_
                               _%tl172706173638%_
                               _%__splice178682178683%_
                               _%target172707173641%_
                               _%tl172709173643%_)
                        (letrec ((_%loop172710173646%_
                                  (lambda (_%hd172708173649%_
                                           _%args172714173651%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172708173649%_))
                                        (let ((_%e172711173654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172708173649%_))))
                                          (let ((_%lp-tl172713173659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172711173654%_)))
                                                (_%lp-hd172712173657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172711173654%_))))
                                            (_%loop172710173646%_
                                             _%lp-tl172713173659%_
                                             (cons _%lp-hd172712173657%_
                                                   _%args172714173651%_))))
                                        (let ((_%args172715173662%_
                                               (reverse _%args172714173651%_)))
                                          (let ((_%L173665%_
                                                 _%args172715173662%_)
                                                (_%L173666%_
                                                 _%hd172705173636%_)
                                                (_%L173667%_
                                                 _%hd172696173612%_)
                                                (_%L173668%_
                                                 _%hd172687173588%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173668%_
                                                        'call-method))
                                                     (let ((__tmp179340
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172660%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173667%_
                                                        __tmp179340)))
                                                (_%__kont178680178681%_
                                                 _%L173665%_
                                                 _%L173666%_
                                                 _%L173667%_
                                                 _%L173668%_)
                                                (_%__match178971178972%_
                                                 _%e172677173561%_
                                                 _%hd172678173564%_
                                                 _%tl172679173566%_
                                                 _%e172680173569%_
                                                 _%hd172681173572%_
                                                 _%tl172682173574%_
                                                 _%e172683173577%_
                                                 _%hd172684173580%_
                                                 _%tl172685173582%_
                                                 _%e172686173585%_
                                                 _%hd172687173588%_
                                                 _%tl172688173590%_
                                                 _%e172689173593%_
                                                 _%hd172690173596%_
                                                 _%tl172691173598%_
                                                 _%e172692173601%_
                                                 _%hd172693173604%_
                                                 _%tl172694173606%_
                                                 _%e172695173609%_
                                                 _%hd172696173612%_
                                                 _%tl172697173614%_
                                                 _%e172698173617%_
                                                 _%hd172699173620%_
                                                 _%tl172700173622%_
                                                 _%e172701173625%_
                                                 _%hd172702173628%_
                                                 _%tl172703173630%_
                                                 _%e172704173633%_
                                                 _%hd172705173636%_
                                                 _%tl172706173638%_))))))))
                          (_%loop172710173646%_ _%target172707173641%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx178678178679%_))
                    (let ((_%e172677173561%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx178678178679%_))))
                      (let ((_%tl172679173566%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172677173561%_)))
                            (_%hd172678173564%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172677173561%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172679173566%_))
                            (let ((_%e172680173569%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172679173566%_))))
                              (let ((_%tl172682173574%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172680173569%_)))
                                    (_%hd172681173572%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172680173569%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172681173572%_))
                                    (let ((_%e172683173577%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172681173572%_))))
                                      (let ((_%tl172685173582%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172683173577%_)))
                                            (_%hd172684173580%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172683173577%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd172684173580%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd172684173580%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172685173582%_))
                                                    (let ((_%e172686173585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172685173582%_))))
                                                      (let ((_%tl172688173590%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172686173585%_)))
                    (_%hd172687173588%_
                     (let () (declare (not safe)) (##car _%e172686173585%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172688173590%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172682173574%_))
                        (let ((_%e172689173593%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172682173574%_))))
                          (let ((_%tl172691173598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172689173593%_)))
                                (_%hd172690173596%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172689173593%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172690173596%_))
                                (let ((_%e172692173601%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172690173596%_))))
                                  (let ((_%tl172694173606%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172692173601%_)))
                                        (_%hd172693173604%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172692173601%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172693173604%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd172693173604%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172694173606%_))
                                                (let ((_%e172695173609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172694173606%_))))
                                                  (let ((_%tl172697173614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172695173609%_)))
                                                        (_%hd172696173612%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172695173609%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172697173614%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172691173598%_))
                                                            (let ((_%e172698173617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172691173598%_))))
                      (let ((_%tl172700173622%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172698173617%_)))
                            (_%hd172699173620%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172698173617%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd172699173620%_))
                            (let ((_%e172701173625%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd172699173620%_))))
                              (let ((_%tl172703173630%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172701173625%_)))
                                    (_%hd172702173628%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172701173625%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd172702173628%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd172702173628%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172703173630%_))
                                            (let ((_%e172704173633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172703173630%_))))
                                              (let ((_%tl172706173638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172704173633%_)))
                                                    (_%hd172705173636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172704173633%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172706173638%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl172700173622%_))
                                                        (let ((_%__splice178682178683%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl172700173622%_
                          '0))))
                  (let ((_%tl172709173643%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178682178683%_ '1)))
                        (_%target172707173641%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178682178683%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl172709173643%_))
                        (_%__match178783178784%_
                         _%e172677173561%_
                         _%hd172678173564%_
                         _%tl172679173566%_
                         _%e172680173569%_
                         _%hd172681173572%_
                         _%tl172682173574%_
                         _%e172683173577%_
                         _%hd172684173580%_
                         _%tl172685173582%_
                         _%e172686173585%_
                         _%hd172687173588%_
                         _%tl172688173590%_
                         _%e172689173593%_
                         _%hd172690173596%_
                         _%tl172691173598%_
                         _%e172692173601%_
                         _%hd172693173604%_
                         _%tl172694173606%_
                         _%e172695173609%_
                         _%hd172696173612%_
                         _%tl172697173614%_
                         _%e172698173617%_
                         _%hd172699173620%_
                         _%tl172700173622%_
                         _%e172701173625%_
                         _%hd172702173628%_
                         _%tl172703173630%_
                         _%e172704173633%_
                         _%hd172705173636%_
                         _%tl172706173638%_
                         _%__splice178682178683%_
                         _%target172707173641%_
                         _%tl172709173643%_)
                        (_%__match178971178972%_
                         _%e172677173561%_
                         _%hd172678173564%_
                         _%tl172679173566%_
                         _%e172680173569%_
                         _%hd172681173572%_
                         _%tl172682173574%_
                         _%e172683173577%_
                         _%hd172684173580%_
                         _%tl172685173582%_
                         _%e172686173585%_
                         _%hd172687173588%_
                         _%tl172688173590%_
                         _%e172689173593%_
                         _%hd172690173596%_
                         _%tl172691173598%_
                         _%e172692173601%_
                         _%hd172693173604%_
                         _%tl172694173606%_
                         _%e172695173609%_
                         _%hd172696173612%_
                         _%tl172697173614%_
                         _%e172698173617%_
                         _%hd172699173620%_
                         _%tl172700173622%_
                         _%e172701173625%_
                         _%hd172702173628%_
                         _%tl172703173630%_
                         _%e172704173633%_
                         _%hd172705173636%_
                         _%tl172706173638%_))))
                (_%__match178971178972%_
                 _%e172677173561%_
                 _%hd172678173564%_
                 _%tl172679173566%_
                 _%e172680173569%_
                 _%hd172681173572%_
                 _%tl172682173574%_
                 _%e172683173577%_
                 _%hd172684173580%_
                 _%tl172685173582%_
                 _%e172686173585%_
                 _%hd172687173588%_
                 _%tl172688173590%_
                 _%e172689173593%_
                 _%hd172690173596%_
                 _%tl172691173598%_
                 _%e172692173601%_
                 _%hd172693173604%_
                 _%tl172694173606%_
                 _%e172695173609%_
                 _%hd172696173612%_
                 _%tl172697173614%_
                 _%e172698173617%_
                 _%hd172699173620%_
                 _%tl172700173622%_
                 _%e172701173625%_
                 _%hd172702173628%_
                 _%tl172703173630%_
                 _%e172704173633%_
                 _%hd172705173636%_
                 _%tl172706173638%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match179175179176%_
                                                     _%e172677173561%_
                                                     _%hd172678173564%_
                                                     _%tl172679173566%_
                                                     _%e172680173569%_
                                                     _%hd172681173572%_
                                                     _%tl172682173574%_
                                                     _%e172683173577%_
                                                     _%hd172684173580%_
                                                     _%tl172685173582%_
                                                     _%e172686173585%_
                                                     _%hd172687173588%_
                                                     _%tl172688173590%_
                                                     _%e172689173593%_
                                                     _%hd172690173596%_
                                                     _%tl172691173598%_
                                                     _%e172692173601%_
                                                     _%hd172693173604%_
                                                     _%tl172694173606%_
                                                     _%e172695173609%_
                                                     _%hd172696173612%_
                                                     _%tl172697173614%_
                                                     _%e172698173617%_
                                                     _%hd172699173620%_
                                                     _%tl172700173622%_))))
                                            (_%__match179175179176%_
                                             _%e172677173561%_
                                             _%hd172678173564%_
                                             _%tl172679173566%_
                                             _%e172680173569%_
                                             _%hd172681173572%_
                                             _%tl172682173574%_
                                             _%e172683173577%_
                                             _%hd172684173580%_
                                             _%tl172685173582%_
                                             _%e172686173585%_
                                             _%hd172687173588%_
                                             _%tl172688173590%_
                                             _%e172689173593%_
                                             _%hd172690173596%_
                                             _%tl172691173598%_
                                             _%e172692173601%_
                                             _%hd172693173604%_
                                             _%tl172694173606%_
                                             _%e172695173609%_
                                             _%hd172696173612%_
                                             _%tl172697173614%_
                                             _%e172698173617%_
                                             _%hd172699173620%_
                                             _%tl172700173622%_))
                                        (_%__match178851178852%_
                                         _%e172677173561%_
                                         _%hd172678173564%_
                                         _%tl172679173566%_
                                         _%e172680173569%_
                                         _%hd172681173572%_
                                         _%tl172682173574%_
                                         _%e172683173577%_
                                         _%hd172684173580%_
                                         _%tl172685173582%_
                                         _%e172686173585%_
                                         _%hd172687173588%_
                                         _%tl172688173590%_
                                         _%e172689173593%_
                                         _%hd172690173596%_
                                         _%tl172691173598%_
                                         _%e172692173601%_
                                         _%hd172693173604%_
                                         _%tl172694173606%_
                                         _%e172695173609%_
                                         _%hd172696173612%_
                                         _%tl172697173614%_
                                         _%e172698173617%_
                                         _%hd172699173620%_
                                         _%tl172700173622%_
                                         _%e172701173625%_
                                         _%hd172702173628%_
                                         _%tl172703173630%_))
                                    (_%__match179175179176%_
                                     _%e172677173561%_
                                     _%hd172678173564%_
                                     _%tl172679173566%_
                                     _%e172680173569%_
                                     _%hd172681173572%_
                                     _%tl172682173574%_
                                     _%e172683173577%_
                                     _%hd172684173580%_
                                     _%tl172685173582%_
                                     _%e172686173585%_
                                     _%hd172687173588%_
                                     _%tl172688173590%_
                                     _%e172689173593%_
                                     _%hd172690173596%_
                                     _%tl172691173598%_
                                     _%e172692173601%_
                                     _%hd172693173604%_
                                     _%tl172694173606%_
                                     _%e172695173609%_
                                     _%hd172696173612%_
                                     _%tl172697173614%_
                                     _%e172698173617%_
                                     _%hd172699173620%_
                                     _%tl172700173622%_))))
                            (_%__match179175179176%_
                             _%e172677173561%_
                             _%hd172678173564%_
                             _%tl172679173566%_
                             _%e172680173569%_
                             _%hd172681173572%_
                             _%tl172682173574%_
                             _%e172683173577%_
                             _%hd172684173580%_
                             _%tl172685173582%_
                             _%e172686173585%_
                             _%hd172687173588%_
                             _%tl172688173590%_
                             _%e172689173593%_
                             _%hd172690173596%_
                             _%tl172691173598%_
                             _%e172692173601%_
                             _%hd172693173604%_
                             _%tl172694173606%_
                             _%e172695173609%_
                             _%hd172696173612%_
                             _%tl172697173614%_
                             _%e172698173617%_
                             _%hd172699173620%_
                             _%tl172700173622%_))))
                    (_%__match179113179114%_
                     _%e172677173561%_
                     _%hd172678173564%_
                     _%tl172679173566%_
                     _%e172680173569%_
                     _%hd172681173572%_
                     _%tl172682173574%_
                     _%e172683173577%_
                     _%hd172684173580%_
                     _%tl172685173582%_
                     _%e172686173585%_
                     _%hd172687173588%_
                     _%tl172688173590%_
                     _%e172689173593%_
                     _%hd172690173596%_
                     _%tl172691173598%_
                     _%e172692173601%_
                     _%hd172693173604%_
                     _%tl172694173606%_
                     _%e172695173609%_
                     _%hd172696173612%_
                     _%tl172697173614%_))
                (_%__kont178696178697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont178696178697%_))
                                            (_%__kont178696178697%_))
                                        (_%__kont178696178697%_))))
                                (_%__kont178696178697%_))))
                        (_%__kont178696178697%_))
                    (_%__kont178696178697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178696178697%_))
                                                (_%__kont178696178697%_))
                                            (_%__kont178696178697%_))))
                                    (_%__kont178696178697%_))))
                            (_%__kont178696178697%_))))
                    (_%__kont178696178697%_))))))))))
