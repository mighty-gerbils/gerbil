(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1734357965)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp179098 (list gxc#::identity::t))
            (__tmp179097 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp179098
         '()
         __tmp179097
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args177895%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args177895%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp179099
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
        (__make-promise __tmp179099)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx177887%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self177890%_
                (let ((__obj179090
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj179090))
               (__tmp179100
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177890%_ _%stx177887%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179100
           gxc#current-compile-method
           _%self177890%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp179102 (list gxc#::false::t))
            (__tmp179101 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp179102
         '()
         __tmp179101
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args177884%_
        (apply make-instance gxc#::extract-receiver::t _%$args177884%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp179103
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
        (__make-promise __tmp179103)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx177876%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self177879%_
                (let ((__obj179092
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj179092))
               (__tmp179104
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177879%_ _%stx177876%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179104
           gxc#current-compile-method
           _%self177879%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp179106 (list gxc#::void::t))
            (__tmp179105 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp179106
         '(receiver methods slots)
         __tmp179105
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args177873%_
        (apply make-instance gxc#::collect-object-refs::t _%$args177873%_)))
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
      (let ((__tmp179107
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
        (__make-promise __tmp179107)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords177839%_
               _%receiver177834177840%_
               _%methods177835177842%_
               _%slots177836177844%_
               _%stx177846%_)
        (let* ((_%receiver177849%_
                (if (eq? _%receiver177834177840%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177834177840%_))
               (_%methods177851%_
                (if (eq? _%methods177835177842%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177835177842%_))
               (_%slots177853%_
                (if (eq? _%slots177836177844%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177836177844%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self177855%_
                  (let ((__obj179094
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
                       __obj179094
                       _%receiver177849%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179094
                       _%methods177851%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179094
                       _%slots177853%_
                       '3
                       '#f
                       '#f))
                    __obj179094))
                 (__tmp179108
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177855%_ _%stx177846%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179108
             gxc#current-compile-method
             _%self177855%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords177862%_ . _%args177863%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords177862%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177862%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177862%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177862%_
                  'slots:
                  absent-value))
               _%args177863%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args177837177869%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args177837177869%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp179110 (list gxc#::basic-xform-expression::t))
            (__tmp179109 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp179110
         '(receiver klass methods slots)
         __tmp179109
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args177830%_
        (apply make-instance gxc#::subst-object-refs::t _%$args177830%_)))
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
      (let ((__tmp179111
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
        (__make-promise __tmp179111)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords177792%_
               _%receiver177786177793%_
               _%klass177787177795%_
               _%methods177788177797%_
               _%slots177789177799%_
               _%stx177801%_)
        (let* ((_%receiver177804%_
                (if (eq? _%receiver177786177793%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177786177793%_))
               (_%klass177806%_
                (if (eq? _%klass177787177795%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass177787177795%_))
               (_%methods177808%_
                (if (eq? _%methods177788177797%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177788177797%_))
               (_%slots177810%_
                (if (eq? _%slots177789177799%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177789177799%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self177812%_
                  (let ((__obj179096
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
                       __obj179096
                       _%receiver177804%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179096
                       _%klass177806%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179096
                       _%methods177808%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179096
                       _%slots177810%_
                       '4
                       '#f
                       '#f))
                    __obj179096))
                 (__tmp179112
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177812%_ _%stx177801%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179112
             gxc#current-compile-method
             _%self177812%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords177819%_ . _%args177820%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords177819%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177819%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177819%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177819%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177819%_
                  'slots:
                  absent-value))
               _%args177820%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args177790177826%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args177790177826%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self174901%_ _%stx174902%_)
        (letrec ((_%generate-method-bind174904%_
                  (lambda (_%$klass177778%_
                           _%$method-table177779%_
                           _%id177780%_
                           _%$id177781%_)
                    (let ((_%$tmp177783%_
                           (let ((__tmp179113
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179113))))
                      (cons (cons _%$id177781%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp177783%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table177779%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id177780%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp177783%_ '()))
                    (cons (cons '%#ref (cons _%$tmp177783%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id177780%_
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
                 (_%generate-slot-bind174905%_
                  (lambda (_%$klass177772%_ _%id177773%_ _%$id177774%_)
                    (let ((_%$tmp177776%_
                           (let ((__tmp179114
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179114))))
                      (cons (cons _%$id177774%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp177776%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass177772%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id177773%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp177776%_ '()))
                        (cons (cons '%#ref (cons _%$tmp177776%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id177773%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl174906%_
                  (lambda (_%$klass177766%_
                           _%$method-table177767%_
                           _%methods-bind177768%_
                           _%slots-bind177769%_
                           _%specializer-impl177770%_)
                    (let ((__tmp179115
                           (cons '%#lambda
                                 (cons (cons _%$klass177766%_
                                             (cons _%$method-table177767%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind177769%_
                                                            _%methods-bind177768%_))
                                                         (cons _%specializer-impl177770%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179115 _%stx174902%_))))
                 (_%generate-specializer-def174907%_
                  (lambda (_%id177762%_
                           _%specializer-id177763%_
                           _%specializer-impl177764%_)
                    (let ((__tmp179116
                           (cons '%#begin
                                 (cons _%stx174902%_
                                       (cons (let ((__tmp179117
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id177763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl177764%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179117
                                                _%stx174902%_))
                                             (cons (let ((__tmp179118
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id177762%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id177763%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179118
                                                      _%stx174902%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179116 _%stx174902%_)))))
          (let* ((_%__stx177984177985%_ _%stx174902%_)
                 (_%g174910174930%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx177984177985%_)))))
            (let ((_%__kont177986177987%_
                   (lambda (_%L174974%_ _%L174975%_)
                     (let ((_%method-calls174994%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs174995%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty174996%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?174998%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls174994%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs174995%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L174974%_))
                             (let* ((_%__stx177898177899%_ _%L174974%_)
                                    (_%g175386175404%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx177898177899%_)))))
                               (let ((_%__kont177900177901%_
                                      (lambda (_%L175440%_
                                               _%L175441%_
                                               _%L175442%_)
                                        (let ((_%receiver175462%_
                                               (let ((_%$e175459%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L175440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e175459%_
                                                     _%$e175459%_
                                                     _%L175442%_))))
                                          (for-each
                                           (lambda (_%g175463175465%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver175462%_
                                              _%method-calls174994%_
                                              _%slot-refs174995%_
                                              _%g175463175465%_))
                                           _%L175440%_)
                                          (if (_%no-specializer?174998%_)
                                              _%stx174902%_
                                              (let* ((_%specializer-id175474%_
                                                      (let* ((_%id175468%_
                                                              (let ((__tmp179119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L174975%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179119 '"::specialize")))
                     (_%specializer-id175471%_
                      (let ((__tmp179120
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174902%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175468%_ __tmp179120))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175471%_))
                _%specializer-id175471%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175476%_
                                                      (let ((__tmp179121
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179121)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175478%_
                                                      (let ((__tmp179122
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179122)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175480%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174994%_)))
                                                     (_%$methods175484%_
                                                      (map (lambda (_%id175482%_)
                                                             (let ((__tmp179123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175482%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179123)))
                   _%methods175480%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175493%_
                                                      (for-each
                                                       (lambda (_%g175485175488%_
                                                                _%g175486175490%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174994%_
                                                            _%g175485175488%_
                                                            _%g175486175490%_)))
                                                       _%methods175480%_
                                                       _%$methods175484%_))
                                                     (_%methods-bind175503%_
                                                      (map (lambda (_%g175495175498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175496175500%_)
                     (_%generate-method-bind174904%_
                      _%$klass175476%_
                      _%$method-table175478%_
                      _%g175495175498%_
                      _%g175496175500%_))
                   _%methods175480%_
                   _%$methods175484%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175505%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174995%_)))
                                                     (_%$slots175509%_
                                                      (map (lambda (_%id175507%_)
                                                             (let ((__tmp179124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175507%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179124)))
                   _%slots175505%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175518%_
                                                      (for-each
                                                       (lambda (_%g175510175513%_
                                                                _%g175511175515%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174995%_
                                                            _%g175510175513%_
                                                            _%g175511175515%_)))
                                                       _%slots175505%_
                                                       _%$slots175509%_))
                                                     (_%slots-bind175527%_
                                                      (map (lambda (_%g175519175522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175520175524%_)
                     (_%generate-slot-bind174905%_
                      _%$klass175476%_
                      _%g175519175522%_
                      _%g175520175524%_))
                   _%slots175505%_
                   _%$slots175509%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body175533%_
                                                      (map (lambda (_%g175528175530%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver175462%_
                                                              _%$klass175476%_
                                                              _%method-calls174994%_
                                                              _%slot-refs174995%_
                                                              _%g175528175530%_))
                                                           _%L175440%_))
                                                     (_%specializer-impl175535%_
                                                      (let ((__tmp179125
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L175442%_ _%L175441%_)
                                 _%specializer-body175533%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179125 _%stx174902%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175537%_
                                                      (_%generate-specializer-impl174906%_
                                                       _%$klass175476%_
                                                       _%$method-table175478%_
                                                       _%methods-bind175503%_
                                                       _%slots-bind175527%_
                                                       _%specializer-impl175535%_)))
                                                (let ((__tmp179127
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174975%_)))
                                                      (__tmp179126
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175474%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179127
                                                   '" => "
                                                   __tmp179126))
                                                (_%generate-specializer-def174907%_
                                                 _%L174975%_
                                                 _%specializer-id175474%_
                                                 _%specializer-impl175537%_))))))
                                     (_%__kont177902177903%_
                                      (lambda () _%stx174902%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx177898177899%_))
                                     (let ((_%e175391175416%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx177898177899%_))))
                                       (let ((_%tl175393175421%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e175391175416%_)))
                                             (_%hd175392175419%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e175391175416%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl175393175421%_))
                                             (let ((_%e175394175424%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl175393175421%_))))
                                               (let ((_%tl175396175429%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e175394175424%_)))
                                                     (_%hd175395175427%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e175394175424%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd175395175427%_))
                                                     (let ((_%e175397175432%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd175395175427%_))))
                                                       (let ((_%tl175399175437%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e175397175432%_)))
                     (_%hd175398175435%_
                      (let () (declare (not safe)) (##car _%e175397175432%_))))
                 (_%__kont177900177901%_
                  _%tl175396175429%_
                  _%tl175399175437%_
                  _%hd175398175435%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont177902177903%_))))
                                             (_%__kont177902177903%_))))
                                     (_%__kont177902177903%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L174974%_))
                                 (let* ((_%g175544175563%_
                                         (lambda (_%g175545175560%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g175545175560%_))))
                                        (_%g175543175861%_
                                         (lambda (_%g175545175566%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g175545175566%_))
                                               (let ((_%e175547175568%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g175545175566%_))))
                                                 (let ((_%hd175548175571%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175547175568%_)))
                                                       (_%tl175549175573%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175547175568%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl175549175573%_))
                                                       (let ((_g179128_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl175549175573%_ '0))))
                 (begin
                   (let ((_g179129_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g179128_)
                                (##values-length _g179128_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g179129_ 2)))
                         (error "Context expects 2 values" _g179129_)))
                   (let ((_%target175550175576%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179128_ 0)))
                         (_%tl175552175578%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179128_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl175552175578%_))
                         (letrec ((_%loop175553175581%_
                                   (lambda (_%hd175551175584%_
                                            _%clause175557175586%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175551175584%_))
                                         (let ((_%e175554175589%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175551175584%_))))
                                           (let ((_%lp-hd175555175592%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175554175589%_)))
                                                 (_%lp-tl175556175594%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175554175589%_))))
                                             (_%loop175553175581%_
                                              _%lp-tl175556175594%_
                                              (cons _%lp-hd175555175592%_
                                                    _%clause175557175586%_))))
                                         (let ((_%clause175558175597%_
                                                (reverse _%clause175557175586%_)))
                                           ((lambda (_%L175600%_)
                                              (for-each
                                               (lambda (_%clause175614%_)
                                                 (let* ((_%__stx177924177925%_
                                                         _%clause175614%_)
                                                        (_%g175617175632%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx177924177925%_)))))
                                                   (let ((_%__kont177926177927%_
                                                          (lambda (_%L175660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L175661%_
                           _%L175662%_)
                    (let ((_%receiver175681%_
                           (let ((_%$e175678%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L175660%_))))
                             (if _%$e175678%_ _%$e175678%_ _%L175662%_))))
                      (for-each
                       (lambda (_%g175682175684%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver175681%_
                          _%method-calls174994%_
                          _%slot-refs174995%_
                          _%g175682175684%_))
                       _%L175660%_))))
                 (_%__kont177928177929%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx177924177925%_))
                                                         (let ((_%e175622175644%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx177924177925%_))))
                   (let ((_%tl175624175649%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e175622175644%_)))
                         (_%hd175623175647%_
                          (let ()
                            (declare (not safe))
                            (##car _%e175622175644%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd175623175647%_))
                         (let ((_%e175625175652%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd175623175647%_))))
                           (let ((_%tl175627175657%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e175625175652%_)))
                                 (_%hd175626175655%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e175625175652%_))))
                             (_%__kont177926177927%_
                              _%tl175624175649%_
                              _%tl175627175657%_
                              _%hd175626175655%_)))
                         (_%__kont177928177929%_))))
                 (_%__kont177928177929%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp179130
                                                      (lambda (_%g175689175692%_
                                                               _%g175690175694%_)
                                                        (cons _%g175689175692%_
                                                              _%g175690175694%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179130
                                                  '()
                                                  _%L175600%_)))
                                              (if (_%no-specializer?174998%_)
                                                  _%stx174902%_
                                                  (let* ((_%specializer-id175703%_
                                                          (let* ((_%id175697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179131
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L174975%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179131 '"::specialize")))
                         (_%specializer-id175700%_
                          (let ((__tmp179132
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174902%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id175697%_
                             __tmp179132))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id175700%_))
                    _%specializer-id175700%_))
                 (_%$klass175705%_
                  (let ((__tmp179133
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179133)))
                 (_%$method-table175707%_
                  (let ((__tmp179134
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179134)))
                 (_%methods175709%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174994%_)))
                 (_%$methods175713%_
                  (map (lambda (_%id175711%_)
                         (let ((__tmp179135 (gensym _%id175711%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179135)))
                       _%methods175709%_))
                 (_%_175722%_
                  (for-each
                   (lambda (_%g175714175717%_ _%g175715175719%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174994%_
                        _%g175714175717%_
                        _%g175715175719%_)))
                   _%methods175709%_
                   _%$methods175713%_))
                 (_%methods-bind175732%_
                  (map (lambda (_%g175724175727%_ _%g175725175729%_)
                         (_%generate-method-bind174904%_
                          _%$klass175705%_
                          _%$method-table175707%_
                          _%g175724175727%_
                          _%g175725175729%_))
                       _%methods175709%_
                       _%$methods175713%_))
                 (_%slots175734%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174995%_)))
                 (_%$slots175738%_
                  (map (lambda (_%id175736%_)
                         (let ((__tmp179136 (gensym _%id175736%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179136)))
                       _%slots175734%_))
                 (_%_175747%_
                  (for-each
                   (lambda (_%g175739175742%_ _%g175740175744%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174995%_
                        _%g175739175742%_
                        _%g175740175744%_)))
                   _%slots175734%_
                   _%$slots175738%_))
                 (_%slots-bind175756%_
                  (map (lambda (_%g175748175751%_ _%g175749175753%_)
                         (_%generate-slot-bind174905%_
                          _%$klass175705%_
                          _%g175748175751%_
                          _%g175749175753%_))
                       _%slots175734%_
                       _%$slots175738%_))
                 (_%specializer-clauses175854%_
                  (map (lambda (_%clause175758%_)
                         (let* ((_%__stx177944177945%_ _%clause175758%_)
                                (_%g175761175776%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx177944177945%_)))))
                           (let ((_%__kont177946177947%_
                                  (lambda (_%L175804%_ _%L175805%_ _%L175806%_)
                                    (let* ((_%receiver175835%_
                                            (let ((_%$e175832%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L175804%_))))
                                              (if _%$e175832%_
                                                  _%$e175832%_
                                                  _%L175806%_)))
                                           (_%body175841%_
                                            (map (lambda (_%g175836175838%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver175835%_
                                                    _%$klass175705%_
                                                    _%method-calls174994%_
                                                    _%slot-refs174995%_
                                                    _%g175836175838%_))
                                                 _%L175804%_)))
                                      (cons (cons _%L175806%_ _%L175805%_)
                                            _%body175841%_))))
                                 (_%__kont177948177949%_
                                  (lambda () _%clause175758%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx177944177945%_))
                                 (let ((_%e175766175788%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx177944177945%_))))
                                   (let ((_%tl175768175793%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e175766175788%_)))
                                         (_%hd175767175791%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e175766175788%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175767175791%_))
                                         (let ((_%e175769175796%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175767175791%_))))
                                           (let ((_%tl175771175801%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175769175796%_)))
                                                 (_%hd175770175799%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175769175796%_))))
                                             (_%__kont177946177947%_
                                              _%tl175768175793%_
                                              _%tl175771175801%_
                                              _%hd175770175799%_)))
                                         (_%__kont177948177949%_))))
                                 (_%__kont177948177949%_)))))
                       (let ((__tmp179137
                              (lambda (_%g175846175849%_ _%g175847175851%_)
                                (cons _%g175846175849%_ _%g175847175851%_))))
                         (declare (not safe))
                         (__foldr1 __tmp179137 '() _%L175600%_))))
                 (_%specializer-impl175856%_
                  (let ((__tmp179138
                         (cons '%#case-lambda _%specializer-clauses175854%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179138 _%stx174902%_)))
                 (_%specializer-impl175858%_
                  (_%generate-specializer-impl174906%_
                   _%$klass175705%_
                   _%$method-table175707%_
                   _%methods-bind175732%_
                   _%slots-bind175756%_
                   _%specializer-impl175856%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179140
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L174975%_)))
                                                          (__tmp179139
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id175703%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179140
                                                       '" => "
                                                       __tmp179139))
                                                    (_%generate-specializer-def174907%_
                                                     _%L174975%_
                                                     _%specializer-id175703%_
                                                     _%specializer-impl175858%_))))
                                            _%clause175558175597%_))))))
                           (_%loop175553175581%_ _%target175550175576%_ '()))
                         (_%g175544175563%_ _%g175545175566%_)))))
               (_%g175544175563%_ _%g175545175566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175544175563%_
                                                _%g175545175566%_)))))
                                   (_%g175543175861%_ _%L174974%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L174974%_))
                                     (let* ((_%g175865175895%_
                                             (lambda (_%g175866175892%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175866175892%_))))
                                            (_%g175864176526%_
                                             (lambda (_%g175866175898%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175866175898%_))
                                                   (let ((_%e175870175900%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175866175898%_))))
                                                     (let ((_%hd175871175903%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175870175900%_)))
                                                           (_%tl175872175905%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175870175900%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175872175905%_))
                                                           (let ((_%e175873175908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175872175905%_))))
                     (let ((_%hd175874175911%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175873175908%_)))
                           (_%tl175875175913%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175873175908%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175874175911%_))
                           (let ((_%e175876175916%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175874175911%_))))
                             (let ((_%hd175877175919%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175876175916%_)))
                                   (_%tl175878175921%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175876175916%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175877175919%_))
                                   (let ((_%e175879175924%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175877175919%_))))
                                     (let ((_%hd175880175927%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175879175924%_)))
                                           (_%tl175881175929%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175879175924%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd175880175927%_))
                                           (let ((_%e175882175932%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd175880175927%_))))
                                             (let ((_%hd175883175935%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175882175932%_)))
                                                   (_%tl175884175937%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175882175932%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175884175937%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl175881175929%_))
                                                       (let ((_%e175885175940%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl175881175929%_))))
                 (let ((_%hd175886175943%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175885175940%_)))
                       (_%tl175887175945%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175885175940%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175887175945%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl175878175921%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175875175913%_))
                               (let ((_%e175888175948%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175875175913%_))))
                                 (let ((_%hd175889175951%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175888175948%_)))
                                       (_%tl175890175953%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175888175948%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175890175953%_))
                                       ((lambda (_%L175956%_
                                                 _%L175957%_
                                                 _%L175958%_)
                                          (let* ((_%g175982176000%_
                                                  (lambda (_%g175983175997%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g175983175997%_))))
                                                 (_%g175981176056%_
                                                  (lambda (_%g175983176003%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g175983176003%_))
                                                        (let ((_%e175987176005%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g175983176003%_))))
                  (let ((_%hd175988176008%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175987176005%_)))
                        (_%tl175989176010%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175987176005%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl175989176010%_))
                        (let ((_%e175990176013%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl175989176010%_))))
                          (let ((_%hd175991176016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e175990176013%_)))
                                (_%tl175992176018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e175990176013%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd175991176016%_))
                                (let ((_%e175993176021%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd175991176016%_))))
                                  (let ((_%hd175994176024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175993176021%_)))
                                        (_%tl175995176026%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175993176021%_))))
                                    ((lambda (_%L176029%_
                                              _%L176030%_
                                              _%L176031%_)
                                       (let ((_%receiver176050%_
                                              (let ((_%$e176047%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L176029%_))))
                                                (if _%$e176047%_
                                                    _%$e176047%_
                                                    _%L176031%_))))
                                         (for-each
                                          (lambda (_%g176051176053%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver176050%_
                                             _%method-calls174994%_
                                             _%slot-refs174995%_
                                             _%g176051176053%_))
                                          _%L176029%_)))
                                     _%tl175992176018%_
                                     _%tl175995176026%_
                                     _%hd175994176024%_)))
                                (_%g175982176000%_ _%g175983176003%_))))
                        (_%g175982176000%_ _%g175983176003%_))))
                (_%g175982176000%_ _%g175983176003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g175981176056%_ _%L175957%_))
                                          (let* ((_%g176059176078%_
                                                  (lambda (_%g176060176075%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g176060176075%_))))
                                                 (_%g176058176202%_
                                                  (lambda (_%g176060176081%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g176060176081%_))
                                                        (let ((_%e176062176083%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g176060176081%_))))
                  (let ((_%hd176063176086%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176062176083%_)))
                        (_%tl176064176088%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176062176083%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176064176088%_))
                        (let ((_g179141_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl176064176088%_
                                  '0))))
                          (begin
                            (let ((_g179142_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g179141_)
                                         (##values-length _g179141_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g179142_ 2)))
                                  (error "Context expects 2 values"
                                         _g179142_)))
                            (let ((_%target176065176091%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179141_ 0)))
                                  (_%tl176067176093%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179141_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl176067176093%_))
                                  (letrec ((_%loop176068176096%_
                                            (lambda (_%hd176066176099%_
                                                     _%clause176072176101%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd176066176099%_))
                                                  (let ((_%e176069176104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd176066176099%_))))
                                                    (let ((_%lp-hd176070176107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176069176104%_)))
                                                          (_%lp-tl176071176109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176069176104%_))))
                                                      (_%loop176068176096%_
                                                       _%lp-tl176071176109%_
                                                       (cons _%lp-hd176070176107%_
                                                             _%clause176072176101%_))))
                                                  (let ((_%clause176073176112%_
                                                         (reverse _%clause176072176101%_)))
                                                    ((lambda (_%L176115%_)
                                                       (for-each
                                                        (lambda (_%clause176128%_)
                                                          (let* ((_%g176130176145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g176131176142%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176131176142%_))))
                         (_%g176129176192%_
                          (lambda (_%g176131176148%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176131176148%_))
                                (let ((_%e176135176150%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176131176148%_))))
                                  (let ((_%hd176136176153%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176135176150%_)))
                                        (_%tl176137176155%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176135176150%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176136176153%_))
                                        (let ((_%e176138176158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176136176153%_))))
                                          (let ((_%hd176139176161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176138176158%_)))
                                                (_%tl176140176163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176138176158%_))))
                                            ((lambda (_%L176166%_
                                                      _%L176167%_
                                                      _%L176168%_)
                                               (let ((_%receiver176186%_
                                                      (let ((_%$e176183%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L176166%_))))
                (if _%$e176183%_ _%$e176183%_ _%L176168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g176187176189%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver176186%_
                                                     _%method-calls174994%_
                                                     _%slot-refs174995%_
                                                     _%g176187176189%_))
                                                  _%L176166%_)))
                                             _%tl176137176155%_
                                             _%tl176140176163%_
                                             _%hd176139176161%_)))
                                        (_%g176130176145%_
                                         _%g176131176148%_))))
                                (_%g176130176145%_ _%g176131176148%_)))))
                    (_%g176129176192%_ _%clause176128%_)))
                (let ((__tmp179143
                       (lambda (_%g176194176197%_ _%g176195176199%_)
                         (cons _%g176194176197%_ _%g176195176199%_))))
                  (declare (not safe))
                  (__foldr1 __tmp179143 '() _%L176115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause176073176112%_))))))
                                    (_%loop176068176096%_
                                     _%target176065176091%_
                                     '()))
                                  (_%g176059176078%_ _%g176060176081%_)))))
                        (_%g176059176078%_ _%g176060176081%_))))
                (_%g176059176078%_ _%g176060176081%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g176058176202%_ _%L175956%_))
                                          (if (_%no-specializer?174998%_)
                                              _%stx174902%_
                                              (let* ((_%specializer-id176211%_
                                                      (let* ((_%id176205%_
                                                              (let ((__tmp179144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L174975%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179144 '"::specialize")))
                     (_%specializer-id176208%_
                      (let ((__tmp179145
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174902%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id176205%_ __tmp179145))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id176208%_))
                _%specializer-id176208%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass176213%_
                                                      (let ((__tmp179146
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179146)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table176215%_
                                                      (let ((__tmp179147
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179147)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods176217%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174994%_)))
                                                     (_%$methods176221%_
                                                      (map (lambda (_%id176219%_)
                                                             (let ((__tmp179148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176219%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179148)))
                   _%methods176217%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176230%_
                                                      (for-each
                                                       (lambda (_%g176222176225%_
                                                                _%g176223176227%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174994%_
                                                            _%g176222176225%_
                                                            _%g176223176227%_)))
                                                       _%methods176217%_
                                                       _%$methods176221%_))
                                                     (_%methods-bind176240%_
                                                      (map (lambda (_%g176232176235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176233176237%_)
                     (_%generate-method-bind174904%_
                      _%$klass176213%_
                      _%$method-table176215%_
                      _%g176232176235%_
                      _%g176233176237%_))
                   _%methods176217%_
                   _%$methods176221%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots176242%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174995%_)))
                                                     (_%$slots176246%_
                                                      (map (lambda (_%id176244%_)
                                                             (let ((__tmp179149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176244%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179149)))
                   _%slots176242%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176255%_
                                                      (for-each
                                                       (lambda (_%g176247176250%_
                                                                _%g176248176252%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174995%_
                                                            _%g176247176250%_
                                                            _%g176248176252%_)))
                                                       _%slots176242%_
                                                       _%$slots176246%_))
                                                     (_%slots-bind176264%_
                                                      (map (lambda (_%g176256176259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176257176261%_)
                     (_%generate-slot-bind174905%_
                      _%$klass176213%_
                      _%g176256176259%_
                      _%g176257176261%_))
                   _%slots176242%_
                   _%$slots176246%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr176356%_
                                                      (let* ((_%g176266176284%_
                                                              (lambda (_%g176267176281%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176267176281%_))))
                     (_%g176265176353%_
                      (lambda (_%g176267176287%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176267176287%_))
                            (let ((_%e176271176289%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176267176287%_))))
                              (let ((_%hd176272176292%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176271176289%_)))
                                    (_%tl176273176294%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176271176289%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176273176294%_))
                                    (let ((_%e176274176297%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176273176294%_))))
                                      (let ((_%hd176275176300%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176274176297%_)))
                                            (_%tl176276176302%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176274176297%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176275176300%_))
                                            (let ((_%e176277176305%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176275176300%_))))
                                              (let ((_%hd176278176308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176277176305%_)))
                                                    (_%tl176279176310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176277176305%_))))
                                                ((lambda (_%L176313%_
                                                          _%L176314%_
                                                          _%L176315%_)
                                                   (let* ((_%receiver176344%_
                                                           (let ((_%$e176341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L176313%_))))
                     (if _%$e176341%_ _%$e176341%_ _%L176315%_)))
                  (_%body176350%_
                   (map (lambda (_%g176345176347%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver176344%_
                           _%$klass176213%_
                           _%method-calls174994%_
                           _%slot-refs174995%_
                           _%g176345176347%_))
                        _%L176313%_))
                  (__tmp179150
                   (cons '%#lambda
                         (cons (cons _%L176315%_ _%L176314%_)
                               _%body176350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179150
                                                      _%L175957%_)))
                                                 _%tl176276176302%_
                                                 _%tl176279176310%_
                                                 _%hd176278176308%_)))
                                            (_%g176266176284%_
                                             _%g176267176287%_))))
                                    (_%g176266176284%_ _%g176267176287%_))))
                            (_%g176266176284%_ _%g176267176287%_)))))
                (_%g176265176353%_ _%L175957%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr176519%_
                                                      (let* ((_%g176358176377%_
                                                              (lambda (_%g176359176374%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176359176374%_))))
                     (_%g176357176516%_
                      (lambda (_%g176359176380%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176359176380%_))
                            (let ((_%e176361176382%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176359176380%_))))
                              (let ((_%hd176362176385%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176361176382%_)))
                                    (_%tl176363176387%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176361176382%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl176363176387%_))
                                    (let ((_g179151_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl176363176387%_
                                              '0))))
                                      (begin
                                        (let ((_g179152_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g179151_)
                                                     (##values-length
                                                      _g179151_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g179152_ 2)))
                                              (error "Context expects 2 values"
                                                     _g179152_)))
                                        (let ((_%target176364176390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179151_ 0)))
                                              (_%tl176366176392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179151_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176366176392%_))
                                              (letrec ((_%loop176367176395%_
                                                        (lambda (_%hd176365176398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause176371176400%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176365176398%_))
                      (let ((_%e176368176403%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176365176398%_))))
                        (let ((_%lp-hd176369176406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176368176403%_)))
                              (_%lp-tl176370176408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176368176403%_))))
                          (_%loop176367176395%_
                           _%lp-tl176370176408%_
                           (cons _%lp-hd176369176406%_
                                 _%clause176371176400%_))))
                      (let ((_%clause176372176411%_
                             (reverse _%clause176371176400%_)))
                        ((lambda (_%L176414%_)
                           (let* ((_%clauses176514%_
                                   (map (lambda (_%clause176428%_)
                                          (let* ((_%__stx177964177965%_
                                                  _%clause176428%_)
                                                 (_%g176431176446%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx177964177965%_)))))
                                            (let ((_%__kont177966177967%_
                                                   (lambda (_%L176474%_
                                                            _%L176475%_
                                                            _%L176476%_)
                                                     (let* ((_%receiver176495%_
                                                             (let ((_%$e176492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L176474%_))))
                       (if _%$e176492%_ _%$e176492%_ _%L176476%_)))
                    (_%body176501%_
                     (map (lambda (_%g176496176498%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver176495%_
                             _%$klass176213%_
                             _%method-calls174994%_
                             _%slot-refs174995%_
                             _%g176496176498%_))
                          _%L176474%_)))
               (cons (cons _%L176476%_ _%L176475%_) _%body176501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177968177969%_
                                                   (lambda ()
                                                     _%clause176428%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx177964177965%_))
                                                  (let ((_%e176436176458%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx177964177965%_))))
                                                    (let ((_%tl176438176463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176436176458%_)))
                                                          (_%hd176437176461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176436176458%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd176437176461%_))
                                                          (let ((_%e176439176466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd176437176461%_))))
                    (let ((_%tl176441176471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e176439176466%_)))
                          (_%hd176440176469%_
                           (let ()
                             (declare (not safe))
                             (##car _%e176439176466%_))))
                      (_%__kont177966177967%_
                       _%tl176438176463%_
                       _%tl176441176471%_
                       _%hd176440176469%_)))
                  (_%__kont177968177969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177968177969%_)))))
                                        (let ((__tmp179153
                                               (lambda (_%g176506176509%_
                                                        _%g176507176511%_)
                                                 (cons _%g176506176509%_
                                                       _%g176507176511%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp179153
                                           '()
                                           _%L176414%_))))
                                  (__tmp179154
                                   (cons '%#case-lambda _%clauses176514%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179154 _%L175956%_)))
                         _%clause176372176411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176367176395%_
                                                 _%target176364176390%_
                                                 '()))
                                              (_%g176358176377%_
                                               _%g176359176380%_)))))
                                    (_%g176358176377%_ _%g176359176380%_))))
                            (_%g176358176377%_ _%g176359176380%_)))))
                (_%g176357176516%_ _%L175956%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176521%_
                                                      (let ((__tmp179155
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L175958%_ '())
                                             (cons _%specializer-lambda-expr176356%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr176519%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179155 _%stx174902%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176523%_
                                                      (_%generate-specializer-impl174906%_
                                                       _%$klass176213%_
                                                       _%$method-table176215%_
                                                       _%methods-bind176240%_
                                                       _%slots-bind176264%_
                                                       _%specializer-impl176521%_)))
                                                (let ((__tmp179157
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174975%_)))
                                                      (__tmp179156
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id176211%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179157
                                                   '" => "
                                                   __tmp179156))
                                                (_%generate-specializer-def174907%_
                                                 _%L174975%_
                                                 _%specializer-id176211%_
                                                 _%specializer-impl176523%_))))
                                        _%hd175889175951%_
                                        _%hd175886175943%_
                                        _%hd175883175935%_)
                                       (_%g175865175895%_ _%g175866175898%_))))
                               (_%g175865175895%_ _%g175866175898%_))
                           (_%g175865175895%_ _%g175866175898%_))
                       (_%g175865175895%_ _%g175866175898%_))))
               (_%g175865175895%_ _%g175866175898%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175865175895%_
                                                    _%g175866175898%_))))
                                           (_%g175865175895%_
                                            _%g175866175898%_))))
                                   (_%g175865175895%_ _%g175866175898%_))))
                           (_%g175865175895%_ _%g175866175898%_))))
                   (_%g175865175895%_ _%g175866175898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175865175895%_
                                                    _%g175866175898%_)))))
                                       (_%g175864176526%_ _%L174974%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L174974%_))
                                         (let* ((_%g176530176583%_
                                                 (lambda (_%g176531176580%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176531176580%_))))
                                                (_%g176529177754%_
                                                 (lambda (_%g176531176586%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176531176586%_))
                                                       (let ((_%e176537176588%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176531176586%_))))
                 (let ((_%hd176538176591%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176537176588%_)))
                       (_%tl176539176593%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176537176588%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd176538176591%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd176538176591%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl176539176593%_))
                               (let ((_%e176540176596%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl176539176593%_))))
                                 (let ((_%hd176541176599%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176540176596%_)))
                                       (_%tl176542176601%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176540176596%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176541176599%_))
                                       (let ((_%e176543176604%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176541176599%_))))
                                         (let ((_%hd176544176607%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176543176604%_)))
                                               (_%tl176545176609%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176543176604%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176544176607%_))
                                               (let ((_%e176546176612%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176544176607%_))))
                                                 (let ((_%hd176547176615%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176546176612%_)))
                                                       (_%tl176548176617%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176546176612%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd176547176615%_))
                                                       (let ((_%e176549176620%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd176547176615%_))))
                 (let ((_%hd176550176623%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176549176620%_)))
                       (_%tl176551176625%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176549176620%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl176551176625%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl176548176617%_))
                           (let ((_%e176552176628%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl176548176617%_))))
                             (let ((_%hd176553176631%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176552176628%_)))
                                   (_%tl176554176633%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176552176628%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176553176631%_))
                                   (let ((_%e176555176636%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176553176631%_))))
                                     (let ((_%hd176556176639%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176555176636%_)))
                                           (_%tl176557176641%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176555176636%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd176556176639%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd176556176639%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl176557176641%_))
                                                   (let ((_%e176558176644%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl176557176641%_))))
                                                     (let ((_%hd176559176647%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176558176644%_)))
                                                           (_%tl176560176649%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176558176644%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd176559176647%_))
                                                           (let ((_%e176561176652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd176559176647%_))))
                     (let ((_%hd176562176655%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176561176652%_)))
                           (_%tl176563176657%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176561176652%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd176562176655%_))
                           (let ((_%e176564176660%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd176562176655%_))))
                             (let ((_%hd176565176663%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176564176660%_)))
                                   (_%tl176566176665%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176564176660%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176565176663%_))
                                   (let ((_%e176567176668%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176565176663%_))))
                                     (let ((_%hd176568176671%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176567176668%_)))
                                           (_%tl176569176673%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176567176668%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176569176673%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl176566176665%_))
                                               (let ((_%e176570176676%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl176566176665%_))))
                                                 (let ((_%hd176571176679%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176570176676%_)))
                                                       (_%tl176572176681%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176570176676%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176572176681%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl176563176657%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl176560176649%_))
                       (let ((_%e176573176684%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176560176649%_))))
                         (let ((_%hd176574176687%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176573176684%_)))
                               (_%tl176575176689%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176573176684%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176575176689%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl176554176633%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl176545176609%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl176542176601%_))
                                           (let ((_%e176576176692%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl176542176601%_))))
                                             (let ((_%hd176577176695%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e176576176692%_)))
                                                   (_%tl176578176697%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e176576176692%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl176578176697%_))
                                                   ((lambda (_%L176700%_
                                                             _%L176701%_
                                                             _%L176702%_
                                                             _%L176703%_
                                                             _%L176704%_)
                                                      (let* ((_%g176744176806%_
                                                              (lambda (_%g176745176803%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176745176803%_))))
                     (_%g176743177751%_
                      (lambda (_%g176745176809%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176745176809%_))
                            (let ((_%e176751176811%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176745176809%_))))
                              (let ((_%hd176752176814%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176751176811%_)))
                                    (_%tl176753176816%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176751176811%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd176752176814%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd176752176814%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl176753176816%_))
                                            (let ((_%e176754176819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl176753176816%_))))
                                              (let ((_%hd176755176822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176754176819%_)))
                                                    (_%tl176756176824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176754176819%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176756176824%_))
                                                    (let ((_%e176757176827%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176756176824%_))))
                                                      (let ((_%hd176758176830%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176757176827%_)))
                    (_%tl176759176832%_
                     (let () (declare (not safe)) (##cdr _%e176757176827%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd176758176830%_))
                    (let ((_%e176760176835%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd176758176830%_))))
                      (let ((_%hd176761176838%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176760176835%_)))
                            (_%tl176762176840%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176760176835%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd176761176838%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd176761176838%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176762176840%_))
                                    (let ((_%e176763176843%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176762176840%_))))
                                      (let ((_%hd176764176846%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176763176843%_)))
                                            (_%tl176765176848%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176763176843%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176764176846%_))
                                            (let ((_%e176766176851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176764176846%_))))
                                              (let ((_%hd176767176854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176766176851%_)))
                                                    (_%tl176768176856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176766176851%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd176767176854%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd176767176854%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl176768176856%_))
                                                            (let ((_%e176769176859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl176768176856%_))))
                      (let ((_%hd176770176862%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176769176859%_)))
                            (_%tl176771176864%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176769176859%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176771176864%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl176765176848%_))
                                (let ((_%e176772176867%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl176765176848%_))))
                                  (let ((_%hd176773176870%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176772176867%_)))
                                        (_%tl176774176872%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176772176867%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176773176870%_))
                                        (let ((_%e176775176875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176773176870%_))))
                                          (let ((_%hd176776176878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176775176875%_)))
                                                (_%tl176777176880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176775176875%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd176776176878%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd176776176878%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl176777176880%_))
                                                        (let ((_%e176778176883%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl176777176880%_))))
                  (let ((_%hd176779176886%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176778176883%_)))
                        (_%tl176780176888%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176778176883%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl176780176888%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176774176872%_))
                            (let ((_%e176781176891%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176774176872%_))))
                              (let ((_%hd176782176894%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176781176891%_)))
                                    (_%tl176783176896%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176781176891%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd176782176894%_))
                                    (let ((_%e176784176899%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd176782176894%_))))
                                      (let ((_%hd176785176902%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176784176899%_)))
                                            (_%tl176786176904%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176784176899%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd176785176902%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd176785176902%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176786176904%_))
                                                    (let ((_%e176787176907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176786176904%_))))
                                                      (let ((_%hd176788176910%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176787176907%_)))
                    (_%tl176789176912%_
                     (let () (declare (not safe)) (##cdr _%e176787176907%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl176789176912%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176783176896%_))
                        (if (let ((__tmp179158
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl176783176896%_))))
                              (declare (not safe))
                              (##fx>= __tmp179158 '1))
                            (let ((_g179159_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176783176896%_
                                      '1))))
                              (begin
                                (let ((_g179160_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179159_)
                                             (##values-length _g179159_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179160_ 2)))
                                      (error "Context expects 2 values"
                                             _g179160_)))
                                (let ((_%target176790176915%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179159_ 0)))
                                      (_%tl176792176917%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179159_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176792176917%_))
                                      (let ((_%e176799176920%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176792176917%_))))
                                        (let ((_%hd176800176923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176799176920%_)))
                                              (_%tl176801176925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176799176920%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176801176925%_))
                                              (letrec ((_%loop176793176928%_
                                                        (lambda (_%hd176791176931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref176797176933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176791176931%_))
                      (let ((_%e176794176936%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176791176931%_))))
                        (let ((_%lp-hd176795176939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176794176936%_)))
                              (_%lp-tl176796176941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176794176936%_))))
                          (_%loop176793176928%_
                           _%lp-tl176796176941%_
                           (cons _%lp-hd176795176939%_
                                 _%kw-ref176797176933%_))))
                      (let ((_%kw-ref176798176944%_
                             (reverse _%kw-ref176797176933%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176759176832%_))
                            ((lambda (_%L176947%_
                                      _%L176948%_
                                      _%L176949%_
                                      _%L176950%_
                                      _%L176951%_)
                               (let* ((_%kw-count177002%_
                                       (length (let ((__tmp179161
                                                      (lambda (_%g176994176997%_
                                                               _%g176995176999%_)
                                                        (cons _%g176994176997%_
                                                              _%g176995176999%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179161
                                                  '()
                                                  _%L176948%_))))
                                      (_%self-index177004%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count177002%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L176702%_))
                                     (let* ((_%g177008177022%_
                                             (lambda (_%g177009177019%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g177009177019%_))))
                                            (_%g177007177145%_
                                             (lambda (_%g177009177025%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g177009177025%_))
                                                   (let ((_%e177012177027%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g177009177025%_))))
                                                     (let ((_%hd177013177030%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e177012177027%_)))
                                                           (_%tl177014177032%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e177012177027%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177014177032%_))
                                                           (let ((_%e177015177035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177014177032%_))))
                     (let ((_%hd177016177038%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177015177035%_)))
                           (_%tl177017177040%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177015177035%_))))
                       ((lambda (_%L177043%_ _%L177044%_)
                          (let* ((_%self177061%_
                                  (list-ref _%L177044%_ _%self-index177004%_))
                                 (_%receiver177066%_
                                  (let ((_%$e177063%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L177043%_))))
                                    (if _%$e177063%_
                                        _%$e177063%_
                                        _%self177061%_))))
                            (for-each
                             (lambda (_%g177068177070%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver177066%_
                                _%method-calls174994%_
                                _%slot-refs174995%_
                                _%g177068177070%_))
                             _%L177043%_)
                            (if (_%no-specializer?174998%_)
                                _%stx174902%_
                                (let* ((_%specializer-id177079%_
                                        (let* ((_%id177073%_
                                                (let ((__tmp179162
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174975%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp179162
                                                   '"::specialize")))
                                               (_%specializer-id177076%_
                                                (let ((__tmp179163
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx174902%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id177073%_
                                                   __tmp179163))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id177076%_))
                                          _%specializer-id177076%_))
                                       (_%$klass177081%_
                                        (let ((__tmp179164
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179164)))
                                       (_%$method-table177083%_
                                        (let ((__tmp179165
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179165)))
                                       (_%methods177085%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls174994%_)))
                                       (_%$methods177089%_
                                        (map (lambda (_%id177087%_)
                                               (let ((__tmp179166
                                                      (gensym _%id177087%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179166)))
                                             _%methods177085%_))
                                       (_%_177098%_
                                        (for-each
                                         (lambda (_%g177090177093%_
                                                  _%g177091177095%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls174994%_
                                              _%g177090177093%_
                                              _%g177091177095%_)))
                                         _%methods177085%_
                                         _%$methods177089%_))
                                       (_%methods-bind177108%_
                                        (map (lambda (_%g177100177103%_
                                                      _%g177101177105%_)
                                               (_%generate-method-bind174904%_
                                                _%$klass177081%_
                                                _%$method-table177083%_
                                                _%g177100177103%_
                                                _%g177101177105%_))
                                             _%methods177085%_
                                             _%$methods177089%_))
                                       (_%slots177110%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs174995%_)))
                                       (_%$slots177114%_
                                        (map (lambda (_%id177112%_)
                                               (let ((__tmp179167
                                                      (gensym _%id177112%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179167)))
                                             _%slots177110%_))
                                       (_%_177123%_
                                        (for-each
                                         (lambda (_%g177115177118%_
                                                  _%g177116177120%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs174995%_
                                              _%g177115177118%_
                                              _%g177116177120%_)))
                                         _%slots177110%_
                                         _%$slots177114%_))
                                       (_%slots-bind177132%_
                                        (map (lambda (_%g177124177127%_
                                                      _%g177125177129%_)
                                               (_%generate-slot-bind174905%_
                                                _%$klass177081%_
                                                _%g177124177127%_
                                                _%g177125177129%_))
                                             _%slots177110%_
                                             _%$slots177114%_))
                                       (_%specializer-impl177140%_
                                        (let* ((_%specializer-body177138%_
                                                (map (lambda (_%g177133177135%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver177066%_
                                                        _%$klass177081%_
                                                        _%method-calls174994%_
                                                        _%slot-refs174995%_
                                                        _%g177133177135%_))
                                                     _%L177043%_))
                                               (__tmp179168
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L176704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L176703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp179169
                                   (cons '%#lambda
                                         (cons _%L177044%_
                                               _%specializer-body177138%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp179169 _%L176702%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L176701%_ '())))
                                      '()))
                          '())
                    (cons _%L176700%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp179168
                                           _%stx174902%_)))
                                       (_%specializer-impl177142%_
                                        (_%generate-specializer-impl174906%_
                                         _%$klass177081%_
                                         _%$method-table177083%_
                                         _%methods-bind177108%_
                                         _%slots-bind177132%_
                                         _%specializer-impl177140%_)))
                                  (let ((__tmp179171
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L174975%_)))
                                        (__tmp179170
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id177079%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp179171
                                     '" => "
                                     __tmp179170))
                                  (_%generate-specializer-def174907%_
                                   _%L174975%_
                                   _%specializer-id177079%_
                                   _%specializer-impl177142%_)))))
                        _%tl177017177040%_
                        _%hd177016177038%_)))
                   (_%g177008177022%_ _%g177009177025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g177008177022%_
                                                    _%g177009177025%_)))))
                                       (_%g177007177145%_ _%L176702%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L176702%_))
                                         (let* ((_%g177149177179%_
                                                 (lambda (_%g177150177176%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g177150177176%_))))
                                                (_%g177148177747%_
                                                 (lambda (_%g177150177182%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g177150177182%_))
                                                       (let ((_%e177154177184%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g177150177182%_))))
                 (let ((_%hd177155177187%_
                        (let ()
                          (declare (not safe))
                          (##car _%e177154177184%_)))
                       (_%tl177156177189%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e177154177184%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl177156177189%_))
                       (let ((_%e177157177192%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl177156177189%_))))
                         (let ((_%hd177158177195%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e177157177192%_)))
                               (_%tl177159177197%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e177157177192%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd177158177195%_))
                               (let ((_%e177160177200%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd177158177195%_))))
                                 (let ((_%hd177161177203%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e177160177200%_)))
                                       (_%tl177162177205%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e177160177200%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd177161177203%_))
                                       (let ((_%e177163177208%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd177161177203%_))))
                                         (let ((_%hd177164177211%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e177163177208%_)))
                                               (_%tl177165177213%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e177163177208%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd177164177211%_))
                                               (let ((_%e177166177216%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd177164177211%_))))
                                                 (let ((_%hd177167177219%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e177166177216%_)))
                                                       (_%tl177168177221%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e177166177216%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl177168177221%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177165177213%_))
                                                           (let ((_%e177169177224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177165177213%_))))
                     (let ((_%hd177170177227%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177169177224%_)))
                           (_%tl177171177229%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177169177224%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl177171177229%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl177162177205%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl177159177197%_))
                                   (let ((_%e177172177232%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl177159177197%_))))
                                     (let ((_%hd177173177235%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e177172177232%_)))
                                           (_%tl177174177237%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e177172177232%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl177174177237%_))
                                           ((lambda (_%L177240%_
                                                     _%L177241%_
                                                     _%L177242%_)
                                              (let* ((_%g177266177280%_
                                                      (lambda (_%g177267177277%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177267177277%_))))
                                                     (_%g177265177327%_
                                                      (lambda (_%g177267177283%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177267177283%_))
                                                            (let ((_%e177270177285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177267177283%_))))
                      (let ((_%hd177271177288%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177270177285%_)))
                            (_%tl177272177290%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177270177285%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl177272177290%_))
                            (let ((_%e177273177293%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl177272177290%_))))
                              (let ((_%hd177274177296%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e177273177293%_)))
                                    (_%tl177275177298%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e177273177293%_))))
                                ((lambda (_%L177301%_ _%L177302%_)
                                   (let* ((_%self177315%_
                                           (list-ref
                                            _%L177302%_
                                            _%self-index177004%_))
                                          (_%receiver177320%_
                                           (let ((_%$e177317%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L177301%_))))
                                             (if _%$e177317%_
                                                 _%$e177317%_
                                                 _%self177315%_))))
                                     (for-each
                                      (lambda (_%g177322177324%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver177320%_
                                         _%method-calls174994%_
                                         _%slot-refs174995%_
                                         _%g177322177324%_))
                                      _%L177301%_)))
                                 _%tl177275177298%_
                                 _%hd177274177296%_)))
                            (_%g177266177280%_ _%g177267177283%_))))
                    (_%g177266177280%_ _%g177267177283%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177265177327%_
                                                 _%L177241%_))
                                              (let* ((_%g177330177349%_
                                                      (lambda (_%g177331177346%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177331177346%_))))
                                                     (_%g177329177460%_
                                                      (lambda (_%g177331177352%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177331177352%_))
                                                            (let ((_%e177333177354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177331177352%_))))
                      (let ((_%hd177334177357%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177333177354%_)))
                            (_%tl177335177359%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177333177354%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl177335177359%_))
                            (let ((_g179172_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl177335177359%_
                                      '0))))
                              (begin
                                (let ((_g179173_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179172_)
                                             (##values-length _g179172_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179173_ 2)))
                                      (error "Context expects 2 values"
                                             _g179173_)))
                                (let ((_%target177336177362%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179172_ 0)))
                                      (_%tl177338177364%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179172_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177338177364%_))
                                      (letrec ((_%loop177339177367%_
                                                (lambda (_%hd177337177370%_
                                                         _%clause177343177372%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd177337177370%_))
                                                      (let ((_%e177340177375%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd177337177370%_))))
                (let ((_%lp-hd177341177378%_
                       (let () (declare (not safe)) (##car _%e177340177375%_)))
                      (_%lp-tl177342177380%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e177340177375%_))))
                  (_%loop177339177367%_
                   _%lp-tl177342177380%_
                   (cons _%lp-hd177341177378%_ _%clause177343177372%_))))
              (let ((_%clause177344177383%_ (reverse _%clause177343177372%_)))
                ((lambda (_%L177386%_)
                   (for-each
                    (lambda (_%clause177399%_)
                      (let* ((_%g177401177412%_
                              (lambda (_%g177402177409%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g177402177409%_))))
                             (_%g177400177450%_
                              (lambda (_%g177402177415%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g177402177415%_))
                                    (let ((_%e177405177417%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g177402177415%_))))
                                      (let ((_%hd177406177420%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e177405177417%_)))
                                            (_%tl177407177422%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e177405177417%_))))
                                        ((lambda (_%L177425%_ _%L177426%_)
                                           (let* ((_%self177438%_
                                                   (list-ref
                                                    _%L177426%_
                                                    _%self-index177004%_))
                                                  (_%receiver177443%_
                                                   (let ((_%$e177440%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L177425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e177440%_
                                                         _%$e177440%_
                                                         _%self177438%_))))
                                             (for-each
                                              (lambda (_%g177445177447%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver177443%_
                                                 _%method-calls174994%_
                                                 _%slot-refs174995%_
                                                 _%g177445177447%_))
                                              _%L177425%_)))
                                         _%tl177407177422%_
                                         _%hd177406177420%_)))
                                    (_%g177401177412%_ _%g177402177415%_)))))
                        (_%g177400177450%_ _%clause177399%_)))
                    (let ((__tmp179174
                           (lambda (_%g177452177455%_ _%g177453177457%_)
                             (cons _%g177452177455%_ _%g177453177457%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179174 '() _%L177386%_))))
                 _%clause177344177383%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop177339177367%_
                                         _%target177336177362%_
                                         '()))
                                      (_%g177330177349%_ _%g177331177352%_)))))
                            (_%g177330177349%_ _%g177331177352%_))))
                    (_%g177330177349%_ _%g177331177352%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177329177460%_
                                                 _%L177240%_))
                                              (if (_%no-specializer?174998%_)
                                                  _%stx174902%_
                                                  (let* ((_%specializer-id177469%_
                                                          (let* ((_%id177463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179175
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L174975%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179175 '"::specialize")))
                         (_%specializer-id177466%_
                          (let ((__tmp179176
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174902%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id177463%_
                             __tmp179176))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id177466%_))
                    _%specializer-id177466%_))
                 (_%$klass177471%_
                  (let ((__tmp179177
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179177)))
                 (_%$method-table177473%_
                  (let ((__tmp179178
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179178)))
                 (_%methods177475%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174994%_)))
                 (_%$methods177479%_
                  (map (lambda (_%id177477%_)
                         (let ((__tmp179179 (gensym _%id177477%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179179)))
                       _%methods177475%_))
                 (_%_177488%_
                  (for-each
                   (lambda (_%g177480177483%_ _%g177481177485%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174994%_
                        _%g177480177483%_
                        _%g177481177485%_)))
                   _%methods177475%_
                   _%$methods177479%_))
                 (_%methods-bind177498%_
                  (map (lambda (_%g177490177493%_ _%g177491177495%_)
                         (_%generate-method-bind174904%_
                          _%$klass177471%_
                          _%$method-table177473%_
                          _%g177490177493%_
                          _%g177491177495%_))
                       _%methods177475%_
                       _%$methods177479%_))
                 (_%slots177500%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174995%_)))
                 (_%$slots177504%_
                  (map (lambda (_%id177502%_)
                         (let ((__tmp179180 (gensym _%id177502%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179180)))
                       _%slots177500%_))
                 (_%_177513%_
                  (for-each
                   (lambda (_%g177505177508%_ _%g177506177510%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174995%_
                        _%g177505177508%_
                        _%g177506177510%_)))
                   _%slots177500%_
                   _%$slots177504%_))
                 (_%slots-bind177522%_
                  (map (lambda (_%g177514177517%_ _%g177515177519%_)
                         (_%generate-slot-bind174905%_
                          _%$klass177471%_
                          _%g177514177517%_
                          _%g177515177519%_))
                       _%slots177500%_
                       _%$slots177504%_))
                 (_%specializer-lambda-expr177600%_
                  (let* ((_%g177524177538%_
                          (lambda (_%g177525177535%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177525177535%_))))
                         (_%g177523177597%_
                          (lambda (_%g177525177541%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177525177541%_))
                                (let ((_%e177528177543%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177525177541%_))))
                                  (let ((_%hd177529177546%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177528177543%_)))
                                        (_%tl177530177548%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177528177543%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl177530177548%_))
                                        (let ((_%e177531177551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl177530177548%_))))
                                          (let ((_%hd177532177554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e177531177551%_)))
                                                (_%tl177533177556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e177531177551%_))))
                                            ((lambda (_%L177559%_ _%L177560%_)
                                               (let* ((_%self177583%_
                                                       (list-ref
                                                        _%L177560%_
                                                        _%self-index177004%_))
                                                      (_%receiver177588%_
                                                       (let ((_%$e177585%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L177559%_))))
                 (if _%$e177585%_ _%$e177585%_ _%self177583%_)))
              (_%body177594%_
               (map (lambda (_%g177589177591%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver177588%_
                       _%$klass177471%_
                       _%method-calls174994%_
                       _%slot-refs174995%_
                       _%g177589177591%_))
                    _%L177559%_))
              (__tmp179181 (cons '%#lambda (cons _%L177560%_ _%body177594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp179181
                                                  _%L177241%_)))
                                             _%tl177533177556%_
                                             _%hd177532177554%_)))
                                        (_%g177524177538%_
                                         _%g177525177541%_))))
                                (_%g177524177538%_ _%g177525177541%_)))))
                    (_%g177523177597%_ _%L177241%_)))
                 (_%specializer-case-lambda-expr177740%_
                  (let* ((_%g177602177621%_
                          (lambda (_%g177603177618%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177603177618%_))))
                         (_%g177601177737%_
                          (lambda (_%g177603177624%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177603177624%_))
                                (let ((_%e177605177626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177603177624%_))))
                                  (let ((_%hd177606177629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177605177626%_)))
                                        (_%tl177607177631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177605177626%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl177607177631%_))
                                        (let ((_g179182_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl177607177631%_
                                                  '0))))
                                          (begin
                                            (let ((_g179183_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g179182_)
                                                         (##values-length
                                                          _g179182_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g179183_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g179183_)))
                                            (let ((_%target177608177634%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179182_
                                                      0)))
                                                  (_%tl177610177636%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179182_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl177610177636%_))
                                                  (letrec ((_%loop177611177639%_
                                                            (lambda (_%hd177609177642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause177615177644%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd177609177642%_))
                          (let ((_%e177612177647%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd177609177642%_))))
                            (let ((_%lp-hd177613177650%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177612177647%_)))
                                  (_%lp-tl177614177652%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177612177647%_))))
                              (_%loop177611177639%_
                               _%lp-tl177614177652%_
                               (cons _%lp-hd177613177650%_
                                     _%clause177615177644%_))))
                          (let ((_%clause177616177655%_
                                 (reverse _%clause177615177644%_)))
                            ((lambda (_%L177658%_)
                               (let* ((_%clauses177735%_
                                       (map (lambda (_%clause177672%_)
                                              (let* ((_%g177674177685%_
                                                      (lambda (_%g177675177682%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177675177682%_))))
                                                     (_%g177673177725%_
                                                      (lambda (_%g177675177688%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177675177688%_))
                                                            (let ((_%e177678177690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177675177688%_))))
                      (let ((_%hd177679177693%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177678177690%_)))
                            (_%tl177680177695%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177678177690%_))))
                        ((lambda (_%L177698%_ _%L177699%_)
                           (let* ((_%self177711%_
                                   (list-ref _%L177699%_ _%self-index177004%_))
                                  (_%receiver177716%_
                                   (let ((_%$e177713%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L177698%_))))
                                     (if _%$e177713%_
                                         _%$e177713%_
                                         _%self177711%_)))
                                  (_%body177722%_
                                   (map (lambda (_%g177717177719%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver177716%_
                                           _%$klass177471%_
                                           _%method-calls174994%_
                                           _%slot-refs174995%_
                                           _%g177717177719%_))
                                        _%L177698%_)))
                             (cons _%L177699%_ _%body177722%_)))
                         _%tl177680177695%_
                         _%hd177679177693%_)))
                    (_%g177674177685%_ _%g177675177688%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177673177725%_
                                                 _%clause177672%_)))
                                            (let ((__tmp179184
                                                   (lambda (_%g177727177730%_
                                                            _%g177728177732%_)
                                                     (cons _%g177727177730%_
                                                           _%g177728177732%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp179184
                                               '()
                                               _%L177658%_))))
                                      (__tmp179185
                                       (cons '%#case-lambda
                                             _%clauses177735%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp179185
                                  _%L177240%_)))
                             _%clause177616177655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop177611177639%_
                                                     _%target177608177634%_
                                                     '()))
                                                  (_%g177602177621%_
                                                   _%g177603177624%_)))))
                                        (_%g177602177621%_
                                         _%g177603177624%_))))
                                (_%g177602177621%_ _%g177603177624%_)))))
                    (_%g177601177737%_ _%L177240%_)))
                 (_%specializer-impl177742%_
                  (let ((__tmp179186
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L176704%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L176703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp179187
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L177242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr177600%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr177740%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179187
                                                _%stx174902%_))
                                             '()))
                                 '())
                           (cons _%L176701%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L176700%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179186 _%stx174902%_)))
                 (_%specializer-impl177744%_
                  (_%generate-specializer-impl174906%_
                   _%$klass177471%_
                   _%$method-table177473%_
                   _%methods-bind177498%_
                   _%slots-bind177522%_
                   _%specializer-impl177742%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179189
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L174975%_)))
                                                          (__tmp179188
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id177469%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179189
                                                       '" => "
                                                       __tmp179188))
                                                    (_%generate-specializer-def174907%_
                                                     _%L174975%_
                                                     _%specializer-id177469%_
                                                     _%specializer-impl177744%_))))
                                            _%hd177173177235%_
                                            _%hd177170177227%_
                                            _%hd177167177219%_)
                                           (_%g177149177179%_
                                            _%g177150177182%_))))
                                   (_%g177149177179%_ _%g177150177182%_))
                               (_%g177149177179%_ _%g177150177182%_))
                           (_%g177149177179%_ _%g177150177182%_))))
                   (_%g177149177179%_ _%g177150177182%_))
               (_%g177149177179%_ _%g177150177182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g177149177179%_
                                                _%g177150177182%_))))
                                       (_%g177149177179%_ _%g177150177182%_))))
                               (_%g177149177179%_ _%g177150177182%_))))
                       (_%g177149177179%_ _%g177150177182%_))))
               (_%g177149177179%_ _%g177150177182%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g177148177747%_ _%L176702%_))
                                         _%stx174902%_))))
                             _%hd176800176923%_
                             _%kw-ref176798176944%_
                             _%hd176788176910%_
                             _%hd176779176886%_
                             _%hd176770176862%_)
                            (_%g176744176806%_ _%g176745176809%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176793176928%_
                                                 _%target176790176915%_
                                                 '()))
                                              (_%g176744176806%_
                                               _%g176745176809%_))))
                                      (_%g176744176806%_ _%g176745176809%_)))))
                            (_%g176744176806%_ _%g176745176809%_))
                        (_%g176744176806%_ _%g176745176809%_))
                    (_%g176744176806%_ _%g176745176809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176744176806%_
                                                     _%g176745176809%_))
                                                (_%g176744176806%_
                                                 _%g176745176809%_))
                                            (_%g176744176806%_
                                             _%g176745176809%_))))
                                    (_%g176744176806%_ _%g176745176809%_))))
                            (_%g176744176806%_ _%g176745176809%_))
                        (_%g176744176806%_ _%g176745176809%_))))
                (_%g176744176806%_ _%g176745176809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176744176806%_
                                                     _%g176745176809%_))
                                                (_%g176744176806%_
                                                 _%g176745176809%_))))
                                        (_%g176744176806%_
                                         _%g176745176809%_))))
                                (_%g176744176806%_ _%g176745176809%_))
                            (_%g176744176806%_ _%g176745176809%_))))
                    (_%g176744176806%_ _%g176745176809%_))
                (_%g176744176806%_ _%g176745176809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176744176806%_
                                                     _%g176745176809%_))))
                                            (_%g176744176806%_
                                             _%g176745176809%_))))
                                    (_%g176744176806%_ _%g176745176809%_))
                                (_%g176744176806%_ _%g176745176809%_))
                            (_%g176744176806%_ _%g176745176809%_))))
                    (_%g176744176806%_ _%g176745176809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176744176806%_
                                                     _%g176745176809%_))))
                                            (_%g176744176806%_
                                             _%g176745176809%_))
                                        (_%g176744176806%_ _%g176745176809%_))
                                    (_%g176744176806%_ _%g176745176809%_))))
                            (_%g176744176806%_ _%g176745176809%_)))))
                (_%g176743177751%_ _%L176701%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd176577176695%_
                                                    _%hd176574176687%_
                                                    _%hd176571176679%_
                                                    _%hd176568176671%_
                                                    _%hd176550176623%_)
                                                   (_%g176530176583%_
                                                    _%g176531176586%_))))
                                           (_%g176530176583%_
                                            _%g176531176586%_))
                                       (_%g176530176583%_ _%g176531176586%_))
                                   (_%g176530176583%_ _%g176531176586%_))
                               (_%g176530176583%_ _%g176531176586%_))))
                       (_%g176530176583%_ _%g176531176586%_))
                   (_%g176530176583%_ _%g176531176586%_))
               (_%g176530176583%_ _%g176531176586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176530176583%_
                                                _%g176531176586%_))
                                           (_%g176530176583%_
                                            _%g176531176586%_))))
                                   (_%g176530176583%_ _%g176531176586%_))))
                           (_%g176530176583%_ _%g176531176586%_))))
                   (_%g176530176583%_ _%g176531176586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176530176583%_
                                                    _%g176531176586%_))
                                               (_%g176530176583%_
                                                _%g176531176586%_))
                                           (_%g176530176583%_
                                            _%g176531176586%_))))
                                   (_%g176530176583%_ _%g176531176586%_))))
                           (_%g176530176583%_ _%g176531176586%_))
                       (_%g176530176583%_ _%g176531176586%_))))
               (_%g176530176583%_ _%g176531176586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176530176583%_
                                                _%g176531176586%_))))
                                       (_%g176530176583%_ _%g176531176586%_))))
                               (_%g176530176583%_ _%g176531176586%_))
                           (_%g176530176583%_ _%g176531176586%_))
                       (_%g176530176583%_ _%g176531176586%_))))
               (_%g176530176583%_ _%g176531176586%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176529177754%_ _%L174974%_))
                                         _%stx174902%_))))))))
                  (_%__kont177988177989%_ (lambda () _%stx174902%_)))
              (let ((_%__match178017178018%_
                     (lambda (_%e174914174942%_
                              _%hd174915174945%_
                              _%tl174916174947%_
                              _%e174917174950%_
                              _%hd174918174953%_
                              _%tl174919174955%_
                              _%e174920174958%_
                              _%hd174921174961%_
                              _%tl174922174963%_
                              _%e174923174966%_
                              _%hd174924174969%_
                              _%tl174925174971%_)
                       (let ((_%L174974%_ _%hd174924174969%_)
                             (_%L174975%_ _%hd174921174961%_))
                         (if (let ((__tmp179190
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L174975%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp179190))
                             (_%__kont177986177987%_ _%L174974%_ _%L174975%_)
                             (_%__kont177988177989%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx177984177985%_))
                    (let ((_%e174914174942%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx177984177985%_))))
                      (let ((_%tl174916174947%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174914174942%_)))
                            (_%hd174915174945%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174914174942%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174916174947%_))
                            (let ((_%e174917174950%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174916174947%_))))
                              (let ((_%tl174919174955%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174917174950%_)))
                                    (_%hd174918174953%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174917174950%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd174918174953%_))
                                    (let ((_%e174920174958%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd174918174953%_))))
                                      (let ((_%tl174922174963%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174920174958%_)))
                                            (_%hd174921174961%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174920174958%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174922174963%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174919174955%_))
                                                (let ((_%e174923174966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174919174955%_))))
                                                  (let ((_%tl174925174971%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174923174966%_)))
                                                        (_%hd174924174969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174923174966%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174925174971%_))
                                                        (_%__match178017178018%_
                                                         _%e174914174942%_
                                                         _%hd174915174945%_
                                                         _%tl174916174947%_
                                                         _%e174917174950%_
                                                         _%hd174918174953%_
                                                         _%tl174919174955%_
                                                         _%e174920174958%_
                                                         _%hd174921174961%_
                                                         _%tl174922174963%_
                                                         _%e174923174966%_
                                                         _%hd174924174969%_
                                                         _%tl174925174971%_)
                                                        (_%__kont177988177989%_))))
                                                (_%__kont177988177989%_))
                                            (_%__kont177988177989%_))))
                                    (_%__kont177988177989%_))))
                            (_%__kont177988177989%_))))
                    (_%__kont177988177989%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self174754%_ _%stx174755%_)
        (let* ((_%__stx178020178021%_ _%stx174755%_)
               (_%g174758174791%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx178020178021%_)))))
          (let ((_%__kont178022178023%_ (lambda (_%L174881%_) _%L174881%_))
                (_%__kont178024178025%_
                 (lambda (_%L174820%_ _%L174821%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self174754%_ _%L174820%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx178020178021%_))
                (let ((_%e174761174841%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx178020178021%_))))
                  (let ((_%tl174763174846%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174761174841%_)))
                        (_%hd174762174844%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174761174841%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174763174846%_))
                        (let ((_%e174764174849%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174763174846%_))))
                          (let ((_%tl174766174854%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174764174849%_)))
                                (_%hd174765174852%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174764174849%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174765174852%_))
                                (let ((_%e174767174857%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174765174852%_))))
                                  (let ((_%tl174769174862%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174767174857%_)))
                                        (_%hd174768174860%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174767174857%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd174768174860%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd174768174860%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174769174862%_))
                                                (let ((_%e174770174865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174769174862%_))))
                                                  (let ((_%tl174772174870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174770174865%_)))
                                                        (_%hd174771174868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174770174865%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174772174870%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174766174854%_))
                                                            (let ((_%e174773174873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174766174854%_))))
                      (let ((_%tl174775174878%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174773174873%_)))
                            (_%hd174774174876%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174773174873%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174775174878%_))
                            (_%__kont178022178023%_ _%hd174771174868%_)
                            (let ()
                              (declare (not safe))
                              (_%g174758174791%_)))))
                    (let () (declare (not safe)) (_%g174758174791%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl174766174854%_))
                    (let ((_%e174784174812%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174766174854%_))))
                      (let ((_%tl174786174817%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174784174812%_)))
                            (_%hd174785174815%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174784174812%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174786174817%_))
                            (_%__kont178024178025%_
                             _%hd174785174815%_
                             _%hd174765174852%_)
                            (let ()
                              (declare (not safe))
                              (_%g174758174791%_)))))
                    (let () (declare (not safe)) (_%g174758174791%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174766174854%_))
                                                    (let ((_%e174784174812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174766174854%_))))
                                                      (let ((_%tl174786174817%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e174784174812%_)))
                    (_%hd174785174815%_
                     (let () (declare (not safe)) (##car _%e174784174812%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174786174817%_))
                    (_%__kont178024178025%_
                     _%hd174785174815%_
                     _%hd174765174852%_)
                    (let () (declare (not safe)) (_%g174758174791%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174758174791%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174766174854%_))
                                                (let ((_%e174784174812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174766174854%_))))
                                                  (let ((_%tl174786174817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174784174812%_)))
                                                        (_%hd174785174815%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174784174812%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174786174817%_))
                                                        (_%__kont178024178025%_
                                                         _%hd174785174815%_
                                                         _%hd174765174852%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g174758174791%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g174758174791%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174766174854%_))
                                            (let ((_%e174784174812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174766174854%_))))
                                              (let ((_%tl174786174817%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174784174812%_)))
                                                    (_%hd174785174815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174784174812%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl174786174817%_))
                                                    (_%__kont178024178025%_
                                                     _%hd174785174815%_
                                                     _%hd174765174852%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174758174791%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g174758174791%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174766174854%_))
                                    (let ((_%e174784174812%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174766174854%_))))
                                      (let ((_%tl174786174817%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174784174812%_)))
                                            (_%hd174785174815%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174784174812%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174786174817%_))
                                            (_%__kont178024178025%_
                                             _%hd174785174815%_
                                             _%hd174765174852%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g174758174791%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g174758174791%_))))))
                        (let () (declare (not safe)) (_%g174758174791%_)))))
                (let () (declare (not safe)) (_%g174758174791%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self174670%_ _%stx174671%_)
        (let* ((_%g174673174694%_
                (lambda (_%g174674174691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g174674174691%_))))
               (_%g174672174751%_
                (lambda (_%g174674174697%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g174674174697%_))
                      (let ((_%e174678174699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g174674174697%_))))
                        (let ((_%hd174679174702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174678174699%_)))
                              (_%tl174680174704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174678174699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl174680174704%_))
                              (let ((_%e174681174707%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl174680174704%_))))
                                (let ((_%hd174682174710%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e174681174707%_)))
                                      (_%tl174683174712%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e174681174707%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174683174712%_))
                                      (let ((_%e174684174715%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174683174712%_))))
                                        (let ((_%hd174685174718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174684174715%_)))
                                              (_%tl174686174720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174684174715%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl174686174720%_))
                                              (let ((_%e174687174723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl174686174720%_))))
                                                (let ((_%hd174688174726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e174687174723%_)))
                                                      (_%tl174689174728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e174687174723%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl174689174728%_))
                                                      ((lambda (_%L174731%_
                                                                _%L174732%_
                                                                _%L174733%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self174670%_
                                                            _%L174732%_)))
                                                       _%hd174688174726%_
                                                       _%hd174685174718%_
                                                       _%hd174682174710%_)
                                                      (_%g174673174694%_
                                                       _%g174674174697%_))))
                                              (_%g174673174694%_
                                               _%g174674174697%_))))
                                      (_%g174673174694%_ _%g174674174697%_))))
                              (_%g174673174694%_ _%g174674174697%_))))
                      (_%g174673174694%_ _%g174674174697%_)))))
          (_%g174672174751%_ _%stx174671%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self173631%_ _%stx173632%_)
        (let* ((_%__stx178086178087%_ _%stx173632%_)
               (_%g173640173862%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx178086178087%_)))))
          (let ((_%__kont178088178089%_
                 (lambda (_%L174619%_ _%L174620%_ _%L174621%_ _%L174622%_)
                   (let ((__tmp179192
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173631%_ 'methods)))
                         (__tmp179191
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174620%_))))
                     (declare (not safe))
                     (hash-put! __tmp179192 __tmp179191 '#t))
                   (for-each
                    (lambda (_%g174655174657%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173631%_ _%g174655174657%_)))
                    (let ((__tmp179193
                           (lambda (_%g174659174662%_ _%g174660174664%_)
                             (cons _%g174659174662%_ _%g174660174664%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179193 '() _%L174619%_)))))
                (_%__kont178092178093%_
                 (lambda (_%L174454%_
                          _%L174455%_
                          _%L174456%_
                          _%L174457%_
                          _%L174458%_)
                   (let ((__tmp179195
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173631%_ 'methods)))
                         (__tmp179194
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174455%_))))
                     (declare (not safe))
                     (hash-put! __tmp179195 __tmp179194 '#t))
                   (for-each
                    (lambda (_%g174498174500%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173631%_ _%g174498174500%_)))
                    (let ((__tmp179196
                           (lambda (_%g174502174505%_ _%g174503174507%_)
                             (cons _%g174502174505%_ _%g174503174507%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179196 '() _%L174454%_)))))
                (_%__kont178096178097%_
                 (lambda (_%L174287%_ _%L174288%_ _%L174289%_)
                   (let ((__tmp179198
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173631%_ 'slots)))
                         (__tmp179197
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174287%_))))
                     (declare (not safe))
                     (hash-put! __tmp179198 __tmp179197 '#t))))
                (_%__kont178098178099%_
                 (lambda (_%L174164%_ _%L174165%_ _%L174166%_ _%L174167%_)
                   (let ((__tmp179200
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173631%_ 'slots)))
                         (__tmp179199
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174165%_))))
                     (declare (not safe))
                     (hash-put! __tmp179200 __tmp179199 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173631%_ _%L174164%_))))
                (_%__kont178100178101%_
                 (lambda (_%L174038%_ _%L174039%_)
                   (let* ((_%accessor174061%_
                           (let ((__tmp179201
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L174039%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179201)))
                          (_%klass174063%_
                           (let ((__tmp179202
                                  (##structure-ref
                                   _%accessor174061%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173632%_
                              __tmp179202)))
                          (_%slot174065%_
                           (##structure-ref
                            _%accessor174061%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor174061%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass174063%_
                                    _%slot174065%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass174063%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179204
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173631%_ 'slots)))
                               (__tmp179203
                                (##structure-ref
                                 _%accessor174061%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp179204 __tmp179203 '#t))))))
                (_%__kont178102178103%_
                 (lambda (_%L173938%_ _%L173939%_ _%L173940%_)
                   (let* ((_%mutator173967%_
                           (let ((__tmp179205
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L173940%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179205)))
                          (_%klass173969%_
                           (let ((__tmp179206
                                  (##structure-ref
                                   _%mutator173967%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173632%_
                              __tmp179206)))
                          (_%slot173971%_
                           (##structure-ref
                            _%mutator173967%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator173967%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass173969%_
                                    _%slot173971%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass173969%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179207
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173631%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp179207 _%slot173971%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self173631%_ _%L173938%_)))))
                (_%__kont178104178105%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self173631%_ _%stx173632%_)))))
            (let* ((_%__match178585178586%_
                    (lambda (_%e173834173874%_
                             _%hd173835173877%_
                             _%tl173836173879%_
                             _%e173837173882%_
                             _%hd173838173885%_
                             _%tl173839173887%_
                             _%e173840173890%_
                             _%hd173841173893%_
                             _%tl173842173895%_
                             _%e173843173898%_
                             _%hd173844173901%_
                             _%tl173845173903%_
                             _%e173846173906%_
                             _%hd173847173909%_
                             _%tl173848173911%_
                             _%e173849173914%_
                             _%hd173850173917%_
                             _%tl173851173919%_
                             _%e173852173922%_
                             _%hd173853173925%_
                             _%tl173854173927%_
                             _%e173855173930%_
                             _%hd173856173933%_
                             _%tl173857173935%_)
                      (let ((_%L173938%_ _%hd173856173933%_)
                            (_%L173939%_ _%hd173853173925%_)
                            (_%L173940%_ _%hd173844173901%_))
                        (if (and (let ((__tmp179208
                                        (let ((__tmp179209
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L173940%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179209))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179208
                                    'gxc#!mutator::t))
                                 (let ((__tmp179210
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173631%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173939%_
                                    __tmp179210)))
                            (_%__kont178102178103%_
                             _%L173938%_
                             _%L173939%_
                             _%L173940%_)
                            (_%__kont178104178105%_)))))
                   (_%__match178583178584%_
                    (lambda (_%e173834173874%_
                             _%hd173835173877%_
                             _%tl173836173879%_
                             _%e173837173882%_
                             _%hd173838173885%_
                             _%tl173839173887%_
                             _%e173840173890%_
                             _%hd173841173893%_
                             _%tl173842173895%_
                             _%e173843173898%_
                             _%hd173844173901%_
                             _%tl173845173903%_
                             _%e173846173906%_
                             _%hd173847173909%_
                             _%tl173848173911%_
                             _%e173849173914%_
                             _%hd173850173917%_
                             _%tl173851173919%_
                             _%e173852173922%_
                             _%hd173853173925%_
                             _%tl173854173927%_
                             _%e173855173930%_
                             _%hd173856173933%_
                             _%tl173857173935%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173857173935%_))
                          (_%__match178585178586%_
                           _%e173834173874%_
                           _%hd173835173877%_
                           _%tl173836173879%_
                           _%e173837173882%_
                           _%hd173838173885%_
                           _%tl173839173887%_
                           _%e173840173890%_
                           _%hd173841173893%_
                           _%tl173842173895%_
                           _%e173843173898%_
                           _%hd173844173901%_
                           _%tl173845173903%_
                           _%e173846173906%_
                           _%hd173847173909%_
                           _%tl173848173911%_
                           _%e173849173914%_
                           _%hd173850173917%_
                           _%tl173851173919%_
                           _%e173852173922%_
                           _%hd173853173925%_
                           _%tl173854173927%_
                           _%e173855173930%_
                           _%hd173856173933%_
                           _%tl173857173935%_)
                          (_%__kont178104178105%_))))
                   (_%__match178577178578%_
                    (lambda (_%e173834173874%_
                             _%hd173835173877%_
                             _%tl173836173879%_
                             _%e173837173882%_
                             _%hd173838173885%_
                             _%tl173839173887%_
                             _%e173840173890%_
                             _%hd173841173893%_
                             _%tl173842173895%_
                             _%e173843173898%_
                             _%hd173844173901%_
                             _%tl173845173903%_
                             _%e173846173906%_
                             _%hd173847173909%_
                             _%tl173848173911%_
                             _%e173849173914%_
                             _%hd173850173917%_
                             _%tl173851173919%_
                             _%e173852173922%_
                             _%hd173853173925%_
                             _%tl173854173927%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173848173911%_))
                          (let ((_%e173855173930%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173848173911%_))))
                            (let ((_%tl173857173935%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173855173930%_)))
                                  (_%hd173856173933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173855173930%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173857173935%_))
                                  (_%__match178585178586%_
                                   _%e173834173874%_
                                   _%hd173835173877%_
                                   _%tl173836173879%_
                                   _%e173837173882%_
                                   _%hd173838173885%_
                                   _%tl173839173887%_
                                   _%e173840173890%_
                                   _%hd173841173893%_
                                   _%tl173842173895%_
                                   _%e173843173898%_
                                   _%hd173844173901%_
                                   _%tl173845173903%_
                                   _%e173846173906%_
                                   _%hd173847173909%_
                                   _%tl173848173911%_
                                   _%e173849173914%_
                                   _%hd173850173917%_
                                   _%tl173851173919%_
                                   _%e173852173922%_
                                   _%hd173853173925%_
                                   _%tl173854173927%_
                                   _%e173855173930%_
                                   _%hd173856173933%_
                                   _%tl173857173935%_)
                                  (_%__kont178104178105%_))))
                          (_%__kont178104178105%_))))
                   (_%__match178523178524%_
                    (lambda (_%e173810173982%_
                             _%hd173811173985%_
                             _%tl173812173987%_
                             _%e173813173990%_
                             _%hd173814173993%_
                             _%tl173815173995%_
                             _%e173816173998%_
                             _%hd173817174001%_
                             _%tl173818174003%_
                             _%e173819174006%_
                             _%hd173820174009%_
                             _%tl173821174011%_
                             _%e173822174014%_
                             _%hd173823174017%_
                             _%tl173824174019%_
                             _%e173825174022%_
                             _%hd173826174025%_
                             _%tl173827174027%_
                             _%e173828174030%_
                             _%hd173829174033%_
                             _%tl173830174035%_)
                      (let ((_%L174038%_ _%hd173829174033%_)
                            (_%L174039%_ _%hd173820174009%_))
                        (if (and (let ((__tmp179211
                                        (let ((__tmp179212
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L174039%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179212))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179211
                                    'gxc#!accessor::t))
                                 (let ((__tmp179213
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173631%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174038%_
                                    __tmp179213)))
                            (_%__kont178100178101%_ _%L174038%_ _%L174039%_)
                            (_%__kont178104178105%_)))))
                   (_%__match178521178522%_
                    (lambda (_%e173810173982%_
                             _%hd173811173985%_
                             _%tl173812173987%_
                             _%e173813173990%_
                             _%hd173814173993%_
                             _%tl173815173995%_
                             _%e173816173998%_
                             _%hd173817174001%_
                             _%tl173818174003%_
                             _%e173819174006%_
                             _%hd173820174009%_
                             _%tl173821174011%_
                             _%e173822174014%_
                             _%hd173823174017%_
                             _%tl173824174019%_
                             _%e173825174022%_
                             _%hd173826174025%_
                             _%tl173827174027%_
                             _%e173828174030%_
                             _%hd173829174033%_
                             _%tl173830174035%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173824174019%_))
                          (_%__match178523178524%_
                           _%e173810173982%_
                           _%hd173811173985%_
                           _%tl173812173987%_
                           _%e173813173990%_
                           _%hd173814173993%_
                           _%tl173815173995%_
                           _%e173816173998%_
                           _%hd173817174001%_
                           _%tl173818174003%_
                           _%e173819174006%_
                           _%hd173820174009%_
                           _%tl173821174011%_
                           _%e173822174014%_
                           _%hd173823174017%_
                           _%tl173824174019%_
                           _%e173825174022%_
                           _%hd173826174025%_
                           _%tl173827174027%_
                           _%e173828174030%_
                           _%hd173829174033%_
                           _%tl173830174035%_)
                          (_%__match178577178578%_
                           _%e173810173982%_
                           _%hd173811173985%_
                           _%tl173812173987%_
                           _%e173813173990%_
                           _%hd173814173993%_
                           _%tl173815173995%_
                           _%e173816173998%_
                           _%hd173817174001%_
                           _%tl173818174003%_
                           _%e173819174006%_
                           _%hd173820174009%_
                           _%tl173821174011%_
                           _%e173822174014%_
                           _%hd173823174017%_
                           _%tl173824174019%_
                           _%e173825174022%_
                           _%hd173826174025%_
                           _%tl173827174027%_
                           _%e173828174030%_
                           _%hd173829174033%_
                           _%tl173830174035%_))))
                   (_%__match178467178468%_
                    (lambda (_%e173775174076%_
                             _%hd173776174079%_
                             _%tl173777174081%_
                             _%e173778174084%_
                             _%hd173779174087%_
                             _%tl173780174089%_
                             _%e173781174092%_
                             _%hd173782174095%_
                             _%tl173783174097%_
                             _%e173784174100%_
                             _%hd173785174103%_
                             _%tl173786174105%_
                             _%e173787174108%_
                             _%hd173788174111%_
                             _%tl173789174113%_
                             _%e173790174116%_
                             _%hd173791174119%_
                             _%tl173792174121%_
                             _%e173793174124%_
                             _%hd173794174127%_
                             _%tl173795174129%_
                             _%e173796174132%_
                             _%hd173797174135%_
                             _%tl173798174137%_
                             _%e173799174140%_
                             _%hd173800174143%_
                             _%tl173801174145%_
                             _%e173802174148%_
                             _%hd173803174151%_
                             _%tl173804174153%_
                             _%e173805174156%_
                             _%hd173806174159%_
                             _%tl173807174161%_)
                      (let ((_%L174164%_ _%hd173806174159%_)
                            (_%L174165%_ _%hd173803174151%_)
                            (_%L174166%_ _%hd173794174127%_)
                            (_%L174167%_ _%hd173785174103%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174167%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174167%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp179214
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173631%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174166%_
                                    __tmp179214)))
                            (_%__kont178098178099%_
                             _%L174164%_
                             _%L174165%_
                             _%L174166%_
                             _%L174167%_)
                            (_%__kont178104178105%_)))))
                   (_%__match178459178460%_
                    (lambda (_%e173775174076%_
                             _%hd173776174079%_
                             _%tl173777174081%_
                             _%e173778174084%_
                             _%hd173779174087%_
                             _%tl173780174089%_
                             _%e173781174092%_
                             _%hd173782174095%_
                             _%tl173783174097%_
                             _%e173784174100%_
                             _%hd173785174103%_
                             _%tl173786174105%_
                             _%e173787174108%_
                             _%hd173788174111%_
                             _%tl173789174113%_
                             _%e173790174116%_
                             _%hd173791174119%_
                             _%tl173792174121%_
                             _%e173793174124%_
                             _%hd173794174127%_
                             _%tl173795174129%_
                             _%e173796174132%_
                             _%hd173797174135%_
                             _%tl173798174137%_
                             _%e173799174140%_
                             _%hd173800174143%_
                             _%tl173801174145%_
                             _%e173802174148%_
                             _%hd173803174151%_
                             _%tl173804174153%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173798174137%_))
                          (let ((_%e173805174156%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173798174137%_))))
                            (let ((_%tl173807174161%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173805174156%_)))
                                  (_%hd173806174159%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173805174156%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173807174161%_))
                                  (_%__match178467178468%_
                                   _%e173775174076%_
                                   _%hd173776174079%_
                                   _%tl173777174081%_
                                   _%e173778174084%_
                                   _%hd173779174087%_
                                   _%tl173780174089%_
                                   _%e173781174092%_
                                   _%hd173782174095%_
                                   _%tl173783174097%_
                                   _%e173784174100%_
                                   _%hd173785174103%_
                                   _%tl173786174105%_
                                   _%e173787174108%_
                                   _%hd173788174111%_
                                   _%tl173789174113%_
                                   _%e173790174116%_
                                   _%hd173791174119%_
                                   _%tl173792174121%_
                                   _%e173793174124%_
                                   _%hd173794174127%_
                                   _%tl173795174129%_
                                   _%e173796174132%_
                                   _%hd173797174135%_
                                   _%tl173798174137%_
                                   _%e173799174140%_
                                   _%hd173800174143%_
                                   _%tl173801174145%_
                                   _%e173802174148%_
                                   _%hd173803174151%_
                                   _%tl173804174153%_
                                   _%e173805174156%_
                                   _%hd173806174159%_
                                   _%tl173807174161%_)
                                  (_%__kont178104178105%_))))
                          (_%__match178583178584%_
                           _%e173775174076%_
                           _%hd173776174079%_
                           _%tl173777174081%_
                           _%e173778174084%_
                           _%hd173779174087%_
                           _%tl173780174089%_
                           _%e173781174092%_
                           _%hd173782174095%_
                           _%tl173783174097%_
                           _%e173784174100%_
                           _%hd173785174103%_
                           _%tl173786174105%_
                           _%e173787174108%_
                           _%hd173788174111%_
                           _%tl173789174113%_
                           _%e173790174116%_
                           _%hd173791174119%_
                           _%tl173792174121%_
                           _%e173793174124%_
                           _%hd173794174127%_
                           _%tl173795174129%_
                           _%e173796174132%_
                           _%hd173797174135%_
                           _%tl173798174137%_))))
                   (_%__match178381178382%_
                    (lambda (_%e173741174207%_
                             _%hd173742174210%_
                             _%tl173743174212%_
                             _%e173744174215%_
                             _%hd173745174218%_
                             _%tl173746174220%_
                             _%e173747174223%_
                             _%hd173748174226%_
                             _%tl173749174228%_
                             _%e173750174231%_
                             _%hd173751174234%_
                             _%tl173752174236%_
                             _%e173753174239%_
                             _%hd173754174242%_
                             _%tl173755174244%_
                             _%e173756174247%_
                             _%hd173757174250%_
                             _%tl173758174252%_
                             _%e173759174255%_
                             _%hd173760174258%_
                             _%tl173761174260%_
                             _%e173762174263%_
                             _%hd173763174266%_
                             _%tl173764174268%_
                             _%e173765174271%_
                             _%hd173766174274%_
                             _%tl173767174276%_
                             _%e173768174279%_
                             _%hd173769174282%_
                             _%tl173770174284%_)
                      (let ((_%L174287%_ _%hd173769174282%_)
                            (_%L174288%_ _%hd173760174258%_)
                            (_%L174289%_ _%hd173751174234%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174289%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174289%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp179215
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173631%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174288%_
                                    __tmp179215)))
                            (_%__kont178096178097%_
                             _%L174287%_
                             _%L174288%_
                             _%L174289%_)
                            (_%__match178585178586%_
                             _%e173741174207%_
                             _%hd173742174210%_
                             _%tl173743174212%_
                             _%e173744174215%_
                             _%hd173745174218%_
                             _%tl173746174220%_
                             _%e173747174223%_
                             _%hd173748174226%_
                             _%tl173749174228%_
                             _%e173750174231%_
                             _%hd173751174234%_
                             _%tl173752174236%_
                             _%e173753174239%_
                             _%hd173754174242%_
                             _%tl173755174244%_
                             _%e173756174247%_
                             _%hd173757174250%_
                             _%tl173758174252%_
                             _%e173759174255%_
                             _%hd173760174258%_
                             _%tl173761174260%_
                             _%e173762174263%_
                             _%hd173763174266%_
                             _%tl173764174268%_)))))
                   (_%__match178379178380%_
                    (lambda (_%e173741174207%_
                             _%hd173742174210%_
                             _%tl173743174212%_
                             _%e173744174215%_
                             _%hd173745174218%_
                             _%tl173746174220%_
                             _%e173747174223%_
                             _%hd173748174226%_
                             _%tl173749174228%_
                             _%e173750174231%_
                             _%hd173751174234%_
                             _%tl173752174236%_
                             _%e173753174239%_
                             _%hd173754174242%_
                             _%tl173755174244%_
                             _%e173756174247%_
                             _%hd173757174250%_
                             _%tl173758174252%_
                             _%e173759174255%_
                             _%hd173760174258%_
                             _%tl173761174260%_
                             _%e173762174263%_
                             _%hd173763174266%_
                             _%tl173764174268%_
                             _%e173765174271%_
                             _%hd173766174274%_
                             _%tl173767174276%_
                             _%e173768174279%_
                             _%hd173769174282%_
                             _%tl173770174284%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173764174268%_))
                          (_%__match178381178382%_
                           _%e173741174207%_
                           _%hd173742174210%_
                           _%tl173743174212%_
                           _%e173744174215%_
                           _%hd173745174218%_
                           _%tl173746174220%_
                           _%e173747174223%_
                           _%hd173748174226%_
                           _%tl173749174228%_
                           _%e173750174231%_
                           _%hd173751174234%_
                           _%tl173752174236%_
                           _%e173753174239%_
                           _%hd173754174242%_
                           _%tl173755174244%_
                           _%e173756174247%_
                           _%hd173757174250%_
                           _%tl173758174252%_
                           _%e173759174255%_
                           _%hd173760174258%_
                           _%tl173761174260%_
                           _%e173762174263%_
                           _%hd173763174266%_
                           _%tl173764174268%_
                           _%e173765174271%_
                           _%hd173766174274%_
                           _%tl173767174276%_
                           _%e173768174279%_
                           _%hd173769174282%_
                           _%tl173770174284%_)
                          (_%__match178459178460%_
                           _%e173741174207%_
                           _%hd173742174210%_
                           _%tl173743174212%_
                           _%e173744174215%_
                           _%hd173745174218%_
                           _%tl173746174220%_
                           _%e173747174223%_
                           _%hd173748174226%_
                           _%tl173749174228%_
                           _%e173750174231%_
                           _%hd173751174234%_
                           _%tl173752174236%_
                           _%e173753174239%_
                           _%hd173754174242%_
                           _%tl173755174244%_
                           _%e173756174247%_
                           _%hd173757174250%_
                           _%tl173758174252%_
                           _%e173759174255%_
                           _%hd173760174258%_
                           _%tl173761174260%_
                           _%e173762174263%_
                           _%hd173763174266%_
                           _%tl173764174268%_
                           _%e173765174271%_
                           _%hd173766174274%_
                           _%tl173767174276%_
                           _%e173768174279%_
                           _%hd173769174282%_
                           _%tl173770174284%_))))
                   (_%__match178369178370%_
                    (lambda (_%e173741174207%_
                             _%hd173742174210%_
                             _%tl173743174212%_
                             _%e173744174215%_
                             _%hd173745174218%_
                             _%tl173746174220%_
                             _%e173747174223%_
                             _%hd173748174226%_
                             _%tl173749174228%_
                             _%e173750174231%_
                             _%hd173751174234%_
                             _%tl173752174236%_
                             _%e173753174239%_
                             _%hd173754174242%_
                             _%tl173755174244%_
                             _%e173756174247%_
                             _%hd173757174250%_
                             _%tl173758174252%_
                             _%e173759174255%_
                             _%hd173760174258%_
                             _%tl173761174260%_
                             _%e173762174263%_
                             _%hd173763174266%_
                             _%tl173764174268%_
                             _%e173765174271%_
                             _%hd173766174274%_
                             _%tl173767174276%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd173766174274%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173767174276%_))
                              (let ((_%e173768174279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173767174276%_))))
                                (let ((_%tl173770174284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173768174279%_)))
                                      (_%hd173769174282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173768174279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173770174284%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl173764174268%_))
                                          (_%__match178381178382%_
                                           _%e173741174207%_
                                           _%hd173742174210%_
                                           _%tl173743174212%_
                                           _%e173744174215%_
                                           _%hd173745174218%_
                                           _%tl173746174220%_
                                           _%e173747174223%_
                                           _%hd173748174226%_
                                           _%tl173749174228%_
                                           _%e173750174231%_
                                           _%hd173751174234%_
                                           _%tl173752174236%_
                                           _%e173753174239%_
                                           _%hd173754174242%_
                                           _%tl173755174244%_
                                           _%e173756174247%_
                                           _%hd173757174250%_
                                           _%tl173758174252%_
                                           _%e173759174255%_
                                           _%hd173760174258%_
                                           _%tl173761174260%_
                                           _%e173762174263%_
                                           _%hd173763174266%_
                                           _%tl173764174268%_
                                           _%e173765174271%_
                                           _%hd173766174274%_
                                           _%tl173767174276%_
                                           _%e173768174279%_
                                           _%hd173769174282%_
                                           _%tl173770174284%_)
                                          (_%__match178459178460%_
                                           _%e173741174207%_
                                           _%hd173742174210%_
                                           _%tl173743174212%_
                                           _%e173744174215%_
                                           _%hd173745174218%_
                                           _%tl173746174220%_
                                           _%e173747174223%_
                                           _%hd173748174226%_
                                           _%tl173749174228%_
                                           _%e173750174231%_
                                           _%hd173751174234%_
                                           _%tl173752174236%_
                                           _%e173753174239%_
                                           _%hd173754174242%_
                                           _%tl173755174244%_
                                           _%e173756174247%_
                                           _%hd173757174250%_
                                           _%tl173758174252%_
                                           _%e173759174255%_
                                           _%hd173760174258%_
                                           _%tl173761174260%_
                                           _%e173762174263%_
                                           _%hd173763174266%_
                                           _%tl173764174268%_
                                           _%e173765174271%_
                                           _%hd173766174274%_
                                           _%tl173767174276%_
                                           _%e173768174279%_
                                           _%hd173769174282%_
                                           _%tl173770174284%_))
                                      (_%__match178583178584%_
                                       _%e173741174207%_
                                       _%hd173742174210%_
                                       _%tl173743174212%_
                                       _%e173744174215%_
                                       _%hd173745174218%_
                                       _%tl173746174220%_
                                       _%e173747174223%_
                                       _%hd173748174226%_
                                       _%tl173749174228%_
                                       _%e173750174231%_
                                       _%hd173751174234%_
                                       _%tl173752174236%_
                                       _%e173753174239%_
                                       _%hd173754174242%_
                                       _%tl173755174244%_
                                       _%e173756174247%_
                                       _%hd173757174250%_
                                       _%tl173758174252%_
                                       _%e173759174255%_
                                       _%hd173760174258%_
                                       _%tl173761174260%_
                                       _%e173762174263%_
                                       _%hd173763174266%_
                                       _%tl173764174268%_))))
                              (_%__match178583178584%_
                               _%e173741174207%_
                               _%hd173742174210%_
                               _%tl173743174212%_
                               _%e173744174215%_
                               _%hd173745174218%_
                               _%tl173746174220%_
                               _%e173747174223%_
                               _%hd173748174226%_
                               _%tl173749174228%_
                               _%e173750174231%_
                               _%hd173751174234%_
                               _%tl173752174236%_
                               _%e173753174239%_
                               _%hd173754174242%_
                               _%tl173755174244%_
                               _%e173756174247%_
                               _%hd173757174250%_
                               _%tl173758174252%_
                               _%e173759174255%_
                               _%hd173760174258%_
                               _%tl173761174260%_
                               _%e173762174263%_
                               _%hd173763174266%_
                               _%tl173764174268%_))
                          (_%__match178583178584%_
                           _%e173741174207%_
                           _%hd173742174210%_
                           _%tl173743174212%_
                           _%e173744174215%_
                           _%hd173745174218%_
                           _%tl173746174220%_
                           _%e173747174223%_
                           _%hd173748174226%_
                           _%tl173749174228%_
                           _%e173750174231%_
                           _%hd173751174234%_
                           _%tl173752174236%_
                           _%e173753174239%_
                           _%hd173754174242%_
                           _%tl173755174244%_
                           _%e173756174247%_
                           _%hd173757174250%_
                           _%tl173758174252%_
                           _%e173759174255%_
                           _%hd173760174258%_
                           _%tl173761174260%_
                           _%e173762174263%_
                           _%hd173763174266%_
                           _%tl173764174268%_))))
                   (_%__match178301178302%_
                    (lambda (_%e173690174326%_
                             _%hd173691174329%_
                             _%tl173692174331%_
                             _%e173693174334%_
                             _%hd173694174337%_
                             _%tl173695174339%_
                             _%e173696174342%_
                             _%hd173697174345%_
                             _%tl173698174347%_
                             _%e173699174350%_
                             _%hd173700174353%_
                             _%tl173701174355%_
                             _%e173702174358%_
                             _%hd173703174361%_
                             _%tl173704174363%_
                             _%e173705174366%_
                             _%hd173706174369%_
                             _%tl173707174371%_
                             _%e173708174374%_
                             _%hd173709174377%_
                             _%tl173710174379%_
                             _%e173711174382%_
                             _%hd173712174385%_
                             _%tl173713174387%_
                             _%e173714174390%_
                             _%hd173715174393%_
                             _%tl173716174395%_
                             _%e173717174398%_
                             _%hd173718174401%_
                             _%tl173719174403%_
                             _%e173720174406%_
                             _%hd173721174409%_
                             _%tl173722174411%_
                             _%e173723174414%_
                             _%hd173724174417%_
                             _%tl173725174419%_
                             _%e173726174422%_
                             _%hd173727174425%_
                             _%tl173728174427%_
                             _%__splice178094178095%_
                             _%target173729174430%_
                             _%tl173731174432%_)
                      (letrec ((_%loop173732174435%_
                                (lambda (_%hd173730174438%_
                                         _%args173736174440%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173730174438%_))
                                      (let ((_%e173733174443%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173730174438%_))))
                                        (let ((_%lp-tl173735174448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173733174443%_)))
                                              (_%lp-hd173734174446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173733174443%_))))
                                          (_%loop173732174435%_
                                           _%lp-tl173735174448%_
                                           (cons _%lp-hd173734174446%_
                                                 _%args173736174440%_))))
                                      (let ((_%args173737174451%_
                                             (reverse _%args173736174440%_)))
                                        (let ((_%L174454%_
                                               _%args173737174451%_)
                                              (_%L174455%_ _%hd173727174425%_)
                                              (_%L174456%_ _%hd173718174401%_)
                                              (_%L174457%_ _%hd173709174377%_)
                                              (_%L174458%_ _%hd173700174353%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174458%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174457%_
                                                      'call-method))
                                                   (let ((__tmp179216
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173631%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174456%_
                                                      __tmp179216)))
                                              (_%__kont178092178093%_
                                               _%L174454%_
                                               _%L174455%_
                                               _%L174456%_
                                               _%L174457%_
                                               _%L174458%_)
                                              (_%__kont178104178105%_))))))))
                        (_%loop173732174435%_ _%target173729174430%_ '()))))
                   (_%__match178259178260%_
                    (lambda (_%e173690174326%_
                             _%hd173691174329%_
                             _%tl173692174331%_
                             _%e173693174334%_
                             _%hd173694174337%_
                             _%tl173695174339%_
                             _%e173696174342%_
                             _%hd173697174345%_
                             _%tl173698174347%_
                             _%e173699174350%_
                             _%hd173700174353%_
                             _%tl173701174355%_
                             _%e173702174358%_
                             _%hd173703174361%_
                             _%tl173704174363%_
                             _%e173705174366%_
                             _%hd173706174369%_
                             _%tl173707174371%_
                             _%e173708174374%_
                             _%hd173709174377%_
                             _%tl173710174379%_
                             _%e173711174382%_
                             _%hd173712174385%_
                             _%tl173713174387%_
                             _%e173714174390%_
                             _%hd173715174393%_
                             _%tl173716174395%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd173715174393%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173716174395%_))
                              (let ((_%e173717174398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173716174395%_))))
                                (let ((_%tl173719174403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173717174398%_)))
                                      (_%hd173718174401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173717174398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173719174403%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173713174387%_))
                                          (let ((_%e173720174406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173713174387%_))))
                                            (let ((_%tl173722174411%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173720174406%_)))
                                                  (_%hd173721174409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173720174406%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173721174409%_))
                                                  (let ((_%e173723174414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173721174409%_))))
                                                    (let ((_%tl173725174419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173723174414%_)))
                                                          (_%hd173724174417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173723174414%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd173724174417%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd173724174417%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173725174419%_))
                          (let ((_%e173726174422%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173725174419%_))))
                            (let ((_%tl173728174427%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173726174422%_)))
                                  (_%hd173727174425%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173726174422%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173728174427%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl173722174411%_))
                                      (let ((_%__splice178094178095%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl173722174411%_
                                                '0))))
                                        (let ((_%tl173731174432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178094178095%_
                                                  '1)))
                                              (_%target173729174430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178094178095%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173731174432%_))
                                              (_%__match178301178302%_
                                               _%e173690174326%_
                                               _%hd173691174329%_
                                               _%tl173692174331%_
                                               _%e173693174334%_
                                               _%hd173694174337%_
                                               _%tl173695174339%_
                                               _%e173696174342%_
                                               _%hd173697174345%_
                                               _%tl173698174347%_
                                               _%e173699174350%_
                                               _%hd173700174353%_
                                               _%tl173701174355%_
                                               _%e173702174358%_
                                               _%hd173703174361%_
                                               _%tl173704174363%_
                                               _%e173705174366%_
                                               _%hd173706174369%_
                                               _%tl173707174371%_
                                               _%e173708174374%_
                                               _%hd173709174377%_
                                               _%tl173710174379%_
                                               _%e173711174382%_
                                               _%hd173712174385%_
                                               _%tl173713174387%_
                                               _%e173714174390%_
                                               _%hd173715174393%_
                                               _%tl173716174395%_
                                               _%e173717174398%_
                                               _%hd173718174401%_
                                               _%tl173719174403%_
                                               _%e173720174406%_
                                               _%hd173721174409%_
                                               _%tl173722174411%_
                                               _%e173723174414%_
                                               _%hd173724174417%_
                                               _%tl173725174419%_
                                               _%e173726174422%_
                                               _%hd173727174425%_
                                               _%tl173728174427%_
                                               _%__splice178094178095%_
                                               _%target173729174430%_
                                               _%tl173731174432%_)
                                              (_%__kont178104178105%_))))
                                      (_%__kont178104178105%_))
                                  (_%__kont178104178105%_))))
                          (_%__kont178104178105%_))
                      (_%__kont178104178105%_))
                  (_%__kont178104178105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178104178105%_))))
                                          (_%__match178583178584%_
                                           _%e173690174326%_
                                           _%hd173691174329%_
                                           _%tl173692174331%_
                                           _%e173693174334%_
                                           _%hd173694174337%_
                                           _%tl173695174339%_
                                           _%e173696174342%_
                                           _%hd173697174345%_
                                           _%tl173698174347%_
                                           _%e173699174350%_
                                           _%hd173700174353%_
                                           _%tl173701174355%_
                                           _%e173702174358%_
                                           _%hd173703174361%_
                                           _%tl173704174363%_
                                           _%e173705174366%_
                                           _%hd173706174369%_
                                           _%tl173707174371%_
                                           _%e173708174374%_
                                           _%hd173709174377%_
                                           _%tl173710174379%_
                                           _%e173711174382%_
                                           _%hd173712174385%_
                                           _%tl173713174387%_))
                                      (_%__match178583178584%_
                                       _%e173690174326%_
                                       _%hd173691174329%_
                                       _%tl173692174331%_
                                       _%e173693174334%_
                                       _%hd173694174337%_
                                       _%tl173695174339%_
                                       _%e173696174342%_
                                       _%hd173697174345%_
                                       _%tl173698174347%_
                                       _%e173699174350%_
                                       _%hd173700174353%_
                                       _%tl173701174355%_
                                       _%e173702174358%_
                                       _%hd173703174361%_
                                       _%tl173704174363%_
                                       _%e173705174366%_
                                       _%hd173706174369%_
                                       _%tl173707174371%_
                                       _%e173708174374%_
                                       _%hd173709174377%_
                                       _%tl173710174379%_
                                       _%e173711174382%_
                                       _%hd173712174385%_
                                       _%tl173713174387%_))))
                              (_%__match178583178584%_
                               _%e173690174326%_
                               _%hd173691174329%_
                               _%tl173692174331%_
                               _%e173693174334%_
                               _%hd173694174337%_
                               _%tl173695174339%_
                               _%e173696174342%_
                               _%hd173697174345%_
                               _%tl173698174347%_
                               _%e173699174350%_
                               _%hd173700174353%_
                               _%tl173701174355%_
                               _%e173702174358%_
                               _%hd173703174361%_
                               _%tl173704174363%_
                               _%e173705174366%_
                               _%hd173706174369%_
                               _%tl173707174371%_
                               _%e173708174374%_
                               _%hd173709174377%_
                               _%tl173710174379%_
                               _%e173711174382%_
                               _%hd173712174385%_
                               _%tl173713174387%_))
                          (_%__match178369178370%_
                           _%e173690174326%_
                           _%hd173691174329%_
                           _%tl173692174331%_
                           _%e173693174334%_
                           _%hd173694174337%_
                           _%tl173695174339%_
                           _%e173696174342%_
                           _%hd173697174345%_
                           _%tl173698174347%_
                           _%e173699174350%_
                           _%hd173700174353%_
                           _%tl173701174355%_
                           _%e173702174358%_
                           _%hd173703174361%_
                           _%tl173704174363%_
                           _%e173705174366%_
                           _%hd173706174369%_
                           _%tl173707174371%_
                           _%e173708174374%_
                           _%hd173709174377%_
                           _%tl173710174379%_
                           _%e173711174382%_
                           _%hd173712174385%_
                           _%tl173713174387%_
                           _%e173714174390%_
                           _%hd173715174393%_
                           _%tl173716174395%_))))
                   (_%__match178191178192%_
                    (lambda (_%e173646174515%_
                             _%hd173647174518%_
                             _%tl173648174520%_
                             _%e173649174523%_
                             _%hd173650174526%_
                             _%tl173651174528%_
                             _%e173652174531%_
                             _%hd173653174534%_
                             _%tl173654174536%_
                             _%e173655174539%_
                             _%hd173656174542%_
                             _%tl173657174544%_
                             _%e173658174547%_
                             _%hd173659174550%_
                             _%tl173660174552%_
                             _%e173661174555%_
                             _%hd173662174558%_
                             _%tl173663174560%_
                             _%e173664174563%_
                             _%hd173665174566%_
                             _%tl173666174568%_
                             _%e173667174571%_
                             _%hd173668174574%_
                             _%tl173669174576%_
                             _%e173670174579%_
                             _%hd173671174582%_
                             _%tl173672174584%_
                             _%e173673174587%_
                             _%hd173674174590%_
                             _%tl173675174592%_
                             _%__splice178090178091%_
                             _%target173676174595%_
                             _%tl173678174597%_)
                      (letrec ((_%loop173679174600%_
                                (lambda (_%hd173677174603%_
                                         _%args173683174605%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173677174603%_))
                                      (let ((_%e173680174608%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173677174603%_))))
                                        (let ((_%lp-tl173682174613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173680174608%_)))
                                              (_%lp-hd173681174611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173680174608%_))))
                                          (_%loop173679174600%_
                                           _%lp-tl173682174613%_
                                           (cons _%lp-hd173681174611%_
                                                 _%args173683174605%_))))
                                      (let ((_%args173684174616%_
                                             (reverse _%args173683174605%_)))
                                        (let ((_%L174619%_
                                               _%args173684174616%_)
                                              (_%L174620%_ _%hd173674174590%_)
                                              (_%L174621%_ _%hd173665174566%_)
                                              (_%L174622%_ _%hd173656174542%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174622%_
                                                      'call-method))
                                                   (let ((__tmp179217
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173631%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174621%_
                                                      __tmp179217)))
                                              (_%__kont178088178089%_
                                               _%L174619%_
                                               _%L174620%_
                                               _%L174621%_
                                               _%L174622%_)
                                              (_%__match178379178380%_
                                               _%e173646174515%_
                                               _%hd173647174518%_
                                               _%tl173648174520%_
                                               _%e173649174523%_
                                               _%hd173650174526%_
                                               _%tl173651174528%_
                                               _%e173652174531%_
                                               _%hd173653174534%_
                                               _%tl173654174536%_
                                               _%e173655174539%_
                                               _%hd173656174542%_
                                               _%tl173657174544%_
                                               _%e173658174547%_
                                               _%hd173659174550%_
                                               _%tl173660174552%_
                                               _%e173661174555%_
                                               _%hd173662174558%_
                                               _%tl173663174560%_
                                               _%e173664174563%_
                                               _%hd173665174566%_
                                               _%tl173666174568%_
                                               _%e173667174571%_
                                               _%hd173668174574%_
                                               _%tl173669174576%_
                                               _%e173670174579%_
                                               _%hd173671174582%_
                                               _%tl173672174584%_
                                               _%e173673174587%_
                                               _%hd173674174590%_
                                               _%tl173675174592%_))))))))
                        (_%loop173679174600%_ _%target173676174595%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx178086178087%_))
                  (let ((_%e173646174515%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx178086178087%_))))
                    (let ((_%tl173648174520%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173646174515%_)))
                          (_%hd173647174518%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173646174515%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173648174520%_))
                          (let ((_%e173649174523%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173648174520%_))))
                            (let ((_%tl173651174528%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173649174523%_)))
                                  (_%hd173650174526%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173649174523%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd173650174526%_))
                                  (let ((_%e173652174531%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd173650174526%_))))
                                    (let ((_%tl173654174536%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e173652174531%_)))
                                          (_%hd173653174534%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e173652174531%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd173653174534%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd173653174534%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl173654174536%_))
                                                  (let ((_%e173655174539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl173654174536%_))))
                                                    (let ((_%tl173657174544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173655174539%_)))
                                                          (_%hd173656174542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173655174539%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl173657174544%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl173651174528%_))
                      (let ((_%e173658174547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl173651174528%_))))
                        (let ((_%tl173660174552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173658174547%_)))
                              (_%hd173659174550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173658174547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd173659174550%_))
                              (let ((_%e173661174555%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd173659174550%_))))
                                (let ((_%tl173663174560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173661174555%_)))
                                      (_%hd173662174558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173661174555%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd173662174558%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd173662174558%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173663174560%_))
                                              (let ((_%e173664174563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173663174560%_))))
                                                (let ((_%tl173666174568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173664174563%_)))
                                                      (_%hd173665174566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173664174563%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173666174568%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl173660174552%_))
                                                          (let ((_%e173667174571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl173660174552%_))))
                    (let ((_%tl173669174576%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173667174571%_)))
                          (_%hd173668174574%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173667174571%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd173668174574%_))
                          (let ((_%e173670174579%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd173668174574%_))))
                            (let ((_%tl173672174584%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173670174579%_)))
                                  (_%hd173671174582%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173670174579%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd173671174582%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd173671174582%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173672174584%_))
                                          (let ((_%e173673174587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173672174584%_))))
                                            (let ((_%tl173675174592%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173673174587%_)))
                                                  (_%hd173674174590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173673174587%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl173675174592%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl173669174576%_))
                                                      (let ((_%__splice178090178091%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl173669174576%_ '0))))
                (let ((_%tl173678174597%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice178090178091%_ '1)))
                      (_%target173676174595%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice178090178091%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl173678174597%_))
                      (_%__match178191178192%_
                       _%e173646174515%_
                       _%hd173647174518%_
                       _%tl173648174520%_
                       _%e173649174523%_
                       _%hd173650174526%_
                       _%tl173651174528%_
                       _%e173652174531%_
                       _%hd173653174534%_
                       _%tl173654174536%_
                       _%e173655174539%_
                       _%hd173656174542%_
                       _%tl173657174544%_
                       _%e173658174547%_
                       _%hd173659174550%_
                       _%tl173660174552%_
                       _%e173661174555%_
                       _%hd173662174558%_
                       _%tl173663174560%_
                       _%e173664174563%_
                       _%hd173665174566%_
                       _%tl173666174568%_
                       _%e173667174571%_
                       _%hd173668174574%_
                       _%tl173669174576%_
                       _%e173670174579%_
                       _%hd173671174582%_
                       _%tl173672174584%_
                       _%e173673174587%_
                       _%hd173674174590%_
                       _%tl173675174592%_
                       _%__splice178090178091%_
                       _%target173676174595%_
                       _%tl173678174597%_)
                      (_%__match178379178380%_
                       _%e173646174515%_
                       _%hd173647174518%_
                       _%tl173648174520%_
                       _%e173649174523%_
                       _%hd173650174526%_
                       _%tl173651174528%_
                       _%e173652174531%_
                       _%hd173653174534%_
                       _%tl173654174536%_
                       _%e173655174539%_
                       _%hd173656174542%_
                       _%tl173657174544%_
                       _%e173658174547%_
                       _%hd173659174550%_
                       _%tl173660174552%_
                       _%e173661174555%_
                       _%hd173662174558%_
                       _%tl173663174560%_
                       _%e173664174563%_
                       _%hd173665174566%_
                       _%tl173666174568%_
                       _%e173667174571%_
                       _%hd173668174574%_
                       _%tl173669174576%_
                       _%e173670174579%_
                       _%hd173671174582%_
                       _%tl173672174584%_
                       _%e173673174587%_
                       _%hd173674174590%_
                       _%tl173675174592%_))))
              (_%__match178379178380%_
               _%e173646174515%_
               _%hd173647174518%_
               _%tl173648174520%_
               _%e173649174523%_
               _%hd173650174526%_
               _%tl173651174528%_
               _%e173652174531%_
               _%hd173653174534%_
               _%tl173654174536%_
               _%e173655174539%_
               _%hd173656174542%_
               _%tl173657174544%_
               _%e173658174547%_
               _%hd173659174550%_
               _%tl173660174552%_
               _%e173661174555%_
               _%hd173662174558%_
               _%tl173663174560%_
               _%e173664174563%_
               _%hd173665174566%_
               _%tl173666174568%_
               _%e173667174571%_
               _%hd173668174574%_
               _%tl173669174576%_
               _%e173670174579%_
               _%hd173671174582%_
               _%tl173672174584%_
               _%e173673174587%_
               _%hd173674174590%_
               _%tl173675174592%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match178583178584%_
                                                   _%e173646174515%_
                                                   _%hd173647174518%_
                                                   _%tl173648174520%_
                                                   _%e173649174523%_
                                                   _%hd173650174526%_
                                                   _%tl173651174528%_
                                                   _%e173652174531%_
                                                   _%hd173653174534%_
                                                   _%tl173654174536%_
                                                   _%e173655174539%_
                                                   _%hd173656174542%_
                                                   _%tl173657174544%_
                                                   _%e173658174547%_
                                                   _%hd173659174550%_
                                                   _%tl173660174552%_
                                                   _%e173661174555%_
                                                   _%hd173662174558%_
                                                   _%tl173663174560%_
                                                   _%e173664174563%_
                                                   _%hd173665174566%_
                                                   _%tl173666174568%_
                                                   _%e173667174571%_
                                                   _%hd173668174574%_
                                                   _%tl173669174576%_))))
                                          (_%__match178583178584%_
                                           _%e173646174515%_
                                           _%hd173647174518%_
                                           _%tl173648174520%_
                                           _%e173649174523%_
                                           _%hd173650174526%_
                                           _%tl173651174528%_
                                           _%e173652174531%_
                                           _%hd173653174534%_
                                           _%tl173654174536%_
                                           _%e173655174539%_
                                           _%hd173656174542%_
                                           _%tl173657174544%_
                                           _%e173658174547%_
                                           _%hd173659174550%_
                                           _%tl173660174552%_
                                           _%e173661174555%_
                                           _%hd173662174558%_
                                           _%tl173663174560%_
                                           _%e173664174563%_
                                           _%hd173665174566%_
                                           _%tl173666174568%_
                                           _%e173667174571%_
                                           _%hd173668174574%_
                                           _%tl173669174576%_))
                                      (_%__match178259178260%_
                                       _%e173646174515%_
                                       _%hd173647174518%_
                                       _%tl173648174520%_
                                       _%e173649174523%_
                                       _%hd173650174526%_
                                       _%tl173651174528%_
                                       _%e173652174531%_
                                       _%hd173653174534%_
                                       _%tl173654174536%_
                                       _%e173655174539%_
                                       _%hd173656174542%_
                                       _%tl173657174544%_
                                       _%e173658174547%_
                                       _%hd173659174550%_
                                       _%tl173660174552%_
                                       _%e173661174555%_
                                       _%hd173662174558%_
                                       _%tl173663174560%_
                                       _%e173664174563%_
                                       _%hd173665174566%_
                                       _%tl173666174568%_
                                       _%e173667174571%_
                                       _%hd173668174574%_
                                       _%tl173669174576%_
                                       _%e173670174579%_
                                       _%hd173671174582%_
                                       _%tl173672174584%_))
                                  (_%__match178583178584%_
                                   _%e173646174515%_
                                   _%hd173647174518%_
                                   _%tl173648174520%_
                                   _%e173649174523%_
                                   _%hd173650174526%_
                                   _%tl173651174528%_
                                   _%e173652174531%_
                                   _%hd173653174534%_
                                   _%tl173654174536%_
                                   _%e173655174539%_
                                   _%hd173656174542%_
                                   _%tl173657174544%_
                                   _%e173658174547%_
                                   _%hd173659174550%_
                                   _%tl173660174552%_
                                   _%e173661174555%_
                                   _%hd173662174558%_
                                   _%tl173663174560%_
                                   _%e173664174563%_
                                   _%hd173665174566%_
                                   _%tl173666174568%_
                                   _%e173667174571%_
                                   _%hd173668174574%_
                                   _%tl173669174576%_))))
                          (_%__match178583178584%_
                           _%e173646174515%_
                           _%hd173647174518%_
                           _%tl173648174520%_
                           _%e173649174523%_
                           _%hd173650174526%_
                           _%tl173651174528%_
                           _%e173652174531%_
                           _%hd173653174534%_
                           _%tl173654174536%_
                           _%e173655174539%_
                           _%hd173656174542%_
                           _%tl173657174544%_
                           _%e173658174547%_
                           _%hd173659174550%_
                           _%tl173660174552%_
                           _%e173661174555%_
                           _%hd173662174558%_
                           _%tl173663174560%_
                           _%e173664174563%_
                           _%hd173665174566%_
                           _%tl173666174568%_
                           _%e173667174571%_
                           _%hd173668174574%_
                           _%tl173669174576%_))))
                  (_%__match178521178522%_
                   _%e173646174515%_
                   _%hd173647174518%_
                   _%tl173648174520%_
                   _%e173649174523%_
                   _%hd173650174526%_
                   _%tl173651174528%_
                   _%e173652174531%_
                   _%hd173653174534%_
                   _%tl173654174536%_
                   _%e173655174539%_
                   _%hd173656174542%_
                   _%tl173657174544%_
                   _%e173658174547%_
                   _%hd173659174550%_
                   _%tl173660174552%_
                   _%e173661174555%_
                   _%hd173662174558%_
                   _%tl173663174560%_
                   _%e173664174563%_
                   _%hd173665174566%_
                   _%tl173666174568%_))
              (_%__kont178104178105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont178104178105%_))
                                          (_%__kont178104178105%_))
                                      (_%__kont178104178105%_))))
                              (_%__kont178104178105%_))))
                      (_%__kont178104178105%_))
                  (_%__kont178104178105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178104178105%_))
                                              (_%__kont178104178105%_))
                                          (_%__kont178104178105%_))))
                                  (_%__kont178104178105%_))))
                          (_%__kont178104178105%_))))
                  (_%__kont178104178105%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self172570%_ _%stx172571%_)
        (letrec ((_%force-e172573%_
                  (lambda (_%target173629%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target173629%_ '()))
                                      '()))))))
          (let* ((_%__stx178588178589%_ _%stx172571%_)
                 (_%g172581172803%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx178588178589%_)))))
            (let ((_%__kont178590178591%_
                   (lambda (_%L173575%_ _%L173576%_ _%L173577%_ _%L173578%_)
                     (let ((_%$method173623%_
                            (let ((__tmp179219
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172570%_ 'methods)))
                                  (__tmp179218
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173576%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179219 __tmp179218)))
                           (_%args173624%_
                            (map (lambda (_%g173611173613%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172570%_
                                      _%g173611173613%_)))
                                 (let ((__tmp179220
                                        (lambda (_%g173615173618%_
                                                 _%g173616173620%_)
                                          (cons _%g173615173618%_
                                                _%g173616173620%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179220 '() _%L173575%_)))))
                       (let ((__tmp179221
                              (cons '%#call
                                    (cons (_%force-e172573%_ _%$method173623%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172570%_
                                                               'receiver))
                                                            '()))
                                                _%args173624%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179221 _%stx172571%_)))))
                  (_%__kont178594178595%_
                   (lambda (_%L173407%_
                            _%L173408%_
                            _%L173409%_
                            _%L173410%_
                            _%L173411%_)
                     (let ((_%$method173463%_
                            (let ((__tmp179223
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172570%_ 'methods)))
                                  (__tmp179222
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173408%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179223 __tmp179222)))
                           (_%args173464%_
                            (map (lambda (_%g173451173453%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172570%_
                                      _%g173451173453%_)))
                                 (let ((__tmp179224
                                        (lambda (_%g173455173458%_
                                                 _%g173456173460%_)
                                          (cons _%g173455173458%_
                                                _%g173456173460%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179224 '() _%L173407%_)))))
                       (let ((__tmp179225
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e172573%_
                                                 _%$method173463%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172570%_ 'receiver))
                          '()))
              _%args173464%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179225 _%stx172571%_)))))
                  (_%__kont178598178599%_
                   (lambda (_%L173238%_ _%L173239%_ _%L173240%_)
                     (let* ((_%$field173272%_
                             (let ((__tmp179227
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self172570%_ 'slots)))
                                   (__tmp179226
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L173238%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp179227 __tmp179226)))
                            (__tmp179228
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self172570%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field173272%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self172570%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp179228 _%stx172571%_))))
                  (_%__kont178600178601%_
                   (lambda (_%L173112%_ _%L173113%_ _%L173114%_ _%L173115%_)
                     (let ((_%$field173150%_
                            (let ((__tmp179230
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172570%_ 'slots)))
                                  (__tmp179229
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173113%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179230 __tmp179229)))
                           (_%expr173151%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self172570%_ _%L173112%_))))
                       (let ((__tmp179231
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self172570%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field173150%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172570%_ 'receiver))
                          '()))
              (cons _%expr173151%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179231 _%stx172571%_)))))
                  (_%__kont178602178603%_
                   (lambda (_%L172984%_ _%L172985%_)
                     (let* ((_%accessor173007%_
                             (let ((__tmp179232
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172985%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179232)))
                            (_%klass173009%_
                             (let ((__tmp179233
                                    (##structure-ref
                                     _%accessor173007%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172571%_
                                __tmp179233)))
                            (_%slot173011%_
                             (##structure-ref
                              _%accessor173007%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor173007%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass173009%_
                                      _%slot173011%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass173009%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx172571%_
                           (let* ((_%$field173017%_
                                   (let ((__tmp179234
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172570%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179234 _%slot173011%_)))
                                  (__tmp179235
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172570%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field173017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172570%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179235
                              _%stx172571%_))))))
                  (_%__kont178604178605%_
                   (lambda (_%L172879%_ _%L172880%_ _%L172881%_)
                     (let* ((_%mutator172909%_
                             (let ((__tmp179236
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172881%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179236)))
                            (_%klass172911%_
                             (let ((__tmp179237
                                    (##structure-ref
                                     _%mutator172909%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172571%_
                                __tmp179237)))
                            (_%slot172913%_
                             (##structure-ref
                              _%mutator172909%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr172915%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self172570%_ _%L172879%_))))
                       (if (if (##structure-ref
                                _%mutator172909%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass172911%_
                                      _%slot172913%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass172911%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp179238
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L172881%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L172880%_
                                                                '()))
                                                    (cons _%expr172915%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179238 _%stx172571%_))
                           (let* ((_%$field172921%_
                                   (let ((__tmp179239
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172570%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179239 _%slot172913%_)))
                                  (__tmp179240
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172570%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field172921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172570%_ 'receiver))
                               '()))
                   (cons _%expr172915%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179240
                              _%stx172571%_))))))
                  (_%__kont178606178607%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self172570%_ _%stx172571%_)))))
              (let* ((_%__match179087179088%_
                      (lambda (_%e172775172815%_
                               _%hd172776172818%_
                               _%tl172777172820%_
                               _%e172778172823%_
                               _%hd172779172826%_
                               _%tl172780172828%_
                               _%e172781172831%_
                               _%hd172782172834%_
                               _%tl172783172836%_
                               _%e172784172839%_
                               _%hd172785172842%_
                               _%tl172786172844%_
                               _%e172787172847%_
                               _%hd172788172850%_
                               _%tl172789172852%_
                               _%e172790172855%_
                               _%hd172791172858%_
                               _%tl172792172860%_
                               _%e172793172863%_
                               _%hd172794172866%_
                               _%tl172795172868%_
                               _%e172796172871%_
                               _%hd172797172874%_
                               _%tl172798172876%_)
                        (let ((_%L172879%_ _%hd172797172874%_)
                              (_%L172880%_ _%hd172794172866%_)
                              (_%L172881%_ _%hd172785172842%_))
                          (if (and (let ((__tmp179241
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172570%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172880%_
                                      __tmp179241))
                                   (let ((__tmp179242
                                          (let ((__tmp179243
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172881%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179243))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179242
                                      'gxc#!mutator::t)))
                              (_%__kont178604178605%_
                               _%L172879%_
                               _%L172880%_
                               _%L172881%_)
                              (_%__kont178606178607%_)))))
                     (_%__match179085179086%_
                      (lambda (_%e172775172815%_
                               _%hd172776172818%_
                               _%tl172777172820%_
                               _%e172778172823%_
                               _%hd172779172826%_
                               _%tl172780172828%_
                               _%e172781172831%_
                               _%hd172782172834%_
                               _%tl172783172836%_
                               _%e172784172839%_
                               _%hd172785172842%_
                               _%tl172786172844%_
                               _%e172787172847%_
                               _%hd172788172850%_
                               _%tl172789172852%_
                               _%e172790172855%_
                               _%hd172791172858%_
                               _%tl172792172860%_
                               _%e172793172863%_
                               _%hd172794172866%_
                               _%tl172795172868%_
                               _%e172796172871%_
                               _%hd172797172874%_
                               _%tl172798172876%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172798172876%_))
                            (_%__match179087179088%_
                             _%e172775172815%_
                             _%hd172776172818%_
                             _%tl172777172820%_
                             _%e172778172823%_
                             _%hd172779172826%_
                             _%tl172780172828%_
                             _%e172781172831%_
                             _%hd172782172834%_
                             _%tl172783172836%_
                             _%e172784172839%_
                             _%hd172785172842%_
                             _%tl172786172844%_
                             _%e172787172847%_
                             _%hd172788172850%_
                             _%tl172789172852%_
                             _%e172790172855%_
                             _%hd172791172858%_
                             _%tl172792172860%_
                             _%e172793172863%_
                             _%hd172794172866%_
                             _%tl172795172868%_
                             _%e172796172871%_
                             _%hd172797172874%_
                             _%tl172798172876%_)
                            (_%__kont178606178607%_))))
                     (_%__match179079179080%_
                      (lambda (_%e172775172815%_
                               _%hd172776172818%_
                               _%tl172777172820%_
                               _%e172778172823%_
                               _%hd172779172826%_
                               _%tl172780172828%_
                               _%e172781172831%_
                               _%hd172782172834%_
                               _%tl172783172836%_
                               _%e172784172839%_
                               _%hd172785172842%_
                               _%tl172786172844%_
                               _%e172787172847%_
                               _%hd172788172850%_
                               _%tl172789172852%_
                               _%e172790172855%_
                               _%hd172791172858%_
                               _%tl172792172860%_
                               _%e172793172863%_
                               _%hd172794172866%_
                               _%tl172795172868%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172789172852%_))
                            (let ((_%e172796172871%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172789172852%_))))
                              (let ((_%tl172798172876%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172796172871%_)))
                                    (_%hd172797172874%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172796172871%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172798172876%_))
                                    (_%__match179087179088%_
                                     _%e172775172815%_
                                     _%hd172776172818%_
                                     _%tl172777172820%_
                                     _%e172778172823%_
                                     _%hd172779172826%_
                                     _%tl172780172828%_
                                     _%e172781172831%_
                                     _%hd172782172834%_
                                     _%tl172783172836%_
                                     _%e172784172839%_
                                     _%hd172785172842%_
                                     _%tl172786172844%_
                                     _%e172787172847%_
                                     _%hd172788172850%_
                                     _%tl172789172852%_
                                     _%e172790172855%_
                                     _%hd172791172858%_
                                     _%tl172792172860%_
                                     _%e172793172863%_
                                     _%hd172794172866%_
                                     _%tl172795172868%_
                                     _%e172796172871%_
                                     _%hd172797172874%_
                                     _%tl172798172876%_)
                                    (_%__kont178606178607%_))))
                            (_%__kont178606178607%_))))
                     (_%__match179025179026%_
                      (lambda (_%e172751172928%_
                               _%hd172752172931%_
                               _%tl172753172933%_
                               _%e172754172936%_
                               _%hd172755172939%_
                               _%tl172756172941%_
                               _%e172757172944%_
                               _%hd172758172947%_
                               _%tl172759172949%_
                               _%e172760172952%_
                               _%hd172761172955%_
                               _%tl172762172957%_
                               _%e172763172960%_
                               _%hd172764172963%_
                               _%tl172765172965%_
                               _%e172766172968%_
                               _%hd172767172971%_
                               _%tl172768172973%_
                               _%e172769172976%_
                               _%hd172770172979%_
                               _%tl172771172981%_)
                        (let ((_%L172984%_ _%hd172770172979%_)
                              (_%L172985%_ _%hd172761172955%_))
                          (if (and (let ((__tmp179244
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172570%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172984%_
                                      __tmp179244))
                                   (let ((__tmp179245
                                          (let ((__tmp179246
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172985%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179246))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179245
                                      'gxc#!accessor::t)))
                              (_%__kont178602178603%_ _%L172984%_ _%L172985%_)
                              (_%__kont178606178607%_)))))
                     (_%__match179023179024%_
                      (lambda (_%e172751172928%_
                               _%hd172752172931%_
                               _%tl172753172933%_
                               _%e172754172936%_
                               _%hd172755172939%_
                               _%tl172756172941%_
                               _%e172757172944%_
                               _%hd172758172947%_
                               _%tl172759172949%_
                               _%e172760172952%_
                               _%hd172761172955%_
                               _%tl172762172957%_
                               _%e172763172960%_
                               _%hd172764172963%_
                               _%tl172765172965%_
                               _%e172766172968%_
                               _%hd172767172971%_
                               _%tl172768172973%_
                               _%e172769172976%_
                               _%hd172770172979%_
                               _%tl172771172981%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172765172965%_))
                            (_%__match179025179026%_
                             _%e172751172928%_
                             _%hd172752172931%_
                             _%tl172753172933%_
                             _%e172754172936%_
                             _%hd172755172939%_
                             _%tl172756172941%_
                             _%e172757172944%_
                             _%hd172758172947%_
                             _%tl172759172949%_
                             _%e172760172952%_
                             _%hd172761172955%_
                             _%tl172762172957%_
                             _%e172763172960%_
                             _%hd172764172963%_
                             _%tl172765172965%_
                             _%e172766172968%_
                             _%hd172767172971%_
                             _%tl172768172973%_
                             _%e172769172976%_
                             _%hd172770172979%_
                             _%tl172771172981%_)
                            (_%__match179079179080%_
                             _%e172751172928%_
                             _%hd172752172931%_
                             _%tl172753172933%_
                             _%e172754172936%_
                             _%hd172755172939%_
                             _%tl172756172941%_
                             _%e172757172944%_
                             _%hd172758172947%_
                             _%tl172759172949%_
                             _%e172760172952%_
                             _%hd172761172955%_
                             _%tl172762172957%_
                             _%e172763172960%_
                             _%hd172764172963%_
                             _%tl172765172965%_
                             _%e172766172968%_
                             _%hd172767172971%_
                             _%tl172768172973%_
                             _%e172769172976%_
                             _%hd172770172979%_
                             _%tl172771172981%_))))
                     (_%__match178969178970%_
                      (lambda (_%e172716173024%_
                               _%hd172717173027%_
                               _%tl172718173029%_
                               _%e172719173032%_
                               _%hd172720173035%_
                               _%tl172721173037%_
                               _%e172722173040%_
                               _%hd172723173043%_
                               _%tl172724173045%_
                               _%e172725173048%_
                               _%hd172726173051%_
                               _%tl172727173053%_
                               _%e172728173056%_
                               _%hd172729173059%_
                               _%tl172730173061%_
                               _%e172731173064%_
                               _%hd172732173067%_
                               _%tl172733173069%_
                               _%e172734173072%_
                               _%hd172735173075%_
                               _%tl172736173077%_
                               _%e172737173080%_
                               _%hd172738173083%_
                               _%tl172739173085%_
                               _%e172740173088%_
                               _%hd172741173091%_
                               _%tl172742173093%_
                               _%e172743173096%_
                               _%hd172744173099%_
                               _%tl172745173101%_
                               _%e172746173104%_
                               _%hd172747173107%_
                               _%tl172748173109%_)
                        (let ((_%L173112%_ _%hd172747173107%_)
                              (_%L173113%_ _%hd172744173099%_)
                              (_%L173114%_ _%hd172735173075%_)
                              (_%L173115%_ _%hd172726173051%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173115%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173115%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp179247
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172570%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173114%_
                                      __tmp179247)))
                              (_%__kont178600178601%_
                               _%L173112%_
                               _%L173113%_
                               _%L173114%_
                               _%L173115%_)
                              (_%__kont178606178607%_)))))
                     (_%__match178961178962%_
                      (lambda (_%e172716173024%_
                               _%hd172717173027%_
                               _%tl172718173029%_
                               _%e172719173032%_
                               _%hd172720173035%_
                               _%tl172721173037%_
                               _%e172722173040%_
                               _%hd172723173043%_
                               _%tl172724173045%_
                               _%e172725173048%_
                               _%hd172726173051%_
                               _%tl172727173053%_
                               _%e172728173056%_
                               _%hd172729173059%_
                               _%tl172730173061%_
                               _%e172731173064%_
                               _%hd172732173067%_
                               _%tl172733173069%_
                               _%e172734173072%_
                               _%hd172735173075%_
                               _%tl172736173077%_
                               _%e172737173080%_
                               _%hd172738173083%_
                               _%tl172739173085%_
                               _%e172740173088%_
                               _%hd172741173091%_
                               _%tl172742173093%_
                               _%e172743173096%_
                               _%hd172744173099%_
                               _%tl172745173101%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172739173085%_))
                            (let ((_%e172746173104%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172739173085%_))))
                              (let ((_%tl172748173109%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172746173104%_)))
                                    (_%hd172747173107%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172746173104%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172748173109%_))
                                    (_%__match178969178970%_
                                     _%e172716173024%_
                                     _%hd172717173027%_
                                     _%tl172718173029%_
                                     _%e172719173032%_
                                     _%hd172720173035%_
                                     _%tl172721173037%_
                                     _%e172722173040%_
                                     _%hd172723173043%_
                                     _%tl172724173045%_
                                     _%e172725173048%_
                                     _%hd172726173051%_
                                     _%tl172727173053%_
                                     _%e172728173056%_
                                     _%hd172729173059%_
                                     _%tl172730173061%_
                                     _%e172731173064%_
                                     _%hd172732173067%_
                                     _%tl172733173069%_
                                     _%e172734173072%_
                                     _%hd172735173075%_
                                     _%tl172736173077%_
                                     _%e172737173080%_
                                     _%hd172738173083%_
                                     _%tl172739173085%_
                                     _%e172740173088%_
                                     _%hd172741173091%_
                                     _%tl172742173093%_
                                     _%e172743173096%_
                                     _%hd172744173099%_
                                     _%tl172745173101%_
                                     _%e172746173104%_
                                     _%hd172747173107%_
                                     _%tl172748173109%_)
                                    (_%__kont178606178607%_))))
                            (_%__match179085179086%_
                             _%e172716173024%_
                             _%hd172717173027%_
                             _%tl172718173029%_
                             _%e172719173032%_
                             _%hd172720173035%_
                             _%tl172721173037%_
                             _%e172722173040%_
                             _%hd172723173043%_
                             _%tl172724173045%_
                             _%e172725173048%_
                             _%hd172726173051%_
                             _%tl172727173053%_
                             _%e172728173056%_
                             _%hd172729173059%_
                             _%tl172730173061%_
                             _%e172731173064%_
                             _%hd172732173067%_
                             _%tl172733173069%_
                             _%e172734173072%_
                             _%hd172735173075%_
                             _%tl172736173077%_
                             _%e172737173080%_
                             _%hd172738173083%_
                             _%tl172739173085%_))))
                     (_%__match178883178884%_
                      (lambda (_%e172682173158%_
                               _%hd172683173161%_
                               _%tl172684173163%_
                               _%e172685173166%_
                               _%hd172686173169%_
                               _%tl172687173171%_
                               _%e172688173174%_
                               _%hd172689173177%_
                               _%tl172690173179%_
                               _%e172691173182%_
                               _%hd172692173185%_
                               _%tl172693173187%_
                               _%e172694173190%_
                               _%hd172695173193%_
                               _%tl172696173195%_
                               _%e172697173198%_
                               _%hd172698173201%_
                               _%tl172699173203%_
                               _%e172700173206%_
                               _%hd172701173209%_
                               _%tl172702173211%_
                               _%e172703173214%_
                               _%hd172704173217%_
                               _%tl172705173219%_
                               _%e172706173222%_
                               _%hd172707173225%_
                               _%tl172708173227%_
                               _%e172709173230%_
                               _%hd172710173233%_
                               _%tl172711173235%_)
                        (let ((_%L173238%_ _%hd172710173233%_)
                              (_%L173239%_ _%hd172701173209%_)
                              (_%L173240%_ _%hd172692173185%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173240%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173240%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp179248
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172570%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173239%_
                                      __tmp179248)))
                              (_%__kont178598178599%_
                               _%L173238%_
                               _%L173239%_
                               _%L173240%_)
                              (_%__match179087179088%_
                               _%e172682173158%_
                               _%hd172683173161%_
                               _%tl172684173163%_
                               _%e172685173166%_
                               _%hd172686173169%_
                               _%tl172687173171%_
                               _%e172688173174%_
                               _%hd172689173177%_
                               _%tl172690173179%_
                               _%e172691173182%_
                               _%hd172692173185%_
                               _%tl172693173187%_
                               _%e172694173190%_
                               _%hd172695173193%_
                               _%tl172696173195%_
                               _%e172697173198%_
                               _%hd172698173201%_
                               _%tl172699173203%_
                               _%e172700173206%_
                               _%hd172701173209%_
                               _%tl172702173211%_
                               _%e172703173214%_
                               _%hd172704173217%_
                               _%tl172705173219%_)))))
                     (_%__match178881178882%_
                      (lambda (_%e172682173158%_
                               _%hd172683173161%_
                               _%tl172684173163%_
                               _%e172685173166%_
                               _%hd172686173169%_
                               _%tl172687173171%_
                               _%e172688173174%_
                               _%hd172689173177%_
                               _%tl172690173179%_
                               _%e172691173182%_
                               _%hd172692173185%_
                               _%tl172693173187%_
                               _%e172694173190%_
                               _%hd172695173193%_
                               _%tl172696173195%_
                               _%e172697173198%_
                               _%hd172698173201%_
                               _%tl172699173203%_
                               _%e172700173206%_
                               _%hd172701173209%_
                               _%tl172702173211%_
                               _%e172703173214%_
                               _%hd172704173217%_
                               _%tl172705173219%_
                               _%e172706173222%_
                               _%hd172707173225%_
                               _%tl172708173227%_
                               _%e172709173230%_
                               _%hd172710173233%_
                               _%tl172711173235%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172705173219%_))
                            (_%__match178883178884%_
                             _%e172682173158%_
                             _%hd172683173161%_
                             _%tl172684173163%_
                             _%e172685173166%_
                             _%hd172686173169%_
                             _%tl172687173171%_
                             _%e172688173174%_
                             _%hd172689173177%_
                             _%tl172690173179%_
                             _%e172691173182%_
                             _%hd172692173185%_
                             _%tl172693173187%_
                             _%e172694173190%_
                             _%hd172695173193%_
                             _%tl172696173195%_
                             _%e172697173198%_
                             _%hd172698173201%_
                             _%tl172699173203%_
                             _%e172700173206%_
                             _%hd172701173209%_
                             _%tl172702173211%_
                             _%e172703173214%_
                             _%hd172704173217%_
                             _%tl172705173219%_
                             _%e172706173222%_
                             _%hd172707173225%_
                             _%tl172708173227%_
                             _%e172709173230%_
                             _%hd172710173233%_
                             _%tl172711173235%_)
                            (_%__match178961178962%_
                             _%e172682173158%_
                             _%hd172683173161%_
                             _%tl172684173163%_
                             _%e172685173166%_
                             _%hd172686173169%_
                             _%tl172687173171%_
                             _%e172688173174%_
                             _%hd172689173177%_
                             _%tl172690173179%_
                             _%e172691173182%_
                             _%hd172692173185%_
                             _%tl172693173187%_
                             _%e172694173190%_
                             _%hd172695173193%_
                             _%tl172696173195%_
                             _%e172697173198%_
                             _%hd172698173201%_
                             _%tl172699173203%_
                             _%e172700173206%_
                             _%hd172701173209%_
                             _%tl172702173211%_
                             _%e172703173214%_
                             _%hd172704173217%_
                             _%tl172705173219%_
                             _%e172706173222%_
                             _%hd172707173225%_
                             _%tl172708173227%_
                             _%e172709173230%_
                             _%hd172710173233%_
                             _%tl172711173235%_))))
                     (_%__match178871178872%_
                      (lambda (_%e172682173158%_
                               _%hd172683173161%_
                               _%tl172684173163%_
                               _%e172685173166%_
                               _%hd172686173169%_
                               _%tl172687173171%_
                               _%e172688173174%_
                               _%hd172689173177%_
                               _%tl172690173179%_
                               _%e172691173182%_
                               _%hd172692173185%_
                               _%tl172693173187%_
                               _%e172694173190%_
                               _%hd172695173193%_
                               _%tl172696173195%_
                               _%e172697173198%_
                               _%hd172698173201%_
                               _%tl172699173203%_
                               _%e172700173206%_
                               _%hd172701173209%_
                               _%tl172702173211%_
                               _%e172703173214%_
                               _%hd172704173217%_
                               _%tl172705173219%_
                               _%e172706173222%_
                               _%hd172707173225%_
                               _%tl172708173227%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd172707173225%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172708173227%_))
                                (let ((_%e172709173230%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172708173227%_))))
                                  (let ((_%tl172711173235%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172709173230%_)))
                                        (_%hd172710173233%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172709173230%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172711173235%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172705173219%_))
                                            (_%__match178883178884%_
                                             _%e172682173158%_
                                             _%hd172683173161%_
                                             _%tl172684173163%_
                                             _%e172685173166%_
                                             _%hd172686173169%_
                                             _%tl172687173171%_
                                             _%e172688173174%_
                                             _%hd172689173177%_
                                             _%tl172690173179%_
                                             _%e172691173182%_
                                             _%hd172692173185%_
                                             _%tl172693173187%_
                                             _%e172694173190%_
                                             _%hd172695173193%_
                                             _%tl172696173195%_
                                             _%e172697173198%_
                                             _%hd172698173201%_
                                             _%tl172699173203%_
                                             _%e172700173206%_
                                             _%hd172701173209%_
                                             _%tl172702173211%_
                                             _%e172703173214%_
                                             _%hd172704173217%_
                                             _%tl172705173219%_
                                             _%e172706173222%_
                                             _%hd172707173225%_
                                             _%tl172708173227%_
                                             _%e172709173230%_
                                             _%hd172710173233%_
                                             _%tl172711173235%_)
                                            (_%__match178961178962%_
                                             _%e172682173158%_
                                             _%hd172683173161%_
                                             _%tl172684173163%_
                                             _%e172685173166%_
                                             _%hd172686173169%_
                                             _%tl172687173171%_
                                             _%e172688173174%_
                                             _%hd172689173177%_
                                             _%tl172690173179%_
                                             _%e172691173182%_
                                             _%hd172692173185%_
                                             _%tl172693173187%_
                                             _%e172694173190%_
                                             _%hd172695173193%_
                                             _%tl172696173195%_
                                             _%e172697173198%_
                                             _%hd172698173201%_
                                             _%tl172699173203%_
                                             _%e172700173206%_
                                             _%hd172701173209%_
                                             _%tl172702173211%_
                                             _%e172703173214%_
                                             _%hd172704173217%_
                                             _%tl172705173219%_
                                             _%e172706173222%_
                                             _%hd172707173225%_
                                             _%tl172708173227%_
                                             _%e172709173230%_
                                             _%hd172710173233%_
                                             _%tl172711173235%_))
                                        (_%__match179085179086%_
                                         _%e172682173158%_
                                         _%hd172683173161%_
                                         _%tl172684173163%_
                                         _%e172685173166%_
                                         _%hd172686173169%_
                                         _%tl172687173171%_
                                         _%e172688173174%_
                                         _%hd172689173177%_
                                         _%tl172690173179%_
                                         _%e172691173182%_
                                         _%hd172692173185%_
                                         _%tl172693173187%_
                                         _%e172694173190%_
                                         _%hd172695173193%_
                                         _%tl172696173195%_
                                         _%e172697173198%_
                                         _%hd172698173201%_
                                         _%tl172699173203%_
                                         _%e172700173206%_
                                         _%hd172701173209%_
                                         _%tl172702173211%_
                                         _%e172703173214%_
                                         _%hd172704173217%_
                                         _%tl172705173219%_))))
                                (_%__match179085179086%_
                                 _%e172682173158%_
                                 _%hd172683173161%_
                                 _%tl172684173163%_
                                 _%e172685173166%_
                                 _%hd172686173169%_
                                 _%tl172687173171%_
                                 _%e172688173174%_
                                 _%hd172689173177%_
                                 _%tl172690173179%_
                                 _%e172691173182%_
                                 _%hd172692173185%_
                                 _%tl172693173187%_
                                 _%e172694173190%_
                                 _%hd172695173193%_
                                 _%tl172696173195%_
                                 _%e172697173198%_
                                 _%hd172698173201%_
                                 _%tl172699173203%_
                                 _%e172700173206%_
                                 _%hd172701173209%_
                                 _%tl172702173211%_
                                 _%e172703173214%_
                                 _%hd172704173217%_
                                 _%tl172705173219%_))
                            (_%__match179085179086%_
                             _%e172682173158%_
                             _%hd172683173161%_
                             _%tl172684173163%_
                             _%e172685173166%_
                             _%hd172686173169%_
                             _%tl172687173171%_
                             _%e172688173174%_
                             _%hd172689173177%_
                             _%tl172690173179%_
                             _%e172691173182%_
                             _%hd172692173185%_
                             _%tl172693173187%_
                             _%e172694173190%_
                             _%hd172695173193%_
                             _%tl172696173195%_
                             _%e172697173198%_
                             _%hd172698173201%_
                             _%tl172699173203%_
                             _%e172700173206%_
                             _%hd172701173209%_
                             _%tl172702173211%_
                             _%e172703173214%_
                             _%hd172704173217%_
                             _%tl172705173219%_))))
                     (_%__match178803178804%_
                      (lambda (_%e172631173279%_
                               _%hd172632173282%_
                               _%tl172633173284%_
                               _%e172634173287%_
                               _%hd172635173290%_
                               _%tl172636173292%_
                               _%e172637173295%_
                               _%hd172638173298%_
                               _%tl172639173300%_
                               _%e172640173303%_
                               _%hd172641173306%_
                               _%tl172642173308%_
                               _%e172643173311%_
                               _%hd172644173314%_
                               _%tl172645173316%_
                               _%e172646173319%_
                               _%hd172647173322%_
                               _%tl172648173324%_
                               _%e172649173327%_
                               _%hd172650173330%_
                               _%tl172651173332%_
                               _%e172652173335%_
                               _%hd172653173338%_
                               _%tl172654173340%_
                               _%e172655173343%_
                               _%hd172656173346%_
                               _%tl172657173348%_
                               _%e172658173351%_
                               _%hd172659173354%_
                               _%tl172660173356%_
                               _%e172661173359%_
                               _%hd172662173362%_
                               _%tl172663173364%_
                               _%e172664173367%_
                               _%hd172665173370%_
                               _%tl172666173372%_
                               _%e172667173375%_
                               _%hd172668173378%_
                               _%tl172669173380%_
                               _%__splice178596178597%_
                               _%target172670173383%_
                               _%tl172672173385%_)
                        (letrec ((_%loop172673173388%_
                                  (lambda (_%hd172671173391%_
                                           _%args172677173393%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172671173391%_))
                                        (let ((_%e172674173396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172671173391%_))))
                                          (let ((_%lp-tl172676173401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172674173396%_)))
                                                (_%lp-hd172675173399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172674173396%_))))
                                            (_%loop172673173388%_
                                             _%lp-tl172676173401%_
                                             (cons _%lp-hd172675173399%_
                                                   _%args172677173393%_))))
                                        (let ((_%args172678173404%_
                                               (reverse _%args172677173393%_)))
                                          (let ((_%L173407%_
                                                 _%args172678173404%_)
                                                (_%L173408%_
                                                 _%hd172668173378%_)
                                                (_%L173409%_
                                                 _%hd172659173354%_)
                                                (_%L173410%_
                                                 _%hd172650173330%_)
                                                (_%L173411%_
                                                 _%hd172641173306%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173411%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173410%_
                                                        'call-method))
                                                     (let ((__tmp179249
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172570%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173409%_
                                                        __tmp179249)))
                                                (_%__kont178594178595%_
                                                 _%L173407%_
                                                 _%L173408%_
                                                 _%L173409%_
                                                 _%L173410%_
                                                 _%L173411%_)
                                                (_%__kont178606178607%_))))))))
                          (_%loop172673173388%_ _%target172670173383%_ '()))))
                     (_%__match178761178762%_
                      (lambda (_%e172631173279%_
                               _%hd172632173282%_
                               _%tl172633173284%_
                               _%e172634173287%_
                               _%hd172635173290%_
                               _%tl172636173292%_
                               _%e172637173295%_
                               _%hd172638173298%_
                               _%tl172639173300%_
                               _%e172640173303%_
                               _%hd172641173306%_
                               _%tl172642173308%_
                               _%e172643173311%_
                               _%hd172644173314%_
                               _%tl172645173316%_
                               _%e172646173319%_
                               _%hd172647173322%_
                               _%tl172648173324%_
                               _%e172649173327%_
                               _%hd172650173330%_
                               _%tl172651173332%_
                               _%e172652173335%_
                               _%hd172653173338%_
                               _%tl172654173340%_
                               _%e172655173343%_
                               _%hd172656173346%_
                               _%tl172657173348%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd172656173346%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172657173348%_))
                                (let ((_%e172658173351%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172657173348%_))))
                                  (let ((_%tl172660173356%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172658173351%_)))
                                        (_%hd172659173354%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172658173351%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172660173356%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172654173340%_))
                                            (let ((_%e172661173359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172654173340%_))))
                                              (let ((_%tl172663173364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172661173359%_)))
                                                    (_%hd172662173362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172661173359%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd172662173362%_))
                                                    (let ((_%e172664173367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd172662173362%_))))
                                                      (let ((_%tl172666173372%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172664173367%_)))
                    (_%hd172665173370%_
                     (let () (declare (not safe)) (##car _%e172664173367%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd172665173370%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd172665173370%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172666173372%_))
                            (let ((_%e172667173375%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172666173372%_))))
                              (let ((_%tl172669173380%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172667173375%_)))
                                    (_%hd172668173378%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172667173375%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172669173380%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl172663173364%_))
                                        (let ((_%__splice178596178597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl172663173364%_
                                                  '0))))
                                          (let ((_%tl172672173385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178596178597%_
                                                    '1)))
                                                (_%target172670173383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178596178597%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl172672173385%_))
                                                (_%__match178803178804%_
                                                 _%e172631173279%_
                                                 _%hd172632173282%_
                                                 _%tl172633173284%_
                                                 _%e172634173287%_
                                                 _%hd172635173290%_
                                                 _%tl172636173292%_
                                                 _%e172637173295%_
                                                 _%hd172638173298%_
                                                 _%tl172639173300%_
                                                 _%e172640173303%_
                                                 _%hd172641173306%_
                                                 _%tl172642173308%_
                                                 _%e172643173311%_
                                                 _%hd172644173314%_
                                                 _%tl172645173316%_
                                                 _%e172646173319%_
                                                 _%hd172647173322%_
                                                 _%tl172648173324%_
                                                 _%e172649173327%_
                                                 _%hd172650173330%_
                                                 _%tl172651173332%_
                                                 _%e172652173335%_
                                                 _%hd172653173338%_
                                                 _%tl172654173340%_
                                                 _%e172655173343%_
                                                 _%hd172656173346%_
                                                 _%tl172657173348%_
                                                 _%e172658173351%_
                                                 _%hd172659173354%_
                                                 _%tl172660173356%_
                                                 _%e172661173359%_
                                                 _%hd172662173362%_
                                                 _%tl172663173364%_
                                                 _%e172664173367%_
                                                 _%hd172665173370%_
                                                 _%tl172666173372%_
                                                 _%e172667173375%_
                                                 _%hd172668173378%_
                                                 _%tl172669173380%_
                                                 _%__splice178596178597%_
                                                 _%target172670173383%_
                                                 _%tl172672173385%_)
                                                (_%__kont178606178607%_))))
                                        (_%__kont178606178607%_))
                                    (_%__kont178606178607%_))))
                            (_%__kont178606178607%_))
                        (_%__kont178606178607%_))
                    (_%__kont178606178607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178606178607%_))))
                                            (_%__match179085179086%_
                                             _%e172631173279%_
                                             _%hd172632173282%_
                                             _%tl172633173284%_
                                             _%e172634173287%_
                                             _%hd172635173290%_
                                             _%tl172636173292%_
                                             _%e172637173295%_
                                             _%hd172638173298%_
                                             _%tl172639173300%_
                                             _%e172640173303%_
                                             _%hd172641173306%_
                                             _%tl172642173308%_
                                             _%e172643173311%_
                                             _%hd172644173314%_
                                             _%tl172645173316%_
                                             _%e172646173319%_
                                             _%hd172647173322%_
                                             _%tl172648173324%_
                                             _%e172649173327%_
                                             _%hd172650173330%_
                                             _%tl172651173332%_
                                             _%e172652173335%_
                                             _%hd172653173338%_
                                             _%tl172654173340%_))
                                        (_%__match179085179086%_
                                         _%e172631173279%_
                                         _%hd172632173282%_
                                         _%tl172633173284%_
                                         _%e172634173287%_
                                         _%hd172635173290%_
                                         _%tl172636173292%_
                                         _%e172637173295%_
                                         _%hd172638173298%_
                                         _%tl172639173300%_
                                         _%e172640173303%_
                                         _%hd172641173306%_
                                         _%tl172642173308%_
                                         _%e172643173311%_
                                         _%hd172644173314%_
                                         _%tl172645173316%_
                                         _%e172646173319%_
                                         _%hd172647173322%_
                                         _%tl172648173324%_
                                         _%e172649173327%_
                                         _%hd172650173330%_
                                         _%tl172651173332%_
                                         _%e172652173335%_
                                         _%hd172653173338%_
                                         _%tl172654173340%_))))
                                (_%__match179085179086%_
                                 _%e172631173279%_
                                 _%hd172632173282%_
                                 _%tl172633173284%_
                                 _%e172634173287%_
                                 _%hd172635173290%_
                                 _%tl172636173292%_
                                 _%e172637173295%_
                                 _%hd172638173298%_
                                 _%tl172639173300%_
                                 _%e172640173303%_
                                 _%hd172641173306%_
                                 _%tl172642173308%_
                                 _%e172643173311%_
                                 _%hd172644173314%_
                                 _%tl172645173316%_
                                 _%e172646173319%_
                                 _%hd172647173322%_
                                 _%tl172648173324%_
                                 _%e172649173327%_
                                 _%hd172650173330%_
                                 _%tl172651173332%_
                                 _%e172652173335%_
                                 _%hd172653173338%_
                                 _%tl172654173340%_))
                            (_%__match178871178872%_
                             _%e172631173279%_
                             _%hd172632173282%_
                             _%tl172633173284%_
                             _%e172634173287%_
                             _%hd172635173290%_
                             _%tl172636173292%_
                             _%e172637173295%_
                             _%hd172638173298%_
                             _%tl172639173300%_
                             _%e172640173303%_
                             _%hd172641173306%_
                             _%tl172642173308%_
                             _%e172643173311%_
                             _%hd172644173314%_
                             _%tl172645173316%_
                             _%e172646173319%_
                             _%hd172647173322%_
                             _%tl172648173324%_
                             _%e172649173327%_
                             _%hd172650173330%_
                             _%tl172651173332%_
                             _%e172652173335%_
                             _%hd172653173338%_
                             _%tl172654173340%_
                             _%e172655173343%_
                             _%hd172656173346%_
                             _%tl172657173348%_))))
                     (_%__match178693178694%_
                      (lambda (_%e172587173471%_
                               _%hd172588173474%_
                               _%tl172589173476%_
                               _%e172590173479%_
                               _%hd172591173482%_
                               _%tl172592173484%_
                               _%e172593173487%_
                               _%hd172594173490%_
                               _%tl172595173492%_
                               _%e172596173495%_
                               _%hd172597173498%_
                               _%tl172598173500%_
                               _%e172599173503%_
                               _%hd172600173506%_
                               _%tl172601173508%_
                               _%e172602173511%_
                               _%hd172603173514%_
                               _%tl172604173516%_
                               _%e172605173519%_
                               _%hd172606173522%_
                               _%tl172607173524%_
                               _%e172608173527%_
                               _%hd172609173530%_
                               _%tl172610173532%_
                               _%e172611173535%_
                               _%hd172612173538%_
                               _%tl172613173540%_
                               _%e172614173543%_
                               _%hd172615173546%_
                               _%tl172616173548%_
                               _%__splice178592178593%_
                               _%target172617173551%_
                               _%tl172619173553%_)
                        (letrec ((_%loop172620173556%_
                                  (lambda (_%hd172618173559%_
                                           _%args172624173561%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172618173559%_))
                                        (let ((_%e172621173564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172618173559%_))))
                                          (let ((_%lp-tl172623173569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172621173564%_)))
                                                (_%lp-hd172622173567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172621173564%_))))
                                            (_%loop172620173556%_
                                             _%lp-tl172623173569%_
                                             (cons _%lp-hd172622173567%_
                                                   _%args172624173561%_))))
                                        (let ((_%args172625173572%_
                                               (reverse _%args172624173561%_)))
                                          (let ((_%L173575%_
                                                 _%args172625173572%_)
                                                (_%L173576%_
                                                 _%hd172615173546%_)
                                                (_%L173577%_
                                                 _%hd172606173522%_)
                                                (_%L173578%_
                                                 _%hd172597173498%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173578%_
                                                        'call-method))
                                                     (let ((__tmp179250
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172570%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173577%_
                                                        __tmp179250)))
                                                (_%__kont178590178591%_
                                                 _%L173575%_
                                                 _%L173576%_
                                                 _%L173577%_
                                                 _%L173578%_)
                                                (_%__match178881178882%_
                                                 _%e172587173471%_
                                                 _%hd172588173474%_
                                                 _%tl172589173476%_
                                                 _%e172590173479%_
                                                 _%hd172591173482%_
                                                 _%tl172592173484%_
                                                 _%e172593173487%_
                                                 _%hd172594173490%_
                                                 _%tl172595173492%_
                                                 _%e172596173495%_
                                                 _%hd172597173498%_
                                                 _%tl172598173500%_
                                                 _%e172599173503%_
                                                 _%hd172600173506%_
                                                 _%tl172601173508%_
                                                 _%e172602173511%_
                                                 _%hd172603173514%_
                                                 _%tl172604173516%_
                                                 _%e172605173519%_
                                                 _%hd172606173522%_
                                                 _%tl172607173524%_
                                                 _%e172608173527%_
                                                 _%hd172609173530%_
                                                 _%tl172610173532%_
                                                 _%e172611173535%_
                                                 _%hd172612173538%_
                                                 _%tl172613173540%_
                                                 _%e172614173543%_
                                                 _%hd172615173546%_
                                                 _%tl172616173548%_))))))))
                          (_%loop172620173556%_ _%target172617173551%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx178588178589%_))
                    (let ((_%e172587173471%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx178588178589%_))))
                      (let ((_%tl172589173476%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172587173471%_)))
                            (_%hd172588173474%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172587173471%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172589173476%_))
                            (let ((_%e172590173479%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172589173476%_))))
                              (let ((_%tl172592173484%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172590173479%_)))
                                    (_%hd172591173482%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172590173479%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172591173482%_))
                                    (let ((_%e172593173487%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172591173482%_))))
                                      (let ((_%tl172595173492%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172593173487%_)))
                                            (_%hd172594173490%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172593173487%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd172594173490%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd172594173490%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172595173492%_))
                                                    (let ((_%e172596173495%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172595173492%_))))
                                                      (let ((_%tl172598173500%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172596173495%_)))
                    (_%hd172597173498%_
                     (let () (declare (not safe)) (##car _%e172596173495%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172598173500%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172592173484%_))
                        (let ((_%e172599173503%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172592173484%_))))
                          (let ((_%tl172601173508%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172599173503%_)))
                                (_%hd172600173506%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172599173503%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172600173506%_))
                                (let ((_%e172602173511%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172600173506%_))))
                                  (let ((_%tl172604173516%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172602173511%_)))
                                        (_%hd172603173514%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172602173511%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172603173514%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd172603173514%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172604173516%_))
                                                (let ((_%e172605173519%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172604173516%_))))
                                                  (let ((_%tl172607173524%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172605173519%_)))
                                                        (_%hd172606173522%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172605173519%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172607173524%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172601173508%_))
                                                            (let ((_%e172608173527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172601173508%_))))
                      (let ((_%tl172610173532%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172608173527%_)))
                            (_%hd172609173530%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172608173527%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd172609173530%_))
                            (let ((_%e172611173535%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd172609173530%_))))
                              (let ((_%tl172613173540%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172611173535%_)))
                                    (_%hd172612173538%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172611173535%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd172612173538%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd172612173538%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172613173540%_))
                                            (let ((_%e172614173543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172613173540%_))))
                                              (let ((_%tl172616173548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172614173543%_)))
                                                    (_%hd172615173546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172614173543%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172616173548%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl172610173532%_))
                                                        (let ((_%__splice178592178593%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl172610173532%_ '0))))
                  (let ((_%tl172619173553%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178592178593%_ '1)))
                        (_%target172617173551%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178592178593%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl172619173553%_))
                        (_%__match178693178694%_
                         _%e172587173471%_
                         _%hd172588173474%_
                         _%tl172589173476%_
                         _%e172590173479%_
                         _%hd172591173482%_
                         _%tl172592173484%_
                         _%e172593173487%_
                         _%hd172594173490%_
                         _%tl172595173492%_
                         _%e172596173495%_
                         _%hd172597173498%_
                         _%tl172598173500%_
                         _%e172599173503%_
                         _%hd172600173506%_
                         _%tl172601173508%_
                         _%e172602173511%_
                         _%hd172603173514%_
                         _%tl172604173516%_
                         _%e172605173519%_
                         _%hd172606173522%_
                         _%tl172607173524%_
                         _%e172608173527%_
                         _%hd172609173530%_
                         _%tl172610173532%_
                         _%e172611173535%_
                         _%hd172612173538%_
                         _%tl172613173540%_
                         _%e172614173543%_
                         _%hd172615173546%_
                         _%tl172616173548%_
                         _%__splice178592178593%_
                         _%target172617173551%_
                         _%tl172619173553%_)
                        (_%__match178881178882%_
                         _%e172587173471%_
                         _%hd172588173474%_
                         _%tl172589173476%_
                         _%e172590173479%_
                         _%hd172591173482%_
                         _%tl172592173484%_
                         _%e172593173487%_
                         _%hd172594173490%_
                         _%tl172595173492%_
                         _%e172596173495%_
                         _%hd172597173498%_
                         _%tl172598173500%_
                         _%e172599173503%_
                         _%hd172600173506%_
                         _%tl172601173508%_
                         _%e172602173511%_
                         _%hd172603173514%_
                         _%tl172604173516%_
                         _%e172605173519%_
                         _%hd172606173522%_
                         _%tl172607173524%_
                         _%e172608173527%_
                         _%hd172609173530%_
                         _%tl172610173532%_
                         _%e172611173535%_
                         _%hd172612173538%_
                         _%tl172613173540%_
                         _%e172614173543%_
                         _%hd172615173546%_
                         _%tl172616173548%_))))
                (_%__match178881178882%_
                 _%e172587173471%_
                 _%hd172588173474%_
                 _%tl172589173476%_
                 _%e172590173479%_
                 _%hd172591173482%_
                 _%tl172592173484%_
                 _%e172593173487%_
                 _%hd172594173490%_
                 _%tl172595173492%_
                 _%e172596173495%_
                 _%hd172597173498%_
                 _%tl172598173500%_
                 _%e172599173503%_
                 _%hd172600173506%_
                 _%tl172601173508%_
                 _%e172602173511%_
                 _%hd172603173514%_
                 _%tl172604173516%_
                 _%e172605173519%_
                 _%hd172606173522%_
                 _%tl172607173524%_
                 _%e172608173527%_
                 _%hd172609173530%_
                 _%tl172610173532%_
                 _%e172611173535%_
                 _%hd172612173538%_
                 _%tl172613173540%_
                 _%e172614173543%_
                 _%hd172615173546%_
                 _%tl172616173548%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match179085179086%_
                                                     _%e172587173471%_
                                                     _%hd172588173474%_
                                                     _%tl172589173476%_
                                                     _%e172590173479%_
                                                     _%hd172591173482%_
                                                     _%tl172592173484%_
                                                     _%e172593173487%_
                                                     _%hd172594173490%_
                                                     _%tl172595173492%_
                                                     _%e172596173495%_
                                                     _%hd172597173498%_
                                                     _%tl172598173500%_
                                                     _%e172599173503%_
                                                     _%hd172600173506%_
                                                     _%tl172601173508%_
                                                     _%e172602173511%_
                                                     _%hd172603173514%_
                                                     _%tl172604173516%_
                                                     _%e172605173519%_
                                                     _%hd172606173522%_
                                                     _%tl172607173524%_
                                                     _%e172608173527%_
                                                     _%hd172609173530%_
                                                     _%tl172610173532%_))))
                                            (_%__match179085179086%_
                                             _%e172587173471%_
                                             _%hd172588173474%_
                                             _%tl172589173476%_
                                             _%e172590173479%_
                                             _%hd172591173482%_
                                             _%tl172592173484%_
                                             _%e172593173487%_
                                             _%hd172594173490%_
                                             _%tl172595173492%_
                                             _%e172596173495%_
                                             _%hd172597173498%_
                                             _%tl172598173500%_
                                             _%e172599173503%_
                                             _%hd172600173506%_
                                             _%tl172601173508%_
                                             _%e172602173511%_
                                             _%hd172603173514%_
                                             _%tl172604173516%_
                                             _%e172605173519%_
                                             _%hd172606173522%_
                                             _%tl172607173524%_
                                             _%e172608173527%_
                                             _%hd172609173530%_
                                             _%tl172610173532%_))
                                        (_%__match178761178762%_
                                         _%e172587173471%_
                                         _%hd172588173474%_
                                         _%tl172589173476%_
                                         _%e172590173479%_
                                         _%hd172591173482%_
                                         _%tl172592173484%_
                                         _%e172593173487%_
                                         _%hd172594173490%_
                                         _%tl172595173492%_
                                         _%e172596173495%_
                                         _%hd172597173498%_
                                         _%tl172598173500%_
                                         _%e172599173503%_
                                         _%hd172600173506%_
                                         _%tl172601173508%_
                                         _%e172602173511%_
                                         _%hd172603173514%_
                                         _%tl172604173516%_
                                         _%e172605173519%_
                                         _%hd172606173522%_
                                         _%tl172607173524%_
                                         _%e172608173527%_
                                         _%hd172609173530%_
                                         _%tl172610173532%_
                                         _%e172611173535%_
                                         _%hd172612173538%_
                                         _%tl172613173540%_))
                                    (_%__match179085179086%_
                                     _%e172587173471%_
                                     _%hd172588173474%_
                                     _%tl172589173476%_
                                     _%e172590173479%_
                                     _%hd172591173482%_
                                     _%tl172592173484%_
                                     _%e172593173487%_
                                     _%hd172594173490%_
                                     _%tl172595173492%_
                                     _%e172596173495%_
                                     _%hd172597173498%_
                                     _%tl172598173500%_
                                     _%e172599173503%_
                                     _%hd172600173506%_
                                     _%tl172601173508%_
                                     _%e172602173511%_
                                     _%hd172603173514%_
                                     _%tl172604173516%_
                                     _%e172605173519%_
                                     _%hd172606173522%_
                                     _%tl172607173524%_
                                     _%e172608173527%_
                                     _%hd172609173530%_
                                     _%tl172610173532%_))))
                            (_%__match179085179086%_
                             _%e172587173471%_
                             _%hd172588173474%_
                             _%tl172589173476%_
                             _%e172590173479%_
                             _%hd172591173482%_
                             _%tl172592173484%_
                             _%e172593173487%_
                             _%hd172594173490%_
                             _%tl172595173492%_
                             _%e172596173495%_
                             _%hd172597173498%_
                             _%tl172598173500%_
                             _%e172599173503%_
                             _%hd172600173506%_
                             _%tl172601173508%_
                             _%e172602173511%_
                             _%hd172603173514%_
                             _%tl172604173516%_
                             _%e172605173519%_
                             _%hd172606173522%_
                             _%tl172607173524%_
                             _%e172608173527%_
                             _%hd172609173530%_
                             _%tl172610173532%_))))
                    (_%__match179023179024%_
                     _%e172587173471%_
                     _%hd172588173474%_
                     _%tl172589173476%_
                     _%e172590173479%_
                     _%hd172591173482%_
                     _%tl172592173484%_
                     _%e172593173487%_
                     _%hd172594173490%_
                     _%tl172595173492%_
                     _%e172596173495%_
                     _%hd172597173498%_
                     _%tl172598173500%_
                     _%e172599173503%_
                     _%hd172600173506%_
                     _%tl172601173508%_
                     _%e172602173511%_
                     _%hd172603173514%_
                     _%tl172604173516%_
                     _%e172605173519%_
                     _%hd172606173522%_
                     _%tl172607173524%_))
                (_%__kont178606178607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont178606178607%_))
                                            (_%__kont178606178607%_))
                                        (_%__kont178606178607%_))))
                                (_%__kont178606178607%_))))
                        (_%__kont178606178607%_))
                    (_%__kont178606178607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178606178607%_))
                                                (_%__kont178606178607%_))
                                            (_%__kont178606178607%_))))
                                    (_%__kont178606178607%_))))
                            (_%__kont178606178607%_))))
                    (_%__kont178606178607%_))))))))))
