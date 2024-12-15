(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1734278448)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp179005 (list gxc#::identity::t))
            (__tmp179004 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp179005
         '()
         __tmp179004
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args177802%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args177802%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp179006
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
        (__make-promise __tmp179006)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx177794%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self177797%_
                (let ((__obj178997
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj178997))
               (__tmp179007
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177797%_ _%stx177794%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179007
           gxc#current-compile-method
           _%self177797%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp179009 (list gxc#::false::t))
            (__tmp179008 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp179009
         '()
         __tmp179008
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args177791%_
        (apply make-instance gxc#::extract-receiver::t _%$args177791%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp179010
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
        (__make-promise __tmp179010)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx177783%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self177786%_
                (let ((__obj178999
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj178999))
               (__tmp179011
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177786%_ _%stx177783%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179011
           gxc#current-compile-method
           _%self177786%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp179013 (list gxc#::void::t))
            (__tmp179012 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp179013
         '(receiver methods slots)
         __tmp179012
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args177780%_
        (apply make-instance gxc#::collect-object-refs::t _%$args177780%_)))
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
      (let ((__tmp179014
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
        (__make-promise __tmp179014)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords177746%_
               _%receiver177741177747%_
               _%methods177742177749%_
               _%slots177743177751%_
               _%stx177753%_)
        (let* ((_%receiver177756%_
                (if (eq? _%receiver177741177747%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177741177747%_))
               (_%methods177758%_
                (if (eq? _%methods177742177749%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177742177749%_))
               (_%slots177760%_
                (if (eq? _%slots177743177751%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177743177751%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self177762%_
                  (let ((__obj179001
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
                       __obj179001
                       _%receiver177756%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179001
                       _%methods177758%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179001
                       _%slots177760%_
                       '3
                       '#f
                       '#f))
                    __obj179001))
                 (__tmp179015
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177762%_ _%stx177753%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179015
             gxc#current-compile-method
             _%self177762%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords177769%_ . _%args177770%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords177769%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177769%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177769%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177769%_
                  'slots:
                  absent-value))
               _%args177770%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args177744177776%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args177744177776%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp179017 (list gxc#::basic-xform-expression::t))
            (__tmp179016 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp179017
         '(receiver klass methods slots)
         __tmp179016
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args177737%_
        (apply make-instance gxc#::subst-object-refs::t _%$args177737%_)))
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
      (let ((__tmp179018
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
        (__make-promise __tmp179018)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords177699%_
               _%receiver177693177700%_
               _%klass177694177702%_
               _%methods177695177704%_
               _%slots177696177706%_
               _%stx177708%_)
        (let* ((_%receiver177711%_
                (if (eq? _%receiver177693177700%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177693177700%_))
               (_%klass177713%_
                (if (eq? _%klass177694177702%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass177694177702%_))
               (_%methods177715%_
                (if (eq? _%methods177695177704%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177695177704%_))
               (_%slots177717%_
                (if (eq? _%slots177696177706%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177696177706%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self177719%_
                  (let ((__obj179003
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
                       __obj179003
                       _%receiver177711%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179003
                       _%klass177713%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179003
                       _%methods177715%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179003
                       _%slots177717%_
                       '4
                       '#f
                       '#f))
                    __obj179003))
                 (__tmp179019
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177719%_ _%stx177708%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179019
             gxc#current-compile-method
             _%self177719%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords177726%_ . _%args177727%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords177726%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177726%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177726%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177726%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177726%_
                  'slots:
                  absent-value))
               _%args177727%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args177697177733%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args177697177733%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self174808%_ _%stx174809%_)
        (letrec ((_%generate-method-bind174811%_
                  (lambda (_%$klass177685%_
                           _%$method-table177686%_
                           _%id177687%_
                           _%$id177688%_)
                    (let ((_%$tmp177690%_
                           (let ((__tmp179020
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179020))))
                      (cons (cons _%$id177688%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp177690%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table177686%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id177687%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp177690%_ '()))
                    (cons (cons '%#ref (cons _%$tmp177690%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id177687%_
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
                 (_%generate-slot-bind174812%_
                  (lambda (_%$klass177679%_ _%id177680%_ _%$id177681%_)
                    (let ((_%$tmp177683%_
                           (let ((__tmp179021
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179021))))
                      (cons (cons _%$id177681%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp177683%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass177679%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id177680%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp177683%_ '()))
                        (cons (cons '%#ref (cons _%$tmp177683%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id177680%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl174813%_
                  (lambda (_%$klass177673%_
                           _%$method-table177674%_
                           _%methods-bind177675%_
                           _%slots-bind177676%_
                           _%specializer-impl177677%_)
                    (let ((__tmp179022
                           (cons '%#lambda
                                 (cons (cons _%$klass177673%_
                                             (cons _%$method-table177674%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind177676%_
                                                            _%methods-bind177675%_))
                                                         (cons _%specializer-impl177677%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179022 _%stx174809%_))))
                 (_%generate-specializer-def174814%_
                  (lambda (_%id177669%_
                           _%specializer-id177670%_
                           _%specializer-impl177671%_)
                    (let ((__tmp179023
                           (cons '%#begin
                                 (cons _%stx174809%_
                                       (cons (let ((__tmp179024
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id177670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl177671%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179024
                                                _%stx174809%_))
                                             (cons (let ((__tmp179025
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id177669%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id177670%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179025
                                                      _%stx174809%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179023 _%stx174809%_)))))
          (let* ((_%__stx177891177892%_ _%stx174809%_)
                 (_%g174817174837%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx177891177892%_)))))
            (let ((_%__kont177893177894%_
                   (lambda (_%L174881%_ _%L174882%_)
                     (let ((_%method-calls174901%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs174902%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty174903%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?174905%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls174901%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs174902%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L174881%_))
                             (let* ((_%__stx177805177806%_ _%L174881%_)
                                    (_%g175293175311%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx177805177806%_)))))
                               (let ((_%__kont177807177808%_
                                      (lambda (_%L175347%_
                                               _%L175348%_
                                               _%L175349%_)
                                        (let ((_%receiver175369%_
                                               (let ((_%$e175366%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L175347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e175366%_
                                                     _%$e175366%_
                                                     _%L175349%_))))
                                          (for-each
                                           (lambda (_%g175370175372%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver175369%_
                                              _%method-calls174901%_
                                              _%slot-refs174902%_
                                              _%g175370175372%_))
                                           _%L175347%_)
                                          (if (_%no-specializer?174905%_)
                                              _%stx174809%_
                                              (let* ((_%specializer-id175381%_
                                                      (let* ((_%id175375%_
                                                              (let ((__tmp179026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L174882%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179026 '"::specialize")))
                     (_%specializer-id175378%_
                      (let ((__tmp179027
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174809%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175375%_ __tmp179027))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175378%_))
                _%specializer-id175378%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175383%_
                                                      (let ((__tmp179028
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179028)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175385%_
                                                      (let ((__tmp179029
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179029)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175387%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174901%_)))
                                                     (_%$methods175391%_
                                                      (map (lambda (_%id175389%_)
                                                             (let ((__tmp179030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175389%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179030)))
                   _%methods175387%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175400%_
                                                      (for-each
                                                       (lambda (_%g175392175395%_
                                                                _%g175393175397%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174901%_
                                                            _%g175392175395%_
                                                            _%g175393175397%_)))
                                                       _%methods175387%_
                                                       _%$methods175391%_))
                                                     (_%methods-bind175410%_
                                                      (map (lambda (_%g175402175405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175403175407%_)
                     (_%generate-method-bind174811%_
                      _%$klass175383%_
                      _%$method-table175385%_
                      _%g175402175405%_
                      _%g175403175407%_))
                   _%methods175387%_
                   _%$methods175391%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175412%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174902%_)))
                                                     (_%$slots175416%_
                                                      (map (lambda (_%id175414%_)
                                                             (let ((__tmp179031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175414%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179031)))
                   _%slots175412%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175425%_
                                                      (for-each
                                                       (lambda (_%g175417175420%_
                                                                _%g175418175422%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174902%_
                                                            _%g175417175420%_
                                                            _%g175418175422%_)))
                                                       _%slots175412%_
                                                       _%$slots175416%_))
                                                     (_%slots-bind175434%_
                                                      (map (lambda (_%g175426175429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175427175431%_)
                     (_%generate-slot-bind174812%_
                      _%$klass175383%_
                      _%g175426175429%_
                      _%g175427175431%_))
                   _%slots175412%_
                   _%$slots175416%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body175440%_
                                                      (map (lambda (_%g175435175437%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver175369%_
                                                              _%$klass175383%_
                                                              _%method-calls174901%_
                                                              _%slot-refs174902%_
                                                              _%g175435175437%_))
                                                           _%L175347%_))
                                                     (_%specializer-impl175442%_
                                                      (let ((__tmp179032
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L175349%_ _%L175348%_)
                                 _%specializer-body175440%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179032 _%stx174809%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175444%_
                                                      (_%generate-specializer-impl174813%_
                                                       _%$klass175383%_
                                                       _%$method-table175385%_
                                                       _%methods-bind175410%_
                                                       _%slots-bind175434%_
                                                       _%specializer-impl175442%_)))
                                                (let ((__tmp179034
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174882%_)))
                                                      (__tmp179033
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175381%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179034
                                                   '" => "
                                                   __tmp179033))
                                                (_%generate-specializer-def174814%_
                                                 _%L174882%_
                                                 _%specializer-id175381%_
                                                 _%specializer-impl175444%_))))))
                                     (_%__kont177809177810%_
                                      (lambda () _%stx174809%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx177805177806%_))
                                     (let ((_%e175298175323%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx177805177806%_))))
                                       (let ((_%tl175300175328%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e175298175323%_)))
                                             (_%hd175299175326%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e175298175323%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl175300175328%_))
                                             (let ((_%e175301175331%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl175300175328%_))))
                                               (let ((_%tl175303175336%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e175301175331%_)))
                                                     (_%hd175302175334%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e175301175331%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd175302175334%_))
                                                     (let ((_%e175304175339%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd175302175334%_))))
                                                       (let ((_%tl175306175344%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e175304175339%_)))
                     (_%hd175305175342%_
                      (let () (declare (not safe)) (##car _%e175304175339%_))))
                 (_%__kont177807177808%_
                  _%tl175303175336%_
                  _%tl175306175344%_
                  _%hd175305175342%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont177809177810%_))))
                                             (_%__kont177809177810%_))))
                                     (_%__kont177809177810%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L174881%_))
                                 (let* ((_%g175451175470%_
                                         (lambda (_%g175452175467%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g175452175467%_))))
                                        (_%g175450175768%_
                                         (lambda (_%g175452175473%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g175452175473%_))
                                               (let ((_%e175454175475%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g175452175473%_))))
                                                 (let ((_%hd175455175478%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175454175475%_)))
                                                       (_%tl175456175480%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175454175475%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl175456175480%_))
                                                       (let ((_g179035_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl175456175480%_ '0))))
                 (begin
                   (let ((_g179036_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g179035_)
                                (##values-length _g179035_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g179036_ 2)))
                         (error "Context expects 2 values" _g179036_)))
                   (let ((_%target175457175483%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179035_ 0)))
                         (_%tl175459175485%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179035_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl175459175485%_))
                         (letrec ((_%loop175460175488%_
                                   (lambda (_%hd175458175491%_
                                            _%clause175464175493%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175458175491%_))
                                         (let ((_%e175461175496%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175458175491%_))))
                                           (let ((_%lp-hd175462175499%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175461175496%_)))
                                                 (_%lp-tl175463175501%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175461175496%_))))
                                             (_%loop175460175488%_
                                              _%lp-tl175463175501%_
                                              (cons _%lp-hd175462175499%_
                                                    _%clause175464175493%_))))
                                         (let ((_%clause175465175504%_
                                                (reverse _%clause175464175493%_)))
                                           ((lambda (_%L175507%_)
                                              (for-each
                                               (lambda (_%clause175521%_)
                                                 (let* ((_%__stx177831177832%_
                                                         _%clause175521%_)
                                                        (_%g175524175539%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx177831177832%_)))))
                                                   (let ((_%__kont177833177834%_
                                                          (lambda (_%L175567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L175568%_
                           _%L175569%_)
                    (let ((_%receiver175588%_
                           (let ((_%$e175585%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L175567%_))))
                             (if _%$e175585%_ _%$e175585%_ _%L175569%_))))
                      (for-each
                       (lambda (_%g175589175591%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver175588%_
                          _%method-calls174901%_
                          _%slot-refs174902%_
                          _%g175589175591%_))
                       _%L175567%_))))
                 (_%__kont177835177836%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx177831177832%_))
                                                         (let ((_%e175529175551%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx177831177832%_))))
                   (let ((_%tl175531175556%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e175529175551%_)))
                         (_%hd175530175554%_
                          (let ()
                            (declare (not safe))
                            (##car _%e175529175551%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd175530175554%_))
                         (let ((_%e175532175559%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd175530175554%_))))
                           (let ((_%tl175534175564%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e175532175559%_)))
                                 (_%hd175533175562%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e175532175559%_))))
                             (_%__kont177833177834%_
                              _%tl175531175556%_
                              _%tl175534175564%_
                              _%hd175533175562%_)))
                         (_%__kont177835177836%_))))
                 (_%__kont177835177836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp179037
                                                      (lambda (_%g175596175599%_
                                                               _%g175597175601%_)
                                                        (cons _%g175596175599%_
                                                              _%g175597175601%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179037
                                                  '()
                                                  _%L175507%_)))
                                              (if (_%no-specializer?174905%_)
                                                  _%stx174809%_
                                                  (let* ((_%specializer-id175610%_
                                                          (let* ((_%id175604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179038
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L174882%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179038 '"::specialize")))
                         (_%specializer-id175607%_
                          (let ((__tmp179039
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174809%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id175604%_
                             __tmp179039))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id175607%_))
                    _%specializer-id175607%_))
                 (_%$klass175612%_
                  (let ((__tmp179040
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179040)))
                 (_%$method-table175614%_
                  (let ((__tmp179041
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179041)))
                 (_%methods175616%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174901%_)))
                 (_%$methods175620%_
                  (map (lambda (_%id175618%_)
                         (let ((__tmp179042 (gensym _%id175618%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179042)))
                       _%methods175616%_))
                 (_%_175629%_
                  (for-each
                   (lambda (_%g175621175624%_ _%g175622175626%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174901%_
                        _%g175621175624%_
                        _%g175622175626%_)))
                   _%methods175616%_
                   _%$methods175620%_))
                 (_%methods-bind175639%_
                  (map (lambda (_%g175631175634%_ _%g175632175636%_)
                         (_%generate-method-bind174811%_
                          _%$klass175612%_
                          _%$method-table175614%_
                          _%g175631175634%_
                          _%g175632175636%_))
                       _%methods175616%_
                       _%$methods175620%_))
                 (_%slots175641%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174902%_)))
                 (_%$slots175645%_
                  (map (lambda (_%id175643%_)
                         (let ((__tmp179043 (gensym _%id175643%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179043)))
                       _%slots175641%_))
                 (_%_175654%_
                  (for-each
                   (lambda (_%g175646175649%_ _%g175647175651%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174902%_
                        _%g175646175649%_
                        _%g175647175651%_)))
                   _%slots175641%_
                   _%$slots175645%_))
                 (_%slots-bind175663%_
                  (map (lambda (_%g175655175658%_ _%g175656175660%_)
                         (_%generate-slot-bind174812%_
                          _%$klass175612%_
                          _%g175655175658%_
                          _%g175656175660%_))
                       _%slots175641%_
                       _%$slots175645%_))
                 (_%specializer-clauses175761%_
                  (map (lambda (_%clause175665%_)
                         (let* ((_%__stx177851177852%_ _%clause175665%_)
                                (_%g175668175683%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx177851177852%_)))))
                           (let ((_%__kont177853177854%_
                                  (lambda (_%L175711%_ _%L175712%_ _%L175713%_)
                                    (let* ((_%receiver175742%_
                                            (let ((_%$e175739%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L175711%_))))
                                              (if _%$e175739%_
                                                  _%$e175739%_
                                                  _%L175713%_)))
                                           (_%body175748%_
                                            (map (lambda (_%g175743175745%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver175742%_
                                                    _%$klass175612%_
                                                    _%method-calls174901%_
                                                    _%slot-refs174902%_
                                                    _%g175743175745%_))
                                                 _%L175711%_)))
                                      (cons (cons _%L175713%_ _%L175712%_)
                                            _%body175748%_))))
                                 (_%__kont177855177856%_
                                  (lambda () _%clause175665%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx177851177852%_))
                                 (let ((_%e175673175695%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx177851177852%_))))
                                   (let ((_%tl175675175700%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e175673175695%_)))
                                         (_%hd175674175698%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e175673175695%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175674175698%_))
                                         (let ((_%e175676175703%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175674175698%_))))
                                           (let ((_%tl175678175708%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175676175703%_)))
                                                 (_%hd175677175706%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175676175703%_))))
                                             (_%__kont177853177854%_
                                              _%tl175675175700%_
                                              _%tl175678175708%_
                                              _%hd175677175706%_)))
                                         (_%__kont177855177856%_))))
                                 (_%__kont177855177856%_)))))
                       (let ((__tmp179044
                              (lambda (_%g175753175756%_ _%g175754175758%_)
                                (cons _%g175753175756%_ _%g175754175758%_))))
                         (declare (not safe))
                         (__foldr1 __tmp179044 '() _%L175507%_))))
                 (_%specializer-impl175763%_
                  (let ((__tmp179045
                         (cons '%#case-lambda _%specializer-clauses175761%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179045 _%stx174809%_)))
                 (_%specializer-impl175765%_
                  (_%generate-specializer-impl174813%_
                   _%$klass175612%_
                   _%$method-table175614%_
                   _%methods-bind175639%_
                   _%slots-bind175663%_
                   _%specializer-impl175763%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179047
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L174882%_)))
                                                          (__tmp179046
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id175610%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179047
                                                       '" => "
                                                       __tmp179046))
                                                    (_%generate-specializer-def174814%_
                                                     _%L174882%_
                                                     _%specializer-id175610%_
                                                     _%specializer-impl175765%_))))
                                            _%clause175465175504%_))))))
                           (_%loop175460175488%_ _%target175457175483%_ '()))
                         (_%g175451175470%_ _%g175452175473%_)))))
               (_%g175451175470%_ _%g175452175473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175451175470%_
                                                _%g175452175473%_)))))
                                   (_%g175450175768%_ _%L174881%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L174881%_))
                                     (let* ((_%g175772175802%_
                                             (lambda (_%g175773175799%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175773175799%_))))
                                            (_%g175771176433%_
                                             (lambda (_%g175773175805%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175773175805%_))
                                                   (let ((_%e175777175807%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175773175805%_))))
                                                     (let ((_%hd175778175810%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175777175807%_)))
                                                           (_%tl175779175812%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175777175807%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175779175812%_))
                                                           (let ((_%e175780175815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175779175812%_))))
                     (let ((_%hd175781175818%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175780175815%_)))
                           (_%tl175782175820%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175780175815%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175781175818%_))
                           (let ((_%e175783175823%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175781175818%_))))
                             (let ((_%hd175784175826%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175783175823%_)))
                                   (_%tl175785175828%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175783175823%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175784175826%_))
                                   (let ((_%e175786175831%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175784175826%_))))
                                     (let ((_%hd175787175834%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175786175831%_)))
                                           (_%tl175788175836%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175786175831%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd175787175834%_))
                                           (let ((_%e175789175839%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd175787175834%_))))
                                             (let ((_%hd175790175842%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175789175839%_)))
                                                   (_%tl175791175844%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175789175839%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175791175844%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl175788175836%_))
                                                       (let ((_%e175792175847%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl175788175836%_))))
                 (let ((_%hd175793175850%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175792175847%_)))
                       (_%tl175794175852%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175792175847%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175794175852%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl175785175828%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175782175820%_))
                               (let ((_%e175795175855%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175782175820%_))))
                                 (let ((_%hd175796175858%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175795175855%_)))
                                       (_%tl175797175860%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175795175855%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175797175860%_))
                                       ((lambda (_%L175863%_
                                                 _%L175864%_
                                                 _%L175865%_)
                                          (let* ((_%g175889175907%_
                                                  (lambda (_%g175890175904%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g175890175904%_))))
                                                 (_%g175888175963%_
                                                  (lambda (_%g175890175910%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g175890175910%_))
                                                        (let ((_%e175894175912%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g175890175910%_))))
                  (let ((_%hd175895175915%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175894175912%_)))
                        (_%tl175896175917%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175894175912%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl175896175917%_))
                        (let ((_%e175897175920%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl175896175917%_))))
                          (let ((_%hd175898175923%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e175897175920%_)))
                                (_%tl175899175925%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e175897175920%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd175898175923%_))
                                (let ((_%e175900175928%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd175898175923%_))))
                                  (let ((_%hd175901175931%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175900175928%_)))
                                        (_%tl175902175933%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175900175928%_))))
                                    ((lambda (_%L175936%_
                                              _%L175937%_
                                              _%L175938%_)
                                       (let ((_%receiver175957%_
                                              (let ((_%$e175954%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L175936%_))))
                                                (if _%$e175954%_
                                                    _%$e175954%_
                                                    _%L175938%_))))
                                         (for-each
                                          (lambda (_%g175958175960%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver175957%_
                                             _%method-calls174901%_
                                             _%slot-refs174902%_
                                             _%g175958175960%_))
                                          _%L175936%_)))
                                     _%tl175899175925%_
                                     _%tl175902175933%_
                                     _%hd175901175931%_)))
                                (_%g175889175907%_ _%g175890175910%_))))
                        (_%g175889175907%_ _%g175890175910%_))))
                (_%g175889175907%_ _%g175890175910%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g175888175963%_ _%L175864%_))
                                          (let* ((_%g175966175985%_
                                                  (lambda (_%g175967175982%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g175967175982%_))))
                                                 (_%g175965176109%_
                                                  (lambda (_%g175967175988%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g175967175988%_))
                                                        (let ((_%e175969175990%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g175967175988%_))))
                  (let ((_%hd175970175993%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175969175990%_)))
                        (_%tl175971175995%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175969175990%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175971175995%_))
                        (let ((_g179048_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl175971175995%_
                                  '0))))
                          (begin
                            (let ((_g179049_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g179048_)
                                         (##values-length _g179048_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g179049_ 2)))
                                  (error "Context expects 2 values"
                                         _g179049_)))
                            (let ((_%target175972175998%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179048_ 0)))
                                  (_%tl175974176000%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179048_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl175974176000%_))
                                  (letrec ((_%loop175975176003%_
                                            (lambda (_%hd175973176006%_
                                                     _%clause175979176008%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd175973176006%_))
                                                  (let ((_%e175976176011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd175973176006%_))))
                                                    (let ((_%lp-hd175977176014%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e175976176011%_)))
                                                          (_%lp-tl175978176016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e175976176011%_))))
                                                      (_%loop175975176003%_
                                                       _%lp-tl175978176016%_
                                                       (cons _%lp-hd175977176014%_
                                                             _%clause175979176008%_))))
                                                  (let ((_%clause175980176019%_
                                                         (reverse _%clause175979176008%_)))
                                                    ((lambda (_%L176022%_)
                                                       (for-each
                                                        (lambda (_%clause176035%_)
                                                          (let* ((_%g176037176052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g176038176049%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176038176049%_))))
                         (_%g176036176099%_
                          (lambda (_%g176038176055%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176038176055%_))
                                (let ((_%e176042176057%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176038176055%_))))
                                  (let ((_%hd176043176060%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176042176057%_)))
                                        (_%tl176044176062%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176042176057%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176043176060%_))
                                        (let ((_%e176045176065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176043176060%_))))
                                          (let ((_%hd176046176068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176045176065%_)))
                                                (_%tl176047176070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176045176065%_))))
                                            ((lambda (_%L176073%_
                                                      _%L176074%_
                                                      _%L176075%_)
                                               (let ((_%receiver176093%_
                                                      (let ((_%$e176090%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L176073%_))))
                (if _%$e176090%_ _%$e176090%_ _%L176075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g176094176096%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver176093%_
                                                     _%method-calls174901%_
                                                     _%slot-refs174902%_
                                                     _%g176094176096%_))
                                                  _%L176073%_)))
                                             _%tl176044176062%_
                                             _%tl176047176070%_
                                             _%hd176046176068%_)))
                                        (_%g176037176052%_
                                         _%g176038176055%_))))
                                (_%g176037176052%_ _%g176038176055%_)))))
                    (_%g176036176099%_ _%clause176035%_)))
                (let ((__tmp179050
                       (lambda (_%g176101176104%_ _%g176102176106%_)
                         (cons _%g176101176104%_ _%g176102176106%_))))
                  (declare (not safe))
                  (__foldr1 __tmp179050 '() _%L176022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause175980176019%_))))))
                                    (_%loop175975176003%_
                                     _%target175972175998%_
                                     '()))
                                  (_%g175966175985%_ _%g175967175988%_)))))
                        (_%g175966175985%_ _%g175967175988%_))))
                (_%g175966175985%_ _%g175967175988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g175965176109%_ _%L175863%_))
                                          (if (_%no-specializer?174905%_)
                                              _%stx174809%_
                                              (let* ((_%specializer-id176118%_
                                                      (let* ((_%id176112%_
                                                              (let ((__tmp179051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L174882%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179051 '"::specialize")))
                     (_%specializer-id176115%_
                      (let ((__tmp179052
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174809%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id176112%_ __tmp179052))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id176115%_))
                _%specializer-id176115%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass176120%_
                                                      (let ((__tmp179053
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179053)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table176122%_
                                                      (let ((__tmp179054
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179054)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods176124%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174901%_)))
                                                     (_%$methods176128%_
                                                      (map (lambda (_%id176126%_)
                                                             (let ((__tmp179055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176126%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179055)))
                   _%methods176124%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176137%_
                                                      (for-each
                                                       (lambda (_%g176129176132%_
                                                                _%g176130176134%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174901%_
                                                            _%g176129176132%_
                                                            _%g176130176134%_)))
                                                       _%methods176124%_
                                                       _%$methods176128%_))
                                                     (_%methods-bind176147%_
                                                      (map (lambda (_%g176139176142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176140176144%_)
                     (_%generate-method-bind174811%_
                      _%$klass176120%_
                      _%$method-table176122%_
                      _%g176139176142%_
                      _%g176140176144%_))
                   _%methods176124%_
                   _%$methods176128%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots176149%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174902%_)))
                                                     (_%$slots176153%_
                                                      (map (lambda (_%id176151%_)
                                                             (let ((__tmp179056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176151%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179056)))
                   _%slots176149%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176162%_
                                                      (for-each
                                                       (lambda (_%g176154176157%_
                                                                _%g176155176159%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174902%_
                                                            _%g176154176157%_
                                                            _%g176155176159%_)))
                                                       _%slots176149%_
                                                       _%$slots176153%_))
                                                     (_%slots-bind176171%_
                                                      (map (lambda (_%g176163176166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176164176168%_)
                     (_%generate-slot-bind174812%_
                      _%$klass176120%_
                      _%g176163176166%_
                      _%g176164176168%_))
                   _%slots176149%_
                   _%$slots176153%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr176263%_
                                                      (let* ((_%g176173176191%_
                                                              (lambda (_%g176174176188%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176174176188%_))))
                     (_%g176172176260%_
                      (lambda (_%g176174176194%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176174176194%_))
                            (let ((_%e176178176196%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176174176194%_))))
                              (let ((_%hd176179176199%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176178176196%_)))
                                    (_%tl176180176201%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176178176196%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176180176201%_))
                                    (let ((_%e176181176204%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176180176201%_))))
                                      (let ((_%hd176182176207%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176181176204%_)))
                                            (_%tl176183176209%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176181176204%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176182176207%_))
                                            (let ((_%e176184176212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176182176207%_))))
                                              (let ((_%hd176185176215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176184176212%_)))
                                                    (_%tl176186176217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176184176212%_))))
                                                ((lambda (_%L176220%_
                                                          _%L176221%_
                                                          _%L176222%_)
                                                   (let* ((_%receiver176251%_
                                                           (let ((_%$e176248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L176220%_))))
                     (if _%$e176248%_ _%$e176248%_ _%L176222%_)))
                  (_%body176257%_
                   (map (lambda (_%g176252176254%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver176251%_
                           _%$klass176120%_
                           _%method-calls174901%_
                           _%slot-refs174902%_
                           _%g176252176254%_))
                        _%L176220%_))
                  (__tmp179057
                   (cons '%#lambda
                         (cons (cons _%L176222%_ _%L176221%_)
                               _%body176257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179057
                                                      _%L175864%_)))
                                                 _%tl176183176209%_
                                                 _%tl176186176217%_
                                                 _%hd176185176215%_)))
                                            (_%g176173176191%_
                                             _%g176174176194%_))))
                                    (_%g176173176191%_ _%g176174176194%_))))
                            (_%g176173176191%_ _%g176174176194%_)))))
                (_%g176172176260%_ _%L175864%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr176426%_
                                                      (let* ((_%g176265176284%_
                                                              (lambda (_%g176266176281%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176266176281%_))))
                     (_%g176264176423%_
                      (lambda (_%g176266176287%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176266176287%_))
                            (let ((_%e176268176289%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176266176287%_))))
                              (let ((_%hd176269176292%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176268176289%_)))
                                    (_%tl176270176294%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176268176289%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl176270176294%_))
                                    (let ((_g179058_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl176270176294%_
                                              '0))))
                                      (begin
                                        (let ((_g179059_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g179058_)
                                                     (##values-length
                                                      _g179058_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g179059_ 2)))
                                              (error "Context expects 2 values"
                                                     _g179059_)))
                                        (let ((_%target176271176297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179058_ 0)))
                                              (_%tl176273176299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179058_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176273176299%_))
                                              (letrec ((_%loop176274176302%_
                                                        (lambda (_%hd176272176305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause176278176307%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176272176305%_))
                      (let ((_%e176275176310%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176272176305%_))))
                        (let ((_%lp-hd176276176313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176275176310%_)))
                              (_%lp-tl176277176315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176275176310%_))))
                          (_%loop176274176302%_
                           _%lp-tl176277176315%_
                           (cons _%lp-hd176276176313%_
                                 _%clause176278176307%_))))
                      (let ((_%clause176279176318%_
                             (reverse _%clause176278176307%_)))
                        ((lambda (_%L176321%_)
                           (let* ((_%clauses176421%_
                                   (map (lambda (_%clause176335%_)
                                          (let* ((_%__stx177871177872%_
                                                  _%clause176335%_)
                                                 (_%g176338176353%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx177871177872%_)))))
                                            (let ((_%__kont177873177874%_
                                                   (lambda (_%L176381%_
                                                            _%L176382%_
                                                            _%L176383%_)
                                                     (let* ((_%receiver176402%_
                                                             (let ((_%$e176399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L176381%_))))
                       (if _%$e176399%_ _%$e176399%_ _%L176383%_)))
                    (_%body176408%_
                     (map (lambda (_%g176403176405%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver176402%_
                             _%$klass176120%_
                             _%method-calls174901%_
                             _%slot-refs174902%_
                             _%g176403176405%_))
                          _%L176381%_)))
               (cons (cons _%L176383%_ _%L176382%_) _%body176408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177875177876%_
                                                   (lambda ()
                                                     _%clause176335%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx177871177872%_))
                                                  (let ((_%e176343176365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx177871177872%_))))
                                                    (let ((_%tl176345176370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176343176365%_)))
                                                          (_%hd176344176368%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176343176365%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd176344176368%_))
                                                          (let ((_%e176346176373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd176344176368%_))))
                    (let ((_%tl176348176378%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e176346176373%_)))
                          (_%hd176347176376%_
                           (let ()
                             (declare (not safe))
                             (##car _%e176346176373%_))))
                      (_%__kont177873177874%_
                       _%tl176345176370%_
                       _%tl176348176378%_
                       _%hd176347176376%_)))
                  (_%__kont177875177876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177875177876%_)))))
                                        (let ((__tmp179060
                                               (lambda (_%g176413176416%_
                                                        _%g176414176418%_)
                                                 (cons _%g176413176416%_
                                                       _%g176414176418%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp179060
                                           '()
                                           _%L176321%_))))
                                  (__tmp179061
                                   (cons '%#case-lambda _%clauses176421%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179061 _%L175863%_)))
                         _%clause176279176318%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176274176302%_
                                                 _%target176271176297%_
                                                 '()))
                                              (_%g176265176284%_
                                               _%g176266176287%_)))))
                                    (_%g176265176284%_ _%g176266176287%_))))
                            (_%g176265176284%_ _%g176266176287%_)))))
                (_%g176264176423%_ _%L175863%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176428%_
                                                      (let ((__tmp179062
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L175865%_ '())
                                             (cons _%specializer-lambda-expr176263%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr176426%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179062 _%stx174809%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176430%_
                                                      (_%generate-specializer-impl174813%_
                                                       _%$klass176120%_
                                                       _%$method-table176122%_
                                                       _%methods-bind176147%_
                                                       _%slots-bind176171%_
                                                       _%specializer-impl176428%_)))
                                                (let ((__tmp179064
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174882%_)))
                                                      (__tmp179063
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id176118%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179064
                                                   '" => "
                                                   __tmp179063))
                                                (_%generate-specializer-def174814%_
                                                 _%L174882%_
                                                 _%specializer-id176118%_
                                                 _%specializer-impl176430%_))))
                                        _%hd175796175858%_
                                        _%hd175793175850%_
                                        _%hd175790175842%_)
                                       (_%g175772175802%_ _%g175773175805%_))))
                               (_%g175772175802%_ _%g175773175805%_))
                           (_%g175772175802%_ _%g175773175805%_))
                       (_%g175772175802%_ _%g175773175805%_))))
               (_%g175772175802%_ _%g175773175805%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175772175802%_
                                                    _%g175773175805%_))))
                                           (_%g175772175802%_
                                            _%g175773175805%_))))
                                   (_%g175772175802%_ _%g175773175805%_))))
                           (_%g175772175802%_ _%g175773175805%_))))
                   (_%g175772175802%_ _%g175773175805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175772175802%_
                                                    _%g175773175805%_)))))
                                       (_%g175771176433%_ _%L174881%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L174881%_))
                                         (let* ((_%g176437176490%_
                                                 (lambda (_%g176438176487%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176438176487%_))))
                                                (_%g176436177661%_
                                                 (lambda (_%g176438176493%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176438176493%_))
                                                       (let ((_%e176444176495%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176438176493%_))))
                 (let ((_%hd176445176498%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176444176495%_)))
                       (_%tl176446176500%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176444176495%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd176445176498%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd176445176498%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl176446176500%_))
                               (let ((_%e176447176503%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl176446176500%_))))
                                 (let ((_%hd176448176506%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176447176503%_)))
                                       (_%tl176449176508%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176447176503%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176448176506%_))
                                       (let ((_%e176450176511%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176448176506%_))))
                                         (let ((_%hd176451176514%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176450176511%_)))
                                               (_%tl176452176516%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176450176511%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176451176514%_))
                                               (let ((_%e176453176519%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176451176514%_))))
                                                 (let ((_%hd176454176522%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176453176519%_)))
                                                       (_%tl176455176524%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176453176519%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd176454176522%_))
                                                       (let ((_%e176456176527%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd176454176522%_))))
                 (let ((_%hd176457176530%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176456176527%_)))
                       (_%tl176458176532%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176456176527%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl176458176532%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl176455176524%_))
                           (let ((_%e176459176535%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl176455176524%_))))
                             (let ((_%hd176460176538%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176459176535%_)))
                                   (_%tl176461176540%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176459176535%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176460176538%_))
                                   (let ((_%e176462176543%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176460176538%_))))
                                     (let ((_%hd176463176546%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176462176543%_)))
                                           (_%tl176464176548%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176462176543%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd176463176546%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd176463176546%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl176464176548%_))
                                                   (let ((_%e176465176551%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl176464176548%_))))
                                                     (let ((_%hd176466176554%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176465176551%_)))
                                                           (_%tl176467176556%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176465176551%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd176466176554%_))
                                                           (let ((_%e176468176559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd176466176554%_))))
                     (let ((_%hd176469176562%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176468176559%_)))
                           (_%tl176470176564%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176468176559%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd176469176562%_))
                           (let ((_%e176471176567%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd176469176562%_))))
                             (let ((_%hd176472176570%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176471176567%_)))
                                   (_%tl176473176572%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176471176567%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176472176570%_))
                                   (let ((_%e176474176575%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176472176570%_))))
                                     (let ((_%hd176475176578%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176474176575%_)))
                                           (_%tl176476176580%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176474176575%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176476176580%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl176473176572%_))
                                               (let ((_%e176477176583%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl176473176572%_))))
                                                 (let ((_%hd176478176586%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176477176583%_)))
                                                       (_%tl176479176588%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176477176583%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176479176588%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl176470176564%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl176467176556%_))
                       (let ((_%e176480176591%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176467176556%_))))
                         (let ((_%hd176481176594%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176480176591%_)))
                               (_%tl176482176596%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176480176591%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176482176596%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl176461176540%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl176452176516%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl176449176508%_))
                                           (let ((_%e176483176599%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl176449176508%_))))
                                             (let ((_%hd176484176602%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e176483176599%_)))
                                                   (_%tl176485176604%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e176483176599%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl176485176604%_))
                                                   ((lambda (_%L176607%_
                                                             _%L176608%_
                                                             _%L176609%_
                                                             _%L176610%_
                                                             _%L176611%_)
                                                      (let* ((_%g176651176713%_
                                                              (lambda (_%g176652176710%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176652176710%_))))
                     (_%g176650177658%_
                      (lambda (_%g176652176716%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176652176716%_))
                            (let ((_%e176658176718%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176652176716%_))))
                              (let ((_%hd176659176721%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176658176718%_)))
                                    (_%tl176660176723%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176658176718%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd176659176721%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd176659176721%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl176660176723%_))
                                            (let ((_%e176661176726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl176660176723%_))))
                                              (let ((_%hd176662176729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176661176726%_)))
                                                    (_%tl176663176731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176661176726%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176663176731%_))
                                                    (let ((_%e176664176734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176663176731%_))))
                                                      (let ((_%hd176665176737%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176664176734%_)))
                    (_%tl176666176739%_
                     (let () (declare (not safe)) (##cdr _%e176664176734%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd176665176737%_))
                    (let ((_%e176667176742%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd176665176737%_))))
                      (let ((_%hd176668176745%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176667176742%_)))
                            (_%tl176669176747%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176667176742%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd176668176745%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd176668176745%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176669176747%_))
                                    (let ((_%e176670176750%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176669176747%_))))
                                      (let ((_%hd176671176753%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176670176750%_)))
                                            (_%tl176672176755%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176670176750%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176671176753%_))
                                            (let ((_%e176673176758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176671176753%_))))
                                              (let ((_%hd176674176761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176673176758%_)))
                                                    (_%tl176675176763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176673176758%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd176674176761%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd176674176761%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl176675176763%_))
                                                            (let ((_%e176676176766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl176675176763%_))))
                      (let ((_%hd176677176769%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176676176766%_)))
                            (_%tl176678176771%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176676176766%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176678176771%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl176672176755%_))
                                (let ((_%e176679176774%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl176672176755%_))))
                                  (let ((_%hd176680176777%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176679176774%_)))
                                        (_%tl176681176779%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176679176774%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176680176777%_))
                                        (let ((_%e176682176782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176680176777%_))))
                                          (let ((_%hd176683176785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176682176782%_)))
                                                (_%tl176684176787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176682176782%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd176683176785%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd176683176785%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl176684176787%_))
                                                        (let ((_%e176685176790%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl176684176787%_))))
                  (let ((_%hd176686176793%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176685176790%_)))
                        (_%tl176687176795%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176685176790%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl176687176795%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176681176779%_))
                            (let ((_%e176688176798%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176681176779%_))))
                              (let ((_%hd176689176801%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176688176798%_)))
                                    (_%tl176690176803%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176688176798%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd176689176801%_))
                                    (let ((_%e176691176806%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd176689176801%_))))
                                      (let ((_%hd176692176809%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176691176806%_)))
                                            (_%tl176693176811%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176691176806%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd176692176809%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd176692176809%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176693176811%_))
                                                    (let ((_%e176694176814%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176693176811%_))))
                                                      (let ((_%hd176695176817%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176694176814%_)))
                    (_%tl176696176819%_
                     (let () (declare (not safe)) (##cdr _%e176694176814%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl176696176819%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176690176803%_))
                        (if (let ((__tmp179065
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl176690176803%_))))
                              (declare (not safe))
                              (##fx>= __tmp179065 '1))
                            (let ((_g179066_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176690176803%_
                                      '1))))
                              (begin
                                (let ((_g179067_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179066_)
                                             (##values-length _g179066_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179067_ 2)))
                                      (error "Context expects 2 values"
                                             _g179067_)))
                                (let ((_%target176697176822%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179066_ 0)))
                                      (_%tl176699176824%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179066_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176699176824%_))
                                      (let ((_%e176706176827%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176699176824%_))))
                                        (let ((_%hd176707176830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176706176827%_)))
                                              (_%tl176708176832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176706176827%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176708176832%_))
                                              (letrec ((_%loop176700176835%_
                                                        (lambda (_%hd176698176838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref176704176840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176698176838%_))
                      (let ((_%e176701176843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176698176838%_))))
                        (let ((_%lp-hd176702176846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176701176843%_)))
                              (_%lp-tl176703176848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176701176843%_))))
                          (_%loop176700176835%_
                           _%lp-tl176703176848%_
                           (cons _%lp-hd176702176846%_
                                 _%kw-ref176704176840%_))))
                      (let ((_%kw-ref176705176851%_
                             (reverse _%kw-ref176704176840%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176666176739%_))
                            ((lambda (_%L176854%_
                                      _%L176855%_
                                      _%L176856%_
                                      _%L176857%_
                                      _%L176858%_)
                               (let* ((_%kw-count176909%_
                                       (length (let ((__tmp179068
                                                      (lambda (_%g176901176904%_
                                                               _%g176902176906%_)
                                                        (cons _%g176901176904%_
                                                              _%g176902176906%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179068
                                                  '()
                                                  _%L176855%_))))
                                      (_%self-index176911%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count176909%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L176609%_))
                                     (let* ((_%g176915176929%_
                                             (lambda (_%g176916176926%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g176916176926%_))))
                                            (_%g176914177052%_
                                             (lambda (_%g176916176932%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g176916176932%_))
                                                   (let ((_%e176919176934%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g176916176932%_))))
                                                     (let ((_%hd176920176937%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176919176934%_)))
                                                           (_%tl176921176939%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176919176934%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl176921176939%_))
                                                           (let ((_%e176922176942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl176921176939%_))))
                     (let ((_%hd176923176945%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176922176942%_)))
                           (_%tl176924176947%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176922176942%_))))
                       ((lambda (_%L176950%_ _%L176951%_)
                          (let* ((_%self176968%_
                                  (list-ref _%L176951%_ _%self-index176911%_))
                                 (_%receiver176973%_
                                  (let ((_%$e176970%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L176950%_))))
                                    (if _%$e176970%_
                                        _%$e176970%_
                                        _%self176968%_))))
                            (for-each
                             (lambda (_%g176975176977%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver176973%_
                                _%method-calls174901%_
                                _%slot-refs174902%_
                                _%g176975176977%_))
                             _%L176950%_)
                            (if (_%no-specializer?174905%_)
                                _%stx174809%_
                                (let* ((_%specializer-id176986%_
                                        (let* ((_%id176980%_
                                                (let ((__tmp179069
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174882%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp179069
                                                   '"::specialize")))
                                               (_%specializer-id176983%_
                                                (let ((__tmp179070
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx174809%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id176980%_
                                                   __tmp179070))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id176983%_))
                                          _%specializer-id176983%_))
                                       (_%$klass176988%_
                                        (let ((__tmp179071
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179071)))
                                       (_%$method-table176990%_
                                        (let ((__tmp179072
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179072)))
                                       (_%methods176992%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls174901%_)))
                                       (_%$methods176996%_
                                        (map (lambda (_%id176994%_)
                                               (let ((__tmp179073
                                                      (gensym _%id176994%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179073)))
                                             _%methods176992%_))
                                       (_%_177005%_
                                        (for-each
                                         (lambda (_%g176997177000%_
                                                  _%g176998177002%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls174901%_
                                              _%g176997177000%_
                                              _%g176998177002%_)))
                                         _%methods176992%_
                                         _%$methods176996%_))
                                       (_%methods-bind177015%_
                                        (map (lambda (_%g177007177010%_
                                                      _%g177008177012%_)
                                               (_%generate-method-bind174811%_
                                                _%$klass176988%_
                                                _%$method-table176990%_
                                                _%g177007177010%_
                                                _%g177008177012%_))
                                             _%methods176992%_
                                             _%$methods176996%_))
                                       (_%slots177017%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs174902%_)))
                                       (_%$slots177021%_
                                        (map (lambda (_%id177019%_)
                                               (let ((__tmp179074
                                                      (gensym _%id177019%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179074)))
                                             _%slots177017%_))
                                       (_%_177030%_
                                        (for-each
                                         (lambda (_%g177022177025%_
                                                  _%g177023177027%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs174902%_
                                              _%g177022177025%_
                                              _%g177023177027%_)))
                                         _%slots177017%_
                                         _%$slots177021%_))
                                       (_%slots-bind177039%_
                                        (map (lambda (_%g177031177034%_
                                                      _%g177032177036%_)
                                               (_%generate-slot-bind174812%_
                                                _%$klass176988%_
                                                _%g177031177034%_
                                                _%g177032177036%_))
                                             _%slots177017%_
                                             _%$slots177021%_))
                                       (_%specializer-impl177047%_
                                        (let* ((_%specializer-body177045%_
                                                (map (lambda (_%g177040177042%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver176973%_
                                                        _%$klass176988%_
                                                        _%method-calls174901%_
                                                        _%slot-refs174902%_
                                                        _%g177040177042%_))
                                                     _%L176950%_))
                                               (__tmp179075
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L176611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L176610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp179076
                                   (cons '%#lambda
                                         (cons _%L176951%_
                                               _%specializer-body177045%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp179076 _%L176609%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L176608%_ '())))
                                      '()))
                          '())
                    (cons _%L176607%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp179075
                                           _%stx174809%_)))
                                       (_%specializer-impl177049%_
                                        (_%generate-specializer-impl174813%_
                                         _%$klass176988%_
                                         _%$method-table176990%_
                                         _%methods-bind177015%_
                                         _%slots-bind177039%_
                                         _%specializer-impl177047%_)))
                                  (let ((__tmp179078
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L174882%_)))
                                        (__tmp179077
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id176986%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp179078
                                     '" => "
                                     __tmp179077))
                                  (_%generate-specializer-def174814%_
                                   _%L174882%_
                                   _%specializer-id176986%_
                                   _%specializer-impl177049%_)))))
                        _%tl176924176947%_
                        _%hd176923176945%_)))
                   (_%g176915176929%_ _%g176916176932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176915176929%_
                                                    _%g176916176932%_)))))
                                       (_%g176914177052%_ _%L176609%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L176609%_))
                                         (let* ((_%g177056177086%_
                                                 (lambda (_%g177057177083%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g177057177083%_))))
                                                (_%g177055177654%_
                                                 (lambda (_%g177057177089%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g177057177089%_))
                                                       (let ((_%e177061177091%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g177057177089%_))))
                 (let ((_%hd177062177094%_
                        (let ()
                          (declare (not safe))
                          (##car _%e177061177091%_)))
                       (_%tl177063177096%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e177061177091%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl177063177096%_))
                       (let ((_%e177064177099%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl177063177096%_))))
                         (let ((_%hd177065177102%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e177064177099%_)))
                               (_%tl177066177104%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e177064177099%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd177065177102%_))
                               (let ((_%e177067177107%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd177065177102%_))))
                                 (let ((_%hd177068177110%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e177067177107%_)))
                                       (_%tl177069177112%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e177067177107%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd177068177110%_))
                                       (let ((_%e177070177115%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd177068177110%_))))
                                         (let ((_%hd177071177118%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e177070177115%_)))
                                               (_%tl177072177120%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e177070177115%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd177071177118%_))
                                               (let ((_%e177073177123%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd177071177118%_))))
                                                 (let ((_%hd177074177126%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e177073177123%_)))
                                                       (_%tl177075177128%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e177073177123%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl177075177128%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177072177120%_))
                                                           (let ((_%e177076177131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177072177120%_))))
                     (let ((_%hd177077177134%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177076177131%_)))
                           (_%tl177078177136%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177076177131%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl177078177136%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl177069177112%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl177066177104%_))
                                   (let ((_%e177079177139%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl177066177104%_))))
                                     (let ((_%hd177080177142%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e177079177139%_)))
                                           (_%tl177081177144%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e177079177139%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl177081177144%_))
                                           ((lambda (_%L177147%_
                                                     _%L177148%_
                                                     _%L177149%_)
                                              (let* ((_%g177173177187%_
                                                      (lambda (_%g177174177184%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177174177184%_))))
                                                     (_%g177172177234%_
                                                      (lambda (_%g177174177190%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177174177190%_))
                                                            (let ((_%e177177177192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177174177190%_))))
                      (let ((_%hd177178177195%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177177177192%_)))
                            (_%tl177179177197%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177177177192%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl177179177197%_))
                            (let ((_%e177180177200%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl177179177197%_))))
                              (let ((_%hd177181177203%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e177180177200%_)))
                                    (_%tl177182177205%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e177180177200%_))))
                                ((lambda (_%L177208%_ _%L177209%_)
                                   (let* ((_%self177222%_
                                           (list-ref
                                            _%L177209%_
                                            _%self-index176911%_))
                                          (_%receiver177227%_
                                           (let ((_%$e177224%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L177208%_))))
                                             (if _%$e177224%_
                                                 _%$e177224%_
                                                 _%self177222%_))))
                                     (for-each
                                      (lambda (_%g177229177231%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver177227%_
                                         _%method-calls174901%_
                                         _%slot-refs174902%_
                                         _%g177229177231%_))
                                      _%L177208%_)))
                                 _%tl177182177205%_
                                 _%hd177181177203%_)))
                            (_%g177173177187%_ _%g177174177190%_))))
                    (_%g177173177187%_ _%g177174177190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177172177234%_
                                                 _%L177148%_))
                                              (let* ((_%g177237177256%_
                                                      (lambda (_%g177238177253%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177238177253%_))))
                                                     (_%g177236177367%_
                                                      (lambda (_%g177238177259%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177238177259%_))
                                                            (let ((_%e177240177261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177238177259%_))))
                      (let ((_%hd177241177264%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177240177261%_)))
                            (_%tl177242177266%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177240177261%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl177242177266%_))
                            (let ((_g179079_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl177242177266%_
                                      '0))))
                              (begin
                                (let ((_g179080_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179079_)
                                             (##values-length _g179079_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179080_ 2)))
                                      (error "Context expects 2 values"
                                             _g179080_)))
                                (let ((_%target177243177269%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179079_ 0)))
                                      (_%tl177245177271%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179079_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177245177271%_))
                                      (letrec ((_%loop177246177274%_
                                                (lambda (_%hd177244177277%_
                                                         _%clause177250177279%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd177244177277%_))
                                                      (let ((_%e177247177282%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd177244177277%_))))
                (let ((_%lp-hd177248177285%_
                       (let () (declare (not safe)) (##car _%e177247177282%_)))
                      (_%lp-tl177249177287%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e177247177282%_))))
                  (_%loop177246177274%_
                   _%lp-tl177249177287%_
                   (cons _%lp-hd177248177285%_ _%clause177250177279%_))))
              (let ((_%clause177251177290%_ (reverse _%clause177250177279%_)))
                ((lambda (_%L177293%_)
                   (for-each
                    (lambda (_%clause177306%_)
                      (let* ((_%g177308177319%_
                              (lambda (_%g177309177316%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g177309177316%_))))
                             (_%g177307177357%_
                              (lambda (_%g177309177322%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g177309177322%_))
                                    (let ((_%e177312177324%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g177309177322%_))))
                                      (let ((_%hd177313177327%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e177312177324%_)))
                                            (_%tl177314177329%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e177312177324%_))))
                                        ((lambda (_%L177332%_ _%L177333%_)
                                           (let* ((_%self177345%_
                                                   (list-ref
                                                    _%L177333%_
                                                    _%self-index176911%_))
                                                  (_%receiver177350%_
                                                   (let ((_%$e177347%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L177332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e177347%_
                                                         _%$e177347%_
                                                         _%self177345%_))))
                                             (for-each
                                              (lambda (_%g177352177354%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver177350%_
                                                 _%method-calls174901%_
                                                 _%slot-refs174902%_
                                                 _%g177352177354%_))
                                              _%L177332%_)))
                                         _%tl177314177329%_
                                         _%hd177313177327%_)))
                                    (_%g177308177319%_ _%g177309177322%_)))))
                        (_%g177307177357%_ _%clause177306%_)))
                    (let ((__tmp179081
                           (lambda (_%g177359177362%_ _%g177360177364%_)
                             (cons _%g177359177362%_ _%g177360177364%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179081 '() _%L177293%_))))
                 _%clause177251177290%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop177246177274%_
                                         _%target177243177269%_
                                         '()))
                                      (_%g177237177256%_ _%g177238177259%_)))))
                            (_%g177237177256%_ _%g177238177259%_))))
                    (_%g177237177256%_ _%g177238177259%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177236177367%_
                                                 _%L177147%_))
                                              (if (_%no-specializer?174905%_)
                                                  _%stx174809%_
                                                  (let* ((_%specializer-id177376%_
                                                          (let* ((_%id177370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179082
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L174882%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179082 '"::specialize")))
                         (_%specializer-id177373%_
                          (let ((__tmp179083
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174809%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id177370%_
                             __tmp179083))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id177373%_))
                    _%specializer-id177373%_))
                 (_%$klass177378%_
                  (let ((__tmp179084
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179084)))
                 (_%$method-table177380%_
                  (let ((__tmp179085
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179085)))
                 (_%methods177382%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174901%_)))
                 (_%$methods177386%_
                  (map (lambda (_%id177384%_)
                         (let ((__tmp179086 (gensym _%id177384%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179086)))
                       _%methods177382%_))
                 (_%_177395%_
                  (for-each
                   (lambda (_%g177387177390%_ _%g177388177392%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174901%_
                        _%g177387177390%_
                        _%g177388177392%_)))
                   _%methods177382%_
                   _%$methods177386%_))
                 (_%methods-bind177405%_
                  (map (lambda (_%g177397177400%_ _%g177398177402%_)
                         (_%generate-method-bind174811%_
                          _%$klass177378%_
                          _%$method-table177380%_
                          _%g177397177400%_
                          _%g177398177402%_))
                       _%methods177382%_
                       _%$methods177386%_))
                 (_%slots177407%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174902%_)))
                 (_%$slots177411%_
                  (map (lambda (_%id177409%_)
                         (let ((__tmp179087 (gensym _%id177409%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179087)))
                       _%slots177407%_))
                 (_%_177420%_
                  (for-each
                   (lambda (_%g177412177415%_ _%g177413177417%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174902%_
                        _%g177412177415%_
                        _%g177413177417%_)))
                   _%slots177407%_
                   _%$slots177411%_))
                 (_%slots-bind177429%_
                  (map (lambda (_%g177421177424%_ _%g177422177426%_)
                         (_%generate-slot-bind174812%_
                          _%$klass177378%_
                          _%g177421177424%_
                          _%g177422177426%_))
                       _%slots177407%_
                       _%$slots177411%_))
                 (_%specializer-lambda-expr177507%_
                  (let* ((_%g177431177445%_
                          (lambda (_%g177432177442%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177432177442%_))))
                         (_%g177430177504%_
                          (lambda (_%g177432177448%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177432177448%_))
                                (let ((_%e177435177450%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177432177448%_))))
                                  (let ((_%hd177436177453%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177435177450%_)))
                                        (_%tl177437177455%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177435177450%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl177437177455%_))
                                        (let ((_%e177438177458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl177437177455%_))))
                                          (let ((_%hd177439177461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e177438177458%_)))
                                                (_%tl177440177463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e177438177458%_))))
                                            ((lambda (_%L177466%_ _%L177467%_)
                                               (let* ((_%self177490%_
                                                       (list-ref
                                                        _%L177467%_
                                                        _%self-index176911%_))
                                                      (_%receiver177495%_
                                                       (let ((_%$e177492%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L177466%_))))
                 (if _%$e177492%_ _%$e177492%_ _%self177490%_)))
              (_%body177501%_
               (map (lambda (_%g177496177498%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver177495%_
                       _%$klass177378%_
                       _%method-calls174901%_
                       _%slot-refs174902%_
                       _%g177496177498%_))
                    _%L177466%_))
              (__tmp179088 (cons '%#lambda (cons _%L177467%_ _%body177501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp179088
                                                  _%L177148%_)))
                                             _%tl177440177463%_
                                             _%hd177439177461%_)))
                                        (_%g177431177445%_
                                         _%g177432177448%_))))
                                (_%g177431177445%_ _%g177432177448%_)))))
                    (_%g177430177504%_ _%L177148%_)))
                 (_%specializer-case-lambda-expr177647%_
                  (let* ((_%g177509177528%_
                          (lambda (_%g177510177525%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177510177525%_))))
                         (_%g177508177644%_
                          (lambda (_%g177510177531%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177510177531%_))
                                (let ((_%e177512177533%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177510177531%_))))
                                  (let ((_%hd177513177536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177512177533%_)))
                                        (_%tl177514177538%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177512177533%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl177514177538%_))
                                        (let ((_g179089_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl177514177538%_
                                                  '0))))
                                          (begin
                                            (let ((_g179090_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g179089_)
                                                         (##values-length
                                                          _g179089_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g179090_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g179090_)))
                                            (let ((_%target177515177541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179089_
                                                      0)))
                                                  (_%tl177517177543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179089_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl177517177543%_))
                                                  (letrec ((_%loop177518177546%_
                                                            (lambda (_%hd177516177549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause177522177551%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd177516177549%_))
                          (let ((_%e177519177554%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd177516177549%_))))
                            (let ((_%lp-hd177520177557%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177519177554%_)))
                                  (_%lp-tl177521177559%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177519177554%_))))
                              (_%loop177518177546%_
                               _%lp-tl177521177559%_
                               (cons _%lp-hd177520177557%_
                                     _%clause177522177551%_))))
                          (let ((_%clause177523177562%_
                                 (reverse _%clause177522177551%_)))
                            ((lambda (_%L177565%_)
                               (let* ((_%clauses177642%_
                                       (map (lambda (_%clause177579%_)
                                              (let* ((_%g177581177592%_
                                                      (lambda (_%g177582177589%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177582177589%_))))
                                                     (_%g177580177632%_
                                                      (lambda (_%g177582177595%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177582177595%_))
                                                            (let ((_%e177585177597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177582177595%_))))
                      (let ((_%hd177586177600%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177585177597%_)))
                            (_%tl177587177602%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177585177597%_))))
                        ((lambda (_%L177605%_ _%L177606%_)
                           (let* ((_%self177618%_
                                   (list-ref _%L177606%_ _%self-index176911%_))
                                  (_%receiver177623%_
                                   (let ((_%$e177620%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L177605%_))))
                                     (if _%$e177620%_
                                         _%$e177620%_
                                         _%self177618%_)))
                                  (_%body177629%_
                                   (map (lambda (_%g177624177626%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver177623%_
                                           _%$klass177378%_
                                           _%method-calls174901%_
                                           _%slot-refs174902%_
                                           _%g177624177626%_))
                                        _%L177605%_)))
                             (cons _%L177606%_ _%body177629%_)))
                         _%tl177587177602%_
                         _%hd177586177600%_)))
                    (_%g177581177592%_ _%g177582177595%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177580177632%_
                                                 _%clause177579%_)))
                                            (let ((__tmp179091
                                                   (lambda (_%g177634177637%_
                                                            _%g177635177639%_)
                                                     (cons _%g177634177637%_
                                                           _%g177635177639%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp179091
                                               '()
                                               _%L177565%_))))
                                      (__tmp179092
                                       (cons '%#case-lambda
                                             _%clauses177642%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp179092
                                  _%L177147%_)))
                             _%clause177523177562%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop177518177546%_
                                                     _%target177515177541%_
                                                     '()))
                                                  (_%g177509177528%_
                                                   _%g177510177531%_)))))
                                        (_%g177509177528%_
                                         _%g177510177531%_))))
                                (_%g177509177528%_ _%g177510177531%_)))))
                    (_%g177508177644%_ _%L177147%_)))
                 (_%specializer-impl177649%_
                  (let ((__tmp179093
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L176611%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L176610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp179094
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L177149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr177507%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr177647%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179094
                                                _%stx174809%_))
                                             '()))
                                 '())
                           (cons _%L176608%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L176607%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179093 _%stx174809%_)))
                 (_%specializer-impl177651%_
                  (_%generate-specializer-impl174813%_
                   _%$klass177378%_
                   _%$method-table177380%_
                   _%methods-bind177405%_
                   _%slots-bind177429%_
                   _%specializer-impl177649%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179096
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L174882%_)))
                                                          (__tmp179095
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id177376%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179096
                                                       '" => "
                                                       __tmp179095))
                                                    (_%generate-specializer-def174814%_
                                                     _%L174882%_
                                                     _%specializer-id177376%_
                                                     _%specializer-impl177651%_))))
                                            _%hd177080177142%_
                                            _%hd177077177134%_
                                            _%hd177074177126%_)
                                           (_%g177056177086%_
                                            _%g177057177089%_))))
                                   (_%g177056177086%_ _%g177057177089%_))
                               (_%g177056177086%_ _%g177057177089%_))
                           (_%g177056177086%_ _%g177057177089%_))))
                   (_%g177056177086%_ _%g177057177089%_))
               (_%g177056177086%_ _%g177057177089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g177056177086%_
                                                _%g177057177089%_))))
                                       (_%g177056177086%_ _%g177057177089%_))))
                               (_%g177056177086%_ _%g177057177089%_))))
                       (_%g177056177086%_ _%g177057177089%_))))
               (_%g177056177086%_ _%g177057177089%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g177055177654%_ _%L176609%_))
                                         _%stx174809%_))))
                             _%hd176707176830%_
                             _%kw-ref176705176851%_
                             _%hd176695176817%_
                             _%hd176686176793%_
                             _%hd176677176769%_)
                            (_%g176651176713%_ _%g176652176716%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176700176835%_
                                                 _%target176697176822%_
                                                 '()))
                                              (_%g176651176713%_
                                               _%g176652176716%_))))
                                      (_%g176651176713%_ _%g176652176716%_)))))
                            (_%g176651176713%_ _%g176652176716%_))
                        (_%g176651176713%_ _%g176652176716%_))
                    (_%g176651176713%_ _%g176652176716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176651176713%_
                                                     _%g176652176716%_))
                                                (_%g176651176713%_
                                                 _%g176652176716%_))
                                            (_%g176651176713%_
                                             _%g176652176716%_))))
                                    (_%g176651176713%_ _%g176652176716%_))))
                            (_%g176651176713%_ _%g176652176716%_))
                        (_%g176651176713%_ _%g176652176716%_))))
                (_%g176651176713%_ _%g176652176716%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176651176713%_
                                                     _%g176652176716%_))
                                                (_%g176651176713%_
                                                 _%g176652176716%_))))
                                        (_%g176651176713%_
                                         _%g176652176716%_))))
                                (_%g176651176713%_ _%g176652176716%_))
                            (_%g176651176713%_ _%g176652176716%_))))
                    (_%g176651176713%_ _%g176652176716%_))
                (_%g176651176713%_ _%g176652176716%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176651176713%_
                                                     _%g176652176716%_))))
                                            (_%g176651176713%_
                                             _%g176652176716%_))))
                                    (_%g176651176713%_ _%g176652176716%_))
                                (_%g176651176713%_ _%g176652176716%_))
                            (_%g176651176713%_ _%g176652176716%_))))
                    (_%g176651176713%_ _%g176652176716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176651176713%_
                                                     _%g176652176716%_))))
                                            (_%g176651176713%_
                                             _%g176652176716%_))
                                        (_%g176651176713%_ _%g176652176716%_))
                                    (_%g176651176713%_ _%g176652176716%_))))
                            (_%g176651176713%_ _%g176652176716%_)))))
                (_%g176650177658%_ _%L176608%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd176484176602%_
                                                    _%hd176481176594%_
                                                    _%hd176478176586%_
                                                    _%hd176475176578%_
                                                    _%hd176457176530%_)
                                                   (_%g176437176490%_
                                                    _%g176438176493%_))))
                                           (_%g176437176490%_
                                            _%g176438176493%_))
                                       (_%g176437176490%_ _%g176438176493%_))
                                   (_%g176437176490%_ _%g176438176493%_))
                               (_%g176437176490%_ _%g176438176493%_))))
                       (_%g176437176490%_ _%g176438176493%_))
                   (_%g176437176490%_ _%g176438176493%_))
               (_%g176437176490%_ _%g176438176493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176437176490%_
                                                _%g176438176493%_))
                                           (_%g176437176490%_
                                            _%g176438176493%_))))
                                   (_%g176437176490%_ _%g176438176493%_))))
                           (_%g176437176490%_ _%g176438176493%_))))
                   (_%g176437176490%_ _%g176438176493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176437176490%_
                                                    _%g176438176493%_))
                                               (_%g176437176490%_
                                                _%g176438176493%_))
                                           (_%g176437176490%_
                                            _%g176438176493%_))))
                                   (_%g176437176490%_ _%g176438176493%_))))
                           (_%g176437176490%_ _%g176438176493%_))
                       (_%g176437176490%_ _%g176438176493%_))))
               (_%g176437176490%_ _%g176438176493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176437176490%_
                                                _%g176438176493%_))))
                                       (_%g176437176490%_ _%g176438176493%_))))
                               (_%g176437176490%_ _%g176438176493%_))
                           (_%g176437176490%_ _%g176438176493%_))
                       (_%g176437176490%_ _%g176438176493%_))))
               (_%g176437176490%_ _%g176438176493%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176436177661%_ _%L174881%_))
                                         _%stx174809%_))))))))
                  (_%__kont177895177896%_ (lambda () _%stx174809%_)))
              (let ((_%__match177924177925%_
                     (lambda (_%e174821174849%_
                              _%hd174822174852%_
                              _%tl174823174854%_
                              _%e174824174857%_
                              _%hd174825174860%_
                              _%tl174826174862%_
                              _%e174827174865%_
                              _%hd174828174868%_
                              _%tl174829174870%_
                              _%e174830174873%_
                              _%hd174831174876%_
                              _%tl174832174878%_)
                       (let ((_%L174881%_ _%hd174831174876%_)
                             (_%L174882%_ _%hd174828174868%_))
                         (if (let ((__tmp179097
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L174882%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp179097))
                             (_%__kont177893177894%_ _%L174881%_ _%L174882%_)
                             (_%__kont177895177896%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx177891177892%_))
                    (let ((_%e174821174849%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx177891177892%_))))
                      (let ((_%tl174823174854%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174821174849%_)))
                            (_%hd174822174852%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174821174849%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174823174854%_))
                            (let ((_%e174824174857%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174823174854%_))))
                              (let ((_%tl174826174862%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174824174857%_)))
                                    (_%hd174825174860%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174824174857%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd174825174860%_))
                                    (let ((_%e174827174865%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd174825174860%_))))
                                      (let ((_%tl174829174870%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174827174865%_)))
                                            (_%hd174828174868%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174827174865%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174829174870%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174826174862%_))
                                                (let ((_%e174830174873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174826174862%_))))
                                                  (let ((_%tl174832174878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174830174873%_)))
                                                        (_%hd174831174876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174830174873%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174832174878%_))
                                                        (_%__match177924177925%_
                                                         _%e174821174849%_
                                                         _%hd174822174852%_
                                                         _%tl174823174854%_
                                                         _%e174824174857%_
                                                         _%hd174825174860%_
                                                         _%tl174826174862%_
                                                         _%e174827174865%_
                                                         _%hd174828174868%_
                                                         _%tl174829174870%_
                                                         _%e174830174873%_
                                                         _%hd174831174876%_
                                                         _%tl174832174878%_)
                                                        (_%__kont177895177896%_))))
                                                (_%__kont177895177896%_))
                                            (_%__kont177895177896%_))))
                                    (_%__kont177895177896%_))))
                            (_%__kont177895177896%_))))
                    (_%__kont177895177896%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self174661%_ _%stx174662%_)
        (let* ((_%__stx177927177928%_ _%stx174662%_)
               (_%g174665174698%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx177927177928%_)))))
          (let ((_%__kont177929177930%_ (lambda (_%L174788%_) _%L174788%_))
                (_%__kont177931177932%_
                 (lambda (_%L174727%_ _%L174728%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self174661%_ _%L174727%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx177927177928%_))
                (let ((_%e174668174748%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx177927177928%_))))
                  (let ((_%tl174670174753%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174668174748%_)))
                        (_%hd174669174751%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174668174748%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174670174753%_))
                        (let ((_%e174671174756%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174670174753%_))))
                          (let ((_%tl174673174761%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174671174756%_)))
                                (_%hd174672174759%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174671174756%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174672174759%_))
                                (let ((_%e174674174764%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174672174759%_))))
                                  (let ((_%tl174676174769%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174674174764%_)))
                                        (_%hd174675174767%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174674174764%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd174675174767%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd174675174767%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174676174769%_))
                                                (let ((_%e174677174772%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174676174769%_))))
                                                  (let ((_%tl174679174777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174677174772%_)))
                                                        (_%hd174678174775%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174677174772%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174679174777%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174673174761%_))
                                                            (let ((_%e174680174780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174673174761%_))))
                      (let ((_%tl174682174785%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174680174780%_)))
                            (_%hd174681174783%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174680174780%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174682174785%_))
                            (_%__kont177929177930%_ _%hd174678174775%_)
                            (let ()
                              (declare (not safe))
                              (_%g174665174698%_)))))
                    (let () (declare (not safe)) (_%g174665174698%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl174673174761%_))
                    (let ((_%e174691174719%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174673174761%_))))
                      (let ((_%tl174693174724%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174691174719%_)))
                            (_%hd174692174722%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174691174719%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174693174724%_))
                            (_%__kont177931177932%_
                             _%hd174692174722%_
                             _%hd174672174759%_)
                            (let ()
                              (declare (not safe))
                              (_%g174665174698%_)))))
                    (let () (declare (not safe)) (_%g174665174698%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174673174761%_))
                                                    (let ((_%e174691174719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174673174761%_))))
                                                      (let ((_%tl174693174724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e174691174719%_)))
                    (_%hd174692174722%_
                     (let () (declare (not safe)) (##car _%e174691174719%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174693174724%_))
                    (_%__kont177931177932%_
                     _%hd174692174722%_
                     _%hd174672174759%_)
                    (let () (declare (not safe)) (_%g174665174698%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174665174698%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174673174761%_))
                                                (let ((_%e174691174719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174673174761%_))))
                                                  (let ((_%tl174693174724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174691174719%_)))
                                                        (_%hd174692174722%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174691174719%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174693174724%_))
                                                        (_%__kont177931177932%_
                                                         _%hd174692174722%_
                                                         _%hd174672174759%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g174665174698%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g174665174698%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174673174761%_))
                                            (let ((_%e174691174719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174673174761%_))))
                                              (let ((_%tl174693174724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174691174719%_)))
                                                    (_%hd174692174722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174691174719%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl174693174724%_))
                                                    (_%__kont177931177932%_
                                                     _%hd174692174722%_
                                                     _%hd174672174759%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174665174698%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g174665174698%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174673174761%_))
                                    (let ((_%e174691174719%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174673174761%_))))
                                      (let ((_%tl174693174724%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174691174719%_)))
                                            (_%hd174692174722%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174691174719%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174693174724%_))
                                            (_%__kont177931177932%_
                                             _%hd174692174722%_
                                             _%hd174672174759%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g174665174698%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g174665174698%_))))))
                        (let () (declare (not safe)) (_%g174665174698%_)))))
                (let () (declare (not safe)) (_%g174665174698%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self174577%_ _%stx174578%_)
        (let* ((_%g174580174601%_
                (lambda (_%g174581174598%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g174581174598%_))))
               (_%g174579174658%_
                (lambda (_%g174581174604%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g174581174604%_))
                      (let ((_%e174585174606%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g174581174604%_))))
                        (let ((_%hd174586174609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174585174606%_)))
                              (_%tl174587174611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174585174606%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl174587174611%_))
                              (let ((_%e174588174614%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl174587174611%_))))
                                (let ((_%hd174589174617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e174588174614%_)))
                                      (_%tl174590174619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e174588174614%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174590174619%_))
                                      (let ((_%e174591174622%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174590174619%_))))
                                        (let ((_%hd174592174625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174591174622%_)))
                                              (_%tl174593174627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174591174622%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl174593174627%_))
                                              (let ((_%e174594174630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl174593174627%_))))
                                                (let ((_%hd174595174633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e174594174630%_)))
                                                      (_%tl174596174635%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e174594174630%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl174596174635%_))
                                                      ((lambda (_%L174638%_
                                                                _%L174639%_
                                                                _%L174640%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self174577%_
                                                            _%L174639%_)))
                                                       _%hd174595174633%_
                                                       _%hd174592174625%_
                                                       _%hd174589174617%_)
                                                      (_%g174580174601%_
                                                       _%g174581174604%_))))
                                              (_%g174580174601%_
                                               _%g174581174604%_))))
                                      (_%g174580174601%_ _%g174581174604%_))))
                              (_%g174580174601%_ _%g174581174604%_))))
                      (_%g174580174601%_ _%g174581174604%_)))))
          (_%g174579174658%_ _%stx174578%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self173538%_ _%stx173539%_)
        (let* ((_%__stx177993177994%_ _%stx173539%_)
               (_%g173547173769%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx177993177994%_)))))
          (let ((_%__kont177995177996%_
                 (lambda (_%L174526%_ _%L174527%_ _%L174528%_ _%L174529%_)
                   (let ((__tmp179099
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173538%_ 'methods)))
                         (__tmp179098
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174527%_))))
                     (declare (not safe))
                     (hash-put! __tmp179099 __tmp179098 '#t))
                   (for-each
                    (lambda (_%g174562174564%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173538%_ _%g174562174564%_)))
                    (let ((__tmp179100
                           (lambda (_%g174566174569%_ _%g174567174571%_)
                             (cons _%g174566174569%_ _%g174567174571%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179100 '() _%L174526%_)))))
                (_%__kont177999178000%_
                 (lambda (_%L174361%_
                          _%L174362%_
                          _%L174363%_
                          _%L174364%_
                          _%L174365%_)
                   (let ((__tmp179102
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173538%_ 'methods)))
                         (__tmp179101
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174362%_))))
                     (declare (not safe))
                     (hash-put! __tmp179102 __tmp179101 '#t))
                   (for-each
                    (lambda (_%g174405174407%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173538%_ _%g174405174407%_)))
                    (let ((__tmp179103
                           (lambda (_%g174409174412%_ _%g174410174414%_)
                             (cons _%g174409174412%_ _%g174410174414%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179103 '() _%L174361%_)))))
                (_%__kont178003178004%_
                 (lambda (_%L174194%_ _%L174195%_ _%L174196%_)
                   (let ((__tmp179105
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173538%_ 'slots)))
                         (__tmp179104
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174194%_))))
                     (declare (not safe))
                     (hash-put! __tmp179105 __tmp179104 '#t))))
                (_%__kont178005178006%_
                 (lambda (_%L174071%_ _%L174072%_ _%L174073%_ _%L174074%_)
                   (let ((__tmp179107
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173538%_ 'slots)))
                         (__tmp179106
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174072%_))))
                     (declare (not safe))
                     (hash-put! __tmp179107 __tmp179106 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173538%_ _%L174071%_))))
                (_%__kont178007178008%_
                 (lambda (_%L173945%_ _%L173946%_)
                   (let* ((_%accessor173968%_
                           (let ((__tmp179108
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L173946%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179108)))
                          (_%klass173970%_
                           (let ((__tmp179109
                                  (##structure-ref
                                   _%accessor173968%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173539%_
                              __tmp179109)))
                          (_%slot173972%_
                           (##structure-ref
                            _%accessor173968%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor173968%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass173970%_
                                    _%slot173972%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass173970%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179111
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173538%_ 'slots)))
                               (__tmp179110
                                (##structure-ref
                                 _%accessor173968%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp179111 __tmp179110 '#t))))))
                (_%__kont178009178010%_
                 (lambda (_%L173845%_ _%L173846%_ _%L173847%_)
                   (let* ((_%mutator173874%_
                           (let ((__tmp179112
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L173847%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179112)))
                          (_%klass173876%_
                           (let ((__tmp179113
                                  (##structure-ref
                                   _%mutator173874%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173539%_
                              __tmp179113)))
                          (_%slot173878%_
                           (##structure-ref
                            _%mutator173874%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator173874%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass173876%_
                                    _%slot173878%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass173876%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179114
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173538%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp179114 _%slot173878%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self173538%_ _%L173845%_)))))
                (_%__kont178011178012%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self173538%_ _%stx173539%_)))))
            (let* ((_%__match178492178493%_
                    (lambda (_%e173741173781%_
                             _%hd173742173784%_
                             _%tl173743173786%_
                             _%e173744173789%_
                             _%hd173745173792%_
                             _%tl173746173794%_
                             _%e173747173797%_
                             _%hd173748173800%_
                             _%tl173749173802%_
                             _%e173750173805%_
                             _%hd173751173808%_
                             _%tl173752173810%_
                             _%e173753173813%_
                             _%hd173754173816%_
                             _%tl173755173818%_
                             _%e173756173821%_
                             _%hd173757173824%_
                             _%tl173758173826%_
                             _%e173759173829%_
                             _%hd173760173832%_
                             _%tl173761173834%_
                             _%e173762173837%_
                             _%hd173763173840%_
                             _%tl173764173842%_)
                      (let ((_%L173845%_ _%hd173763173840%_)
                            (_%L173846%_ _%hd173760173832%_)
                            (_%L173847%_ _%hd173751173808%_))
                        (if (and (let ((__tmp179115
                                        (let ((__tmp179116
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L173847%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179116))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179115
                                    'gxc#!mutator::t))
                                 (let ((__tmp179117
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173538%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173846%_
                                    __tmp179117)))
                            (_%__kont178009178010%_
                             _%L173845%_
                             _%L173846%_
                             _%L173847%_)
                            (_%__kont178011178012%_)))))
                   (_%__match178490178491%_
                    (lambda (_%e173741173781%_
                             _%hd173742173784%_
                             _%tl173743173786%_
                             _%e173744173789%_
                             _%hd173745173792%_
                             _%tl173746173794%_
                             _%e173747173797%_
                             _%hd173748173800%_
                             _%tl173749173802%_
                             _%e173750173805%_
                             _%hd173751173808%_
                             _%tl173752173810%_
                             _%e173753173813%_
                             _%hd173754173816%_
                             _%tl173755173818%_
                             _%e173756173821%_
                             _%hd173757173824%_
                             _%tl173758173826%_
                             _%e173759173829%_
                             _%hd173760173832%_
                             _%tl173761173834%_
                             _%e173762173837%_
                             _%hd173763173840%_
                             _%tl173764173842%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173764173842%_))
                          (_%__match178492178493%_
                           _%e173741173781%_
                           _%hd173742173784%_
                           _%tl173743173786%_
                           _%e173744173789%_
                           _%hd173745173792%_
                           _%tl173746173794%_
                           _%e173747173797%_
                           _%hd173748173800%_
                           _%tl173749173802%_
                           _%e173750173805%_
                           _%hd173751173808%_
                           _%tl173752173810%_
                           _%e173753173813%_
                           _%hd173754173816%_
                           _%tl173755173818%_
                           _%e173756173821%_
                           _%hd173757173824%_
                           _%tl173758173826%_
                           _%e173759173829%_
                           _%hd173760173832%_
                           _%tl173761173834%_
                           _%e173762173837%_
                           _%hd173763173840%_
                           _%tl173764173842%_)
                          (_%__kont178011178012%_))))
                   (_%__match178484178485%_
                    (lambda (_%e173741173781%_
                             _%hd173742173784%_
                             _%tl173743173786%_
                             _%e173744173789%_
                             _%hd173745173792%_
                             _%tl173746173794%_
                             _%e173747173797%_
                             _%hd173748173800%_
                             _%tl173749173802%_
                             _%e173750173805%_
                             _%hd173751173808%_
                             _%tl173752173810%_
                             _%e173753173813%_
                             _%hd173754173816%_
                             _%tl173755173818%_
                             _%e173756173821%_
                             _%hd173757173824%_
                             _%tl173758173826%_
                             _%e173759173829%_
                             _%hd173760173832%_
                             _%tl173761173834%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173755173818%_))
                          (let ((_%e173762173837%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173755173818%_))))
                            (let ((_%tl173764173842%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173762173837%_)))
                                  (_%hd173763173840%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173762173837%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173764173842%_))
                                  (_%__match178492178493%_
                                   _%e173741173781%_
                                   _%hd173742173784%_
                                   _%tl173743173786%_
                                   _%e173744173789%_
                                   _%hd173745173792%_
                                   _%tl173746173794%_
                                   _%e173747173797%_
                                   _%hd173748173800%_
                                   _%tl173749173802%_
                                   _%e173750173805%_
                                   _%hd173751173808%_
                                   _%tl173752173810%_
                                   _%e173753173813%_
                                   _%hd173754173816%_
                                   _%tl173755173818%_
                                   _%e173756173821%_
                                   _%hd173757173824%_
                                   _%tl173758173826%_
                                   _%e173759173829%_
                                   _%hd173760173832%_
                                   _%tl173761173834%_
                                   _%e173762173837%_
                                   _%hd173763173840%_
                                   _%tl173764173842%_)
                                  (_%__kont178011178012%_))))
                          (_%__kont178011178012%_))))
                   (_%__match178430178431%_
                    (lambda (_%e173717173889%_
                             _%hd173718173892%_
                             _%tl173719173894%_
                             _%e173720173897%_
                             _%hd173721173900%_
                             _%tl173722173902%_
                             _%e173723173905%_
                             _%hd173724173908%_
                             _%tl173725173910%_
                             _%e173726173913%_
                             _%hd173727173916%_
                             _%tl173728173918%_
                             _%e173729173921%_
                             _%hd173730173924%_
                             _%tl173731173926%_
                             _%e173732173929%_
                             _%hd173733173932%_
                             _%tl173734173934%_
                             _%e173735173937%_
                             _%hd173736173940%_
                             _%tl173737173942%_)
                      (let ((_%L173945%_ _%hd173736173940%_)
                            (_%L173946%_ _%hd173727173916%_))
                        (if (and (let ((__tmp179118
                                        (let ((__tmp179119
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L173946%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179119))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179118
                                    'gxc#!accessor::t))
                                 (let ((__tmp179120
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173538%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173945%_
                                    __tmp179120)))
                            (_%__kont178007178008%_ _%L173945%_ _%L173946%_)
                            (_%__kont178011178012%_)))))
                   (_%__match178428178429%_
                    (lambda (_%e173717173889%_
                             _%hd173718173892%_
                             _%tl173719173894%_
                             _%e173720173897%_
                             _%hd173721173900%_
                             _%tl173722173902%_
                             _%e173723173905%_
                             _%hd173724173908%_
                             _%tl173725173910%_
                             _%e173726173913%_
                             _%hd173727173916%_
                             _%tl173728173918%_
                             _%e173729173921%_
                             _%hd173730173924%_
                             _%tl173731173926%_
                             _%e173732173929%_
                             _%hd173733173932%_
                             _%tl173734173934%_
                             _%e173735173937%_
                             _%hd173736173940%_
                             _%tl173737173942%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173731173926%_))
                          (_%__match178430178431%_
                           _%e173717173889%_
                           _%hd173718173892%_
                           _%tl173719173894%_
                           _%e173720173897%_
                           _%hd173721173900%_
                           _%tl173722173902%_
                           _%e173723173905%_
                           _%hd173724173908%_
                           _%tl173725173910%_
                           _%e173726173913%_
                           _%hd173727173916%_
                           _%tl173728173918%_
                           _%e173729173921%_
                           _%hd173730173924%_
                           _%tl173731173926%_
                           _%e173732173929%_
                           _%hd173733173932%_
                           _%tl173734173934%_
                           _%e173735173937%_
                           _%hd173736173940%_
                           _%tl173737173942%_)
                          (_%__match178484178485%_
                           _%e173717173889%_
                           _%hd173718173892%_
                           _%tl173719173894%_
                           _%e173720173897%_
                           _%hd173721173900%_
                           _%tl173722173902%_
                           _%e173723173905%_
                           _%hd173724173908%_
                           _%tl173725173910%_
                           _%e173726173913%_
                           _%hd173727173916%_
                           _%tl173728173918%_
                           _%e173729173921%_
                           _%hd173730173924%_
                           _%tl173731173926%_
                           _%e173732173929%_
                           _%hd173733173932%_
                           _%tl173734173934%_
                           _%e173735173937%_
                           _%hd173736173940%_
                           _%tl173737173942%_))))
                   (_%__match178374178375%_
                    (lambda (_%e173682173983%_
                             _%hd173683173986%_
                             _%tl173684173988%_
                             _%e173685173991%_
                             _%hd173686173994%_
                             _%tl173687173996%_
                             _%e173688173999%_
                             _%hd173689174002%_
                             _%tl173690174004%_
                             _%e173691174007%_
                             _%hd173692174010%_
                             _%tl173693174012%_
                             _%e173694174015%_
                             _%hd173695174018%_
                             _%tl173696174020%_
                             _%e173697174023%_
                             _%hd173698174026%_
                             _%tl173699174028%_
                             _%e173700174031%_
                             _%hd173701174034%_
                             _%tl173702174036%_
                             _%e173703174039%_
                             _%hd173704174042%_
                             _%tl173705174044%_
                             _%e173706174047%_
                             _%hd173707174050%_
                             _%tl173708174052%_
                             _%e173709174055%_
                             _%hd173710174058%_
                             _%tl173711174060%_
                             _%e173712174063%_
                             _%hd173713174066%_
                             _%tl173714174068%_)
                      (let ((_%L174071%_ _%hd173713174066%_)
                            (_%L174072%_ _%hd173710174058%_)
                            (_%L174073%_ _%hd173701174034%_)
                            (_%L174074%_ _%hd173692174010%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174074%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174074%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp179121
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173538%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174073%_
                                    __tmp179121)))
                            (_%__kont178005178006%_
                             _%L174071%_
                             _%L174072%_
                             _%L174073%_
                             _%L174074%_)
                            (_%__kont178011178012%_)))))
                   (_%__match178366178367%_
                    (lambda (_%e173682173983%_
                             _%hd173683173986%_
                             _%tl173684173988%_
                             _%e173685173991%_
                             _%hd173686173994%_
                             _%tl173687173996%_
                             _%e173688173999%_
                             _%hd173689174002%_
                             _%tl173690174004%_
                             _%e173691174007%_
                             _%hd173692174010%_
                             _%tl173693174012%_
                             _%e173694174015%_
                             _%hd173695174018%_
                             _%tl173696174020%_
                             _%e173697174023%_
                             _%hd173698174026%_
                             _%tl173699174028%_
                             _%e173700174031%_
                             _%hd173701174034%_
                             _%tl173702174036%_
                             _%e173703174039%_
                             _%hd173704174042%_
                             _%tl173705174044%_
                             _%e173706174047%_
                             _%hd173707174050%_
                             _%tl173708174052%_
                             _%e173709174055%_
                             _%hd173710174058%_
                             _%tl173711174060%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173705174044%_))
                          (let ((_%e173712174063%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173705174044%_))))
                            (let ((_%tl173714174068%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173712174063%_)))
                                  (_%hd173713174066%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173712174063%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173714174068%_))
                                  (_%__match178374178375%_
                                   _%e173682173983%_
                                   _%hd173683173986%_
                                   _%tl173684173988%_
                                   _%e173685173991%_
                                   _%hd173686173994%_
                                   _%tl173687173996%_
                                   _%e173688173999%_
                                   _%hd173689174002%_
                                   _%tl173690174004%_
                                   _%e173691174007%_
                                   _%hd173692174010%_
                                   _%tl173693174012%_
                                   _%e173694174015%_
                                   _%hd173695174018%_
                                   _%tl173696174020%_
                                   _%e173697174023%_
                                   _%hd173698174026%_
                                   _%tl173699174028%_
                                   _%e173700174031%_
                                   _%hd173701174034%_
                                   _%tl173702174036%_
                                   _%e173703174039%_
                                   _%hd173704174042%_
                                   _%tl173705174044%_
                                   _%e173706174047%_
                                   _%hd173707174050%_
                                   _%tl173708174052%_
                                   _%e173709174055%_
                                   _%hd173710174058%_
                                   _%tl173711174060%_
                                   _%e173712174063%_
                                   _%hd173713174066%_
                                   _%tl173714174068%_)
                                  (_%__kont178011178012%_))))
                          (_%__match178490178491%_
                           _%e173682173983%_
                           _%hd173683173986%_
                           _%tl173684173988%_
                           _%e173685173991%_
                           _%hd173686173994%_
                           _%tl173687173996%_
                           _%e173688173999%_
                           _%hd173689174002%_
                           _%tl173690174004%_
                           _%e173691174007%_
                           _%hd173692174010%_
                           _%tl173693174012%_
                           _%e173694174015%_
                           _%hd173695174018%_
                           _%tl173696174020%_
                           _%e173697174023%_
                           _%hd173698174026%_
                           _%tl173699174028%_
                           _%e173700174031%_
                           _%hd173701174034%_
                           _%tl173702174036%_
                           _%e173703174039%_
                           _%hd173704174042%_
                           _%tl173705174044%_))))
                   (_%__match178288178289%_
                    (lambda (_%e173648174114%_
                             _%hd173649174117%_
                             _%tl173650174119%_
                             _%e173651174122%_
                             _%hd173652174125%_
                             _%tl173653174127%_
                             _%e173654174130%_
                             _%hd173655174133%_
                             _%tl173656174135%_
                             _%e173657174138%_
                             _%hd173658174141%_
                             _%tl173659174143%_
                             _%e173660174146%_
                             _%hd173661174149%_
                             _%tl173662174151%_
                             _%e173663174154%_
                             _%hd173664174157%_
                             _%tl173665174159%_
                             _%e173666174162%_
                             _%hd173667174165%_
                             _%tl173668174167%_
                             _%e173669174170%_
                             _%hd173670174173%_
                             _%tl173671174175%_
                             _%e173672174178%_
                             _%hd173673174181%_
                             _%tl173674174183%_
                             _%e173675174186%_
                             _%hd173676174189%_
                             _%tl173677174191%_)
                      (let ((_%L174194%_ _%hd173676174189%_)
                            (_%L174195%_ _%hd173667174165%_)
                            (_%L174196%_ _%hd173658174141%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174196%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174196%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp179122
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173538%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174195%_
                                    __tmp179122)))
                            (_%__kont178003178004%_
                             _%L174194%_
                             _%L174195%_
                             _%L174196%_)
                            (_%__match178492178493%_
                             _%e173648174114%_
                             _%hd173649174117%_
                             _%tl173650174119%_
                             _%e173651174122%_
                             _%hd173652174125%_
                             _%tl173653174127%_
                             _%e173654174130%_
                             _%hd173655174133%_
                             _%tl173656174135%_
                             _%e173657174138%_
                             _%hd173658174141%_
                             _%tl173659174143%_
                             _%e173660174146%_
                             _%hd173661174149%_
                             _%tl173662174151%_
                             _%e173663174154%_
                             _%hd173664174157%_
                             _%tl173665174159%_
                             _%e173666174162%_
                             _%hd173667174165%_
                             _%tl173668174167%_
                             _%e173669174170%_
                             _%hd173670174173%_
                             _%tl173671174175%_)))))
                   (_%__match178286178287%_
                    (lambda (_%e173648174114%_
                             _%hd173649174117%_
                             _%tl173650174119%_
                             _%e173651174122%_
                             _%hd173652174125%_
                             _%tl173653174127%_
                             _%e173654174130%_
                             _%hd173655174133%_
                             _%tl173656174135%_
                             _%e173657174138%_
                             _%hd173658174141%_
                             _%tl173659174143%_
                             _%e173660174146%_
                             _%hd173661174149%_
                             _%tl173662174151%_
                             _%e173663174154%_
                             _%hd173664174157%_
                             _%tl173665174159%_
                             _%e173666174162%_
                             _%hd173667174165%_
                             _%tl173668174167%_
                             _%e173669174170%_
                             _%hd173670174173%_
                             _%tl173671174175%_
                             _%e173672174178%_
                             _%hd173673174181%_
                             _%tl173674174183%_
                             _%e173675174186%_
                             _%hd173676174189%_
                             _%tl173677174191%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173671174175%_))
                          (_%__match178288178289%_
                           _%e173648174114%_
                           _%hd173649174117%_
                           _%tl173650174119%_
                           _%e173651174122%_
                           _%hd173652174125%_
                           _%tl173653174127%_
                           _%e173654174130%_
                           _%hd173655174133%_
                           _%tl173656174135%_
                           _%e173657174138%_
                           _%hd173658174141%_
                           _%tl173659174143%_
                           _%e173660174146%_
                           _%hd173661174149%_
                           _%tl173662174151%_
                           _%e173663174154%_
                           _%hd173664174157%_
                           _%tl173665174159%_
                           _%e173666174162%_
                           _%hd173667174165%_
                           _%tl173668174167%_
                           _%e173669174170%_
                           _%hd173670174173%_
                           _%tl173671174175%_
                           _%e173672174178%_
                           _%hd173673174181%_
                           _%tl173674174183%_
                           _%e173675174186%_
                           _%hd173676174189%_
                           _%tl173677174191%_)
                          (_%__match178366178367%_
                           _%e173648174114%_
                           _%hd173649174117%_
                           _%tl173650174119%_
                           _%e173651174122%_
                           _%hd173652174125%_
                           _%tl173653174127%_
                           _%e173654174130%_
                           _%hd173655174133%_
                           _%tl173656174135%_
                           _%e173657174138%_
                           _%hd173658174141%_
                           _%tl173659174143%_
                           _%e173660174146%_
                           _%hd173661174149%_
                           _%tl173662174151%_
                           _%e173663174154%_
                           _%hd173664174157%_
                           _%tl173665174159%_
                           _%e173666174162%_
                           _%hd173667174165%_
                           _%tl173668174167%_
                           _%e173669174170%_
                           _%hd173670174173%_
                           _%tl173671174175%_
                           _%e173672174178%_
                           _%hd173673174181%_
                           _%tl173674174183%_
                           _%e173675174186%_
                           _%hd173676174189%_
                           _%tl173677174191%_))))
                   (_%__match178276178277%_
                    (lambda (_%e173648174114%_
                             _%hd173649174117%_
                             _%tl173650174119%_
                             _%e173651174122%_
                             _%hd173652174125%_
                             _%tl173653174127%_
                             _%e173654174130%_
                             _%hd173655174133%_
                             _%tl173656174135%_
                             _%e173657174138%_
                             _%hd173658174141%_
                             _%tl173659174143%_
                             _%e173660174146%_
                             _%hd173661174149%_
                             _%tl173662174151%_
                             _%e173663174154%_
                             _%hd173664174157%_
                             _%tl173665174159%_
                             _%e173666174162%_
                             _%hd173667174165%_
                             _%tl173668174167%_
                             _%e173669174170%_
                             _%hd173670174173%_
                             _%tl173671174175%_
                             _%e173672174178%_
                             _%hd173673174181%_
                             _%tl173674174183%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd173673174181%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173674174183%_))
                              (let ((_%e173675174186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173674174183%_))))
                                (let ((_%tl173677174191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173675174186%_)))
                                      (_%hd173676174189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173675174186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173677174191%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl173671174175%_))
                                          (_%__match178288178289%_
                                           _%e173648174114%_
                                           _%hd173649174117%_
                                           _%tl173650174119%_
                                           _%e173651174122%_
                                           _%hd173652174125%_
                                           _%tl173653174127%_
                                           _%e173654174130%_
                                           _%hd173655174133%_
                                           _%tl173656174135%_
                                           _%e173657174138%_
                                           _%hd173658174141%_
                                           _%tl173659174143%_
                                           _%e173660174146%_
                                           _%hd173661174149%_
                                           _%tl173662174151%_
                                           _%e173663174154%_
                                           _%hd173664174157%_
                                           _%tl173665174159%_
                                           _%e173666174162%_
                                           _%hd173667174165%_
                                           _%tl173668174167%_
                                           _%e173669174170%_
                                           _%hd173670174173%_
                                           _%tl173671174175%_
                                           _%e173672174178%_
                                           _%hd173673174181%_
                                           _%tl173674174183%_
                                           _%e173675174186%_
                                           _%hd173676174189%_
                                           _%tl173677174191%_)
                                          (_%__match178366178367%_
                                           _%e173648174114%_
                                           _%hd173649174117%_
                                           _%tl173650174119%_
                                           _%e173651174122%_
                                           _%hd173652174125%_
                                           _%tl173653174127%_
                                           _%e173654174130%_
                                           _%hd173655174133%_
                                           _%tl173656174135%_
                                           _%e173657174138%_
                                           _%hd173658174141%_
                                           _%tl173659174143%_
                                           _%e173660174146%_
                                           _%hd173661174149%_
                                           _%tl173662174151%_
                                           _%e173663174154%_
                                           _%hd173664174157%_
                                           _%tl173665174159%_
                                           _%e173666174162%_
                                           _%hd173667174165%_
                                           _%tl173668174167%_
                                           _%e173669174170%_
                                           _%hd173670174173%_
                                           _%tl173671174175%_
                                           _%e173672174178%_
                                           _%hd173673174181%_
                                           _%tl173674174183%_
                                           _%e173675174186%_
                                           _%hd173676174189%_
                                           _%tl173677174191%_))
                                      (_%__match178490178491%_
                                       _%e173648174114%_
                                       _%hd173649174117%_
                                       _%tl173650174119%_
                                       _%e173651174122%_
                                       _%hd173652174125%_
                                       _%tl173653174127%_
                                       _%e173654174130%_
                                       _%hd173655174133%_
                                       _%tl173656174135%_
                                       _%e173657174138%_
                                       _%hd173658174141%_
                                       _%tl173659174143%_
                                       _%e173660174146%_
                                       _%hd173661174149%_
                                       _%tl173662174151%_
                                       _%e173663174154%_
                                       _%hd173664174157%_
                                       _%tl173665174159%_
                                       _%e173666174162%_
                                       _%hd173667174165%_
                                       _%tl173668174167%_
                                       _%e173669174170%_
                                       _%hd173670174173%_
                                       _%tl173671174175%_))))
                              (_%__match178490178491%_
                               _%e173648174114%_
                               _%hd173649174117%_
                               _%tl173650174119%_
                               _%e173651174122%_
                               _%hd173652174125%_
                               _%tl173653174127%_
                               _%e173654174130%_
                               _%hd173655174133%_
                               _%tl173656174135%_
                               _%e173657174138%_
                               _%hd173658174141%_
                               _%tl173659174143%_
                               _%e173660174146%_
                               _%hd173661174149%_
                               _%tl173662174151%_
                               _%e173663174154%_
                               _%hd173664174157%_
                               _%tl173665174159%_
                               _%e173666174162%_
                               _%hd173667174165%_
                               _%tl173668174167%_
                               _%e173669174170%_
                               _%hd173670174173%_
                               _%tl173671174175%_))
                          (_%__match178490178491%_
                           _%e173648174114%_
                           _%hd173649174117%_
                           _%tl173650174119%_
                           _%e173651174122%_
                           _%hd173652174125%_
                           _%tl173653174127%_
                           _%e173654174130%_
                           _%hd173655174133%_
                           _%tl173656174135%_
                           _%e173657174138%_
                           _%hd173658174141%_
                           _%tl173659174143%_
                           _%e173660174146%_
                           _%hd173661174149%_
                           _%tl173662174151%_
                           _%e173663174154%_
                           _%hd173664174157%_
                           _%tl173665174159%_
                           _%e173666174162%_
                           _%hd173667174165%_
                           _%tl173668174167%_
                           _%e173669174170%_
                           _%hd173670174173%_
                           _%tl173671174175%_))))
                   (_%__match178208178209%_
                    (lambda (_%e173597174233%_
                             _%hd173598174236%_
                             _%tl173599174238%_
                             _%e173600174241%_
                             _%hd173601174244%_
                             _%tl173602174246%_
                             _%e173603174249%_
                             _%hd173604174252%_
                             _%tl173605174254%_
                             _%e173606174257%_
                             _%hd173607174260%_
                             _%tl173608174262%_
                             _%e173609174265%_
                             _%hd173610174268%_
                             _%tl173611174270%_
                             _%e173612174273%_
                             _%hd173613174276%_
                             _%tl173614174278%_
                             _%e173615174281%_
                             _%hd173616174284%_
                             _%tl173617174286%_
                             _%e173618174289%_
                             _%hd173619174292%_
                             _%tl173620174294%_
                             _%e173621174297%_
                             _%hd173622174300%_
                             _%tl173623174302%_
                             _%e173624174305%_
                             _%hd173625174308%_
                             _%tl173626174310%_
                             _%e173627174313%_
                             _%hd173628174316%_
                             _%tl173629174318%_
                             _%e173630174321%_
                             _%hd173631174324%_
                             _%tl173632174326%_
                             _%e173633174329%_
                             _%hd173634174332%_
                             _%tl173635174334%_
                             _%__splice178001178002%_
                             _%target173636174337%_
                             _%tl173638174339%_)
                      (letrec ((_%loop173639174342%_
                                (lambda (_%hd173637174345%_
                                         _%args173643174347%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173637174345%_))
                                      (let ((_%e173640174350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173637174345%_))))
                                        (let ((_%lp-tl173642174355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173640174350%_)))
                                              (_%lp-hd173641174353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173640174350%_))))
                                          (_%loop173639174342%_
                                           _%lp-tl173642174355%_
                                           (cons _%lp-hd173641174353%_
                                                 _%args173643174347%_))))
                                      (let ((_%args173644174358%_
                                             (reverse _%args173643174347%_)))
                                        (let ((_%L174361%_
                                               _%args173644174358%_)
                                              (_%L174362%_ _%hd173634174332%_)
                                              (_%L174363%_ _%hd173625174308%_)
                                              (_%L174364%_ _%hd173616174284%_)
                                              (_%L174365%_ _%hd173607174260%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174365%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174364%_
                                                      'call-method))
                                                   (let ((__tmp179123
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173538%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174363%_
                                                      __tmp179123)))
                                              (_%__kont177999178000%_
                                               _%L174361%_
                                               _%L174362%_
                                               _%L174363%_
                                               _%L174364%_
                                               _%L174365%_)
                                              (_%__kont178011178012%_))))))))
                        (_%loop173639174342%_ _%target173636174337%_ '()))))
                   (_%__match178166178167%_
                    (lambda (_%e173597174233%_
                             _%hd173598174236%_
                             _%tl173599174238%_
                             _%e173600174241%_
                             _%hd173601174244%_
                             _%tl173602174246%_
                             _%e173603174249%_
                             _%hd173604174252%_
                             _%tl173605174254%_
                             _%e173606174257%_
                             _%hd173607174260%_
                             _%tl173608174262%_
                             _%e173609174265%_
                             _%hd173610174268%_
                             _%tl173611174270%_
                             _%e173612174273%_
                             _%hd173613174276%_
                             _%tl173614174278%_
                             _%e173615174281%_
                             _%hd173616174284%_
                             _%tl173617174286%_
                             _%e173618174289%_
                             _%hd173619174292%_
                             _%tl173620174294%_
                             _%e173621174297%_
                             _%hd173622174300%_
                             _%tl173623174302%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd173622174300%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173623174302%_))
                              (let ((_%e173624174305%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173623174302%_))))
                                (let ((_%tl173626174310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173624174305%_)))
                                      (_%hd173625174308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173624174305%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173626174310%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173620174294%_))
                                          (let ((_%e173627174313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173620174294%_))))
                                            (let ((_%tl173629174318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173627174313%_)))
                                                  (_%hd173628174316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173627174313%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173628174316%_))
                                                  (let ((_%e173630174321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173628174316%_))))
                                                    (let ((_%tl173632174326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173630174321%_)))
                                                          (_%hd173631174324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173630174321%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd173631174324%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd173631174324%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173632174326%_))
                          (let ((_%e173633174329%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173632174326%_))))
                            (let ((_%tl173635174334%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173633174329%_)))
                                  (_%hd173634174332%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173633174329%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173635174334%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl173629174318%_))
                                      (let ((_%__splice178001178002%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl173629174318%_
                                                '0))))
                                        (let ((_%tl173638174339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178001178002%_
                                                  '1)))
                                              (_%target173636174337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178001178002%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173638174339%_))
                                              (_%__match178208178209%_
                                               _%e173597174233%_
                                               _%hd173598174236%_
                                               _%tl173599174238%_
                                               _%e173600174241%_
                                               _%hd173601174244%_
                                               _%tl173602174246%_
                                               _%e173603174249%_
                                               _%hd173604174252%_
                                               _%tl173605174254%_
                                               _%e173606174257%_
                                               _%hd173607174260%_
                                               _%tl173608174262%_
                                               _%e173609174265%_
                                               _%hd173610174268%_
                                               _%tl173611174270%_
                                               _%e173612174273%_
                                               _%hd173613174276%_
                                               _%tl173614174278%_
                                               _%e173615174281%_
                                               _%hd173616174284%_
                                               _%tl173617174286%_
                                               _%e173618174289%_
                                               _%hd173619174292%_
                                               _%tl173620174294%_
                                               _%e173621174297%_
                                               _%hd173622174300%_
                                               _%tl173623174302%_
                                               _%e173624174305%_
                                               _%hd173625174308%_
                                               _%tl173626174310%_
                                               _%e173627174313%_
                                               _%hd173628174316%_
                                               _%tl173629174318%_
                                               _%e173630174321%_
                                               _%hd173631174324%_
                                               _%tl173632174326%_
                                               _%e173633174329%_
                                               _%hd173634174332%_
                                               _%tl173635174334%_
                                               _%__splice178001178002%_
                                               _%target173636174337%_
                                               _%tl173638174339%_)
                                              (_%__kont178011178012%_))))
                                      (_%__kont178011178012%_))
                                  (_%__kont178011178012%_))))
                          (_%__kont178011178012%_))
                      (_%__kont178011178012%_))
                  (_%__kont178011178012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178011178012%_))))
                                          (_%__match178490178491%_
                                           _%e173597174233%_
                                           _%hd173598174236%_
                                           _%tl173599174238%_
                                           _%e173600174241%_
                                           _%hd173601174244%_
                                           _%tl173602174246%_
                                           _%e173603174249%_
                                           _%hd173604174252%_
                                           _%tl173605174254%_
                                           _%e173606174257%_
                                           _%hd173607174260%_
                                           _%tl173608174262%_
                                           _%e173609174265%_
                                           _%hd173610174268%_
                                           _%tl173611174270%_
                                           _%e173612174273%_
                                           _%hd173613174276%_
                                           _%tl173614174278%_
                                           _%e173615174281%_
                                           _%hd173616174284%_
                                           _%tl173617174286%_
                                           _%e173618174289%_
                                           _%hd173619174292%_
                                           _%tl173620174294%_))
                                      (_%__match178490178491%_
                                       _%e173597174233%_
                                       _%hd173598174236%_
                                       _%tl173599174238%_
                                       _%e173600174241%_
                                       _%hd173601174244%_
                                       _%tl173602174246%_
                                       _%e173603174249%_
                                       _%hd173604174252%_
                                       _%tl173605174254%_
                                       _%e173606174257%_
                                       _%hd173607174260%_
                                       _%tl173608174262%_
                                       _%e173609174265%_
                                       _%hd173610174268%_
                                       _%tl173611174270%_
                                       _%e173612174273%_
                                       _%hd173613174276%_
                                       _%tl173614174278%_
                                       _%e173615174281%_
                                       _%hd173616174284%_
                                       _%tl173617174286%_
                                       _%e173618174289%_
                                       _%hd173619174292%_
                                       _%tl173620174294%_))))
                              (_%__match178490178491%_
                               _%e173597174233%_
                               _%hd173598174236%_
                               _%tl173599174238%_
                               _%e173600174241%_
                               _%hd173601174244%_
                               _%tl173602174246%_
                               _%e173603174249%_
                               _%hd173604174252%_
                               _%tl173605174254%_
                               _%e173606174257%_
                               _%hd173607174260%_
                               _%tl173608174262%_
                               _%e173609174265%_
                               _%hd173610174268%_
                               _%tl173611174270%_
                               _%e173612174273%_
                               _%hd173613174276%_
                               _%tl173614174278%_
                               _%e173615174281%_
                               _%hd173616174284%_
                               _%tl173617174286%_
                               _%e173618174289%_
                               _%hd173619174292%_
                               _%tl173620174294%_))
                          (_%__match178276178277%_
                           _%e173597174233%_
                           _%hd173598174236%_
                           _%tl173599174238%_
                           _%e173600174241%_
                           _%hd173601174244%_
                           _%tl173602174246%_
                           _%e173603174249%_
                           _%hd173604174252%_
                           _%tl173605174254%_
                           _%e173606174257%_
                           _%hd173607174260%_
                           _%tl173608174262%_
                           _%e173609174265%_
                           _%hd173610174268%_
                           _%tl173611174270%_
                           _%e173612174273%_
                           _%hd173613174276%_
                           _%tl173614174278%_
                           _%e173615174281%_
                           _%hd173616174284%_
                           _%tl173617174286%_
                           _%e173618174289%_
                           _%hd173619174292%_
                           _%tl173620174294%_
                           _%e173621174297%_
                           _%hd173622174300%_
                           _%tl173623174302%_))))
                   (_%__match178098178099%_
                    (lambda (_%e173553174422%_
                             _%hd173554174425%_
                             _%tl173555174427%_
                             _%e173556174430%_
                             _%hd173557174433%_
                             _%tl173558174435%_
                             _%e173559174438%_
                             _%hd173560174441%_
                             _%tl173561174443%_
                             _%e173562174446%_
                             _%hd173563174449%_
                             _%tl173564174451%_
                             _%e173565174454%_
                             _%hd173566174457%_
                             _%tl173567174459%_
                             _%e173568174462%_
                             _%hd173569174465%_
                             _%tl173570174467%_
                             _%e173571174470%_
                             _%hd173572174473%_
                             _%tl173573174475%_
                             _%e173574174478%_
                             _%hd173575174481%_
                             _%tl173576174483%_
                             _%e173577174486%_
                             _%hd173578174489%_
                             _%tl173579174491%_
                             _%e173580174494%_
                             _%hd173581174497%_
                             _%tl173582174499%_
                             _%__splice177997177998%_
                             _%target173583174502%_
                             _%tl173585174504%_)
                      (letrec ((_%loop173586174507%_
                                (lambda (_%hd173584174510%_
                                         _%args173590174512%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173584174510%_))
                                      (let ((_%e173587174515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173584174510%_))))
                                        (let ((_%lp-tl173589174520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173587174515%_)))
                                              (_%lp-hd173588174518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173587174515%_))))
                                          (_%loop173586174507%_
                                           _%lp-tl173589174520%_
                                           (cons _%lp-hd173588174518%_
                                                 _%args173590174512%_))))
                                      (let ((_%args173591174523%_
                                             (reverse _%args173590174512%_)))
                                        (let ((_%L174526%_
                                               _%args173591174523%_)
                                              (_%L174527%_ _%hd173581174497%_)
                                              (_%L174528%_ _%hd173572174473%_)
                                              (_%L174529%_ _%hd173563174449%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174529%_
                                                      'call-method))
                                                   (let ((__tmp179124
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173538%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174528%_
                                                      __tmp179124)))
                                              (_%__kont177995177996%_
                                               _%L174526%_
                                               _%L174527%_
                                               _%L174528%_
                                               _%L174529%_)
                                              (_%__match178286178287%_
                                               _%e173553174422%_
                                               _%hd173554174425%_
                                               _%tl173555174427%_
                                               _%e173556174430%_
                                               _%hd173557174433%_
                                               _%tl173558174435%_
                                               _%e173559174438%_
                                               _%hd173560174441%_
                                               _%tl173561174443%_
                                               _%e173562174446%_
                                               _%hd173563174449%_
                                               _%tl173564174451%_
                                               _%e173565174454%_
                                               _%hd173566174457%_
                                               _%tl173567174459%_
                                               _%e173568174462%_
                                               _%hd173569174465%_
                                               _%tl173570174467%_
                                               _%e173571174470%_
                                               _%hd173572174473%_
                                               _%tl173573174475%_
                                               _%e173574174478%_
                                               _%hd173575174481%_
                                               _%tl173576174483%_
                                               _%e173577174486%_
                                               _%hd173578174489%_
                                               _%tl173579174491%_
                                               _%e173580174494%_
                                               _%hd173581174497%_
                                               _%tl173582174499%_))))))))
                        (_%loop173586174507%_ _%target173583174502%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx177993177994%_))
                  (let ((_%e173553174422%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx177993177994%_))))
                    (let ((_%tl173555174427%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173553174422%_)))
                          (_%hd173554174425%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173553174422%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173555174427%_))
                          (let ((_%e173556174430%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173555174427%_))))
                            (let ((_%tl173558174435%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173556174430%_)))
                                  (_%hd173557174433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173556174430%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd173557174433%_))
                                  (let ((_%e173559174438%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd173557174433%_))))
                                    (let ((_%tl173561174443%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e173559174438%_)))
                                          (_%hd173560174441%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e173559174438%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd173560174441%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd173560174441%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl173561174443%_))
                                                  (let ((_%e173562174446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl173561174443%_))))
                                                    (let ((_%tl173564174451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173562174446%_)))
                                                          (_%hd173563174449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173562174446%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl173564174451%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl173558174435%_))
                      (let ((_%e173565174454%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl173558174435%_))))
                        (let ((_%tl173567174459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173565174454%_)))
                              (_%hd173566174457%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173565174454%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd173566174457%_))
                              (let ((_%e173568174462%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd173566174457%_))))
                                (let ((_%tl173570174467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173568174462%_)))
                                      (_%hd173569174465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173568174462%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd173569174465%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd173569174465%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173570174467%_))
                                              (let ((_%e173571174470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173570174467%_))))
                                                (let ((_%tl173573174475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173571174470%_)))
                                                      (_%hd173572174473%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173571174470%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173573174475%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl173567174459%_))
                                                          (let ((_%e173574174478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl173567174459%_))))
                    (let ((_%tl173576174483%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173574174478%_)))
                          (_%hd173575174481%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173574174478%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd173575174481%_))
                          (let ((_%e173577174486%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd173575174481%_))))
                            (let ((_%tl173579174491%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173577174486%_)))
                                  (_%hd173578174489%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173577174486%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd173578174489%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd173578174489%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173579174491%_))
                                          (let ((_%e173580174494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173579174491%_))))
                                            (let ((_%tl173582174499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173580174494%_)))
                                                  (_%hd173581174497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173580174494%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl173582174499%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl173576174483%_))
                                                      (let ((_%__splice177997177998%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl173576174483%_ '0))))
                (let ((_%tl173585174504%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice177997177998%_ '1)))
                      (_%target173583174502%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice177997177998%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl173585174504%_))
                      (_%__match178098178099%_
                       _%e173553174422%_
                       _%hd173554174425%_
                       _%tl173555174427%_
                       _%e173556174430%_
                       _%hd173557174433%_
                       _%tl173558174435%_
                       _%e173559174438%_
                       _%hd173560174441%_
                       _%tl173561174443%_
                       _%e173562174446%_
                       _%hd173563174449%_
                       _%tl173564174451%_
                       _%e173565174454%_
                       _%hd173566174457%_
                       _%tl173567174459%_
                       _%e173568174462%_
                       _%hd173569174465%_
                       _%tl173570174467%_
                       _%e173571174470%_
                       _%hd173572174473%_
                       _%tl173573174475%_
                       _%e173574174478%_
                       _%hd173575174481%_
                       _%tl173576174483%_
                       _%e173577174486%_
                       _%hd173578174489%_
                       _%tl173579174491%_
                       _%e173580174494%_
                       _%hd173581174497%_
                       _%tl173582174499%_
                       _%__splice177997177998%_
                       _%target173583174502%_
                       _%tl173585174504%_)
                      (_%__match178286178287%_
                       _%e173553174422%_
                       _%hd173554174425%_
                       _%tl173555174427%_
                       _%e173556174430%_
                       _%hd173557174433%_
                       _%tl173558174435%_
                       _%e173559174438%_
                       _%hd173560174441%_
                       _%tl173561174443%_
                       _%e173562174446%_
                       _%hd173563174449%_
                       _%tl173564174451%_
                       _%e173565174454%_
                       _%hd173566174457%_
                       _%tl173567174459%_
                       _%e173568174462%_
                       _%hd173569174465%_
                       _%tl173570174467%_
                       _%e173571174470%_
                       _%hd173572174473%_
                       _%tl173573174475%_
                       _%e173574174478%_
                       _%hd173575174481%_
                       _%tl173576174483%_
                       _%e173577174486%_
                       _%hd173578174489%_
                       _%tl173579174491%_
                       _%e173580174494%_
                       _%hd173581174497%_
                       _%tl173582174499%_))))
              (_%__match178286178287%_
               _%e173553174422%_
               _%hd173554174425%_
               _%tl173555174427%_
               _%e173556174430%_
               _%hd173557174433%_
               _%tl173558174435%_
               _%e173559174438%_
               _%hd173560174441%_
               _%tl173561174443%_
               _%e173562174446%_
               _%hd173563174449%_
               _%tl173564174451%_
               _%e173565174454%_
               _%hd173566174457%_
               _%tl173567174459%_
               _%e173568174462%_
               _%hd173569174465%_
               _%tl173570174467%_
               _%e173571174470%_
               _%hd173572174473%_
               _%tl173573174475%_
               _%e173574174478%_
               _%hd173575174481%_
               _%tl173576174483%_
               _%e173577174486%_
               _%hd173578174489%_
               _%tl173579174491%_
               _%e173580174494%_
               _%hd173581174497%_
               _%tl173582174499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match178490178491%_
                                                   _%e173553174422%_
                                                   _%hd173554174425%_
                                                   _%tl173555174427%_
                                                   _%e173556174430%_
                                                   _%hd173557174433%_
                                                   _%tl173558174435%_
                                                   _%e173559174438%_
                                                   _%hd173560174441%_
                                                   _%tl173561174443%_
                                                   _%e173562174446%_
                                                   _%hd173563174449%_
                                                   _%tl173564174451%_
                                                   _%e173565174454%_
                                                   _%hd173566174457%_
                                                   _%tl173567174459%_
                                                   _%e173568174462%_
                                                   _%hd173569174465%_
                                                   _%tl173570174467%_
                                                   _%e173571174470%_
                                                   _%hd173572174473%_
                                                   _%tl173573174475%_
                                                   _%e173574174478%_
                                                   _%hd173575174481%_
                                                   _%tl173576174483%_))))
                                          (_%__match178490178491%_
                                           _%e173553174422%_
                                           _%hd173554174425%_
                                           _%tl173555174427%_
                                           _%e173556174430%_
                                           _%hd173557174433%_
                                           _%tl173558174435%_
                                           _%e173559174438%_
                                           _%hd173560174441%_
                                           _%tl173561174443%_
                                           _%e173562174446%_
                                           _%hd173563174449%_
                                           _%tl173564174451%_
                                           _%e173565174454%_
                                           _%hd173566174457%_
                                           _%tl173567174459%_
                                           _%e173568174462%_
                                           _%hd173569174465%_
                                           _%tl173570174467%_
                                           _%e173571174470%_
                                           _%hd173572174473%_
                                           _%tl173573174475%_
                                           _%e173574174478%_
                                           _%hd173575174481%_
                                           _%tl173576174483%_))
                                      (_%__match178166178167%_
                                       _%e173553174422%_
                                       _%hd173554174425%_
                                       _%tl173555174427%_
                                       _%e173556174430%_
                                       _%hd173557174433%_
                                       _%tl173558174435%_
                                       _%e173559174438%_
                                       _%hd173560174441%_
                                       _%tl173561174443%_
                                       _%e173562174446%_
                                       _%hd173563174449%_
                                       _%tl173564174451%_
                                       _%e173565174454%_
                                       _%hd173566174457%_
                                       _%tl173567174459%_
                                       _%e173568174462%_
                                       _%hd173569174465%_
                                       _%tl173570174467%_
                                       _%e173571174470%_
                                       _%hd173572174473%_
                                       _%tl173573174475%_
                                       _%e173574174478%_
                                       _%hd173575174481%_
                                       _%tl173576174483%_
                                       _%e173577174486%_
                                       _%hd173578174489%_
                                       _%tl173579174491%_))
                                  (_%__match178490178491%_
                                   _%e173553174422%_
                                   _%hd173554174425%_
                                   _%tl173555174427%_
                                   _%e173556174430%_
                                   _%hd173557174433%_
                                   _%tl173558174435%_
                                   _%e173559174438%_
                                   _%hd173560174441%_
                                   _%tl173561174443%_
                                   _%e173562174446%_
                                   _%hd173563174449%_
                                   _%tl173564174451%_
                                   _%e173565174454%_
                                   _%hd173566174457%_
                                   _%tl173567174459%_
                                   _%e173568174462%_
                                   _%hd173569174465%_
                                   _%tl173570174467%_
                                   _%e173571174470%_
                                   _%hd173572174473%_
                                   _%tl173573174475%_
                                   _%e173574174478%_
                                   _%hd173575174481%_
                                   _%tl173576174483%_))))
                          (_%__match178490178491%_
                           _%e173553174422%_
                           _%hd173554174425%_
                           _%tl173555174427%_
                           _%e173556174430%_
                           _%hd173557174433%_
                           _%tl173558174435%_
                           _%e173559174438%_
                           _%hd173560174441%_
                           _%tl173561174443%_
                           _%e173562174446%_
                           _%hd173563174449%_
                           _%tl173564174451%_
                           _%e173565174454%_
                           _%hd173566174457%_
                           _%tl173567174459%_
                           _%e173568174462%_
                           _%hd173569174465%_
                           _%tl173570174467%_
                           _%e173571174470%_
                           _%hd173572174473%_
                           _%tl173573174475%_
                           _%e173574174478%_
                           _%hd173575174481%_
                           _%tl173576174483%_))))
                  (_%__match178428178429%_
                   _%e173553174422%_
                   _%hd173554174425%_
                   _%tl173555174427%_
                   _%e173556174430%_
                   _%hd173557174433%_
                   _%tl173558174435%_
                   _%e173559174438%_
                   _%hd173560174441%_
                   _%tl173561174443%_
                   _%e173562174446%_
                   _%hd173563174449%_
                   _%tl173564174451%_
                   _%e173565174454%_
                   _%hd173566174457%_
                   _%tl173567174459%_
                   _%e173568174462%_
                   _%hd173569174465%_
                   _%tl173570174467%_
                   _%e173571174470%_
                   _%hd173572174473%_
                   _%tl173573174475%_))
              (_%__kont178011178012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont178011178012%_))
                                          (_%__kont178011178012%_))
                                      (_%__kont178011178012%_))))
                              (_%__kont178011178012%_))))
                      (_%__kont178011178012%_))
                  (_%__kont178011178012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178011178012%_))
                                              (_%__kont178011178012%_))
                                          (_%__kont178011178012%_))))
                                  (_%__kont178011178012%_))))
                          (_%__kont178011178012%_))))
                  (_%__kont178011178012%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self172477%_ _%stx172478%_)
        (letrec ((_%force-e172480%_
                  (lambda (_%target173536%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target173536%_ '()))
                                      '()))))))
          (let* ((_%__stx178495178496%_ _%stx172478%_)
                 (_%g172488172710%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx178495178496%_)))))
            (let ((_%__kont178497178498%_
                   (lambda (_%L173482%_ _%L173483%_ _%L173484%_ _%L173485%_)
                     (let ((_%$method173530%_
                            (let ((__tmp179126
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172477%_ 'methods)))
                                  (__tmp179125
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173483%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179126 __tmp179125)))
                           (_%args173531%_
                            (map (lambda (_%g173518173520%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172477%_
                                      _%g173518173520%_)))
                                 (let ((__tmp179127
                                        (lambda (_%g173522173525%_
                                                 _%g173523173527%_)
                                          (cons _%g173522173525%_
                                                _%g173523173527%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179127 '() _%L173482%_)))))
                       (let ((__tmp179128
                              (cons '%#call
                                    (cons (_%force-e172480%_ _%$method173530%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172477%_
                                                               'receiver))
                                                            '()))
                                                _%args173531%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179128 _%stx172478%_)))))
                  (_%__kont178501178502%_
                   (lambda (_%L173314%_
                            _%L173315%_
                            _%L173316%_
                            _%L173317%_
                            _%L173318%_)
                     (let ((_%$method173370%_
                            (let ((__tmp179130
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172477%_ 'methods)))
                                  (__tmp179129
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173315%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179130 __tmp179129)))
                           (_%args173371%_
                            (map (lambda (_%g173358173360%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172477%_
                                      _%g173358173360%_)))
                                 (let ((__tmp179131
                                        (lambda (_%g173362173365%_
                                                 _%g173363173367%_)
                                          (cons _%g173362173365%_
                                                _%g173363173367%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179131 '() _%L173314%_)))))
                       (let ((__tmp179132
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e172480%_
                                                 _%$method173370%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172477%_ 'receiver))
                          '()))
              _%args173371%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179132 _%stx172478%_)))))
                  (_%__kont178505178506%_
                   (lambda (_%L173145%_ _%L173146%_ _%L173147%_)
                     (let* ((_%$field173179%_
                             (let ((__tmp179134
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self172477%_ 'slots)))
                                   (__tmp179133
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L173145%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp179134 __tmp179133)))
                            (__tmp179135
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self172477%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field173179%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self172477%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp179135 _%stx172478%_))))
                  (_%__kont178507178508%_
                   (lambda (_%L173019%_ _%L173020%_ _%L173021%_ _%L173022%_)
                     (let ((_%$field173057%_
                            (let ((__tmp179137
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172477%_ 'slots)))
                                  (__tmp179136
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173020%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179137 __tmp179136)))
                           (_%expr173058%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self172477%_ _%L173019%_))))
                       (let ((__tmp179138
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self172477%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field173057%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172477%_ 'receiver))
                          '()))
              (cons _%expr173058%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179138 _%stx172478%_)))))
                  (_%__kont178509178510%_
                   (lambda (_%L172891%_ _%L172892%_)
                     (let* ((_%accessor172914%_
                             (let ((__tmp179139
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172892%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179139)))
                            (_%klass172916%_
                             (let ((__tmp179140
                                    (##structure-ref
                                     _%accessor172914%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172478%_
                                __tmp179140)))
                            (_%slot172918%_
                             (##structure-ref
                              _%accessor172914%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor172914%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass172916%_
                                      _%slot172918%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass172916%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx172478%_
                           (let* ((_%$field172924%_
                                   (let ((__tmp179141
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172477%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179141 _%slot172918%_)))
                                  (__tmp179142
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172477%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field172924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172477%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179142
                              _%stx172478%_))))))
                  (_%__kont178511178512%_
                   (lambda (_%L172786%_ _%L172787%_ _%L172788%_)
                     (let* ((_%mutator172816%_
                             (let ((__tmp179143
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172788%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179143)))
                            (_%klass172818%_
                             (let ((__tmp179144
                                    (##structure-ref
                                     _%mutator172816%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172478%_
                                __tmp179144)))
                            (_%slot172820%_
                             (##structure-ref
                              _%mutator172816%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr172822%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self172477%_ _%L172786%_))))
                       (if (if (##structure-ref
                                _%mutator172816%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass172818%_
                                      _%slot172820%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass172818%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp179145
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L172788%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L172787%_
                                                                '()))
                                                    (cons _%expr172822%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179145 _%stx172478%_))
                           (let* ((_%$field172828%_
                                   (let ((__tmp179146
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172477%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179146 _%slot172820%_)))
                                  (__tmp179147
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172477%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field172828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172477%_ 'receiver))
                               '()))
                   (cons _%expr172822%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179147
                              _%stx172478%_))))))
                  (_%__kont178513178514%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self172477%_ _%stx172478%_)))))
              (let* ((_%__match178994178995%_
                      (lambda (_%e172682172722%_
                               _%hd172683172725%_
                               _%tl172684172727%_
                               _%e172685172730%_
                               _%hd172686172733%_
                               _%tl172687172735%_
                               _%e172688172738%_
                               _%hd172689172741%_
                               _%tl172690172743%_
                               _%e172691172746%_
                               _%hd172692172749%_
                               _%tl172693172751%_
                               _%e172694172754%_
                               _%hd172695172757%_
                               _%tl172696172759%_
                               _%e172697172762%_
                               _%hd172698172765%_
                               _%tl172699172767%_
                               _%e172700172770%_
                               _%hd172701172773%_
                               _%tl172702172775%_
                               _%e172703172778%_
                               _%hd172704172781%_
                               _%tl172705172783%_)
                        (let ((_%L172786%_ _%hd172704172781%_)
                              (_%L172787%_ _%hd172701172773%_)
                              (_%L172788%_ _%hd172692172749%_))
                          (if (and (let ((__tmp179148
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172477%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172787%_
                                      __tmp179148))
                                   (let ((__tmp179149
                                          (let ((__tmp179150
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172788%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179150))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179149
                                      'gxc#!mutator::t)))
                              (_%__kont178511178512%_
                               _%L172786%_
                               _%L172787%_
                               _%L172788%_)
                              (_%__kont178513178514%_)))))
                     (_%__match178992178993%_
                      (lambda (_%e172682172722%_
                               _%hd172683172725%_
                               _%tl172684172727%_
                               _%e172685172730%_
                               _%hd172686172733%_
                               _%tl172687172735%_
                               _%e172688172738%_
                               _%hd172689172741%_
                               _%tl172690172743%_
                               _%e172691172746%_
                               _%hd172692172749%_
                               _%tl172693172751%_
                               _%e172694172754%_
                               _%hd172695172757%_
                               _%tl172696172759%_
                               _%e172697172762%_
                               _%hd172698172765%_
                               _%tl172699172767%_
                               _%e172700172770%_
                               _%hd172701172773%_
                               _%tl172702172775%_
                               _%e172703172778%_
                               _%hd172704172781%_
                               _%tl172705172783%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172705172783%_))
                            (_%__match178994178995%_
                             _%e172682172722%_
                             _%hd172683172725%_
                             _%tl172684172727%_
                             _%e172685172730%_
                             _%hd172686172733%_
                             _%tl172687172735%_
                             _%e172688172738%_
                             _%hd172689172741%_
                             _%tl172690172743%_
                             _%e172691172746%_
                             _%hd172692172749%_
                             _%tl172693172751%_
                             _%e172694172754%_
                             _%hd172695172757%_
                             _%tl172696172759%_
                             _%e172697172762%_
                             _%hd172698172765%_
                             _%tl172699172767%_
                             _%e172700172770%_
                             _%hd172701172773%_
                             _%tl172702172775%_
                             _%e172703172778%_
                             _%hd172704172781%_
                             _%tl172705172783%_)
                            (_%__kont178513178514%_))))
                     (_%__match178986178987%_
                      (lambda (_%e172682172722%_
                               _%hd172683172725%_
                               _%tl172684172727%_
                               _%e172685172730%_
                               _%hd172686172733%_
                               _%tl172687172735%_
                               _%e172688172738%_
                               _%hd172689172741%_
                               _%tl172690172743%_
                               _%e172691172746%_
                               _%hd172692172749%_
                               _%tl172693172751%_
                               _%e172694172754%_
                               _%hd172695172757%_
                               _%tl172696172759%_
                               _%e172697172762%_
                               _%hd172698172765%_
                               _%tl172699172767%_
                               _%e172700172770%_
                               _%hd172701172773%_
                               _%tl172702172775%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172696172759%_))
                            (let ((_%e172703172778%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172696172759%_))))
                              (let ((_%tl172705172783%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172703172778%_)))
                                    (_%hd172704172781%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172703172778%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172705172783%_))
                                    (_%__match178994178995%_
                                     _%e172682172722%_
                                     _%hd172683172725%_
                                     _%tl172684172727%_
                                     _%e172685172730%_
                                     _%hd172686172733%_
                                     _%tl172687172735%_
                                     _%e172688172738%_
                                     _%hd172689172741%_
                                     _%tl172690172743%_
                                     _%e172691172746%_
                                     _%hd172692172749%_
                                     _%tl172693172751%_
                                     _%e172694172754%_
                                     _%hd172695172757%_
                                     _%tl172696172759%_
                                     _%e172697172762%_
                                     _%hd172698172765%_
                                     _%tl172699172767%_
                                     _%e172700172770%_
                                     _%hd172701172773%_
                                     _%tl172702172775%_
                                     _%e172703172778%_
                                     _%hd172704172781%_
                                     _%tl172705172783%_)
                                    (_%__kont178513178514%_))))
                            (_%__kont178513178514%_))))
                     (_%__match178932178933%_
                      (lambda (_%e172658172835%_
                               _%hd172659172838%_
                               _%tl172660172840%_
                               _%e172661172843%_
                               _%hd172662172846%_
                               _%tl172663172848%_
                               _%e172664172851%_
                               _%hd172665172854%_
                               _%tl172666172856%_
                               _%e172667172859%_
                               _%hd172668172862%_
                               _%tl172669172864%_
                               _%e172670172867%_
                               _%hd172671172870%_
                               _%tl172672172872%_
                               _%e172673172875%_
                               _%hd172674172878%_
                               _%tl172675172880%_
                               _%e172676172883%_
                               _%hd172677172886%_
                               _%tl172678172888%_)
                        (let ((_%L172891%_ _%hd172677172886%_)
                              (_%L172892%_ _%hd172668172862%_))
                          (if (and (let ((__tmp179151
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172477%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172891%_
                                      __tmp179151))
                                   (let ((__tmp179152
                                          (let ((__tmp179153
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172892%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179153))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179152
                                      'gxc#!accessor::t)))
                              (_%__kont178509178510%_ _%L172891%_ _%L172892%_)
                              (_%__kont178513178514%_)))))
                     (_%__match178930178931%_
                      (lambda (_%e172658172835%_
                               _%hd172659172838%_
                               _%tl172660172840%_
                               _%e172661172843%_
                               _%hd172662172846%_
                               _%tl172663172848%_
                               _%e172664172851%_
                               _%hd172665172854%_
                               _%tl172666172856%_
                               _%e172667172859%_
                               _%hd172668172862%_
                               _%tl172669172864%_
                               _%e172670172867%_
                               _%hd172671172870%_
                               _%tl172672172872%_
                               _%e172673172875%_
                               _%hd172674172878%_
                               _%tl172675172880%_
                               _%e172676172883%_
                               _%hd172677172886%_
                               _%tl172678172888%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172672172872%_))
                            (_%__match178932178933%_
                             _%e172658172835%_
                             _%hd172659172838%_
                             _%tl172660172840%_
                             _%e172661172843%_
                             _%hd172662172846%_
                             _%tl172663172848%_
                             _%e172664172851%_
                             _%hd172665172854%_
                             _%tl172666172856%_
                             _%e172667172859%_
                             _%hd172668172862%_
                             _%tl172669172864%_
                             _%e172670172867%_
                             _%hd172671172870%_
                             _%tl172672172872%_
                             _%e172673172875%_
                             _%hd172674172878%_
                             _%tl172675172880%_
                             _%e172676172883%_
                             _%hd172677172886%_
                             _%tl172678172888%_)
                            (_%__match178986178987%_
                             _%e172658172835%_
                             _%hd172659172838%_
                             _%tl172660172840%_
                             _%e172661172843%_
                             _%hd172662172846%_
                             _%tl172663172848%_
                             _%e172664172851%_
                             _%hd172665172854%_
                             _%tl172666172856%_
                             _%e172667172859%_
                             _%hd172668172862%_
                             _%tl172669172864%_
                             _%e172670172867%_
                             _%hd172671172870%_
                             _%tl172672172872%_
                             _%e172673172875%_
                             _%hd172674172878%_
                             _%tl172675172880%_
                             _%e172676172883%_
                             _%hd172677172886%_
                             _%tl172678172888%_))))
                     (_%__match178876178877%_
                      (lambda (_%e172623172931%_
                               _%hd172624172934%_
                               _%tl172625172936%_
                               _%e172626172939%_
                               _%hd172627172942%_
                               _%tl172628172944%_
                               _%e172629172947%_
                               _%hd172630172950%_
                               _%tl172631172952%_
                               _%e172632172955%_
                               _%hd172633172958%_
                               _%tl172634172960%_
                               _%e172635172963%_
                               _%hd172636172966%_
                               _%tl172637172968%_
                               _%e172638172971%_
                               _%hd172639172974%_
                               _%tl172640172976%_
                               _%e172641172979%_
                               _%hd172642172982%_
                               _%tl172643172984%_
                               _%e172644172987%_
                               _%hd172645172990%_
                               _%tl172646172992%_
                               _%e172647172995%_
                               _%hd172648172998%_
                               _%tl172649173000%_
                               _%e172650173003%_
                               _%hd172651173006%_
                               _%tl172652173008%_
                               _%e172653173011%_
                               _%hd172654173014%_
                               _%tl172655173016%_)
                        (let ((_%L173019%_ _%hd172654173014%_)
                              (_%L173020%_ _%hd172651173006%_)
                              (_%L173021%_ _%hd172642172982%_)
                              (_%L173022%_ _%hd172633172958%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173022%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173022%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp179154
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172477%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173021%_
                                      __tmp179154)))
                              (_%__kont178507178508%_
                               _%L173019%_
                               _%L173020%_
                               _%L173021%_
                               _%L173022%_)
                              (_%__kont178513178514%_)))))
                     (_%__match178868178869%_
                      (lambda (_%e172623172931%_
                               _%hd172624172934%_
                               _%tl172625172936%_
                               _%e172626172939%_
                               _%hd172627172942%_
                               _%tl172628172944%_
                               _%e172629172947%_
                               _%hd172630172950%_
                               _%tl172631172952%_
                               _%e172632172955%_
                               _%hd172633172958%_
                               _%tl172634172960%_
                               _%e172635172963%_
                               _%hd172636172966%_
                               _%tl172637172968%_
                               _%e172638172971%_
                               _%hd172639172974%_
                               _%tl172640172976%_
                               _%e172641172979%_
                               _%hd172642172982%_
                               _%tl172643172984%_
                               _%e172644172987%_
                               _%hd172645172990%_
                               _%tl172646172992%_
                               _%e172647172995%_
                               _%hd172648172998%_
                               _%tl172649173000%_
                               _%e172650173003%_
                               _%hd172651173006%_
                               _%tl172652173008%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172646172992%_))
                            (let ((_%e172653173011%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172646172992%_))))
                              (let ((_%tl172655173016%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172653173011%_)))
                                    (_%hd172654173014%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172653173011%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172655173016%_))
                                    (_%__match178876178877%_
                                     _%e172623172931%_
                                     _%hd172624172934%_
                                     _%tl172625172936%_
                                     _%e172626172939%_
                                     _%hd172627172942%_
                                     _%tl172628172944%_
                                     _%e172629172947%_
                                     _%hd172630172950%_
                                     _%tl172631172952%_
                                     _%e172632172955%_
                                     _%hd172633172958%_
                                     _%tl172634172960%_
                                     _%e172635172963%_
                                     _%hd172636172966%_
                                     _%tl172637172968%_
                                     _%e172638172971%_
                                     _%hd172639172974%_
                                     _%tl172640172976%_
                                     _%e172641172979%_
                                     _%hd172642172982%_
                                     _%tl172643172984%_
                                     _%e172644172987%_
                                     _%hd172645172990%_
                                     _%tl172646172992%_
                                     _%e172647172995%_
                                     _%hd172648172998%_
                                     _%tl172649173000%_
                                     _%e172650173003%_
                                     _%hd172651173006%_
                                     _%tl172652173008%_
                                     _%e172653173011%_
                                     _%hd172654173014%_
                                     _%tl172655173016%_)
                                    (_%__kont178513178514%_))))
                            (_%__match178992178993%_
                             _%e172623172931%_
                             _%hd172624172934%_
                             _%tl172625172936%_
                             _%e172626172939%_
                             _%hd172627172942%_
                             _%tl172628172944%_
                             _%e172629172947%_
                             _%hd172630172950%_
                             _%tl172631172952%_
                             _%e172632172955%_
                             _%hd172633172958%_
                             _%tl172634172960%_
                             _%e172635172963%_
                             _%hd172636172966%_
                             _%tl172637172968%_
                             _%e172638172971%_
                             _%hd172639172974%_
                             _%tl172640172976%_
                             _%e172641172979%_
                             _%hd172642172982%_
                             _%tl172643172984%_
                             _%e172644172987%_
                             _%hd172645172990%_
                             _%tl172646172992%_))))
                     (_%__match178790178791%_
                      (lambda (_%e172589173065%_
                               _%hd172590173068%_
                               _%tl172591173070%_
                               _%e172592173073%_
                               _%hd172593173076%_
                               _%tl172594173078%_
                               _%e172595173081%_
                               _%hd172596173084%_
                               _%tl172597173086%_
                               _%e172598173089%_
                               _%hd172599173092%_
                               _%tl172600173094%_
                               _%e172601173097%_
                               _%hd172602173100%_
                               _%tl172603173102%_
                               _%e172604173105%_
                               _%hd172605173108%_
                               _%tl172606173110%_
                               _%e172607173113%_
                               _%hd172608173116%_
                               _%tl172609173118%_
                               _%e172610173121%_
                               _%hd172611173124%_
                               _%tl172612173126%_
                               _%e172613173129%_
                               _%hd172614173132%_
                               _%tl172615173134%_
                               _%e172616173137%_
                               _%hd172617173140%_
                               _%tl172618173142%_)
                        (let ((_%L173145%_ _%hd172617173140%_)
                              (_%L173146%_ _%hd172608173116%_)
                              (_%L173147%_ _%hd172599173092%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173147%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173147%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp179155
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172477%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173146%_
                                      __tmp179155)))
                              (_%__kont178505178506%_
                               _%L173145%_
                               _%L173146%_
                               _%L173147%_)
                              (_%__match178994178995%_
                               _%e172589173065%_
                               _%hd172590173068%_
                               _%tl172591173070%_
                               _%e172592173073%_
                               _%hd172593173076%_
                               _%tl172594173078%_
                               _%e172595173081%_
                               _%hd172596173084%_
                               _%tl172597173086%_
                               _%e172598173089%_
                               _%hd172599173092%_
                               _%tl172600173094%_
                               _%e172601173097%_
                               _%hd172602173100%_
                               _%tl172603173102%_
                               _%e172604173105%_
                               _%hd172605173108%_
                               _%tl172606173110%_
                               _%e172607173113%_
                               _%hd172608173116%_
                               _%tl172609173118%_
                               _%e172610173121%_
                               _%hd172611173124%_
                               _%tl172612173126%_)))))
                     (_%__match178788178789%_
                      (lambda (_%e172589173065%_
                               _%hd172590173068%_
                               _%tl172591173070%_
                               _%e172592173073%_
                               _%hd172593173076%_
                               _%tl172594173078%_
                               _%e172595173081%_
                               _%hd172596173084%_
                               _%tl172597173086%_
                               _%e172598173089%_
                               _%hd172599173092%_
                               _%tl172600173094%_
                               _%e172601173097%_
                               _%hd172602173100%_
                               _%tl172603173102%_
                               _%e172604173105%_
                               _%hd172605173108%_
                               _%tl172606173110%_
                               _%e172607173113%_
                               _%hd172608173116%_
                               _%tl172609173118%_
                               _%e172610173121%_
                               _%hd172611173124%_
                               _%tl172612173126%_
                               _%e172613173129%_
                               _%hd172614173132%_
                               _%tl172615173134%_
                               _%e172616173137%_
                               _%hd172617173140%_
                               _%tl172618173142%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172612173126%_))
                            (_%__match178790178791%_
                             _%e172589173065%_
                             _%hd172590173068%_
                             _%tl172591173070%_
                             _%e172592173073%_
                             _%hd172593173076%_
                             _%tl172594173078%_
                             _%e172595173081%_
                             _%hd172596173084%_
                             _%tl172597173086%_
                             _%e172598173089%_
                             _%hd172599173092%_
                             _%tl172600173094%_
                             _%e172601173097%_
                             _%hd172602173100%_
                             _%tl172603173102%_
                             _%e172604173105%_
                             _%hd172605173108%_
                             _%tl172606173110%_
                             _%e172607173113%_
                             _%hd172608173116%_
                             _%tl172609173118%_
                             _%e172610173121%_
                             _%hd172611173124%_
                             _%tl172612173126%_
                             _%e172613173129%_
                             _%hd172614173132%_
                             _%tl172615173134%_
                             _%e172616173137%_
                             _%hd172617173140%_
                             _%tl172618173142%_)
                            (_%__match178868178869%_
                             _%e172589173065%_
                             _%hd172590173068%_
                             _%tl172591173070%_
                             _%e172592173073%_
                             _%hd172593173076%_
                             _%tl172594173078%_
                             _%e172595173081%_
                             _%hd172596173084%_
                             _%tl172597173086%_
                             _%e172598173089%_
                             _%hd172599173092%_
                             _%tl172600173094%_
                             _%e172601173097%_
                             _%hd172602173100%_
                             _%tl172603173102%_
                             _%e172604173105%_
                             _%hd172605173108%_
                             _%tl172606173110%_
                             _%e172607173113%_
                             _%hd172608173116%_
                             _%tl172609173118%_
                             _%e172610173121%_
                             _%hd172611173124%_
                             _%tl172612173126%_
                             _%e172613173129%_
                             _%hd172614173132%_
                             _%tl172615173134%_
                             _%e172616173137%_
                             _%hd172617173140%_
                             _%tl172618173142%_))))
                     (_%__match178778178779%_
                      (lambda (_%e172589173065%_
                               _%hd172590173068%_
                               _%tl172591173070%_
                               _%e172592173073%_
                               _%hd172593173076%_
                               _%tl172594173078%_
                               _%e172595173081%_
                               _%hd172596173084%_
                               _%tl172597173086%_
                               _%e172598173089%_
                               _%hd172599173092%_
                               _%tl172600173094%_
                               _%e172601173097%_
                               _%hd172602173100%_
                               _%tl172603173102%_
                               _%e172604173105%_
                               _%hd172605173108%_
                               _%tl172606173110%_
                               _%e172607173113%_
                               _%hd172608173116%_
                               _%tl172609173118%_
                               _%e172610173121%_
                               _%hd172611173124%_
                               _%tl172612173126%_
                               _%e172613173129%_
                               _%hd172614173132%_
                               _%tl172615173134%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd172614173132%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172615173134%_))
                                (let ((_%e172616173137%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172615173134%_))))
                                  (let ((_%tl172618173142%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172616173137%_)))
                                        (_%hd172617173140%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172616173137%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172618173142%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172612173126%_))
                                            (_%__match178790178791%_
                                             _%e172589173065%_
                                             _%hd172590173068%_
                                             _%tl172591173070%_
                                             _%e172592173073%_
                                             _%hd172593173076%_
                                             _%tl172594173078%_
                                             _%e172595173081%_
                                             _%hd172596173084%_
                                             _%tl172597173086%_
                                             _%e172598173089%_
                                             _%hd172599173092%_
                                             _%tl172600173094%_
                                             _%e172601173097%_
                                             _%hd172602173100%_
                                             _%tl172603173102%_
                                             _%e172604173105%_
                                             _%hd172605173108%_
                                             _%tl172606173110%_
                                             _%e172607173113%_
                                             _%hd172608173116%_
                                             _%tl172609173118%_
                                             _%e172610173121%_
                                             _%hd172611173124%_
                                             _%tl172612173126%_
                                             _%e172613173129%_
                                             _%hd172614173132%_
                                             _%tl172615173134%_
                                             _%e172616173137%_
                                             _%hd172617173140%_
                                             _%tl172618173142%_)
                                            (_%__match178868178869%_
                                             _%e172589173065%_
                                             _%hd172590173068%_
                                             _%tl172591173070%_
                                             _%e172592173073%_
                                             _%hd172593173076%_
                                             _%tl172594173078%_
                                             _%e172595173081%_
                                             _%hd172596173084%_
                                             _%tl172597173086%_
                                             _%e172598173089%_
                                             _%hd172599173092%_
                                             _%tl172600173094%_
                                             _%e172601173097%_
                                             _%hd172602173100%_
                                             _%tl172603173102%_
                                             _%e172604173105%_
                                             _%hd172605173108%_
                                             _%tl172606173110%_
                                             _%e172607173113%_
                                             _%hd172608173116%_
                                             _%tl172609173118%_
                                             _%e172610173121%_
                                             _%hd172611173124%_
                                             _%tl172612173126%_
                                             _%e172613173129%_
                                             _%hd172614173132%_
                                             _%tl172615173134%_
                                             _%e172616173137%_
                                             _%hd172617173140%_
                                             _%tl172618173142%_))
                                        (_%__match178992178993%_
                                         _%e172589173065%_
                                         _%hd172590173068%_
                                         _%tl172591173070%_
                                         _%e172592173073%_
                                         _%hd172593173076%_
                                         _%tl172594173078%_
                                         _%e172595173081%_
                                         _%hd172596173084%_
                                         _%tl172597173086%_
                                         _%e172598173089%_
                                         _%hd172599173092%_
                                         _%tl172600173094%_
                                         _%e172601173097%_
                                         _%hd172602173100%_
                                         _%tl172603173102%_
                                         _%e172604173105%_
                                         _%hd172605173108%_
                                         _%tl172606173110%_
                                         _%e172607173113%_
                                         _%hd172608173116%_
                                         _%tl172609173118%_
                                         _%e172610173121%_
                                         _%hd172611173124%_
                                         _%tl172612173126%_))))
                                (_%__match178992178993%_
                                 _%e172589173065%_
                                 _%hd172590173068%_
                                 _%tl172591173070%_
                                 _%e172592173073%_
                                 _%hd172593173076%_
                                 _%tl172594173078%_
                                 _%e172595173081%_
                                 _%hd172596173084%_
                                 _%tl172597173086%_
                                 _%e172598173089%_
                                 _%hd172599173092%_
                                 _%tl172600173094%_
                                 _%e172601173097%_
                                 _%hd172602173100%_
                                 _%tl172603173102%_
                                 _%e172604173105%_
                                 _%hd172605173108%_
                                 _%tl172606173110%_
                                 _%e172607173113%_
                                 _%hd172608173116%_
                                 _%tl172609173118%_
                                 _%e172610173121%_
                                 _%hd172611173124%_
                                 _%tl172612173126%_))
                            (_%__match178992178993%_
                             _%e172589173065%_
                             _%hd172590173068%_
                             _%tl172591173070%_
                             _%e172592173073%_
                             _%hd172593173076%_
                             _%tl172594173078%_
                             _%e172595173081%_
                             _%hd172596173084%_
                             _%tl172597173086%_
                             _%e172598173089%_
                             _%hd172599173092%_
                             _%tl172600173094%_
                             _%e172601173097%_
                             _%hd172602173100%_
                             _%tl172603173102%_
                             _%e172604173105%_
                             _%hd172605173108%_
                             _%tl172606173110%_
                             _%e172607173113%_
                             _%hd172608173116%_
                             _%tl172609173118%_
                             _%e172610173121%_
                             _%hd172611173124%_
                             _%tl172612173126%_))))
                     (_%__match178710178711%_
                      (lambda (_%e172538173186%_
                               _%hd172539173189%_
                               _%tl172540173191%_
                               _%e172541173194%_
                               _%hd172542173197%_
                               _%tl172543173199%_
                               _%e172544173202%_
                               _%hd172545173205%_
                               _%tl172546173207%_
                               _%e172547173210%_
                               _%hd172548173213%_
                               _%tl172549173215%_
                               _%e172550173218%_
                               _%hd172551173221%_
                               _%tl172552173223%_
                               _%e172553173226%_
                               _%hd172554173229%_
                               _%tl172555173231%_
                               _%e172556173234%_
                               _%hd172557173237%_
                               _%tl172558173239%_
                               _%e172559173242%_
                               _%hd172560173245%_
                               _%tl172561173247%_
                               _%e172562173250%_
                               _%hd172563173253%_
                               _%tl172564173255%_
                               _%e172565173258%_
                               _%hd172566173261%_
                               _%tl172567173263%_
                               _%e172568173266%_
                               _%hd172569173269%_
                               _%tl172570173271%_
                               _%e172571173274%_
                               _%hd172572173277%_
                               _%tl172573173279%_
                               _%e172574173282%_
                               _%hd172575173285%_
                               _%tl172576173287%_
                               _%__splice178503178504%_
                               _%target172577173290%_
                               _%tl172579173292%_)
                        (letrec ((_%loop172580173295%_
                                  (lambda (_%hd172578173298%_
                                           _%args172584173300%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172578173298%_))
                                        (let ((_%e172581173303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172578173298%_))))
                                          (let ((_%lp-tl172583173308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172581173303%_)))
                                                (_%lp-hd172582173306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172581173303%_))))
                                            (_%loop172580173295%_
                                             _%lp-tl172583173308%_
                                             (cons _%lp-hd172582173306%_
                                                   _%args172584173300%_))))
                                        (let ((_%args172585173311%_
                                               (reverse _%args172584173300%_)))
                                          (let ((_%L173314%_
                                                 _%args172585173311%_)
                                                (_%L173315%_
                                                 _%hd172575173285%_)
                                                (_%L173316%_
                                                 _%hd172566173261%_)
                                                (_%L173317%_
                                                 _%hd172557173237%_)
                                                (_%L173318%_
                                                 _%hd172548173213%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173318%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173317%_
                                                        'call-method))
                                                     (let ((__tmp179156
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172477%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173316%_
                                                        __tmp179156)))
                                                (_%__kont178501178502%_
                                                 _%L173314%_
                                                 _%L173315%_
                                                 _%L173316%_
                                                 _%L173317%_
                                                 _%L173318%_)
                                                (_%__kont178513178514%_))))))))
                          (_%loop172580173295%_ _%target172577173290%_ '()))))
                     (_%__match178668178669%_
                      (lambda (_%e172538173186%_
                               _%hd172539173189%_
                               _%tl172540173191%_
                               _%e172541173194%_
                               _%hd172542173197%_
                               _%tl172543173199%_
                               _%e172544173202%_
                               _%hd172545173205%_
                               _%tl172546173207%_
                               _%e172547173210%_
                               _%hd172548173213%_
                               _%tl172549173215%_
                               _%e172550173218%_
                               _%hd172551173221%_
                               _%tl172552173223%_
                               _%e172553173226%_
                               _%hd172554173229%_
                               _%tl172555173231%_
                               _%e172556173234%_
                               _%hd172557173237%_
                               _%tl172558173239%_
                               _%e172559173242%_
                               _%hd172560173245%_
                               _%tl172561173247%_
                               _%e172562173250%_
                               _%hd172563173253%_
                               _%tl172564173255%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd172563173253%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172564173255%_))
                                (let ((_%e172565173258%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172564173255%_))))
                                  (let ((_%tl172567173263%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172565173258%_)))
                                        (_%hd172566173261%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172565173258%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172567173263%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172561173247%_))
                                            (let ((_%e172568173266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172561173247%_))))
                                              (let ((_%tl172570173271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172568173266%_)))
                                                    (_%hd172569173269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172568173266%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd172569173269%_))
                                                    (let ((_%e172571173274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd172569173269%_))))
                                                      (let ((_%tl172573173279%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172571173274%_)))
                    (_%hd172572173277%_
                     (let () (declare (not safe)) (##car _%e172571173274%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd172572173277%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd172572173277%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172573173279%_))
                            (let ((_%e172574173282%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172573173279%_))))
                              (let ((_%tl172576173287%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172574173282%_)))
                                    (_%hd172575173285%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172574173282%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172576173287%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl172570173271%_))
                                        (let ((_%__splice178503178504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl172570173271%_
                                                  '0))))
                                          (let ((_%tl172579173292%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178503178504%_
                                                    '1)))
                                                (_%target172577173290%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178503178504%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl172579173292%_))
                                                (_%__match178710178711%_
                                                 _%e172538173186%_
                                                 _%hd172539173189%_
                                                 _%tl172540173191%_
                                                 _%e172541173194%_
                                                 _%hd172542173197%_
                                                 _%tl172543173199%_
                                                 _%e172544173202%_
                                                 _%hd172545173205%_
                                                 _%tl172546173207%_
                                                 _%e172547173210%_
                                                 _%hd172548173213%_
                                                 _%tl172549173215%_
                                                 _%e172550173218%_
                                                 _%hd172551173221%_
                                                 _%tl172552173223%_
                                                 _%e172553173226%_
                                                 _%hd172554173229%_
                                                 _%tl172555173231%_
                                                 _%e172556173234%_
                                                 _%hd172557173237%_
                                                 _%tl172558173239%_
                                                 _%e172559173242%_
                                                 _%hd172560173245%_
                                                 _%tl172561173247%_
                                                 _%e172562173250%_
                                                 _%hd172563173253%_
                                                 _%tl172564173255%_
                                                 _%e172565173258%_
                                                 _%hd172566173261%_
                                                 _%tl172567173263%_
                                                 _%e172568173266%_
                                                 _%hd172569173269%_
                                                 _%tl172570173271%_
                                                 _%e172571173274%_
                                                 _%hd172572173277%_
                                                 _%tl172573173279%_
                                                 _%e172574173282%_
                                                 _%hd172575173285%_
                                                 _%tl172576173287%_
                                                 _%__splice178503178504%_
                                                 _%target172577173290%_
                                                 _%tl172579173292%_)
                                                (_%__kont178513178514%_))))
                                        (_%__kont178513178514%_))
                                    (_%__kont178513178514%_))))
                            (_%__kont178513178514%_))
                        (_%__kont178513178514%_))
                    (_%__kont178513178514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178513178514%_))))
                                            (_%__match178992178993%_
                                             _%e172538173186%_
                                             _%hd172539173189%_
                                             _%tl172540173191%_
                                             _%e172541173194%_
                                             _%hd172542173197%_
                                             _%tl172543173199%_
                                             _%e172544173202%_
                                             _%hd172545173205%_
                                             _%tl172546173207%_
                                             _%e172547173210%_
                                             _%hd172548173213%_
                                             _%tl172549173215%_
                                             _%e172550173218%_
                                             _%hd172551173221%_
                                             _%tl172552173223%_
                                             _%e172553173226%_
                                             _%hd172554173229%_
                                             _%tl172555173231%_
                                             _%e172556173234%_
                                             _%hd172557173237%_
                                             _%tl172558173239%_
                                             _%e172559173242%_
                                             _%hd172560173245%_
                                             _%tl172561173247%_))
                                        (_%__match178992178993%_
                                         _%e172538173186%_
                                         _%hd172539173189%_
                                         _%tl172540173191%_
                                         _%e172541173194%_
                                         _%hd172542173197%_
                                         _%tl172543173199%_
                                         _%e172544173202%_
                                         _%hd172545173205%_
                                         _%tl172546173207%_
                                         _%e172547173210%_
                                         _%hd172548173213%_
                                         _%tl172549173215%_
                                         _%e172550173218%_
                                         _%hd172551173221%_
                                         _%tl172552173223%_
                                         _%e172553173226%_
                                         _%hd172554173229%_
                                         _%tl172555173231%_
                                         _%e172556173234%_
                                         _%hd172557173237%_
                                         _%tl172558173239%_
                                         _%e172559173242%_
                                         _%hd172560173245%_
                                         _%tl172561173247%_))))
                                (_%__match178992178993%_
                                 _%e172538173186%_
                                 _%hd172539173189%_
                                 _%tl172540173191%_
                                 _%e172541173194%_
                                 _%hd172542173197%_
                                 _%tl172543173199%_
                                 _%e172544173202%_
                                 _%hd172545173205%_
                                 _%tl172546173207%_
                                 _%e172547173210%_
                                 _%hd172548173213%_
                                 _%tl172549173215%_
                                 _%e172550173218%_
                                 _%hd172551173221%_
                                 _%tl172552173223%_
                                 _%e172553173226%_
                                 _%hd172554173229%_
                                 _%tl172555173231%_
                                 _%e172556173234%_
                                 _%hd172557173237%_
                                 _%tl172558173239%_
                                 _%e172559173242%_
                                 _%hd172560173245%_
                                 _%tl172561173247%_))
                            (_%__match178778178779%_
                             _%e172538173186%_
                             _%hd172539173189%_
                             _%tl172540173191%_
                             _%e172541173194%_
                             _%hd172542173197%_
                             _%tl172543173199%_
                             _%e172544173202%_
                             _%hd172545173205%_
                             _%tl172546173207%_
                             _%e172547173210%_
                             _%hd172548173213%_
                             _%tl172549173215%_
                             _%e172550173218%_
                             _%hd172551173221%_
                             _%tl172552173223%_
                             _%e172553173226%_
                             _%hd172554173229%_
                             _%tl172555173231%_
                             _%e172556173234%_
                             _%hd172557173237%_
                             _%tl172558173239%_
                             _%e172559173242%_
                             _%hd172560173245%_
                             _%tl172561173247%_
                             _%e172562173250%_
                             _%hd172563173253%_
                             _%tl172564173255%_))))
                     (_%__match178600178601%_
                      (lambda (_%e172494173378%_
                               _%hd172495173381%_
                               _%tl172496173383%_
                               _%e172497173386%_
                               _%hd172498173389%_
                               _%tl172499173391%_
                               _%e172500173394%_
                               _%hd172501173397%_
                               _%tl172502173399%_
                               _%e172503173402%_
                               _%hd172504173405%_
                               _%tl172505173407%_
                               _%e172506173410%_
                               _%hd172507173413%_
                               _%tl172508173415%_
                               _%e172509173418%_
                               _%hd172510173421%_
                               _%tl172511173423%_
                               _%e172512173426%_
                               _%hd172513173429%_
                               _%tl172514173431%_
                               _%e172515173434%_
                               _%hd172516173437%_
                               _%tl172517173439%_
                               _%e172518173442%_
                               _%hd172519173445%_
                               _%tl172520173447%_
                               _%e172521173450%_
                               _%hd172522173453%_
                               _%tl172523173455%_
                               _%__splice178499178500%_
                               _%target172524173458%_
                               _%tl172526173460%_)
                        (letrec ((_%loop172527173463%_
                                  (lambda (_%hd172525173466%_
                                           _%args172531173468%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172525173466%_))
                                        (let ((_%e172528173471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172525173466%_))))
                                          (let ((_%lp-tl172530173476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172528173471%_)))
                                                (_%lp-hd172529173474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172528173471%_))))
                                            (_%loop172527173463%_
                                             _%lp-tl172530173476%_
                                             (cons _%lp-hd172529173474%_
                                                   _%args172531173468%_))))
                                        (let ((_%args172532173479%_
                                               (reverse _%args172531173468%_)))
                                          (let ((_%L173482%_
                                                 _%args172532173479%_)
                                                (_%L173483%_
                                                 _%hd172522173453%_)
                                                (_%L173484%_
                                                 _%hd172513173429%_)
                                                (_%L173485%_
                                                 _%hd172504173405%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173485%_
                                                        'call-method))
                                                     (let ((__tmp179157
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172477%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173484%_
                                                        __tmp179157)))
                                                (_%__kont178497178498%_
                                                 _%L173482%_
                                                 _%L173483%_
                                                 _%L173484%_
                                                 _%L173485%_)
                                                (_%__match178788178789%_
                                                 _%e172494173378%_
                                                 _%hd172495173381%_
                                                 _%tl172496173383%_
                                                 _%e172497173386%_
                                                 _%hd172498173389%_
                                                 _%tl172499173391%_
                                                 _%e172500173394%_
                                                 _%hd172501173397%_
                                                 _%tl172502173399%_
                                                 _%e172503173402%_
                                                 _%hd172504173405%_
                                                 _%tl172505173407%_
                                                 _%e172506173410%_
                                                 _%hd172507173413%_
                                                 _%tl172508173415%_
                                                 _%e172509173418%_
                                                 _%hd172510173421%_
                                                 _%tl172511173423%_
                                                 _%e172512173426%_
                                                 _%hd172513173429%_
                                                 _%tl172514173431%_
                                                 _%e172515173434%_
                                                 _%hd172516173437%_
                                                 _%tl172517173439%_
                                                 _%e172518173442%_
                                                 _%hd172519173445%_
                                                 _%tl172520173447%_
                                                 _%e172521173450%_
                                                 _%hd172522173453%_
                                                 _%tl172523173455%_))))))))
                          (_%loop172527173463%_ _%target172524173458%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx178495178496%_))
                    (let ((_%e172494173378%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx178495178496%_))))
                      (let ((_%tl172496173383%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172494173378%_)))
                            (_%hd172495173381%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172494173378%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172496173383%_))
                            (let ((_%e172497173386%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172496173383%_))))
                              (let ((_%tl172499173391%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172497173386%_)))
                                    (_%hd172498173389%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172497173386%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172498173389%_))
                                    (let ((_%e172500173394%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172498173389%_))))
                                      (let ((_%tl172502173399%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172500173394%_)))
                                            (_%hd172501173397%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172500173394%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd172501173397%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd172501173397%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172502173399%_))
                                                    (let ((_%e172503173402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172502173399%_))))
                                                      (let ((_%tl172505173407%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172503173402%_)))
                    (_%hd172504173405%_
                     (let () (declare (not safe)) (##car _%e172503173402%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172505173407%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172499173391%_))
                        (let ((_%e172506173410%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172499173391%_))))
                          (let ((_%tl172508173415%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172506173410%_)))
                                (_%hd172507173413%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172506173410%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172507173413%_))
                                (let ((_%e172509173418%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172507173413%_))))
                                  (let ((_%tl172511173423%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172509173418%_)))
                                        (_%hd172510173421%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172509173418%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172510173421%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd172510173421%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172511173423%_))
                                                (let ((_%e172512173426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172511173423%_))))
                                                  (let ((_%tl172514173431%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172512173426%_)))
                                                        (_%hd172513173429%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172512173426%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172514173431%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172508173415%_))
                                                            (let ((_%e172515173434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172508173415%_))))
                      (let ((_%tl172517173439%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172515173434%_)))
                            (_%hd172516173437%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172515173434%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd172516173437%_))
                            (let ((_%e172518173442%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd172516173437%_))))
                              (let ((_%tl172520173447%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172518173442%_)))
                                    (_%hd172519173445%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172518173442%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd172519173445%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd172519173445%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172520173447%_))
                                            (let ((_%e172521173450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172520173447%_))))
                                              (let ((_%tl172523173455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172521173450%_)))
                                                    (_%hd172522173453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172521173450%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172523173455%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl172517173439%_))
                                                        (let ((_%__splice178499178500%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl172517173439%_ '0))))
                  (let ((_%tl172526173460%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178499178500%_ '1)))
                        (_%target172524173458%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178499178500%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl172526173460%_))
                        (_%__match178600178601%_
                         _%e172494173378%_
                         _%hd172495173381%_
                         _%tl172496173383%_
                         _%e172497173386%_
                         _%hd172498173389%_
                         _%tl172499173391%_
                         _%e172500173394%_
                         _%hd172501173397%_
                         _%tl172502173399%_
                         _%e172503173402%_
                         _%hd172504173405%_
                         _%tl172505173407%_
                         _%e172506173410%_
                         _%hd172507173413%_
                         _%tl172508173415%_
                         _%e172509173418%_
                         _%hd172510173421%_
                         _%tl172511173423%_
                         _%e172512173426%_
                         _%hd172513173429%_
                         _%tl172514173431%_
                         _%e172515173434%_
                         _%hd172516173437%_
                         _%tl172517173439%_
                         _%e172518173442%_
                         _%hd172519173445%_
                         _%tl172520173447%_
                         _%e172521173450%_
                         _%hd172522173453%_
                         _%tl172523173455%_
                         _%__splice178499178500%_
                         _%target172524173458%_
                         _%tl172526173460%_)
                        (_%__match178788178789%_
                         _%e172494173378%_
                         _%hd172495173381%_
                         _%tl172496173383%_
                         _%e172497173386%_
                         _%hd172498173389%_
                         _%tl172499173391%_
                         _%e172500173394%_
                         _%hd172501173397%_
                         _%tl172502173399%_
                         _%e172503173402%_
                         _%hd172504173405%_
                         _%tl172505173407%_
                         _%e172506173410%_
                         _%hd172507173413%_
                         _%tl172508173415%_
                         _%e172509173418%_
                         _%hd172510173421%_
                         _%tl172511173423%_
                         _%e172512173426%_
                         _%hd172513173429%_
                         _%tl172514173431%_
                         _%e172515173434%_
                         _%hd172516173437%_
                         _%tl172517173439%_
                         _%e172518173442%_
                         _%hd172519173445%_
                         _%tl172520173447%_
                         _%e172521173450%_
                         _%hd172522173453%_
                         _%tl172523173455%_))))
                (_%__match178788178789%_
                 _%e172494173378%_
                 _%hd172495173381%_
                 _%tl172496173383%_
                 _%e172497173386%_
                 _%hd172498173389%_
                 _%tl172499173391%_
                 _%e172500173394%_
                 _%hd172501173397%_
                 _%tl172502173399%_
                 _%e172503173402%_
                 _%hd172504173405%_
                 _%tl172505173407%_
                 _%e172506173410%_
                 _%hd172507173413%_
                 _%tl172508173415%_
                 _%e172509173418%_
                 _%hd172510173421%_
                 _%tl172511173423%_
                 _%e172512173426%_
                 _%hd172513173429%_
                 _%tl172514173431%_
                 _%e172515173434%_
                 _%hd172516173437%_
                 _%tl172517173439%_
                 _%e172518173442%_
                 _%hd172519173445%_
                 _%tl172520173447%_
                 _%e172521173450%_
                 _%hd172522173453%_
                 _%tl172523173455%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match178992178993%_
                                                     _%e172494173378%_
                                                     _%hd172495173381%_
                                                     _%tl172496173383%_
                                                     _%e172497173386%_
                                                     _%hd172498173389%_
                                                     _%tl172499173391%_
                                                     _%e172500173394%_
                                                     _%hd172501173397%_
                                                     _%tl172502173399%_
                                                     _%e172503173402%_
                                                     _%hd172504173405%_
                                                     _%tl172505173407%_
                                                     _%e172506173410%_
                                                     _%hd172507173413%_
                                                     _%tl172508173415%_
                                                     _%e172509173418%_
                                                     _%hd172510173421%_
                                                     _%tl172511173423%_
                                                     _%e172512173426%_
                                                     _%hd172513173429%_
                                                     _%tl172514173431%_
                                                     _%e172515173434%_
                                                     _%hd172516173437%_
                                                     _%tl172517173439%_))))
                                            (_%__match178992178993%_
                                             _%e172494173378%_
                                             _%hd172495173381%_
                                             _%tl172496173383%_
                                             _%e172497173386%_
                                             _%hd172498173389%_
                                             _%tl172499173391%_
                                             _%e172500173394%_
                                             _%hd172501173397%_
                                             _%tl172502173399%_
                                             _%e172503173402%_
                                             _%hd172504173405%_
                                             _%tl172505173407%_
                                             _%e172506173410%_
                                             _%hd172507173413%_
                                             _%tl172508173415%_
                                             _%e172509173418%_
                                             _%hd172510173421%_
                                             _%tl172511173423%_
                                             _%e172512173426%_
                                             _%hd172513173429%_
                                             _%tl172514173431%_
                                             _%e172515173434%_
                                             _%hd172516173437%_
                                             _%tl172517173439%_))
                                        (_%__match178668178669%_
                                         _%e172494173378%_
                                         _%hd172495173381%_
                                         _%tl172496173383%_
                                         _%e172497173386%_
                                         _%hd172498173389%_
                                         _%tl172499173391%_
                                         _%e172500173394%_
                                         _%hd172501173397%_
                                         _%tl172502173399%_
                                         _%e172503173402%_
                                         _%hd172504173405%_
                                         _%tl172505173407%_
                                         _%e172506173410%_
                                         _%hd172507173413%_
                                         _%tl172508173415%_
                                         _%e172509173418%_
                                         _%hd172510173421%_
                                         _%tl172511173423%_
                                         _%e172512173426%_
                                         _%hd172513173429%_
                                         _%tl172514173431%_
                                         _%e172515173434%_
                                         _%hd172516173437%_
                                         _%tl172517173439%_
                                         _%e172518173442%_
                                         _%hd172519173445%_
                                         _%tl172520173447%_))
                                    (_%__match178992178993%_
                                     _%e172494173378%_
                                     _%hd172495173381%_
                                     _%tl172496173383%_
                                     _%e172497173386%_
                                     _%hd172498173389%_
                                     _%tl172499173391%_
                                     _%e172500173394%_
                                     _%hd172501173397%_
                                     _%tl172502173399%_
                                     _%e172503173402%_
                                     _%hd172504173405%_
                                     _%tl172505173407%_
                                     _%e172506173410%_
                                     _%hd172507173413%_
                                     _%tl172508173415%_
                                     _%e172509173418%_
                                     _%hd172510173421%_
                                     _%tl172511173423%_
                                     _%e172512173426%_
                                     _%hd172513173429%_
                                     _%tl172514173431%_
                                     _%e172515173434%_
                                     _%hd172516173437%_
                                     _%tl172517173439%_))))
                            (_%__match178992178993%_
                             _%e172494173378%_
                             _%hd172495173381%_
                             _%tl172496173383%_
                             _%e172497173386%_
                             _%hd172498173389%_
                             _%tl172499173391%_
                             _%e172500173394%_
                             _%hd172501173397%_
                             _%tl172502173399%_
                             _%e172503173402%_
                             _%hd172504173405%_
                             _%tl172505173407%_
                             _%e172506173410%_
                             _%hd172507173413%_
                             _%tl172508173415%_
                             _%e172509173418%_
                             _%hd172510173421%_
                             _%tl172511173423%_
                             _%e172512173426%_
                             _%hd172513173429%_
                             _%tl172514173431%_
                             _%e172515173434%_
                             _%hd172516173437%_
                             _%tl172517173439%_))))
                    (_%__match178930178931%_
                     _%e172494173378%_
                     _%hd172495173381%_
                     _%tl172496173383%_
                     _%e172497173386%_
                     _%hd172498173389%_
                     _%tl172499173391%_
                     _%e172500173394%_
                     _%hd172501173397%_
                     _%tl172502173399%_
                     _%e172503173402%_
                     _%hd172504173405%_
                     _%tl172505173407%_
                     _%e172506173410%_
                     _%hd172507173413%_
                     _%tl172508173415%_
                     _%e172509173418%_
                     _%hd172510173421%_
                     _%tl172511173423%_
                     _%e172512173426%_
                     _%hd172513173429%_
                     _%tl172514173431%_))
                (_%__kont178513178514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont178513178514%_))
                                            (_%__kont178513178514%_))
                                        (_%__kont178513178514%_))))
                                (_%__kont178513178514%_))))
                        (_%__kont178513178514%_))
                    (_%__kont178513178514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178513178514%_))
                                                (_%__kont178513178514%_))
                                            (_%__kont178513178514%_))))
                                    (_%__kont178513178514%_))))
                            (_%__kont178513178514%_))))
                    (_%__kont178513178514%_))))))))))
