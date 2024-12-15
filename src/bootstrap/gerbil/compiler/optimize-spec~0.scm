(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1734225197)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp179009 (list gxc#::identity::t))
            (__tmp179008 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp179009
         '()
         __tmp179008
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args177806%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args177806%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp179010
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
        (__make-promise __tmp179010)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx177798%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self177801%_
                (let ((__obj179001
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj179001))
               (__tmp179011
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177801%_ _%stx177798%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179011
           gxc#current-compile-method
           _%self177801%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp179013 (list gxc#::false::t))
            (__tmp179012 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp179013
         '()
         __tmp179012
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args177795%_
        (apply make-instance gxc#::extract-receiver::t _%$args177795%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp179014
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
        (__make-promise __tmp179014)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx177787%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self177790%_
                (let ((__obj179003
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj179003))
               (__tmp179015
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177790%_ _%stx177787%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179015
           gxc#current-compile-method
           _%self177790%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp179017 (list gxc#::void::t))
            (__tmp179016 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp179017
         '(receiver methods slots)
         __tmp179016
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args177784%_
        (apply make-instance gxc#::collect-object-refs::t _%$args177784%_)))
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
      (let ((__tmp179018
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
        (__make-promise __tmp179018)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords177750%_
               _%receiver177745177751%_
               _%methods177746177753%_
               _%slots177747177755%_
               _%stx177757%_)
        (let* ((_%receiver177760%_
                (if (eq? _%receiver177745177751%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177745177751%_))
               (_%methods177762%_
                (if (eq? _%methods177746177753%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177746177753%_))
               (_%slots177764%_
                (if (eq? _%slots177747177755%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177747177755%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self177766%_
                  (let ((__obj179005
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
                       __obj179005
                       _%receiver177760%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179005
                       _%methods177762%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179005
                       _%slots177764%_
                       '3
                       '#f
                       '#f))
                    __obj179005))
                 (__tmp179019
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177766%_ _%stx177757%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179019
             gxc#current-compile-method
             _%self177766%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords177773%_ . _%args177774%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords177773%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177773%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177773%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177773%_
                  'slots:
                  absent-value))
               _%args177774%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args177748177780%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args177748177780%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp179021 (list gxc#::basic-xform-expression::t))
            (__tmp179020 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp179021
         '(receiver klass methods slots)
         __tmp179020
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args177741%_
        (apply make-instance gxc#::subst-object-refs::t _%$args177741%_)))
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
      (let ((__tmp179022
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
        (__make-promise __tmp179022)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords177703%_
               _%receiver177697177704%_
               _%klass177698177706%_
               _%methods177699177708%_
               _%slots177700177710%_
               _%stx177712%_)
        (let* ((_%receiver177715%_
                (if (eq? _%receiver177697177704%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177697177704%_))
               (_%klass177717%_
                (if (eq? _%klass177698177706%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass177698177706%_))
               (_%methods177719%_
                (if (eq? _%methods177699177708%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177699177708%_))
               (_%slots177721%_
                (if (eq? _%slots177700177710%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177700177710%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self177723%_
                  (let ((__obj179007
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
                       __obj179007
                       _%receiver177715%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179007
                       _%klass177717%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179007
                       _%methods177719%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj179007
                       _%slots177721%_
                       '4
                       '#f
                       '#f))
                    __obj179007))
                 (__tmp179023
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177723%_ _%stx177712%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179023
             gxc#current-compile-method
             _%self177723%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords177730%_ . _%args177731%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords177730%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177730%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177730%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177730%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177730%_
                  'slots:
                  absent-value))
               _%args177731%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args177701177737%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args177701177737%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self174812%_ _%stx174813%_)
        (letrec ((_%generate-method-bind174815%_
                  (lambda (_%$klass177689%_
                           _%$method-table177690%_
                           _%id177691%_
                           _%$id177692%_)
                    (let ((_%$tmp177694%_
                           (let ((__tmp179024
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179024))))
                      (cons (cons _%$id177692%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp177694%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table177690%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id177691%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp177694%_ '()))
                    (cons (cons '%#ref (cons _%$tmp177694%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id177691%_
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
                 (_%generate-slot-bind174816%_
                  (lambda (_%$klass177683%_ _%id177684%_ _%$id177685%_)
                    (let ((_%$tmp177687%_
                           (let ((__tmp179025
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179025))))
                      (cons (cons _%$id177685%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp177687%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass177683%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id177684%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp177687%_ '()))
                        (cons (cons '%#ref (cons _%$tmp177687%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id177684%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl174817%_
                  (lambda (_%$klass177677%_
                           _%$method-table177678%_
                           _%methods-bind177679%_
                           _%slots-bind177680%_
                           _%specializer-impl177681%_)
                    (let ((__tmp179026
                           (cons '%#lambda
                                 (cons (cons _%$klass177677%_
                                             (cons _%$method-table177678%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind177680%_
                                                            _%methods-bind177679%_))
                                                         (cons _%specializer-impl177681%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179026 _%stx174813%_))))
                 (_%generate-specializer-def174818%_
                  (lambda (_%id177673%_
                           _%specializer-id177674%_
                           _%specializer-impl177675%_)
                    (let ((__tmp179027
                           (cons '%#begin
                                 (cons _%stx174813%_
                                       (cons (let ((__tmp179028
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id177674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl177675%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179028
                                                _%stx174813%_))
                                             (cons (let ((__tmp179029
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id177673%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id177674%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179029
                                                      _%stx174813%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179027 _%stx174813%_)))))
          (let* ((_%__stx177895177896%_ _%stx174813%_)
                 (_%g174821174841%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx177895177896%_)))))
            (let ((_%__kont177897177898%_
                   (lambda (_%L174885%_ _%L174886%_)
                     (let ((_%method-calls174905%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs174906%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty174907%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?174909%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls174905%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs174906%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L174885%_))
                             (let* ((_%__stx177809177810%_ _%L174885%_)
                                    (_%g175297175315%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx177809177810%_)))))
                               (let ((_%__kont177811177812%_
                                      (lambda (_%L175351%_
                                               _%L175352%_
                                               _%L175353%_)
                                        (let ((_%receiver175373%_
                                               (let ((_%$e175370%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L175351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e175370%_
                                                     _%$e175370%_
                                                     _%L175353%_))))
                                          (for-each
                                           (lambda (_%g175374175376%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver175373%_
                                              _%method-calls174905%_
                                              _%slot-refs174906%_
                                              _%g175374175376%_))
                                           _%L175351%_)
                                          (if (_%no-specializer?174909%_)
                                              _%stx174813%_
                                              (let* ((_%specializer-id175385%_
                                                      (let* ((_%id175379%_
                                                              (let ((__tmp179030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L174886%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179030 '"::specialize")))
                     (_%specializer-id175382%_
                      (let ((__tmp179031
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174813%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175379%_ __tmp179031))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175382%_))
                _%specializer-id175382%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175387%_
                                                      (let ((__tmp179032
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179032)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175389%_
                                                      (let ((__tmp179033
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179033)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175391%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174905%_)))
                                                     (_%$methods175395%_
                                                      (map (lambda (_%id175393%_)
                                                             (let ((__tmp179034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175393%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179034)))
                   _%methods175391%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175404%_
                                                      (for-each
                                                       (lambda (_%g175396175399%_
                                                                _%g175397175401%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174905%_
                                                            _%g175396175399%_
                                                            _%g175397175401%_)))
                                                       _%methods175391%_
                                                       _%$methods175395%_))
                                                     (_%methods-bind175414%_
                                                      (map (lambda (_%g175406175409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175407175411%_)
                     (_%generate-method-bind174815%_
                      _%$klass175387%_
                      _%$method-table175389%_
                      _%g175406175409%_
                      _%g175407175411%_))
                   _%methods175391%_
                   _%$methods175395%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175416%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174906%_)))
                                                     (_%$slots175420%_
                                                      (map (lambda (_%id175418%_)
                                                             (let ((__tmp179035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175418%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179035)))
                   _%slots175416%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175429%_
                                                      (for-each
                                                       (lambda (_%g175421175424%_
                                                                _%g175422175426%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174906%_
                                                            _%g175421175424%_
                                                            _%g175422175426%_)))
                                                       _%slots175416%_
                                                       _%$slots175420%_))
                                                     (_%slots-bind175438%_
                                                      (map (lambda (_%g175430175433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175431175435%_)
                     (_%generate-slot-bind174816%_
                      _%$klass175387%_
                      _%g175430175433%_
                      _%g175431175435%_))
                   _%slots175416%_
                   _%$slots175420%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body175444%_
                                                      (map (lambda (_%g175439175441%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver175373%_
                                                              _%$klass175387%_
                                                              _%method-calls174905%_
                                                              _%slot-refs174906%_
                                                              _%g175439175441%_))
                                                           _%L175351%_))
                                                     (_%specializer-impl175446%_
                                                      (let ((__tmp179036
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L175353%_ _%L175352%_)
                                 _%specializer-body175444%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179036 _%stx174813%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175448%_
                                                      (_%generate-specializer-impl174817%_
                                                       _%$klass175387%_
                                                       _%$method-table175389%_
                                                       _%methods-bind175414%_
                                                       _%slots-bind175438%_
                                                       _%specializer-impl175446%_)))
                                                (let ((__tmp179038
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174886%_)))
                                                      (__tmp179037
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175385%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179038
                                                   '" => "
                                                   __tmp179037))
                                                (_%generate-specializer-def174818%_
                                                 _%L174886%_
                                                 _%specializer-id175385%_
                                                 _%specializer-impl175448%_))))))
                                     (_%__kont177813177814%_
                                      (lambda () _%stx174813%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx177809177810%_))
                                     (let ((_%e175302175327%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx177809177810%_))))
                                       (let ((_%tl175304175332%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e175302175327%_)))
                                             (_%hd175303175330%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e175302175327%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl175304175332%_))
                                             (let ((_%e175305175335%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl175304175332%_))))
                                               (let ((_%tl175307175340%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e175305175335%_)))
                                                     (_%hd175306175338%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e175305175335%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd175306175338%_))
                                                     (let ((_%e175308175343%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd175306175338%_))))
                                                       (let ((_%tl175310175348%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e175308175343%_)))
                     (_%hd175309175346%_
                      (let () (declare (not safe)) (##car _%e175308175343%_))))
                 (_%__kont177811177812%_
                  _%tl175307175340%_
                  _%tl175310175348%_
                  _%hd175309175346%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont177813177814%_))))
                                             (_%__kont177813177814%_))))
                                     (_%__kont177813177814%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L174885%_))
                                 (let* ((_%g175455175474%_
                                         (lambda (_%g175456175471%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g175456175471%_))))
                                        (_%g175454175772%_
                                         (lambda (_%g175456175477%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g175456175477%_))
                                               (let ((_%e175458175479%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g175456175477%_))))
                                                 (let ((_%hd175459175482%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175458175479%_)))
                                                       (_%tl175460175484%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175458175479%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl175460175484%_))
                                                       (let ((_g179039_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl175460175484%_ '0))))
                 (begin
                   (let ((_g179040_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g179039_)
                                (##values-length _g179039_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g179040_ 2)))
                         (error "Context expects 2 values" _g179040_)))
                   (let ((_%target175461175487%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179039_ 0)))
                         (_%tl175463175489%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179039_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl175463175489%_))
                         (letrec ((_%loop175464175492%_
                                   (lambda (_%hd175462175495%_
                                            _%clause175468175497%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175462175495%_))
                                         (let ((_%e175465175500%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175462175495%_))))
                                           (let ((_%lp-hd175466175503%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175465175500%_)))
                                                 (_%lp-tl175467175505%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175465175500%_))))
                                             (_%loop175464175492%_
                                              _%lp-tl175467175505%_
                                              (cons _%lp-hd175466175503%_
                                                    _%clause175468175497%_))))
                                         (let ((_%clause175469175508%_
                                                (reverse _%clause175468175497%_)))
                                           ((lambda (_%L175511%_)
                                              (for-each
                                               (lambda (_%clause175525%_)
                                                 (let* ((_%__stx177835177836%_
                                                         _%clause175525%_)
                                                        (_%g175528175543%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx177835177836%_)))))
                                                   (let ((_%__kont177837177838%_
                                                          (lambda (_%L175571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L175572%_
                           _%L175573%_)
                    (let ((_%receiver175592%_
                           (let ((_%$e175589%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L175571%_))))
                             (if _%$e175589%_ _%$e175589%_ _%L175573%_))))
                      (for-each
                       (lambda (_%g175593175595%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver175592%_
                          _%method-calls174905%_
                          _%slot-refs174906%_
                          _%g175593175595%_))
                       _%L175571%_))))
                 (_%__kont177839177840%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx177835177836%_))
                                                         (let ((_%e175533175555%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx177835177836%_))))
                   (let ((_%tl175535175560%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e175533175555%_)))
                         (_%hd175534175558%_
                          (let ()
                            (declare (not safe))
                            (##car _%e175533175555%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd175534175558%_))
                         (let ((_%e175536175563%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd175534175558%_))))
                           (let ((_%tl175538175568%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e175536175563%_)))
                                 (_%hd175537175566%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e175536175563%_))))
                             (_%__kont177837177838%_
                              _%tl175535175560%_
                              _%tl175538175568%_
                              _%hd175537175566%_)))
                         (_%__kont177839177840%_))))
                 (_%__kont177839177840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp179041
                                                      (lambda (_%g175600175603%_
                                                               _%g175601175605%_)
                                                        (cons _%g175600175603%_
                                                              _%g175601175605%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179041
                                                  '()
                                                  _%L175511%_)))
                                              (if (_%no-specializer?174909%_)
                                                  _%stx174813%_
                                                  (let* ((_%specializer-id175614%_
                                                          (let* ((_%id175608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179042
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L174886%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179042 '"::specialize")))
                         (_%specializer-id175611%_
                          (let ((__tmp179043
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174813%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id175608%_
                             __tmp179043))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id175611%_))
                    _%specializer-id175611%_))
                 (_%$klass175616%_
                  (let ((__tmp179044
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179044)))
                 (_%$method-table175618%_
                  (let ((__tmp179045
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179045)))
                 (_%methods175620%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174905%_)))
                 (_%$methods175624%_
                  (map (lambda (_%id175622%_)
                         (let ((__tmp179046 (gensym _%id175622%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179046)))
                       _%methods175620%_))
                 (_%_175633%_
                  (for-each
                   (lambda (_%g175625175628%_ _%g175626175630%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174905%_
                        _%g175625175628%_
                        _%g175626175630%_)))
                   _%methods175620%_
                   _%$methods175624%_))
                 (_%methods-bind175643%_
                  (map (lambda (_%g175635175638%_ _%g175636175640%_)
                         (_%generate-method-bind174815%_
                          _%$klass175616%_
                          _%$method-table175618%_
                          _%g175635175638%_
                          _%g175636175640%_))
                       _%methods175620%_
                       _%$methods175624%_))
                 (_%slots175645%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174906%_)))
                 (_%$slots175649%_
                  (map (lambda (_%id175647%_)
                         (let ((__tmp179047 (gensym _%id175647%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179047)))
                       _%slots175645%_))
                 (_%_175658%_
                  (for-each
                   (lambda (_%g175650175653%_ _%g175651175655%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174906%_
                        _%g175650175653%_
                        _%g175651175655%_)))
                   _%slots175645%_
                   _%$slots175649%_))
                 (_%slots-bind175667%_
                  (map (lambda (_%g175659175662%_ _%g175660175664%_)
                         (_%generate-slot-bind174816%_
                          _%$klass175616%_
                          _%g175659175662%_
                          _%g175660175664%_))
                       _%slots175645%_
                       _%$slots175649%_))
                 (_%specializer-clauses175765%_
                  (map (lambda (_%clause175669%_)
                         (let* ((_%__stx177855177856%_ _%clause175669%_)
                                (_%g175672175687%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx177855177856%_)))))
                           (let ((_%__kont177857177858%_
                                  (lambda (_%L175715%_ _%L175716%_ _%L175717%_)
                                    (let* ((_%receiver175746%_
                                            (let ((_%$e175743%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L175715%_))))
                                              (if _%$e175743%_
                                                  _%$e175743%_
                                                  _%L175717%_)))
                                           (_%body175752%_
                                            (map (lambda (_%g175747175749%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver175746%_
                                                    _%$klass175616%_
                                                    _%method-calls174905%_
                                                    _%slot-refs174906%_
                                                    _%g175747175749%_))
                                                 _%L175715%_)))
                                      (cons (cons _%L175717%_ _%L175716%_)
                                            _%body175752%_))))
                                 (_%__kont177859177860%_
                                  (lambda () _%clause175669%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx177855177856%_))
                                 (let ((_%e175677175699%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx177855177856%_))))
                                   (let ((_%tl175679175704%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e175677175699%_)))
                                         (_%hd175678175702%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e175677175699%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175678175702%_))
                                         (let ((_%e175680175707%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175678175702%_))))
                                           (let ((_%tl175682175712%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175680175707%_)))
                                                 (_%hd175681175710%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175680175707%_))))
                                             (_%__kont177857177858%_
                                              _%tl175679175704%_
                                              _%tl175682175712%_
                                              _%hd175681175710%_)))
                                         (_%__kont177859177860%_))))
                                 (_%__kont177859177860%_)))))
                       (let ((__tmp179048
                              (lambda (_%g175757175760%_ _%g175758175762%_)
                                (cons _%g175757175760%_ _%g175758175762%_))))
                         (declare (not safe))
                         (__foldr1 __tmp179048 '() _%L175511%_))))
                 (_%specializer-impl175767%_
                  (let ((__tmp179049
                         (cons '%#case-lambda _%specializer-clauses175765%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179049 _%stx174813%_)))
                 (_%specializer-impl175769%_
                  (_%generate-specializer-impl174817%_
                   _%$klass175616%_
                   _%$method-table175618%_
                   _%methods-bind175643%_
                   _%slots-bind175667%_
                   _%specializer-impl175767%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179051
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L174886%_)))
                                                          (__tmp179050
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id175614%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179051
                                                       '" => "
                                                       __tmp179050))
                                                    (_%generate-specializer-def174818%_
                                                     _%L174886%_
                                                     _%specializer-id175614%_
                                                     _%specializer-impl175769%_))))
                                            _%clause175469175508%_))))))
                           (_%loop175464175492%_ _%target175461175487%_ '()))
                         (_%g175455175474%_ _%g175456175477%_)))))
               (_%g175455175474%_ _%g175456175477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175455175474%_
                                                _%g175456175477%_)))))
                                   (_%g175454175772%_ _%L174885%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L174885%_))
                                     (let* ((_%g175776175806%_
                                             (lambda (_%g175777175803%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175777175803%_))))
                                            (_%g175775176437%_
                                             (lambda (_%g175777175809%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175777175809%_))
                                                   (let ((_%e175781175811%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175777175809%_))))
                                                     (let ((_%hd175782175814%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175781175811%_)))
                                                           (_%tl175783175816%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175781175811%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175783175816%_))
                                                           (let ((_%e175784175819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175783175816%_))))
                     (let ((_%hd175785175822%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175784175819%_)))
                           (_%tl175786175824%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175784175819%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175785175822%_))
                           (let ((_%e175787175827%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175785175822%_))))
                             (let ((_%hd175788175830%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175787175827%_)))
                                   (_%tl175789175832%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175787175827%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175788175830%_))
                                   (let ((_%e175790175835%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175788175830%_))))
                                     (let ((_%hd175791175838%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175790175835%_)))
                                           (_%tl175792175840%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175790175835%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd175791175838%_))
                                           (let ((_%e175793175843%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd175791175838%_))))
                                             (let ((_%hd175794175846%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175793175843%_)))
                                                   (_%tl175795175848%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175793175843%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175795175848%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl175792175840%_))
                                                       (let ((_%e175796175851%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl175792175840%_))))
                 (let ((_%hd175797175854%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175796175851%_)))
                       (_%tl175798175856%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175796175851%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175798175856%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl175789175832%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175786175824%_))
                               (let ((_%e175799175859%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175786175824%_))))
                                 (let ((_%hd175800175862%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175799175859%_)))
                                       (_%tl175801175864%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175799175859%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175801175864%_))
                                       ((lambda (_%L175867%_
                                                 _%L175868%_
                                                 _%L175869%_)
                                          (let* ((_%g175893175911%_
                                                  (lambda (_%g175894175908%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g175894175908%_))))
                                                 (_%g175892175967%_
                                                  (lambda (_%g175894175914%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g175894175914%_))
                                                        (let ((_%e175898175916%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g175894175914%_))))
                  (let ((_%hd175899175919%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175898175916%_)))
                        (_%tl175900175921%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175898175916%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl175900175921%_))
                        (let ((_%e175901175924%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl175900175921%_))))
                          (let ((_%hd175902175927%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e175901175924%_)))
                                (_%tl175903175929%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e175901175924%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd175902175927%_))
                                (let ((_%e175904175932%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd175902175927%_))))
                                  (let ((_%hd175905175935%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175904175932%_)))
                                        (_%tl175906175937%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175904175932%_))))
                                    ((lambda (_%L175940%_
                                              _%L175941%_
                                              _%L175942%_)
                                       (let ((_%receiver175961%_
                                              (let ((_%$e175958%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L175940%_))))
                                                (if _%$e175958%_
                                                    _%$e175958%_
                                                    _%L175942%_))))
                                         (for-each
                                          (lambda (_%g175962175964%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver175961%_
                                             _%method-calls174905%_
                                             _%slot-refs174906%_
                                             _%g175962175964%_))
                                          _%L175940%_)))
                                     _%tl175903175929%_
                                     _%tl175906175937%_
                                     _%hd175905175935%_)))
                                (_%g175893175911%_ _%g175894175914%_))))
                        (_%g175893175911%_ _%g175894175914%_))))
                (_%g175893175911%_ _%g175894175914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g175892175967%_ _%L175868%_))
                                          (let* ((_%g175970175989%_
                                                  (lambda (_%g175971175986%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g175971175986%_))))
                                                 (_%g175969176113%_
                                                  (lambda (_%g175971175992%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g175971175992%_))
                                                        (let ((_%e175973175994%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g175971175992%_))))
                  (let ((_%hd175974175997%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175973175994%_)))
                        (_%tl175975175999%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175973175994%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175975175999%_))
                        (let ((_g179052_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl175975175999%_
                                  '0))))
                          (begin
                            (let ((_g179053_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g179052_)
                                         (##values-length _g179052_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g179053_ 2)))
                                  (error "Context expects 2 values"
                                         _g179053_)))
                            (let ((_%target175976176002%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179052_ 0)))
                                  (_%tl175978176004%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179052_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl175978176004%_))
                                  (letrec ((_%loop175979176007%_
                                            (lambda (_%hd175977176010%_
                                                     _%clause175983176012%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd175977176010%_))
                                                  (let ((_%e175980176015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd175977176010%_))))
                                                    (let ((_%lp-hd175981176018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e175980176015%_)))
                                                          (_%lp-tl175982176020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e175980176015%_))))
                                                      (_%loop175979176007%_
                                                       _%lp-tl175982176020%_
                                                       (cons _%lp-hd175981176018%_
                                                             _%clause175983176012%_))))
                                                  (let ((_%clause175984176023%_
                                                         (reverse _%clause175983176012%_)))
                                                    ((lambda (_%L176026%_)
                                                       (for-each
                                                        (lambda (_%clause176039%_)
                                                          (let* ((_%g176041176056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g176042176053%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176042176053%_))))
                         (_%g176040176103%_
                          (lambda (_%g176042176059%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176042176059%_))
                                (let ((_%e176046176061%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176042176059%_))))
                                  (let ((_%hd176047176064%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176046176061%_)))
                                        (_%tl176048176066%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176046176061%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176047176064%_))
                                        (let ((_%e176049176069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176047176064%_))))
                                          (let ((_%hd176050176072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176049176069%_)))
                                                (_%tl176051176074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176049176069%_))))
                                            ((lambda (_%L176077%_
                                                      _%L176078%_
                                                      _%L176079%_)
                                               (let ((_%receiver176097%_
                                                      (let ((_%$e176094%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L176077%_))))
                (if _%$e176094%_ _%$e176094%_ _%L176079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g176098176100%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver176097%_
                                                     _%method-calls174905%_
                                                     _%slot-refs174906%_
                                                     _%g176098176100%_))
                                                  _%L176077%_)))
                                             _%tl176048176066%_
                                             _%tl176051176074%_
                                             _%hd176050176072%_)))
                                        (_%g176041176056%_
                                         _%g176042176059%_))))
                                (_%g176041176056%_ _%g176042176059%_)))))
                    (_%g176040176103%_ _%clause176039%_)))
                (let ((__tmp179054
                       (lambda (_%g176105176108%_ _%g176106176110%_)
                         (cons _%g176105176108%_ _%g176106176110%_))))
                  (declare (not safe))
                  (__foldr1 __tmp179054 '() _%L176026%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause175984176023%_))))))
                                    (_%loop175979176007%_
                                     _%target175976176002%_
                                     '()))
                                  (_%g175970175989%_ _%g175971175992%_)))))
                        (_%g175970175989%_ _%g175971175992%_))))
                (_%g175970175989%_ _%g175971175992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g175969176113%_ _%L175867%_))
                                          (if (_%no-specializer?174909%_)
                                              _%stx174813%_
                                              (let* ((_%specializer-id176122%_
                                                      (let* ((_%id176116%_
                                                              (let ((__tmp179055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L174886%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179055 '"::specialize")))
                     (_%specializer-id176119%_
                      (let ((__tmp179056
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174813%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id176116%_ __tmp179056))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id176119%_))
                _%specializer-id176119%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass176124%_
                                                      (let ((__tmp179057
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179057)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table176126%_
                                                      (let ((__tmp179058
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179058)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods176128%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174905%_)))
                                                     (_%$methods176132%_
                                                      (map (lambda (_%id176130%_)
                                                             (let ((__tmp179059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176130%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179059)))
                   _%methods176128%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176141%_
                                                      (for-each
                                                       (lambda (_%g176133176136%_
                                                                _%g176134176138%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174905%_
                                                            _%g176133176136%_
                                                            _%g176134176138%_)))
                                                       _%methods176128%_
                                                       _%$methods176132%_))
                                                     (_%methods-bind176151%_
                                                      (map (lambda (_%g176143176146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176144176148%_)
                     (_%generate-method-bind174815%_
                      _%$klass176124%_
                      _%$method-table176126%_
                      _%g176143176146%_
                      _%g176144176148%_))
                   _%methods176128%_
                   _%$methods176132%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots176153%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174906%_)))
                                                     (_%$slots176157%_
                                                      (map (lambda (_%id176155%_)
                                                             (let ((__tmp179060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176155%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179060)))
                   _%slots176153%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176166%_
                                                      (for-each
                                                       (lambda (_%g176158176161%_
                                                                _%g176159176163%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174906%_
                                                            _%g176158176161%_
                                                            _%g176159176163%_)))
                                                       _%slots176153%_
                                                       _%$slots176157%_))
                                                     (_%slots-bind176175%_
                                                      (map (lambda (_%g176167176170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176168176172%_)
                     (_%generate-slot-bind174816%_
                      _%$klass176124%_
                      _%g176167176170%_
                      _%g176168176172%_))
                   _%slots176153%_
                   _%$slots176157%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr176267%_
                                                      (let* ((_%g176177176195%_
                                                              (lambda (_%g176178176192%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176178176192%_))))
                     (_%g176176176264%_
                      (lambda (_%g176178176198%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176178176198%_))
                            (let ((_%e176182176200%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176178176198%_))))
                              (let ((_%hd176183176203%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176182176200%_)))
                                    (_%tl176184176205%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176182176200%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176184176205%_))
                                    (let ((_%e176185176208%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176184176205%_))))
                                      (let ((_%hd176186176211%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176185176208%_)))
                                            (_%tl176187176213%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176185176208%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176186176211%_))
                                            (let ((_%e176188176216%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176186176211%_))))
                                              (let ((_%hd176189176219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176188176216%_)))
                                                    (_%tl176190176221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176188176216%_))))
                                                ((lambda (_%L176224%_
                                                          _%L176225%_
                                                          _%L176226%_)
                                                   (let* ((_%receiver176255%_
                                                           (let ((_%$e176252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L176224%_))))
                     (if _%$e176252%_ _%$e176252%_ _%L176226%_)))
                  (_%body176261%_
                   (map (lambda (_%g176256176258%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver176255%_
                           _%$klass176124%_
                           _%method-calls174905%_
                           _%slot-refs174906%_
                           _%g176256176258%_))
                        _%L176224%_))
                  (__tmp179061
                   (cons '%#lambda
                         (cons (cons _%L176226%_ _%L176225%_)
                               _%body176261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179061
                                                      _%L175868%_)))
                                                 _%tl176187176213%_
                                                 _%tl176190176221%_
                                                 _%hd176189176219%_)))
                                            (_%g176177176195%_
                                             _%g176178176198%_))))
                                    (_%g176177176195%_ _%g176178176198%_))))
                            (_%g176177176195%_ _%g176178176198%_)))))
                (_%g176176176264%_ _%L175868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr176430%_
                                                      (let* ((_%g176269176288%_
                                                              (lambda (_%g176270176285%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176270176285%_))))
                     (_%g176268176427%_
                      (lambda (_%g176270176291%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176270176291%_))
                            (let ((_%e176272176293%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176270176291%_))))
                              (let ((_%hd176273176296%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176272176293%_)))
                                    (_%tl176274176298%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176272176293%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl176274176298%_))
                                    (let ((_g179062_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl176274176298%_
                                              '0))))
                                      (begin
                                        (let ((_g179063_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g179062_)
                                                     (##values-length
                                                      _g179062_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g179063_ 2)))
                                              (error "Context expects 2 values"
                                                     _g179063_)))
                                        (let ((_%target176275176301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179062_ 0)))
                                              (_%tl176277176303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179062_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176277176303%_))
                                              (letrec ((_%loop176278176306%_
                                                        (lambda (_%hd176276176309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause176282176311%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176276176309%_))
                      (let ((_%e176279176314%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176276176309%_))))
                        (let ((_%lp-hd176280176317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176279176314%_)))
                              (_%lp-tl176281176319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176279176314%_))))
                          (_%loop176278176306%_
                           _%lp-tl176281176319%_
                           (cons _%lp-hd176280176317%_
                                 _%clause176282176311%_))))
                      (let ((_%clause176283176322%_
                             (reverse _%clause176282176311%_)))
                        ((lambda (_%L176325%_)
                           (let* ((_%clauses176425%_
                                   (map (lambda (_%clause176339%_)
                                          (let* ((_%__stx177875177876%_
                                                  _%clause176339%_)
                                                 (_%g176342176357%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx177875177876%_)))))
                                            (let ((_%__kont177877177878%_
                                                   (lambda (_%L176385%_
                                                            _%L176386%_
                                                            _%L176387%_)
                                                     (let* ((_%receiver176406%_
                                                             (let ((_%$e176403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L176385%_))))
                       (if _%$e176403%_ _%$e176403%_ _%L176387%_)))
                    (_%body176412%_
                     (map (lambda (_%g176407176409%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver176406%_
                             _%$klass176124%_
                             _%method-calls174905%_
                             _%slot-refs174906%_
                             _%g176407176409%_))
                          _%L176385%_)))
               (cons (cons _%L176387%_ _%L176386%_) _%body176412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177879177880%_
                                                   (lambda ()
                                                     _%clause176339%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx177875177876%_))
                                                  (let ((_%e176347176369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx177875177876%_))))
                                                    (let ((_%tl176349176374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176347176369%_)))
                                                          (_%hd176348176372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176347176369%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd176348176372%_))
                                                          (let ((_%e176350176377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd176348176372%_))))
                    (let ((_%tl176352176382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e176350176377%_)))
                          (_%hd176351176380%_
                           (let ()
                             (declare (not safe))
                             (##car _%e176350176377%_))))
                      (_%__kont177877177878%_
                       _%tl176349176374%_
                       _%tl176352176382%_
                       _%hd176351176380%_)))
                  (_%__kont177879177880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177879177880%_)))))
                                        (let ((__tmp179064
                                               (lambda (_%g176417176420%_
                                                        _%g176418176422%_)
                                                 (cons _%g176417176420%_
                                                       _%g176418176422%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp179064
                                           '()
                                           _%L176325%_))))
                                  (__tmp179065
                                   (cons '%#case-lambda _%clauses176425%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179065 _%L175867%_)))
                         _%clause176283176322%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176278176306%_
                                                 _%target176275176301%_
                                                 '()))
                                              (_%g176269176288%_
                                               _%g176270176291%_)))))
                                    (_%g176269176288%_ _%g176270176291%_))))
                            (_%g176269176288%_ _%g176270176291%_)))))
                (_%g176268176427%_ _%L175867%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176432%_
                                                      (let ((__tmp179066
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L175869%_ '())
                                             (cons _%specializer-lambda-expr176267%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr176430%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179066 _%stx174813%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176434%_
                                                      (_%generate-specializer-impl174817%_
                                                       _%$klass176124%_
                                                       _%$method-table176126%_
                                                       _%methods-bind176151%_
                                                       _%slots-bind176175%_
                                                       _%specializer-impl176432%_)))
                                                (let ((__tmp179068
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174886%_)))
                                                      (__tmp179067
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id176122%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179068
                                                   '" => "
                                                   __tmp179067))
                                                (_%generate-specializer-def174818%_
                                                 _%L174886%_
                                                 _%specializer-id176122%_
                                                 _%specializer-impl176434%_))))
                                        _%hd175800175862%_
                                        _%hd175797175854%_
                                        _%hd175794175846%_)
                                       (_%g175776175806%_ _%g175777175809%_))))
                               (_%g175776175806%_ _%g175777175809%_))
                           (_%g175776175806%_ _%g175777175809%_))
                       (_%g175776175806%_ _%g175777175809%_))))
               (_%g175776175806%_ _%g175777175809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175776175806%_
                                                    _%g175777175809%_))))
                                           (_%g175776175806%_
                                            _%g175777175809%_))))
                                   (_%g175776175806%_ _%g175777175809%_))))
                           (_%g175776175806%_ _%g175777175809%_))))
                   (_%g175776175806%_ _%g175777175809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175776175806%_
                                                    _%g175777175809%_)))))
                                       (_%g175775176437%_ _%L174885%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L174885%_))
                                         (let* ((_%g176441176494%_
                                                 (lambda (_%g176442176491%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176442176491%_))))
                                                (_%g176440177665%_
                                                 (lambda (_%g176442176497%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176442176497%_))
                                                       (let ((_%e176448176499%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176442176497%_))))
                 (let ((_%hd176449176502%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176448176499%_)))
                       (_%tl176450176504%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176448176499%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd176449176502%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd176449176502%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl176450176504%_))
                               (let ((_%e176451176507%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl176450176504%_))))
                                 (let ((_%hd176452176510%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176451176507%_)))
                                       (_%tl176453176512%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176451176507%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176452176510%_))
                                       (let ((_%e176454176515%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176452176510%_))))
                                         (let ((_%hd176455176518%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176454176515%_)))
                                               (_%tl176456176520%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176454176515%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176455176518%_))
                                               (let ((_%e176457176523%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176455176518%_))))
                                                 (let ((_%hd176458176526%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176457176523%_)))
                                                       (_%tl176459176528%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176457176523%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd176458176526%_))
                                                       (let ((_%e176460176531%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd176458176526%_))))
                 (let ((_%hd176461176534%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176460176531%_)))
                       (_%tl176462176536%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176460176531%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl176462176536%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl176459176528%_))
                           (let ((_%e176463176539%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl176459176528%_))))
                             (let ((_%hd176464176542%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176463176539%_)))
                                   (_%tl176465176544%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176463176539%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176464176542%_))
                                   (let ((_%e176466176547%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176464176542%_))))
                                     (let ((_%hd176467176550%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176466176547%_)))
                                           (_%tl176468176552%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176466176547%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd176467176550%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd176467176550%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl176468176552%_))
                                                   (let ((_%e176469176555%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl176468176552%_))))
                                                     (let ((_%hd176470176558%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176469176555%_)))
                                                           (_%tl176471176560%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176469176555%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd176470176558%_))
                                                           (let ((_%e176472176563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd176470176558%_))))
                     (let ((_%hd176473176566%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176472176563%_)))
                           (_%tl176474176568%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176472176563%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd176473176566%_))
                           (let ((_%e176475176571%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd176473176566%_))))
                             (let ((_%hd176476176574%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176475176571%_)))
                                   (_%tl176477176576%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176475176571%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176476176574%_))
                                   (let ((_%e176478176579%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176476176574%_))))
                                     (let ((_%hd176479176582%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176478176579%_)))
                                           (_%tl176480176584%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176478176579%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176480176584%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl176477176576%_))
                                               (let ((_%e176481176587%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl176477176576%_))))
                                                 (let ((_%hd176482176590%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176481176587%_)))
                                                       (_%tl176483176592%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176481176587%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176483176592%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl176474176568%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl176471176560%_))
                       (let ((_%e176484176595%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176471176560%_))))
                         (let ((_%hd176485176598%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176484176595%_)))
                               (_%tl176486176600%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176484176595%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176486176600%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl176465176544%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl176456176520%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl176453176512%_))
                                           (let ((_%e176487176603%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl176453176512%_))))
                                             (let ((_%hd176488176606%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e176487176603%_)))
                                                   (_%tl176489176608%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e176487176603%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl176489176608%_))
                                                   ((lambda (_%L176611%_
                                                             _%L176612%_
                                                             _%L176613%_
                                                             _%L176614%_
                                                             _%L176615%_)
                                                      (let* ((_%g176655176717%_
                                                              (lambda (_%g176656176714%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176656176714%_))))
                     (_%g176654177662%_
                      (lambda (_%g176656176720%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176656176720%_))
                            (let ((_%e176662176722%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176656176720%_))))
                              (let ((_%hd176663176725%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176662176722%_)))
                                    (_%tl176664176727%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176662176722%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd176663176725%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd176663176725%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl176664176727%_))
                                            (let ((_%e176665176730%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl176664176727%_))))
                                              (let ((_%hd176666176733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176665176730%_)))
                                                    (_%tl176667176735%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176665176730%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176667176735%_))
                                                    (let ((_%e176668176738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176667176735%_))))
                                                      (let ((_%hd176669176741%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176668176738%_)))
                    (_%tl176670176743%_
                     (let () (declare (not safe)) (##cdr _%e176668176738%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd176669176741%_))
                    (let ((_%e176671176746%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd176669176741%_))))
                      (let ((_%hd176672176749%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176671176746%_)))
                            (_%tl176673176751%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176671176746%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd176672176749%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd176672176749%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176673176751%_))
                                    (let ((_%e176674176754%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176673176751%_))))
                                      (let ((_%hd176675176757%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176674176754%_)))
                                            (_%tl176676176759%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176674176754%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176675176757%_))
                                            (let ((_%e176677176762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176675176757%_))))
                                              (let ((_%hd176678176765%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176677176762%_)))
                                                    (_%tl176679176767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176677176762%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd176678176765%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd176678176765%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl176679176767%_))
                                                            (let ((_%e176680176770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl176679176767%_))))
                      (let ((_%hd176681176773%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176680176770%_)))
                            (_%tl176682176775%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176680176770%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176682176775%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl176676176759%_))
                                (let ((_%e176683176778%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl176676176759%_))))
                                  (let ((_%hd176684176781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176683176778%_)))
                                        (_%tl176685176783%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176683176778%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176684176781%_))
                                        (let ((_%e176686176786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176684176781%_))))
                                          (let ((_%hd176687176789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176686176786%_)))
                                                (_%tl176688176791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176686176786%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd176687176789%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd176687176789%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl176688176791%_))
                                                        (let ((_%e176689176794%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl176688176791%_))))
                  (let ((_%hd176690176797%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176689176794%_)))
                        (_%tl176691176799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176689176794%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl176691176799%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176685176783%_))
                            (let ((_%e176692176802%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176685176783%_))))
                              (let ((_%hd176693176805%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176692176802%_)))
                                    (_%tl176694176807%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176692176802%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd176693176805%_))
                                    (let ((_%e176695176810%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd176693176805%_))))
                                      (let ((_%hd176696176813%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176695176810%_)))
                                            (_%tl176697176815%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176695176810%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd176696176813%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd176696176813%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176697176815%_))
                                                    (let ((_%e176698176818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176697176815%_))))
                                                      (let ((_%hd176699176821%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176698176818%_)))
                    (_%tl176700176823%_
                     (let () (declare (not safe)) (##cdr _%e176698176818%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl176700176823%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176694176807%_))
                        (if (let ((__tmp179069
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl176694176807%_))))
                              (declare (not safe))
                              (##fx>= __tmp179069 '1))
                            (let ((_g179070_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176694176807%_
                                      '1))))
                              (begin
                                (let ((_g179071_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179070_)
                                             (##values-length _g179070_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179071_ 2)))
                                      (error "Context expects 2 values"
                                             _g179071_)))
                                (let ((_%target176701176826%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179070_ 0)))
                                      (_%tl176703176828%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179070_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176703176828%_))
                                      (let ((_%e176710176831%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176703176828%_))))
                                        (let ((_%hd176711176834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176710176831%_)))
                                              (_%tl176712176836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176710176831%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176712176836%_))
                                              (letrec ((_%loop176704176839%_
                                                        (lambda (_%hd176702176842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref176708176844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176702176842%_))
                      (let ((_%e176705176847%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176702176842%_))))
                        (let ((_%lp-hd176706176850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176705176847%_)))
                              (_%lp-tl176707176852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176705176847%_))))
                          (_%loop176704176839%_
                           _%lp-tl176707176852%_
                           (cons _%lp-hd176706176850%_
                                 _%kw-ref176708176844%_))))
                      (let ((_%kw-ref176709176855%_
                             (reverse _%kw-ref176708176844%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176670176743%_))
                            ((lambda (_%L176858%_
                                      _%L176859%_
                                      _%L176860%_
                                      _%L176861%_
                                      _%L176862%_)
                               (let* ((_%kw-count176913%_
                                       (length (let ((__tmp179072
                                                      (lambda (_%g176905176908%_
                                                               _%g176906176910%_)
                                                        (cons _%g176905176908%_
                                                              _%g176906176910%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179072
                                                  '()
                                                  _%L176859%_))))
                                      (_%self-index176915%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count176913%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L176613%_))
                                     (let* ((_%g176919176933%_
                                             (lambda (_%g176920176930%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g176920176930%_))))
                                            (_%g176918177056%_
                                             (lambda (_%g176920176936%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g176920176936%_))
                                                   (let ((_%e176923176938%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g176920176936%_))))
                                                     (let ((_%hd176924176941%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176923176938%_)))
                                                           (_%tl176925176943%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176923176938%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl176925176943%_))
                                                           (let ((_%e176926176946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl176925176943%_))))
                     (let ((_%hd176927176949%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176926176946%_)))
                           (_%tl176928176951%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176926176946%_))))
                       ((lambda (_%L176954%_ _%L176955%_)
                          (let* ((_%self176972%_
                                  (list-ref _%L176955%_ _%self-index176915%_))
                                 (_%receiver176977%_
                                  (let ((_%$e176974%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L176954%_))))
                                    (if _%$e176974%_
                                        _%$e176974%_
                                        _%self176972%_))))
                            (for-each
                             (lambda (_%g176979176981%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver176977%_
                                _%method-calls174905%_
                                _%slot-refs174906%_
                                _%g176979176981%_))
                             _%L176954%_)
                            (if (_%no-specializer?174909%_)
                                _%stx174813%_
                                (let* ((_%specializer-id176990%_
                                        (let* ((_%id176984%_
                                                (let ((__tmp179073
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174886%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp179073
                                                   '"::specialize")))
                                               (_%specializer-id176987%_
                                                (let ((__tmp179074
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx174813%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id176984%_
                                                   __tmp179074))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id176987%_))
                                          _%specializer-id176987%_))
                                       (_%$klass176992%_
                                        (let ((__tmp179075
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179075)))
                                       (_%$method-table176994%_
                                        (let ((__tmp179076
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179076)))
                                       (_%methods176996%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls174905%_)))
                                       (_%$methods177000%_
                                        (map (lambda (_%id176998%_)
                                               (let ((__tmp179077
                                                      (gensym _%id176998%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179077)))
                                             _%methods176996%_))
                                       (_%_177009%_
                                        (for-each
                                         (lambda (_%g177001177004%_
                                                  _%g177002177006%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls174905%_
                                              _%g177001177004%_
                                              _%g177002177006%_)))
                                         _%methods176996%_
                                         _%$methods177000%_))
                                       (_%methods-bind177019%_
                                        (map (lambda (_%g177011177014%_
                                                      _%g177012177016%_)
                                               (_%generate-method-bind174815%_
                                                _%$klass176992%_
                                                _%$method-table176994%_
                                                _%g177011177014%_
                                                _%g177012177016%_))
                                             _%methods176996%_
                                             _%$methods177000%_))
                                       (_%slots177021%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs174906%_)))
                                       (_%$slots177025%_
                                        (map (lambda (_%id177023%_)
                                               (let ((__tmp179078
                                                      (gensym _%id177023%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179078)))
                                             _%slots177021%_))
                                       (_%_177034%_
                                        (for-each
                                         (lambda (_%g177026177029%_
                                                  _%g177027177031%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs174906%_
                                              _%g177026177029%_
                                              _%g177027177031%_)))
                                         _%slots177021%_
                                         _%$slots177025%_))
                                       (_%slots-bind177043%_
                                        (map (lambda (_%g177035177038%_
                                                      _%g177036177040%_)
                                               (_%generate-slot-bind174816%_
                                                _%$klass176992%_
                                                _%g177035177038%_
                                                _%g177036177040%_))
                                             _%slots177021%_
                                             _%$slots177025%_))
                                       (_%specializer-impl177051%_
                                        (let* ((_%specializer-body177049%_
                                                (map (lambda (_%g177044177046%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver176977%_
                                                        _%$klass176992%_
                                                        _%method-calls174905%_
                                                        _%slot-refs174906%_
                                                        _%g177044177046%_))
                                                     _%L176954%_))
                                               (__tmp179079
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L176615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L176614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp179080
                                   (cons '%#lambda
                                         (cons _%L176955%_
                                               _%specializer-body177049%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp179080 _%L176613%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L176612%_ '())))
                                      '()))
                          '())
                    (cons _%L176611%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp179079
                                           _%stx174813%_)))
                                       (_%specializer-impl177053%_
                                        (_%generate-specializer-impl174817%_
                                         _%$klass176992%_
                                         _%$method-table176994%_
                                         _%methods-bind177019%_
                                         _%slots-bind177043%_
                                         _%specializer-impl177051%_)))
                                  (let ((__tmp179082
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L174886%_)))
                                        (__tmp179081
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id176990%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp179082
                                     '" => "
                                     __tmp179081))
                                  (_%generate-specializer-def174818%_
                                   _%L174886%_
                                   _%specializer-id176990%_
                                   _%specializer-impl177053%_)))))
                        _%tl176928176951%_
                        _%hd176927176949%_)))
                   (_%g176919176933%_ _%g176920176936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176919176933%_
                                                    _%g176920176936%_)))))
                                       (_%g176918177056%_ _%L176613%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L176613%_))
                                         (let* ((_%g177060177090%_
                                                 (lambda (_%g177061177087%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g177061177087%_))))
                                                (_%g177059177658%_
                                                 (lambda (_%g177061177093%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g177061177093%_))
                                                       (let ((_%e177065177095%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g177061177093%_))))
                 (let ((_%hd177066177098%_
                        (let ()
                          (declare (not safe))
                          (##car _%e177065177095%_)))
                       (_%tl177067177100%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e177065177095%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl177067177100%_))
                       (let ((_%e177068177103%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl177067177100%_))))
                         (let ((_%hd177069177106%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e177068177103%_)))
                               (_%tl177070177108%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e177068177103%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd177069177106%_))
                               (let ((_%e177071177111%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd177069177106%_))))
                                 (let ((_%hd177072177114%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e177071177111%_)))
                                       (_%tl177073177116%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e177071177111%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd177072177114%_))
                                       (let ((_%e177074177119%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd177072177114%_))))
                                         (let ((_%hd177075177122%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e177074177119%_)))
                                               (_%tl177076177124%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e177074177119%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd177075177122%_))
                                               (let ((_%e177077177127%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd177075177122%_))))
                                                 (let ((_%hd177078177130%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e177077177127%_)))
                                                       (_%tl177079177132%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e177077177127%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl177079177132%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177076177124%_))
                                                           (let ((_%e177080177135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177076177124%_))))
                     (let ((_%hd177081177138%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177080177135%_)))
                           (_%tl177082177140%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177080177135%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl177082177140%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl177073177116%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl177070177108%_))
                                   (let ((_%e177083177143%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl177070177108%_))))
                                     (let ((_%hd177084177146%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e177083177143%_)))
                                           (_%tl177085177148%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e177083177143%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl177085177148%_))
                                           ((lambda (_%L177151%_
                                                     _%L177152%_
                                                     _%L177153%_)
                                              (let* ((_%g177177177191%_
                                                      (lambda (_%g177178177188%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177178177188%_))))
                                                     (_%g177176177238%_
                                                      (lambda (_%g177178177194%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177178177194%_))
                                                            (let ((_%e177181177196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177178177194%_))))
                      (let ((_%hd177182177199%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177181177196%_)))
                            (_%tl177183177201%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177181177196%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl177183177201%_))
                            (let ((_%e177184177204%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl177183177201%_))))
                              (let ((_%hd177185177207%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e177184177204%_)))
                                    (_%tl177186177209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e177184177204%_))))
                                ((lambda (_%L177212%_ _%L177213%_)
                                   (let* ((_%self177226%_
                                           (list-ref
                                            _%L177213%_
                                            _%self-index176915%_))
                                          (_%receiver177231%_
                                           (let ((_%$e177228%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L177212%_))))
                                             (if _%$e177228%_
                                                 _%$e177228%_
                                                 _%self177226%_))))
                                     (for-each
                                      (lambda (_%g177233177235%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver177231%_
                                         _%method-calls174905%_
                                         _%slot-refs174906%_
                                         _%g177233177235%_))
                                      _%L177212%_)))
                                 _%tl177186177209%_
                                 _%hd177185177207%_)))
                            (_%g177177177191%_ _%g177178177194%_))))
                    (_%g177177177191%_ _%g177178177194%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177176177238%_
                                                 _%L177152%_))
                                              (let* ((_%g177241177260%_
                                                      (lambda (_%g177242177257%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177242177257%_))))
                                                     (_%g177240177371%_
                                                      (lambda (_%g177242177263%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177242177263%_))
                                                            (let ((_%e177244177265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177242177263%_))))
                      (let ((_%hd177245177268%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177244177265%_)))
                            (_%tl177246177270%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177244177265%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl177246177270%_))
                            (let ((_g179083_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl177246177270%_
                                      '0))))
                              (begin
                                (let ((_g179084_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179083_)
                                             (##values-length _g179083_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179084_ 2)))
                                      (error "Context expects 2 values"
                                             _g179084_)))
                                (let ((_%target177247177273%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179083_ 0)))
                                      (_%tl177249177275%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179083_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177249177275%_))
                                      (letrec ((_%loop177250177278%_
                                                (lambda (_%hd177248177281%_
                                                         _%clause177254177283%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd177248177281%_))
                                                      (let ((_%e177251177286%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd177248177281%_))))
                (let ((_%lp-hd177252177289%_
                       (let () (declare (not safe)) (##car _%e177251177286%_)))
                      (_%lp-tl177253177291%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e177251177286%_))))
                  (_%loop177250177278%_
                   _%lp-tl177253177291%_
                   (cons _%lp-hd177252177289%_ _%clause177254177283%_))))
              (let ((_%clause177255177294%_ (reverse _%clause177254177283%_)))
                ((lambda (_%L177297%_)
                   (for-each
                    (lambda (_%clause177310%_)
                      (let* ((_%g177312177323%_
                              (lambda (_%g177313177320%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g177313177320%_))))
                             (_%g177311177361%_
                              (lambda (_%g177313177326%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g177313177326%_))
                                    (let ((_%e177316177328%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g177313177326%_))))
                                      (let ((_%hd177317177331%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e177316177328%_)))
                                            (_%tl177318177333%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e177316177328%_))))
                                        ((lambda (_%L177336%_ _%L177337%_)
                                           (let* ((_%self177349%_
                                                   (list-ref
                                                    _%L177337%_
                                                    _%self-index176915%_))
                                                  (_%receiver177354%_
                                                   (let ((_%$e177351%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L177336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e177351%_
                                                         _%$e177351%_
                                                         _%self177349%_))))
                                             (for-each
                                              (lambda (_%g177356177358%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver177354%_
                                                 _%method-calls174905%_
                                                 _%slot-refs174906%_
                                                 _%g177356177358%_))
                                              _%L177336%_)))
                                         _%tl177318177333%_
                                         _%hd177317177331%_)))
                                    (_%g177312177323%_ _%g177313177326%_)))))
                        (_%g177311177361%_ _%clause177310%_)))
                    (let ((__tmp179085
                           (lambda (_%g177363177366%_ _%g177364177368%_)
                             (cons _%g177363177366%_ _%g177364177368%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179085 '() _%L177297%_))))
                 _%clause177255177294%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop177250177278%_
                                         _%target177247177273%_
                                         '()))
                                      (_%g177241177260%_ _%g177242177263%_)))))
                            (_%g177241177260%_ _%g177242177263%_))))
                    (_%g177241177260%_ _%g177242177263%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177240177371%_
                                                 _%L177151%_))
                                              (if (_%no-specializer?174909%_)
                                                  _%stx174813%_
                                                  (let* ((_%specializer-id177380%_
                                                          (let* ((_%id177374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179086
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L174886%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179086 '"::specialize")))
                         (_%specializer-id177377%_
                          (let ((__tmp179087
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174813%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id177374%_
                             __tmp179087))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id177377%_))
                    _%specializer-id177377%_))
                 (_%$klass177382%_
                  (let ((__tmp179088
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179088)))
                 (_%$method-table177384%_
                  (let ((__tmp179089
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179089)))
                 (_%methods177386%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174905%_)))
                 (_%$methods177390%_
                  (map (lambda (_%id177388%_)
                         (let ((__tmp179090 (gensym _%id177388%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179090)))
                       _%methods177386%_))
                 (_%_177399%_
                  (for-each
                   (lambda (_%g177391177394%_ _%g177392177396%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174905%_
                        _%g177391177394%_
                        _%g177392177396%_)))
                   _%methods177386%_
                   _%$methods177390%_))
                 (_%methods-bind177409%_
                  (map (lambda (_%g177401177404%_ _%g177402177406%_)
                         (_%generate-method-bind174815%_
                          _%$klass177382%_
                          _%$method-table177384%_
                          _%g177401177404%_
                          _%g177402177406%_))
                       _%methods177386%_
                       _%$methods177390%_))
                 (_%slots177411%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174906%_)))
                 (_%$slots177415%_
                  (map (lambda (_%id177413%_)
                         (let ((__tmp179091 (gensym _%id177413%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179091)))
                       _%slots177411%_))
                 (_%_177424%_
                  (for-each
                   (lambda (_%g177416177419%_ _%g177417177421%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174906%_
                        _%g177416177419%_
                        _%g177417177421%_)))
                   _%slots177411%_
                   _%$slots177415%_))
                 (_%slots-bind177433%_
                  (map (lambda (_%g177425177428%_ _%g177426177430%_)
                         (_%generate-slot-bind174816%_
                          _%$klass177382%_
                          _%g177425177428%_
                          _%g177426177430%_))
                       _%slots177411%_
                       _%$slots177415%_))
                 (_%specializer-lambda-expr177511%_
                  (let* ((_%g177435177449%_
                          (lambda (_%g177436177446%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177436177446%_))))
                         (_%g177434177508%_
                          (lambda (_%g177436177452%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177436177452%_))
                                (let ((_%e177439177454%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177436177452%_))))
                                  (let ((_%hd177440177457%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177439177454%_)))
                                        (_%tl177441177459%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177439177454%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl177441177459%_))
                                        (let ((_%e177442177462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl177441177459%_))))
                                          (let ((_%hd177443177465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e177442177462%_)))
                                                (_%tl177444177467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e177442177462%_))))
                                            ((lambda (_%L177470%_ _%L177471%_)
                                               (let* ((_%self177494%_
                                                       (list-ref
                                                        _%L177471%_
                                                        _%self-index176915%_))
                                                      (_%receiver177499%_
                                                       (let ((_%$e177496%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L177470%_))))
                 (if _%$e177496%_ _%$e177496%_ _%self177494%_)))
              (_%body177505%_
               (map (lambda (_%g177500177502%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver177499%_
                       _%$klass177382%_
                       _%method-calls174905%_
                       _%slot-refs174906%_
                       _%g177500177502%_))
                    _%L177470%_))
              (__tmp179092 (cons '%#lambda (cons _%L177471%_ _%body177505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp179092
                                                  _%L177152%_)))
                                             _%tl177444177467%_
                                             _%hd177443177465%_)))
                                        (_%g177435177449%_
                                         _%g177436177452%_))))
                                (_%g177435177449%_ _%g177436177452%_)))))
                    (_%g177434177508%_ _%L177152%_)))
                 (_%specializer-case-lambda-expr177651%_
                  (let* ((_%g177513177532%_
                          (lambda (_%g177514177529%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177514177529%_))))
                         (_%g177512177648%_
                          (lambda (_%g177514177535%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177514177535%_))
                                (let ((_%e177516177537%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177514177535%_))))
                                  (let ((_%hd177517177540%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177516177537%_)))
                                        (_%tl177518177542%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177516177537%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl177518177542%_))
                                        (let ((_g179093_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl177518177542%_
                                                  '0))))
                                          (begin
                                            (let ((_g179094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g179093_)
                                                         (##values-length
                                                          _g179093_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g179094_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g179094_)))
                                            (let ((_%target177519177545%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179093_
                                                      0)))
                                                  (_%tl177521177547%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179093_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl177521177547%_))
                                                  (letrec ((_%loop177522177550%_
                                                            (lambda (_%hd177520177553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause177526177555%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd177520177553%_))
                          (let ((_%e177523177558%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd177520177553%_))))
                            (let ((_%lp-hd177524177561%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177523177558%_)))
                                  (_%lp-tl177525177563%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177523177558%_))))
                              (_%loop177522177550%_
                               _%lp-tl177525177563%_
                               (cons _%lp-hd177524177561%_
                                     _%clause177526177555%_))))
                          (let ((_%clause177527177566%_
                                 (reverse _%clause177526177555%_)))
                            ((lambda (_%L177569%_)
                               (let* ((_%clauses177646%_
                                       (map (lambda (_%clause177583%_)
                                              (let* ((_%g177585177596%_
                                                      (lambda (_%g177586177593%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177586177593%_))))
                                                     (_%g177584177636%_
                                                      (lambda (_%g177586177599%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177586177599%_))
                                                            (let ((_%e177589177601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177586177599%_))))
                      (let ((_%hd177590177604%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177589177601%_)))
                            (_%tl177591177606%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177589177601%_))))
                        ((lambda (_%L177609%_ _%L177610%_)
                           (let* ((_%self177622%_
                                   (list-ref _%L177610%_ _%self-index176915%_))
                                  (_%receiver177627%_
                                   (let ((_%$e177624%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L177609%_))))
                                     (if _%$e177624%_
                                         _%$e177624%_
                                         _%self177622%_)))
                                  (_%body177633%_
                                   (map (lambda (_%g177628177630%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver177627%_
                                           _%$klass177382%_
                                           _%method-calls174905%_
                                           _%slot-refs174906%_
                                           _%g177628177630%_))
                                        _%L177609%_)))
                             (cons _%L177610%_ _%body177633%_)))
                         _%tl177591177606%_
                         _%hd177590177604%_)))
                    (_%g177585177596%_ _%g177586177599%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177584177636%_
                                                 _%clause177583%_)))
                                            (let ((__tmp179095
                                                   (lambda (_%g177638177641%_
                                                            _%g177639177643%_)
                                                     (cons _%g177638177641%_
                                                           _%g177639177643%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp179095
                                               '()
                                               _%L177569%_))))
                                      (__tmp179096
                                       (cons '%#case-lambda
                                             _%clauses177646%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp179096
                                  _%L177151%_)))
                             _%clause177527177566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop177522177550%_
                                                     _%target177519177545%_
                                                     '()))
                                                  (_%g177513177532%_
                                                   _%g177514177535%_)))))
                                        (_%g177513177532%_
                                         _%g177514177535%_))))
                                (_%g177513177532%_ _%g177514177535%_)))))
                    (_%g177512177648%_ _%L177151%_)))
                 (_%specializer-impl177653%_
                  (let ((__tmp179097
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L176615%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L176614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp179098
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L177153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr177511%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr177651%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179098
                                                _%stx174813%_))
                                             '()))
                                 '())
                           (cons _%L176612%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L176611%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179097 _%stx174813%_)))
                 (_%specializer-impl177655%_
                  (_%generate-specializer-impl174817%_
                   _%$klass177382%_
                   _%$method-table177384%_
                   _%methods-bind177409%_
                   _%slots-bind177433%_
                   _%specializer-impl177653%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179100
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L174886%_)))
                                                          (__tmp179099
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id177380%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179100
                                                       '" => "
                                                       __tmp179099))
                                                    (_%generate-specializer-def174818%_
                                                     _%L174886%_
                                                     _%specializer-id177380%_
                                                     _%specializer-impl177655%_))))
                                            _%hd177084177146%_
                                            _%hd177081177138%_
                                            _%hd177078177130%_)
                                           (_%g177060177090%_
                                            _%g177061177093%_))))
                                   (_%g177060177090%_ _%g177061177093%_))
                               (_%g177060177090%_ _%g177061177093%_))
                           (_%g177060177090%_ _%g177061177093%_))))
                   (_%g177060177090%_ _%g177061177093%_))
               (_%g177060177090%_ _%g177061177093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g177060177090%_
                                                _%g177061177093%_))))
                                       (_%g177060177090%_ _%g177061177093%_))))
                               (_%g177060177090%_ _%g177061177093%_))))
                       (_%g177060177090%_ _%g177061177093%_))))
               (_%g177060177090%_ _%g177061177093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g177059177658%_ _%L176613%_))
                                         _%stx174813%_))))
                             _%hd176711176834%_
                             _%kw-ref176709176855%_
                             _%hd176699176821%_
                             _%hd176690176797%_
                             _%hd176681176773%_)
                            (_%g176655176717%_ _%g176656176720%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176704176839%_
                                                 _%target176701176826%_
                                                 '()))
                                              (_%g176655176717%_
                                               _%g176656176720%_))))
                                      (_%g176655176717%_ _%g176656176720%_)))))
                            (_%g176655176717%_ _%g176656176720%_))
                        (_%g176655176717%_ _%g176656176720%_))
                    (_%g176655176717%_ _%g176656176720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176655176717%_
                                                     _%g176656176720%_))
                                                (_%g176655176717%_
                                                 _%g176656176720%_))
                                            (_%g176655176717%_
                                             _%g176656176720%_))))
                                    (_%g176655176717%_ _%g176656176720%_))))
                            (_%g176655176717%_ _%g176656176720%_))
                        (_%g176655176717%_ _%g176656176720%_))))
                (_%g176655176717%_ _%g176656176720%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176655176717%_
                                                     _%g176656176720%_))
                                                (_%g176655176717%_
                                                 _%g176656176720%_))))
                                        (_%g176655176717%_
                                         _%g176656176720%_))))
                                (_%g176655176717%_ _%g176656176720%_))
                            (_%g176655176717%_ _%g176656176720%_))))
                    (_%g176655176717%_ _%g176656176720%_))
                (_%g176655176717%_ _%g176656176720%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176655176717%_
                                                     _%g176656176720%_))))
                                            (_%g176655176717%_
                                             _%g176656176720%_))))
                                    (_%g176655176717%_ _%g176656176720%_))
                                (_%g176655176717%_ _%g176656176720%_))
                            (_%g176655176717%_ _%g176656176720%_))))
                    (_%g176655176717%_ _%g176656176720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176655176717%_
                                                     _%g176656176720%_))))
                                            (_%g176655176717%_
                                             _%g176656176720%_))
                                        (_%g176655176717%_ _%g176656176720%_))
                                    (_%g176655176717%_ _%g176656176720%_))))
                            (_%g176655176717%_ _%g176656176720%_)))))
                (_%g176654177662%_ _%L176612%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd176488176606%_
                                                    _%hd176485176598%_
                                                    _%hd176482176590%_
                                                    _%hd176479176582%_
                                                    _%hd176461176534%_)
                                                   (_%g176441176494%_
                                                    _%g176442176497%_))))
                                           (_%g176441176494%_
                                            _%g176442176497%_))
                                       (_%g176441176494%_ _%g176442176497%_))
                                   (_%g176441176494%_ _%g176442176497%_))
                               (_%g176441176494%_ _%g176442176497%_))))
                       (_%g176441176494%_ _%g176442176497%_))
                   (_%g176441176494%_ _%g176442176497%_))
               (_%g176441176494%_ _%g176442176497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176441176494%_
                                                _%g176442176497%_))
                                           (_%g176441176494%_
                                            _%g176442176497%_))))
                                   (_%g176441176494%_ _%g176442176497%_))))
                           (_%g176441176494%_ _%g176442176497%_))))
                   (_%g176441176494%_ _%g176442176497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176441176494%_
                                                    _%g176442176497%_))
                                               (_%g176441176494%_
                                                _%g176442176497%_))
                                           (_%g176441176494%_
                                            _%g176442176497%_))))
                                   (_%g176441176494%_ _%g176442176497%_))))
                           (_%g176441176494%_ _%g176442176497%_))
                       (_%g176441176494%_ _%g176442176497%_))))
               (_%g176441176494%_ _%g176442176497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176441176494%_
                                                _%g176442176497%_))))
                                       (_%g176441176494%_ _%g176442176497%_))))
                               (_%g176441176494%_ _%g176442176497%_))
                           (_%g176441176494%_ _%g176442176497%_))
                       (_%g176441176494%_ _%g176442176497%_))))
               (_%g176441176494%_ _%g176442176497%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176440177665%_ _%L174885%_))
                                         _%stx174813%_))))))))
                  (_%__kont177899177900%_ (lambda () _%stx174813%_)))
              (let ((_%__match177928177929%_
                     (lambda (_%e174825174853%_
                              _%hd174826174856%_
                              _%tl174827174858%_
                              _%e174828174861%_
                              _%hd174829174864%_
                              _%tl174830174866%_
                              _%e174831174869%_
                              _%hd174832174872%_
                              _%tl174833174874%_
                              _%e174834174877%_
                              _%hd174835174880%_
                              _%tl174836174882%_)
                       (let ((_%L174885%_ _%hd174835174880%_)
                             (_%L174886%_ _%hd174832174872%_))
                         (if (let ((__tmp179101
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L174886%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp179101))
                             (_%__kont177897177898%_ _%L174885%_ _%L174886%_)
                             (_%__kont177899177900%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx177895177896%_))
                    (let ((_%e174825174853%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx177895177896%_))))
                      (let ((_%tl174827174858%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174825174853%_)))
                            (_%hd174826174856%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174825174853%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174827174858%_))
                            (let ((_%e174828174861%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174827174858%_))))
                              (let ((_%tl174830174866%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174828174861%_)))
                                    (_%hd174829174864%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174828174861%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd174829174864%_))
                                    (let ((_%e174831174869%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd174829174864%_))))
                                      (let ((_%tl174833174874%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174831174869%_)))
                                            (_%hd174832174872%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174831174869%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174833174874%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174830174866%_))
                                                (let ((_%e174834174877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174830174866%_))))
                                                  (let ((_%tl174836174882%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174834174877%_)))
                                                        (_%hd174835174880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174834174877%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174836174882%_))
                                                        (_%__match177928177929%_
                                                         _%e174825174853%_
                                                         _%hd174826174856%_
                                                         _%tl174827174858%_
                                                         _%e174828174861%_
                                                         _%hd174829174864%_
                                                         _%tl174830174866%_
                                                         _%e174831174869%_
                                                         _%hd174832174872%_
                                                         _%tl174833174874%_
                                                         _%e174834174877%_
                                                         _%hd174835174880%_
                                                         _%tl174836174882%_)
                                                        (_%__kont177899177900%_))))
                                                (_%__kont177899177900%_))
                                            (_%__kont177899177900%_))))
                                    (_%__kont177899177900%_))))
                            (_%__kont177899177900%_))))
                    (_%__kont177899177900%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self174665%_ _%stx174666%_)
        (let* ((_%__stx177931177932%_ _%stx174666%_)
               (_%g174669174702%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx177931177932%_)))))
          (let ((_%__kont177933177934%_ (lambda (_%L174792%_) _%L174792%_))
                (_%__kont177935177936%_
                 (lambda (_%L174731%_ _%L174732%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self174665%_ _%L174731%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx177931177932%_))
                (let ((_%e174672174752%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx177931177932%_))))
                  (let ((_%tl174674174757%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174672174752%_)))
                        (_%hd174673174755%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174672174752%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174674174757%_))
                        (let ((_%e174675174760%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174674174757%_))))
                          (let ((_%tl174677174765%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174675174760%_)))
                                (_%hd174676174763%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174675174760%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174676174763%_))
                                (let ((_%e174678174768%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174676174763%_))))
                                  (let ((_%tl174680174773%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174678174768%_)))
                                        (_%hd174679174771%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174678174768%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd174679174771%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd174679174771%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174680174773%_))
                                                (let ((_%e174681174776%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174680174773%_))))
                                                  (let ((_%tl174683174781%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174681174776%_)))
                                                        (_%hd174682174779%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174681174776%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174683174781%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174677174765%_))
                                                            (let ((_%e174684174784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174677174765%_))))
                      (let ((_%tl174686174789%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174684174784%_)))
                            (_%hd174685174787%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174684174784%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174686174789%_))
                            (_%__kont177933177934%_ _%hd174682174779%_)
                            (let ()
                              (declare (not safe))
                              (_%g174669174702%_)))))
                    (let () (declare (not safe)) (_%g174669174702%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl174677174765%_))
                    (let ((_%e174695174723%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174677174765%_))))
                      (let ((_%tl174697174728%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174695174723%_)))
                            (_%hd174696174726%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174695174723%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174697174728%_))
                            (_%__kont177935177936%_
                             _%hd174696174726%_
                             _%hd174676174763%_)
                            (let ()
                              (declare (not safe))
                              (_%g174669174702%_)))))
                    (let () (declare (not safe)) (_%g174669174702%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174677174765%_))
                                                    (let ((_%e174695174723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174677174765%_))))
                                                      (let ((_%tl174697174728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e174695174723%_)))
                    (_%hd174696174726%_
                     (let () (declare (not safe)) (##car _%e174695174723%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174697174728%_))
                    (_%__kont177935177936%_
                     _%hd174696174726%_
                     _%hd174676174763%_)
                    (let () (declare (not safe)) (_%g174669174702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174669174702%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174677174765%_))
                                                (let ((_%e174695174723%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174677174765%_))))
                                                  (let ((_%tl174697174728%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174695174723%_)))
                                                        (_%hd174696174726%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174695174723%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174697174728%_))
                                                        (_%__kont177935177936%_
                                                         _%hd174696174726%_
                                                         _%hd174676174763%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g174669174702%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g174669174702%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174677174765%_))
                                            (let ((_%e174695174723%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174677174765%_))))
                                              (let ((_%tl174697174728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174695174723%_)))
                                                    (_%hd174696174726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174695174723%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl174697174728%_))
                                                    (_%__kont177935177936%_
                                                     _%hd174696174726%_
                                                     _%hd174676174763%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174669174702%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g174669174702%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174677174765%_))
                                    (let ((_%e174695174723%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174677174765%_))))
                                      (let ((_%tl174697174728%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174695174723%_)))
                                            (_%hd174696174726%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174695174723%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174697174728%_))
                                            (_%__kont177935177936%_
                                             _%hd174696174726%_
                                             _%hd174676174763%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g174669174702%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g174669174702%_))))))
                        (let () (declare (not safe)) (_%g174669174702%_)))))
                (let () (declare (not safe)) (_%g174669174702%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self174581%_ _%stx174582%_)
        (let* ((_%g174584174605%_
                (lambda (_%g174585174602%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g174585174602%_))))
               (_%g174583174662%_
                (lambda (_%g174585174608%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g174585174608%_))
                      (let ((_%e174589174610%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g174585174608%_))))
                        (let ((_%hd174590174613%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174589174610%_)))
                              (_%tl174591174615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174589174610%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl174591174615%_))
                              (let ((_%e174592174618%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl174591174615%_))))
                                (let ((_%hd174593174621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e174592174618%_)))
                                      (_%tl174594174623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e174592174618%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174594174623%_))
                                      (let ((_%e174595174626%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174594174623%_))))
                                        (let ((_%hd174596174629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174595174626%_)))
                                              (_%tl174597174631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174595174626%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl174597174631%_))
                                              (let ((_%e174598174634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl174597174631%_))))
                                                (let ((_%hd174599174637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e174598174634%_)))
                                                      (_%tl174600174639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e174598174634%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl174600174639%_))
                                                      ((lambda (_%L174642%_
                                                                _%L174643%_
                                                                _%L174644%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self174581%_
                                                            _%L174643%_)))
                                                       _%hd174599174637%_
                                                       _%hd174596174629%_
                                                       _%hd174593174621%_)
                                                      (_%g174584174605%_
                                                       _%g174585174608%_))))
                                              (_%g174584174605%_
                                               _%g174585174608%_))))
                                      (_%g174584174605%_ _%g174585174608%_))))
                              (_%g174584174605%_ _%g174585174608%_))))
                      (_%g174584174605%_ _%g174585174608%_)))))
          (_%g174583174662%_ _%stx174582%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self173542%_ _%stx173543%_)
        (let* ((_%__stx177997177998%_ _%stx173543%_)
               (_%g173551173773%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx177997177998%_)))))
          (let ((_%__kont177999178000%_
                 (lambda (_%L174530%_ _%L174531%_ _%L174532%_ _%L174533%_)
                   (let ((__tmp179103
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173542%_ 'methods)))
                         (__tmp179102
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174531%_))))
                     (declare (not safe))
                     (hash-put! __tmp179103 __tmp179102 '#t))
                   (for-each
                    (lambda (_%g174566174568%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173542%_ _%g174566174568%_)))
                    (let ((__tmp179104
                           (lambda (_%g174570174573%_ _%g174571174575%_)
                             (cons _%g174570174573%_ _%g174571174575%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179104 '() _%L174530%_)))))
                (_%__kont178003178004%_
                 (lambda (_%L174365%_
                          _%L174366%_
                          _%L174367%_
                          _%L174368%_
                          _%L174369%_)
                   (let ((__tmp179106
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173542%_ 'methods)))
                         (__tmp179105
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174366%_))))
                     (declare (not safe))
                     (hash-put! __tmp179106 __tmp179105 '#t))
                   (for-each
                    (lambda (_%g174409174411%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173542%_ _%g174409174411%_)))
                    (let ((__tmp179107
                           (lambda (_%g174413174416%_ _%g174414174418%_)
                             (cons _%g174413174416%_ _%g174414174418%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179107 '() _%L174365%_)))))
                (_%__kont178007178008%_
                 (lambda (_%L174198%_ _%L174199%_ _%L174200%_)
                   (let ((__tmp179109
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173542%_ 'slots)))
                         (__tmp179108
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174198%_))))
                     (declare (not safe))
                     (hash-put! __tmp179109 __tmp179108 '#t))))
                (_%__kont178009178010%_
                 (lambda (_%L174075%_ _%L174076%_ _%L174077%_ _%L174078%_)
                   (let ((__tmp179111
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173542%_ 'slots)))
                         (__tmp179110
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174076%_))))
                     (declare (not safe))
                     (hash-put! __tmp179111 __tmp179110 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173542%_ _%L174075%_))))
                (_%__kont178011178012%_
                 (lambda (_%L173949%_ _%L173950%_)
                   (let* ((_%accessor173972%_
                           (let ((__tmp179112
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L173950%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179112)))
                          (_%klass173974%_
                           (let ((__tmp179113
                                  (##structure-ref
                                   _%accessor173972%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173543%_
                              __tmp179113)))
                          (_%slot173976%_
                           (##structure-ref
                            _%accessor173972%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor173972%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass173974%_
                                    _%slot173976%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass173974%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179115
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173542%_ 'slots)))
                               (__tmp179114
                                (##structure-ref
                                 _%accessor173972%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp179115 __tmp179114 '#t))))))
                (_%__kont178013178014%_
                 (lambda (_%L173849%_ _%L173850%_ _%L173851%_)
                   (let* ((_%mutator173878%_
                           (let ((__tmp179116
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L173851%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179116)))
                          (_%klass173880%_
                           (let ((__tmp179117
                                  (##structure-ref
                                   _%mutator173878%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173543%_
                              __tmp179117)))
                          (_%slot173882%_
                           (##structure-ref
                            _%mutator173878%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator173878%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass173880%_
                                    _%slot173882%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass173880%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179118
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173542%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp179118 _%slot173882%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self173542%_ _%L173849%_)))))
                (_%__kont178015178016%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self173542%_ _%stx173543%_)))))
            (let* ((_%__match178496178497%_
                    (lambda (_%e173745173785%_
                             _%hd173746173788%_
                             _%tl173747173790%_
                             _%e173748173793%_
                             _%hd173749173796%_
                             _%tl173750173798%_
                             _%e173751173801%_
                             _%hd173752173804%_
                             _%tl173753173806%_
                             _%e173754173809%_
                             _%hd173755173812%_
                             _%tl173756173814%_
                             _%e173757173817%_
                             _%hd173758173820%_
                             _%tl173759173822%_
                             _%e173760173825%_
                             _%hd173761173828%_
                             _%tl173762173830%_
                             _%e173763173833%_
                             _%hd173764173836%_
                             _%tl173765173838%_
                             _%e173766173841%_
                             _%hd173767173844%_
                             _%tl173768173846%_)
                      (let ((_%L173849%_ _%hd173767173844%_)
                            (_%L173850%_ _%hd173764173836%_)
                            (_%L173851%_ _%hd173755173812%_))
                        (if (and (let ((__tmp179119
                                        (let ((__tmp179120
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L173851%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179120))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179119
                                    'gxc#!mutator::t))
                                 (let ((__tmp179121
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173542%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173850%_
                                    __tmp179121)))
                            (_%__kont178013178014%_
                             _%L173849%_
                             _%L173850%_
                             _%L173851%_)
                            (_%__kont178015178016%_)))))
                   (_%__match178494178495%_
                    (lambda (_%e173745173785%_
                             _%hd173746173788%_
                             _%tl173747173790%_
                             _%e173748173793%_
                             _%hd173749173796%_
                             _%tl173750173798%_
                             _%e173751173801%_
                             _%hd173752173804%_
                             _%tl173753173806%_
                             _%e173754173809%_
                             _%hd173755173812%_
                             _%tl173756173814%_
                             _%e173757173817%_
                             _%hd173758173820%_
                             _%tl173759173822%_
                             _%e173760173825%_
                             _%hd173761173828%_
                             _%tl173762173830%_
                             _%e173763173833%_
                             _%hd173764173836%_
                             _%tl173765173838%_
                             _%e173766173841%_
                             _%hd173767173844%_
                             _%tl173768173846%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173768173846%_))
                          (_%__match178496178497%_
                           _%e173745173785%_
                           _%hd173746173788%_
                           _%tl173747173790%_
                           _%e173748173793%_
                           _%hd173749173796%_
                           _%tl173750173798%_
                           _%e173751173801%_
                           _%hd173752173804%_
                           _%tl173753173806%_
                           _%e173754173809%_
                           _%hd173755173812%_
                           _%tl173756173814%_
                           _%e173757173817%_
                           _%hd173758173820%_
                           _%tl173759173822%_
                           _%e173760173825%_
                           _%hd173761173828%_
                           _%tl173762173830%_
                           _%e173763173833%_
                           _%hd173764173836%_
                           _%tl173765173838%_
                           _%e173766173841%_
                           _%hd173767173844%_
                           _%tl173768173846%_)
                          (_%__kont178015178016%_))))
                   (_%__match178488178489%_
                    (lambda (_%e173745173785%_
                             _%hd173746173788%_
                             _%tl173747173790%_
                             _%e173748173793%_
                             _%hd173749173796%_
                             _%tl173750173798%_
                             _%e173751173801%_
                             _%hd173752173804%_
                             _%tl173753173806%_
                             _%e173754173809%_
                             _%hd173755173812%_
                             _%tl173756173814%_
                             _%e173757173817%_
                             _%hd173758173820%_
                             _%tl173759173822%_
                             _%e173760173825%_
                             _%hd173761173828%_
                             _%tl173762173830%_
                             _%e173763173833%_
                             _%hd173764173836%_
                             _%tl173765173838%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173759173822%_))
                          (let ((_%e173766173841%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173759173822%_))))
                            (let ((_%tl173768173846%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173766173841%_)))
                                  (_%hd173767173844%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173766173841%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173768173846%_))
                                  (_%__match178496178497%_
                                   _%e173745173785%_
                                   _%hd173746173788%_
                                   _%tl173747173790%_
                                   _%e173748173793%_
                                   _%hd173749173796%_
                                   _%tl173750173798%_
                                   _%e173751173801%_
                                   _%hd173752173804%_
                                   _%tl173753173806%_
                                   _%e173754173809%_
                                   _%hd173755173812%_
                                   _%tl173756173814%_
                                   _%e173757173817%_
                                   _%hd173758173820%_
                                   _%tl173759173822%_
                                   _%e173760173825%_
                                   _%hd173761173828%_
                                   _%tl173762173830%_
                                   _%e173763173833%_
                                   _%hd173764173836%_
                                   _%tl173765173838%_
                                   _%e173766173841%_
                                   _%hd173767173844%_
                                   _%tl173768173846%_)
                                  (_%__kont178015178016%_))))
                          (_%__kont178015178016%_))))
                   (_%__match178434178435%_
                    (lambda (_%e173721173893%_
                             _%hd173722173896%_
                             _%tl173723173898%_
                             _%e173724173901%_
                             _%hd173725173904%_
                             _%tl173726173906%_
                             _%e173727173909%_
                             _%hd173728173912%_
                             _%tl173729173914%_
                             _%e173730173917%_
                             _%hd173731173920%_
                             _%tl173732173922%_
                             _%e173733173925%_
                             _%hd173734173928%_
                             _%tl173735173930%_
                             _%e173736173933%_
                             _%hd173737173936%_
                             _%tl173738173938%_
                             _%e173739173941%_
                             _%hd173740173944%_
                             _%tl173741173946%_)
                      (let ((_%L173949%_ _%hd173740173944%_)
                            (_%L173950%_ _%hd173731173920%_))
                        (if (and (let ((__tmp179122
                                        (let ((__tmp179123
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L173950%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179123))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179122
                                    'gxc#!accessor::t))
                                 (let ((__tmp179124
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173542%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173949%_
                                    __tmp179124)))
                            (_%__kont178011178012%_ _%L173949%_ _%L173950%_)
                            (_%__kont178015178016%_)))))
                   (_%__match178432178433%_
                    (lambda (_%e173721173893%_
                             _%hd173722173896%_
                             _%tl173723173898%_
                             _%e173724173901%_
                             _%hd173725173904%_
                             _%tl173726173906%_
                             _%e173727173909%_
                             _%hd173728173912%_
                             _%tl173729173914%_
                             _%e173730173917%_
                             _%hd173731173920%_
                             _%tl173732173922%_
                             _%e173733173925%_
                             _%hd173734173928%_
                             _%tl173735173930%_
                             _%e173736173933%_
                             _%hd173737173936%_
                             _%tl173738173938%_
                             _%e173739173941%_
                             _%hd173740173944%_
                             _%tl173741173946%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173735173930%_))
                          (_%__match178434178435%_
                           _%e173721173893%_
                           _%hd173722173896%_
                           _%tl173723173898%_
                           _%e173724173901%_
                           _%hd173725173904%_
                           _%tl173726173906%_
                           _%e173727173909%_
                           _%hd173728173912%_
                           _%tl173729173914%_
                           _%e173730173917%_
                           _%hd173731173920%_
                           _%tl173732173922%_
                           _%e173733173925%_
                           _%hd173734173928%_
                           _%tl173735173930%_
                           _%e173736173933%_
                           _%hd173737173936%_
                           _%tl173738173938%_
                           _%e173739173941%_
                           _%hd173740173944%_
                           _%tl173741173946%_)
                          (_%__match178488178489%_
                           _%e173721173893%_
                           _%hd173722173896%_
                           _%tl173723173898%_
                           _%e173724173901%_
                           _%hd173725173904%_
                           _%tl173726173906%_
                           _%e173727173909%_
                           _%hd173728173912%_
                           _%tl173729173914%_
                           _%e173730173917%_
                           _%hd173731173920%_
                           _%tl173732173922%_
                           _%e173733173925%_
                           _%hd173734173928%_
                           _%tl173735173930%_
                           _%e173736173933%_
                           _%hd173737173936%_
                           _%tl173738173938%_
                           _%e173739173941%_
                           _%hd173740173944%_
                           _%tl173741173946%_))))
                   (_%__match178378178379%_
                    (lambda (_%e173686173987%_
                             _%hd173687173990%_
                             _%tl173688173992%_
                             _%e173689173995%_
                             _%hd173690173998%_
                             _%tl173691174000%_
                             _%e173692174003%_
                             _%hd173693174006%_
                             _%tl173694174008%_
                             _%e173695174011%_
                             _%hd173696174014%_
                             _%tl173697174016%_
                             _%e173698174019%_
                             _%hd173699174022%_
                             _%tl173700174024%_
                             _%e173701174027%_
                             _%hd173702174030%_
                             _%tl173703174032%_
                             _%e173704174035%_
                             _%hd173705174038%_
                             _%tl173706174040%_
                             _%e173707174043%_
                             _%hd173708174046%_
                             _%tl173709174048%_
                             _%e173710174051%_
                             _%hd173711174054%_
                             _%tl173712174056%_
                             _%e173713174059%_
                             _%hd173714174062%_
                             _%tl173715174064%_
                             _%e173716174067%_
                             _%hd173717174070%_
                             _%tl173718174072%_)
                      (let ((_%L174075%_ _%hd173717174070%_)
                            (_%L174076%_ _%hd173714174062%_)
                            (_%L174077%_ _%hd173705174038%_)
                            (_%L174078%_ _%hd173696174014%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174078%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174078%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp179125
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173542%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174077%_
                                    __tmp179125)))
                            (_%__kont178009178010%_
                             _%L174075%_
                             _%L174076%_
                             _%L174077%_
                             _%L174078%_)
                            (_%__kont178015178016%_)))))
                   (_%__match178370178371%_
                    (lambda (_%e173686173987%_
                             _%hd173687173990%_
                             _%tl173688173992%_
                             _%e173689173995%_
                             _%hd173690173998%_
                             _%tl173691174000%_
                             _%e173692174003%_
                             _%hd173693174006%_
                             _%tl173694174008%_
                             _%e173695174011%_
                             _%hd173696174014%_
                             _%tl173697174016%_
                             _%e173698174019%_
                             _%hd173699174022%_
                             _%tl173700174024%_
                             _%e173701174027%_
                             _%hd173702174030%_
                             _%tl173703174032%_
                             _%e173704174035%_
                             _%hd173705174038%_
                             _%tl173706174040%_
                             _%e173707174043%_
                             _%hd173708174046%_
                             _%tl173709174048%_
                             _%e173710174051%_
                             _%hd173711174054%_
                             _%tl173712174056%_
                             _%e173713174059%_
                             _%hd173714174062%_
                             _%tl173715174064%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173709174048%_))
                          (let ((_%e173716174067%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173709174048%_))))
                            (let ((_%tl173718174072%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173716174067%_)))
                                  (_%hd173717174070%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173716174067%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173718174072%_))
                                  (_%__match178378178379%_
                                   _%e173686173987%_
                                   _%hd173687173990%_
                                   _%tl173688173992%_
                                   _%e173689173995%_
                                   _%hd173690173998%_
                                   _%tl173691174000%_
                                   _%e173692174003%_
                                   _%hd173693174006%_
                                   _%tl173694174008%_
                                   _%e173695174011%_
                                   _%hd173696174014%_
                                   _%tl173697174016%_
                                   _%e173698174019%_
                                   _%hd173699174022%_
                                   _%tl173700174024%_
                                   _%e173701174027%_
                                   _%hd173702174030%_
                                   _%tl173703174032%_
                                   _%e173704174035%_
                                   _%hd173705174038%_
                                   _%tl173706174040%_
                                   _%e173707174043%_
                                   _%hd173708174046%_
                                   _%tl173709174048%_
                                   _%e173710174051%_
                                   _%hd173711174054%_
                                   _%tl173712174056%_
                                   _%e173713174059%_
                                   _%hd173714174062%_
                                   _%tl173715174064%_
                                   _%e173716174067%_
                                   _%hd173717174070%_
                                   _%tl173718174072%_)
                                  (_%__kont178015178016%_))))
                          (_%__match178494178495%_
                           _%e173686173987%_
                           _%hd173687173990%_
                           _%tl173688173992%_
                           _%e173689173995%_
                           _%hd173690173998%_
                           _%tl173691174000%_
                           _%e173692174003%_
                           _%hd173693174006%_
                           _%tl173694174008%_
                           _%e173695174011%_
                           _%hd173696174014%_
                           _%tl173697174016%_
                           _%e173698174019%_
                           _%hd173699174022%_
                           _%tl173700174024%_
                           _%e173701174027%_
                           _%hd173702174030%_
                           _%tl173703174032%_
                           _%e173704174035%_
                           _%hd173705174038%_
                           _%tl173706174040%_
                           _%e173707174043%_
                           _%hd173708174046%_
                           _%tl173709174048%_))))
                   (_%__match178292178293%_
                    (lambda (_%e173652174118%_
                             _%hd173653174121%_
                             _%tl173654174123%_
                             _%e173655174126%_
                             _%hd173656174129%_
                             _%tl173657174131%_
                             _%e173658174134%_
                             _%hd173659174137%_
                             _%tl173660174139%_
                             _%e173661174142%_
                             _%hd173662174145%_
                             _%tl173663174147%_
                             _%e173664174150%_
                             _%hd173665174153%_
                             _%tl173666174155%_
                             _%e173667174158%_
                             _%hd173668174161%_
                             _%tl173669174163%_
                             _%e173670174166%_
                             _%hd173671174169%_
                             _%tl173672174171%_
                             _%e173673174174%_
                             _%hd173674174177%_
                             _%tl173675174179%_
                             _%e173676174182%_
                             _%hd173677174185%_
                             _%tl173678174187%_
                             _%e173679174190%_
                             _%hd173680174193%_
                             _%tl173681174195%_)
                      (let ((_%L174198%_ _%hd173680174193%_)
                            (_%L174199%_ _%hd173671174169%_)
                            (_%L174200%_ _%hd173662174145%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174200%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174200%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp179126
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173542%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174199%_
                                    __tmp179126)))
                            (_%__kont178007178008%_
                             _%L174198%_
                             _%L174199%_
                             _%L174200%_)
                            (_%__match178496178497%_
                             _%e173652174118%_
                             _%hd173653174121%_
                             _%tl173654174123%_
                             _%e173655174126%_
                             _%hd173656174129%_
                             _%tl173657174131%_
                             _%e173658174134%_
                             _%hd173659174137%_
                             _%tl173660174139%_
                             _%e173661174142%_
                             _%hd173662174145%_
                             _%tl173663174147%_
                             _%e173664174150%_
                             _%hd173665174153%_
                             _%tl173666174155%_
                             _%e173667174158%_
                             _%hd173668174161%_
                             _%tl173669174163%_
                             _%e173670174166%_
                             _%hd173671174169%_
                             _%tl173672174171%_
                             _%e173673174174%_
                             _%hd173674174177%_
                             _%tl173675174179%_)))))
                   (_%__match178290178291%_
                    (lambda (_%e173652174118%_
                             _%hd173653174121%_
                             _%tl173654174123%_
                             _%e173655174126%_
                             _%hd173656174129%_
                             _%tl173657174131%_
                             _%e173658174134%_
                             _%hd173659174137%_
                             _%tl173660174139%_
                             _%e173661174142%_
                             _%hd173662174145%_
                             _%tl173663174147%_
                             _%e173664174150%_
                             _%hd173665174153%_
                             _%tl173666174155%_
                             _%e173667174158%_
                             _%hd173668174161%_
                             _%tl173669174163%_
                             _%e173670174166%_
                             _%hd173671174169%_
                             _%tl173672174171%_
                             _%e173673174174%_
                             _%hd173674174177%_
                             _%tl173675174179%_
                             _%e173676174182%_
                             _%hd173677174185%_
                             _%tl173678174187%_
                             _%e173679174190%_
                             _%hd173680174193%_
                             _%tl173681174195%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173675174179%_))
                          (_%__match178292178293%_
                           _%e173652174118%_
                           _%hd173653174121%_
                           _%tl173654174123%_
                           _%e173655174126%_
                           _%hd173656174129%_
                           _%tl173657174131%_
                           _%e173658174134%_
                           _%hd173659174137%_
                           _%tl173660174139%_
                           _%e173661174142%_
                           _%hd173662174145%_
                           _%tl173663174147%_
                           _%e173664174150%_
                           _%hd173665174153%_
                           _%tl173666174155%_
                           _%e173667174158%_
                           _%hd173668174161%_
                           _%tl173669174163%_
                           _%e173670174166%_
                           _%hd173671174169%_
                           _%tl173672174171%_
                           _%e173673174174%_
                           _%hd173674174177%_
                           _%tl173675174179%_
                           _%e173676174182%_
                           _%hd173677174185%_
                           _%tl173678174187%_
                           _%e173679174190%_
                           _%hd173680174193%_
                           _%tl173681174195%_)
                          (_%__match178370178371%_
                           _%e173652174118%_
                           _%hd173653174121%_
                           _%tl173654174123%_
                           _%e173655174126%_
                           _%hd173656174129%_
                           _%tl173657174131%_
                           _%e173658174134%_
                           _%hd173659174137%_
                           _%tl173660174139%_
                           _%e173661174142%_
                           _%hd173662174145%_
                           _%tl173663174147%_
                           _%e173664174150%_
                           _%hd173665174153%_
                           _%tl173666174155%_
                           _%e173667174158%_
                           _%hd173668174161%_
                           _%tl173669174163%_
                           _%e173670174166%_
                           _%hd173671174169%_
                           _%tl173672174171%_
                           _%e173673174174%_
                           _%hd173674174177%_
                           _%tl173675174179%_
                           _%e173676174182%_
                           _%hd173677174185%_
                           _%tl173678174187%_
                           _%e173679174190%_
                           _%hd173680174193%_
                           _%tl173681174195%_))))
                   (_%__match178280178281%_
                    (lambda (_%e173652174118%_
                             _%hd173653174121%_
                             _%tl173654174123%_
                             _%e173655174126%_
                             _%hd173656174129%_
                             _%tl173657174131%_
                             _%e173658174134%_
                             _%hd173659174137%_
                             _%tl173660174139%_
                             _%e173661174142%_
                             _%hd173662174145%_
                             _%tl173663174147%_
                             _%e173664174150%_
                             _%hd173665174153%_
                             _%tl173666174155%_
                             _%e173667174158%_
                             _%hd173668174161%_
                             _%tl173669174163%_
                             _%e173670174166%_
                             _%hd173671174169%_
                             _%tl173672174171%_
                             _%e173673174174%_
                             _%hd173674174177%_
                             _%tl173675174179%_
                             _%e173676174182%_
                             _%hd173677174185%_
                             _%tl173678174187%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd173677174185%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173678174187%_))
                              (let ((_%e173679174190%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173678174187%_))))
                                (let ((_%tl173681174195%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173679174190%_)))
                                      (_%hd173680174193%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173679174190%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173681174195%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl173675174179%_))
                                          (_%__match178292178293%_
                                           _%e173652174118%_
                                           _%hd173653174121%_
                                           _%tl173654174123%_
                                           _%e173655174126%_
                                           _%hd173656174129%_
                                           _%tl173657174131%_
                                           _%e173658174134%_
                                           _%hd173659174137%_
                                           _%tl173660174139%_
                                           _%e173661174142%_
                                           _%hd173662174145%_
                                           _%tl173663174147%_
                                           _%e173664174150%_
                                           _%hd173665174153%_
                                           _%tl173666174155%_
                                           _%e173667174158%_
                                           _%hd173668174161%_
                                           _%tl173669174163%_
                                           _%e173670174166%_
                                           _%hd173671174169%_
                                           _%tl173672174171%_
                                           _%e173673174174%_
                                           _%hd173674174177%_
                                           _%tl173675174179%_
                                           _%e173676174182%_
                                           _%hd173677174185%_
                                           _%tl173678174187%_
                                           _%e173679174190%_
                                           _%hd173680174193%_
                                           _%tl173681174195%_)
                                          (_%__match178370178371%_
                                           _%e173652174118%_
                                           _%hd173653174121%_
                                           _%tl173654174123%_
                                           _%e173655174126%_
                                           _%hd173656174129%_
                                           _%tl173657174131%_
                                           _%e173658174134%_
                                           _%hd173659174137%_
                                           _%tl173660174139%_
                                           _%e173661174142%_
                                           _%hd173662174145%_
                                           _%tl173663174147%_
                                           _%e173664174150%_
                                           _%hd173665174153%_
                                           _%tl173666174155%_
                                           _%e173667174158%_
                                           _%hd173668174161%_
                                           _%tl173669174163%_
                                           _%e173670174166%_
                                           _%hd173671174169%_
                                           _%tl173672174171%_
                                           _%e173673174174%_
                                           _%hd173674174177%_
                                           _%tl173675174179%_
                                           _%e173676174182%_
                                           _%hd173677174185%_
                                           _%tl173678174187%_
                                           _%e173679174190%_
                                           _%hd173680174193%_
                                           _%tl173681174195%_))
                                      (_%__match178494178495%_
                                       _%e173652174118%_
                                       _%hd173653174121%_
                                       _%tl173654174123%_
                                       _%e173655174126%_
                                       _%hd173656174129%_
                                       _%tl173657174131%_
                                       _%e173658174134%_
                                       _%hd173659174137%_
                                       _%tl173660174139%_
                                       _%e173661174142%_
                                       _%hd173662174145%_
                                       _%tl173663174147%_
                                       _%e173664174150%_
                                       _%hd173665174153%_
                                       _%tl173666174155%_
                                       _%e173667174158%_
                                       _%hd173668174161%_
                                       _%tl173669174163%_
                                       _%e173670174166%_
                                       _%hd173671174169%_
                                       _%tl173672174171%_
                                       _%e173673174174%_
                                       _%hd173674174177%_
                                       _%tl173675174179%_))))
                              (_%__match178494178495%_
                               _%e173652174118%_
                               _%hd173653174121%_
                               _%tl173654174123%_
                               _%e173655174126%_
                               _%hd173656174129%_
                               _%tl173657174131%_
                               _%e173658174134%_
                               _%hd173659174137%_
                               _%tl173660174139%_
                               _%e173661174142%_
                               _%hd173662174145%_
                               _%tl173663174147%_
                               _%e173664174150%_
                               _%hd173665174153%_
                               _%tl173666174155%_
                               _%e173667174158%_
                               _%hd173668174161%_
                               _%tl173669174163%_
                               _%e173670174166%_
                               _%hd173671174169%_
                               _%tl173672174171%_
                               _%e173673174174%_
                               _%hd173674174177%_
                               _%tl173675174179%_))
                          (_%__match178494178495%_
                           _%e173652174118%_
                           _%hd173653174121%_
                           _%tl173654174123%_
                           _%e173655174126%_
                           _%hd173656174129%_
                           _%tl173657174131%_
                           _%e173658174134%_
                           _%hd173659174137%_
                           _%tl173660174139%_
                           _%e173661174142%_
                           _%hd173662174145%_
                           _%tl173663174147%_
                           _%e173664174150%_
                           _%hd173665174153%_
                           _%tl173666174155%_
                           _%e173667174158%_
                           _%hd173668174161%_
                           _%tl173669174163%_
                           _%e173670174166%_
                           _%hd173671174169%_
                           _%tl173672174171%_
                           _%e173673174174%_
                           _%hd173674174177%_
                           _%tl173675174179%_))))
                   (_%__match178212178213%_
                    (lambda (_%e173601174237%_
                             _%hd173602174240%_
                             _%tl173603174242%_
                             _%e173604174245%_
                             _%hd173605174248%_
                             _%tl173606174250%_
                             _%e173607174253%_
                             _%hd173608174256%_
                             _%tl173609174258%_
                             _%e173610174261%_
                             _%hd173611174264%_
                             _%tl173612174266%_
                             _%e173613174269%_
                             _%hd173614174272%_
                             _%tl173615174274%_
                             _%e173616174277%_
                             _%hd173617174280%_
                             _%tl173618174282%_
                             _%e173619174285%_
                             _%hd173620174288%_
                             _%tl173621174290%_
                             _%e173622174293%_
                             _%hd173623174296%_
                             _%tl173624174298%_
                             _%e173625174301%_
                             _%hd173626174304%_
                             _%tl173627174306%_
                             _%e173628174309%_
                             _%hd173629174312%_
                             _%tl173630174314%_
                             _%e173631174317%_
                             _%hd173632174320%_
                             _%tl173633174322%_
                             _%e173634174325%_
                             _%hd173635174328%_
                             _%tl173636174330%_
                             _%e173637174333%_
                             _%hd173638174336%_
                             _%tl173639174338%_
                             _%__splice178005178006%_
                             _%target173640174341%_
                             _%tl173642174343%_)
                      (letrec ((_%loop173643174346%_
                                (lambda (_%hd173641174349%_
                                         _%args173647174351%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173641174349%_))
                                      (let ((_%e173644174354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173641174349%_))))
                                        (let ((_%lp-tl173646174359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173644174354%_)))
                                              (_%lp-hd173645174357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173644174354%_))))
                                          (_%loop173643174346%_
                                           _%lp-tl173646174359%_
                                           (cons _%lp-hd173645174357%_
                                                 _%args173647174351%_))))
                                      (let ((_%args173648174362%_
                                             (reverse _%args173647174351%_)))
                                        (let ((_%L174365%_
                                               _%args173648174362%_)
                                              (_%L174366%_ _%hd173638174336%_)
                                              (_%L174367%_ _%hd173629174312%_)
                                              (_%L174368%_ _%hd173620174288%_)
                                              (_%L174369%_ _%hd173611174264%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174369%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174368%_
                                                      'call-method))
                                                   (let ((__tmp179127
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173542%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174367%_
                                                      __tmp179127)))
                                              (_%__kont178003178004%_
                                               _%L174365%_
                                               _%L174366%_
                                               _%L174367%_
                                               _%L174368%_
                                               _%L174369%_)
                                              (_%__kont178015178016%_))))))))
                        (_%loop173643174346%_ _%target173640174341%_ '()))))
                   (_%__match178170178171%_
                    (lambda (_%e173601174237%_
                             _%hd173602174240%_
                             _%tl173603174242%_
                             _%e173604174245%_
                             _%hd173605174248%_
                             _%tl173606174250%_
                             _%e173607174253%_
                             _%hd173608174256%_
                             _%tl173609174258%_
                             _%e173610174261%_
                             _%hd173611174264%_
                             _%tl173612174266%_
                             _%e173613174269%_
                             _%hd173614174272%_
                             _%tl173615174274%_
                             _%e173616174277%_
                             _%hd173617174280%_
                             _%tl173618174282%_
                             _%e173619174285%_
                             _%hd173620174288%_
                             _%tl173621174290%_
                             _%e173622174293%_
                             _%hd173623174296%_
                             _%tl173624174298%_
                             _%e173625174301%_
                             _%hd173626174304%_
                             _%tl173627174306%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd173626174304%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173627174306%_))
                              (let ((_%e173628174309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173627174306%_))))
                                (let ((_%tl173630174314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173628174309%_)))
                                      (_%hd173629174312%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173628174309%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173630174314%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173624174298%_))
                                          (let ((_%e173631174317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173624174298%_))))
                                            (let ((_%tl173633174322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173631174317%_)))
                                                  (_%hd173632174320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173631174317%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173632174320%_))
                                                  (let ((_%e173634174325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173632174320%_))))
                                                    (let ((_%tl173636174330%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173634174325%_)))
                                                          (_%hd173635174328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173634174325%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd173635174328%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd173635174328%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173636174330%_))
                          (let ((_%e173637174333%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173636174330%_))))
                            (let ((_%tl173639174338%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173637174333%_)))
                                  (_%hd173638174336%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173637174333%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173639174338%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl173633174322%_))
                                      (let ((_%__splice178005178006%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl173633174322%_
                                                '0))))
                                        (let ((_%tl173642174343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178005178006%_
                                                  '1)))
                                              (_%target173640174341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice178005178006%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173642174343%_))
                                              (_%__match178212178213%_
                                               _%e173601174237%_
                                               _%hd173602174240%_
                                               _%tl173603174242%_
                                               _%e173604174245%_
                                               _%hd173605174248%_
                                               _%tl173606174250%_
                                               _%e173607174253%_
                                               _%hd173608174256%_
                                               _%tl173609174258%_
                                               _%e173610174261%_
                                               _%hd173611174264%_
                                               _%tl173612174266%_
                                               _%e173613174269%_
                                               _%hd173614174272%_
                                               _%tl173615174274%_
                                               _%e173616174277%_
                                               _%hd173617174280%_
                                               _%tl173618174282%_
                                               _%e173619174285%_
                                               _%hd173620174288%_
                                               _%tl173621174290%_
                                               _%e173622174293%_
                                               _%hd173623174296%_
                                               _%tl173624174298%_
                                               _%e173625174301%_
                                               _%hd173626174304%_
                                               _%tl173627174306%_
                                               _%e173628174309%_
                                               _%hd173629174312%_
                                               _%tl173630174314%_
                                               _%e173631174317%_
                                               _%hd173632174320%_
                                               _%tl173633174322%_
                                               _%e173634174325%_
                                               _%hd173635174328%_
                                               _%tl173636174330%_
                                               _%e173637174333%_
                                               _%hd173638174336%_
                                               _%tl173639174338%_
                                               _%__splice178005178006%_
                                               _%target173640174341%_
                                               _%tl173642174343%_)
                                              (_%__kont178015178016%_))))
                                      (_%__kont178015178016%_))
                                  (_%__kont178015178016%_))))
                          (_%__kont178015178016%_))
                      (_%__kont178015178016%_))
                  (_%__kont178015178016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178015178016%_))))
                                          (_%__match178494178495%_
                                           _%e173601174237%_
                                           _%hd173602174240%_
                                           _%tl173603174242%_
                                           _%e173604174245%_
                                           _%hd173605174248%_
                                           _%tl173606174250%_
                                           _%e173607174253%_
                                           _%hd173608174256%_
                                           _%tl173609174258%_
                                           _%e173610174261%_
                                           _%hd173611174264%_
                                           _%tl173612174266%_
                                           _%e173613174269%_
                                           _%hd173614174272%_
                                           _%tl173615174274%_
                                           _%e173616174277%_
                                           _%hd173617174280%_
                                           _%tl173618174282%_
                                           _%e173619174285%_
                                           _%hd173620174288%_
                                           _%tl173621174290%_
                                           _%e173622174293%_
                                           _%hd173623174296%_
                                           _%tl173624174298%_))
                                      (_%__match178494178495%_
                                       _%e173601174237%_
                                       _%hd173602174240%_
                                       _%tl173603174242%_
                                       _%e173604174245%_
                                       _%hd173605174248%_
                                       _%tl173606174250%_
                                       _%e173607174253%_
                                       _%hd173608174256%_
                                       _%tl173609174258%_
                                       _%e173610174261%_
                                       _%hd173611174264%_
                                       _%tl173612174266%_
                                       _%e173613174269%_
                                       _%hd173614174272%_
                                       _%tl173615174274%_
                                       _%e173616174277%_
                                       _%hd173617174280%_
                                       _%tl173618174282%_
                                       _%e173619174285%_
                                       _%hd173620174288%_
                                       _%tl173621174290%_
                                       _%e173622174293%_
                                       _%hd173623174296%_
                                       _%tl173624174298%_))))
                              (_%__match178494178495%_
                               _%e173601174237%_
                               _%hd173602174240%_
                               _%tl173603174242%_
                               _%e173604174245%_
                               _%hd173605174248%_
                               _%tl173606174250%_
                               _%e173607174253%_
                               _%hd173608174256%_
                               _%tl173609174258%_
                               _%e173610174261%_
                               _%hd173611174264%_
                               _%tl173612174266%_
                               _%e173613174269%_
                               _%hd173614174272%_
                               _%tl173615174274%_
                               _%e173616174277%_
                               _%hd173617174280%_
                               _%tl173618174282%_
                               _%e173619174285%_
                               _%hd173620174288%_
                               _%tl173621174290%_
                               _%e173622174293%_
                               _%hd173623174296%_
                               _%tl173624174298%_))
                          (_%__match178280178281%_
                           _%e173601174237%_
                           _%hd173602174240%_
                           _%tl173603174242%_
                           _%e173604174245%_
                           _%hd173605174248%_
                           _%tl173606174250%_
                           _%e173607174253%_
                           _%hd173608174256%_
                           _%tl173609174258%_
                           _%e173610174261%_
                           _%hd173611174264%_
                           _%tl173612174266%_
                           _%e173613174269%_
                           _%hd173614174272%_
                           _%tl173615174274%_
                           _%e173616174277%_
                           _%hd173617174280%_
                           _%tl173618174282%_
                           _%e173619174285%_
                           _%hd173620174288%_
                           _%tl173621174290%_
                           _%e173622174293%_
                           _%hd173623174296%_
                           _%tl173624174298%_
                           _%e173625174301%_
                           _%hd173626174304%_
                           _%tl173627174306%_))))
                   (_%__match178102178103%_
                    (lambda (_%e173557174426%_
                             _%hd173558174429%_
                             _%tl173559174431%_
                             _%e173560174434%_
                             _%hd173561174437%_
                             _%tl173562174439%_
                             _%e173563174442%_
                             _%hd173564174445%_
                             _%tl173565174447%_
                             _%e173566174450%_
                             _%hd173567174453%_
                             _%tl173568174455%_
                             _%e173569174458%_
                             _%hd173570174461%_
                             _%tl173571174463%_
                             _%e173572174466%_
                             _%hd173573174469%_
                             _%tl173574174471%_
                             _%e173575174474%_
                             _%hd173576174477%_
                             _%tl173577174479%_
                             _%e173578174482%_
                             _%hd173579174485%_
                             _%tl173580174487%_
                             _%e173581174490%_
                             _%hd173582174493%_
                             _%tl173583174495%_
                             _%e173584174498%_
                             _%hd173585174501%_
                             _%tl173586174503%_
                             _%__splice178001178002%_
                             _%target173587174506%_
                             _%tl173589174508%_)
                      (letrec ((_%loop173590174511%_
                                (lambda (_%hd173588174514%_
                                         _%args173594174516%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173588174514%_))
                                      (let ((_%e173591174519%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173588174514%_))))
                                        (let ((_%lp-tl173593174524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173591174519%_)))
                                              (_%lp-hd173592174522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173591174519%_))))
                                          (_%loop173590174511%_
                                           _%lp-tl173593174524%_
                                           (cons _%lp-hd173592174522%_
                                                 _%args173594174516%_))))
                                      (let ((_%args173595174527%_
                                             (reverse _%args173594174516%_)))
                                        (let ((_%L174530%_
                                               _%args173595174527%_)
                                              (_%L174531%_ _%hd173585174501%_)
                                              (_%L174532%_ _%hd173576174477%_)
                                              (_%L174533%_ _%hd173567174453%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174533%_
                                                      'call-method))
                                                   (let ((__tmp179128
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173542%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174532%_
                                                      __tmp179128)))
                                              (_%__kont177999178000%_
                                               _%L174530%_
                                               _%L174531%_
                                               _%L174532%_
                                               _%L174533%_)
                                              (_%__match178290178291%_
                                               _%e173557174426%_
                                               _%hd173558174429%_
                                               _%tl173559174431%_
                                               _%e173560174434%_
                                               _%hd173561174437%_
                                               _%tl173562174439%_
                                               _%e173563174442%_
                                               _%hd173564174445%_
                                               _%tl173565174447%_
                                               _%e173566174450%_
                                               _%hd173567174453%_
                                               _%tl173568174455%_
                                               _%e173569174458%_
                                               _%hd173570174461%_
                                               _%tl173571174463%_
                                               _%e173572174466%_
                                               _%hd173573174469%_
                                               _%tl173574174471%_
                                               _%e173575174474%_
                                               _%hd173576174477%_
                                               _%tl173577174479%_
                                               _%e173578174482%_
                                               _%hd173579174485%_
                                               _%tl173580174487%_
                                               _%e173581174490%_
                                               _%hd173582174493%_
                                               _%tl173583174495%_
                                               _%e173584174498%_
                                               _%hd173585174501%_
                                               _%tl173586174503%_))))))))
                        (_%loop173590174511%_ _%target173587174506%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx177997177998%_))
                  (let ((_%e173557174426%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx177997177998%_))))
                    (let ((_%tl173559174431%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173557174426%_)))
                          (_%hd173558174429%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173557174426%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173559174431%_))
                          (let ((_%e173560174434%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173559174431%_))))
                            (let ((_%tl173562174439%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173560174434%_)))
                                  (_%hd173561174437%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173560174434%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd173561174437%_))
                                  (let ((_%e173563174442%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd173561174437%_))))
                                    (let ((_%tl173565174447%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e173563174442%_)))
                                          (_%hd173564174445%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e173563174442%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd173564174445%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd173564174445%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl173565174447%_))
                                                  (let ((_%e173566174450%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl173565174447%_))))
                                                    (let ((_%tl173568174455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173566174450%_)))
                                                          (_%hd173567174453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173566174450%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl173568174455%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl173562174439%_))
                      (let ((_%e173569174458%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl173562174439%_))))
                        (let ((_%tl173571174463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173569174458%_)))
                              (_%hd173570174461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173569174458%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd173570174461%_))
                              (let ((_%e173572174466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd173570174461%_))))
                                (let ((_%tl173574174471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173572174466%_)))
                                      (_%hd173573174469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173572174466%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd173573174469%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd173573174469%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173574174471%_))
                                              (let ((_%e173575174474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173574174471%_))))
                                                (let ((_%tl173577174479%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173575174474%_)))
                                                      (_%hd173576174477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173575174474%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173577174479%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl173571174463%_))
                                                          (let ((_%e173578174482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl173571174463%_))))
                    (let ((_%tl173580174487%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173578174482%_)))
                          (_%hd173579174485%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173578174482%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd173579174485%_))
                          (let ((_%e173581174490%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd173579174485%_))))
                            (let ((_%tl173583174495%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173581174490%_)))
                                  (_%hd173582174493%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173581174490%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd173582174493%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd173582174493%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173583174495%_))
                                          (let ((_%e173584174498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173583174495%_))))
                                            (let ((_%tl173586174503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173584174498%_)))
                                                  (_%hd173585174501%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173584174498%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl173586174503%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl173580174487%_))
                                                      (let ((_%__splice178001178002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl173580174487%_ '0))))
                (let ((_%tl173589174508%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice178001178002%_ '1)))
                      (_%target173587174506%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice178001178002%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl173589174508%_))
                      (_%__match178102178103%_
                       _%e173557174426%_
                       _%hd173558174429%_
                       _%tl173559174431%_
                       _%e173560174434%_
                       _%hd173561174437%_
                       _%tl173562174439%_
                       _%e173563174442%_
                       _%hd173564174445%_
                       _%tl173565174447%_
                       _%e173566174450%_
                       _%hd173567174453%_
                       _%tl173568174455%_
                       _%e173569174458%_
                       _%hd173570174461%_
                       _%tl173571174463%_
                       _%e173572174466%_
                       _%hd173573174469%_
                       _%tl173574174471%_
                       _%e173575174474%_
                       _%hd173576174477%_
                       _%tl173577174479%_
                       _%e173578174482%_
                       _%hd173579174485%_
                       _%tl173580174487%_
                       _%e173581174490%_
                       _%hd173582174493%_
                       _%tl173583174495%_
                       _%e173584174498%_
                       _%hd173585174501%_
                       _%tl173586174503%_
                       _%__splice178001178002%_
                       _%target173587174506%_
                       _%tl173589174508%_)
                      (_%__match178290178291%_
                       _%e173557174426%_
                       _%hd173558174429%_
                       _%tl173559174431%_
                       _%e173560174434%_
                       _%hd173561174437%_
                       _%tl173562174439%_
                       _%e173563174442%_
                       _%hd173564174445%_
                       _%tl173565174447%_
                       _%e173566174450%_
                       _%hd173567174453%_
                       _%tl173568174455%_
                       _%e173569174458%_
                       _%hd173570174461%_
                       _%tl173571174463%_
                       _%e173572174466%_
                       _%hd173573174469%_
                       _%tl173574174471%_
                       _%e173575174474%_
                       _%hd173576174477%_
                       _%tl173577174479%_
                       _%e173578174482%_
                       _%hd173579174485%_
                       _%tl173580174487%_
                       _%e173581174490%_
                       _%hd173582174493%_
                       _%tl173583174495%_
                       _%e173584174498%_
                       _%hd173585174501%_
                       _%tl173586174503%_))))
              (_%__match178290178291%_
               _%e173557174426%_
               _%hd173558174429%_
               _%tl173559174431%_
               _%e173560174434%_
               _%hd173561174437%_
               _%tl173562174439%_
               _%e173563174442%_
               _%hd173564174445%_
               _%tl173565174447%_
               _%e173566174450%_
               _%hd173567174453%_
               _%tl173568174455%_
               _%e173569174458%_
               _%hd173570174461%_
               _%tl173571174463%_
               _%e173572174466%_
               _%hd173573174469%_
               _%tl173574174471%_
               _%e173575174474%_
               _%hd173576174477%_
               _%tl173577174479%_
               _%e173578174482%_
               _%hd173579174485%_
               _%tl173580174487%_
               _%e173581174490%_
               _%hd173582174493%_
               _%tl173583174495%_
               _%e173584174498%_
               _%hd173585174501%_
               _%tl173586174503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match178494178495%_
                                                   _%e173557174426%_
                                                   _%hd173558174429%_
                                                   _%tl173559174431%_
                                                   _%e173560174434%_
                                                   _%hd173561174437%_
                                                   _%tl173562174439%_
                                                   _%e173563174442%_
                                                   _%hd173564174445%_
                                                   _%tl173565174447%_
                                                   _%e173566174450%_
                                                   _%hd173567174453%_
                                                   _%tl173568174455%_
                                                   _%e173569174458%_
                                                   _%hd173570174461%_
                                                   _%tl173571174463%_
                                                   _%e173572174466%_
                                                   _%hd173573174469%_
                                                   _%tl173574174471%_
                                                   _%e173575174474%_
                                                   _%hd173576174477%_
                                                   _%tl173577174479%_
                                                   _%e173578174482%_
                                                   _%hd173579174485%_
                                                   _%tl173580174487%_))))
                                          (_%__match178494178495%_
                                           _%e173557174426%_
                                           _%hd173558174429%_
                                           _%tl173559174431%_
                                           _%e173560174434%_
                                           _%hd173561174437%_
                                           _%tl173562174439%_
                                           _%e173563174442%_
                                           _%hd173564174445%_
                                           _%tl173565174447%_
                                           _%e173566174450%_
                                           _%hd173567174453%_
                                           _%tl173568174455%_
                                           _%e173569174458%_
                                           _%hd173570174461%_
                                           _%tl173571174463%_
                                           _%e173572174466%_
                                           _%hd173573174469%_
                                           _%tl173574174471%_
                                           _%e173575174474%_
                                           _%hd173576174477%_
                                           _%tl173577174479%_
                                           _%e173578174482%_
                                           _%hd173579174485%_
                                           _%tl173580174487%_))
                                      (_%__match178170178171%_
                                       _%e173557174426%_
                                       _%hd173558174429%_
                                       _%tl173559174431%_
                                       _%e173560174434%_
                                       _%hd173561174437%_
                                       _%tl173562174439%_
                                       _%e173563174442%_
                                       _%hd173564174445%_
                                       _%tl173565174447%_
                                       _%e173566174450%_
                                       _%hd173567174453%_
                                       _%tl173568174455%_
                                       _%e173569174458%_
                                       _%hd173570174461%_
                                       _%tl173571174463%_
                                       _%e173572174466%_
                                       _%hd173573174469%_
                                       _%tl173574174471%_
                                       _%e173575174474%_
                                       _%hd173576174477%_
                                       _%tl173577174479%_
                                       _%e173578174482%_
                                       _%hd173579174485%_
                                       _%tl173580174487%_
                                       _%e173581174490%_
                                       _%hd173582174493%_
                                       _%tl173583174495%_))
                                  (_%__match178494178495%_
                                   _%e173557174426%_
                                   _%hd173558174429%_
                                   _%tl173559174431%_
                                   _%e173560174434%_
                                   _%hd173561174437%_
                                   _%tl173562174439%_
                                   _%e173563174442%_
                                   _%hd173564174445%_
                                   _%tl173565174447%_
                                   _%e173566174450%_
                                   _%hd173567174453%_
                                   _%tl173568174455%_
                                   _%e173569174458%_
                                   _%hd173570174461%_
                                   _%tl173571174463%_
                                   _%e173572174466%_
                                   _%hd173573174469%_
                                   _%tl173574174471%_
                                   _%e173575174474%_
                                   _%hd173576174477%_
                                   _%tl173577174479%_
                                   _%e173578174482%_
                                   _%hd173579174485%_
                                   _%tl173580174487%_))))
                          (_%__match178494178495%_
                           _%e173557174426%_
                           _%hd173558174429%_
                           _%tl173559174431%_
                           _%e173560174434%_
                           _%hd173561174437%_
                           _%tl173562174439%_
                           _%e173563174442%_
                           _%hd173564174445%_
                           _%tl173565174447%_
                           _%e173566174450%_
                           _%hd173567174453%_
                           _%tl173568174455%_
                           _%e173569174458%_
                           _%hd173570174461%_
                           _%tl173571174463%_
                           _%e173572174466%_
                           _%hd173573174469%_
                           _%tl173574174471%_
                           _%e173575174474%_
                           _%hd173576174477%_
                           _%tl173577174479%_
                           _%e173578174482%_
                           _%hd173579174485%_
                           _%tl173580174487%_))))
                  (_%__match178432178433%_
                   _%e173557174426%_
                   _%hd173558174429%_
                   _%tl173559174431%_
                   _%e173560174434%_
                   _%hd173561174437%_
                   _%tl173562174439%_
                   _%e173563174442%_
                   _%hd173564174445%_
                   _%tl173565174447%_
                   _%e173566174450%_
                   _%hd173567174453%_
                   _%tl173568174455%_
                   _%e173569174458%_
                   _%hd173570174461%_
                   _%tl173571174463%_
                   _%e173572174466%_
                   _%hd173573174469%_
                   _%tl173574174471%_
                   _%e173575174474%_
                   _%hd173576174477%_
                   _%tl173577174479%_))
              (_%__kont178015178016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont178015178016%_))
                                          (_%__kont178015178016%_))
                                      (_%__kont178015178016%_))))
                              (_%__kont178015178016%_))))
                      (_%__kont178015178016%_))
                  (_%__kont178015178016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178015178016%_))
                                              (_%__kont178015178016%_))
                                          (_%__kont178015178016%_))))
                                  (_%__kont178015178016%_))))
                          (_%__kont178015178016%_))))
                  (_%__kont178015178016%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self172481%_ _%stx172482%_)
        (letrec ((_%force-e172484%_
                  (lambda (_%target173540%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target173540%_ '()))
                                      '()))))))
          (let* ((_%__stx178499178500%_ _%stx172482%_)
                 (_%g172492172714%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx178499178500%_)))))
            (let ((_%__kont178501178502%_
                   (lambda (_%L173486%_ _%L173487%_ _%L173488%_ _%L173489%_)
                     (let ((_%$method173534%_
                            (let ((__tmp179130
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172481%_ 'methods)))
                                  (__tmp179129
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173487%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179130 __tmp179129)))
                           (_%args173535%_
                            (map (lambda (_%g173522173524%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172481%_
                                      _%g173522173524%_)))
                                 (let ((__tmp179131
                                        (lambda (_%g173526173529%_
                                                 _%g173527173531%_)
                                          (cons _%g173526173529%_
                                                _%g173527173531%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179131 '() _%L173486%_)))))
                       (let ((__tmp179132
                              (cons '%#call
                                    (cons (_%force-e172484%_ _%$method173534%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172481%_
                                                               'receiver))
                                                            '()))
                                                _%args173535%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179132 _%stx172482%_)))))
                  (_%__kont178505178506%_
                   (lambda (_%L173318%_
                            _%L173319%_
                            _%L173320%_
                            _%L173321%_
                            _%L173322%_)
                     (let ((_%$method173374%_
                            (let ((__tmp179134
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172481%_ 'methods)))
                                  (__tmp179133
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173319%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179134 __tmp179133)))
                           (_%args173375%_
                            (map (lambda (_%g173362173364%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172481%_
                                      _%g173362173364%_)))
                                 (let ((__tmp179135
                                        (lambda (_%g173366173369%_
                                                 _%g173367173371%_)
                                          (cons _%g173366173369%_
                                                _%g173367173371%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179135 '() _%L173318%_)))))
                       (let ((__tmp179136
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e172484%_
                                                 _%$method173374%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172481%_ 'receiver))
                          '()))
              _%args173375%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179136 _%stx172482%_)))))
                  (_%__kont178509178510%_
                   (lambda (_%L173149%_ _%L173150%_ _%L173151%_)
                     (let* ((_%$field173183%_
                             (let ((__tmp179138
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self172481%_ 'slots)))
                                   (__tmp179137
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L173149%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp179138 __tmp179137)))
                            (__tmp179139
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self172481%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field173183%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self172481%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp179139 _%stx172482%_))))
                  (_%__kont178511178512%_
                   (lambda (_%L173023%_ _%L173024%_ _%L173025%_ _%L173026%_)
                     (let ((_%$field173061%_
                            (let ((__tmp179141
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172481%_ 'slots)))
                                  (__tmp179140
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173024%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179141 __tmp179140)))
                           (_%expr173062%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self172481%_ _%L173023%_))))
                       (let ((__tmp179142
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self172481%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field173061%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172481%_ 'receiver))
                          '()))
              (cons _%expr173062%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179142 _%stx172482%_)))))
                  (_%__kont178513178514%_
                   (lambda (_%L172895%_ _%L172896%_)
                     (let* ((_%accessor172918%_
                             (let ((__tmp179143
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172896%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179143)))
                            (_%klass172920%_
                             (let ((__tmp179144
                                    (##structure-ref
                                     _%accessor172918%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172482%_
                                __tmp179144)))
                            (_%slot172922%_
                             (##structure-ref
                              _%accessor172918%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor172918%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass172920%_
                                      _%slot172922%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass172920%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx172482%_
                           (let* ((_%$field172928%_
                                   (let ((__tmp179145
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172481%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179145 _%slot172922%_)))
                                  (__tmp179146
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172481%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field172928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172481%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179146
                              _%stx172482%_))))))
                  (_%__kont178515178516%_
                   (lambda (_%L172790%_ _%L172791%_ _%L172792%_)
                     (let* ((_%mutator172820%_
                             (let ((__tmp179147
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172792%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179147)))
                            (_%klass172822%_
                             (let ((__tmp179148
                                    (##structure-ref
                                     _%mutator172820%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172482%_
                                __tmp179148)))
                            (_%slot172824%_
                             (##structure-ref
                              _%mutator172820%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr172826%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self172481%_ _%L172790%_))))
                       (if (if (##structure-ref
                                _%mutator172820%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass172822%_
                                      _%slot172824%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass172822%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp179149
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L172792%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L172791%_
                                                                '()))
                                                    (cons _%expr172826%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179149 _%stx172482%_))
                           (let* ((_%$field172832%_
                                   (let ((__tmp179150
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172481%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179150 _%slot172824%_)))
                                  (__tmp179151
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172481%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field172832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172481%_ 'receiver))
                               '()))
                   (cons _%expr172826%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179151
                              _%stx172482%_))))))
                  (_%__kont178517178518%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self172481%_ _%stx172482%_)))))
              (let* ((_%__match178998178999%_
                      (lambda (_%e172686172726%_
                               _%hd172687172729%_
                               _%tl172688172731%_
                               _%e172689172734%_
                               _%hd172690172737%_
                               _%tl172691172739%_
                               _%e172692172742%_
                               _%hd172693172745%_
                               _%tl172694172747%_
                               _%e172695172750%_
                               _%hd172696172753%_
                               _%tl172697172755%_
                               _%e172698172758%_
                               _%hd172699172761%_
                               _%tl172700172763%_
                               _%e172701172766%_
                               _%hd172702172769%_
                               _%tl172703172771%_
                               _%e172704172774%_
                               _%hd172705172777%_
                               _%tl172706172779%_
                               _%e172707172782%_
                               _%hd172708172785%_
                               _%tl172709172787%_)
                        (let ((_%L172790%_ _%hd172708172785%_)
                              (_%L172791%_ _%hd172705172777%_)
                              (_%L172792%_ _%hd172696172753%_))
                          (if (and (let ((__tmp179152
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172481%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172791%_
                                      __tmp179152))
                                   (let ((__tmp179153
                                          (let ((__tmp179154
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172792%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179154))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179153
                                      'gxc#!mutator::t)))
                              (_%__kont178515178516%_
                               _%L172790%_
                               _%L172791%_
                               _%L172792%_)
                              (_%__kont178517178518%_)))))
                     (_%__match178996178997%_
                      (lambda (_%e172686172726%_
                               _%hd172687172729%_
                               _%tl172688172731%_
                               _%e172689172734%_
                               _%hd172690172737%_
                               _%tl172691172739%_
                               _%e172692172742%_
                               _%hd172693172745%_
                               _%tl172694172747%_
                               _%e172695172750%_
                               _%hd172696172753%_
                               _%tl172697172755%_
                               _%e172698172758%_
                               _%hd172699172761%_
                               _%tl172700172763%_
                               _%e172701172766%_
                               _%hd172702172769%_
                               _%tl172703172771%_
                               _%e172704172774%_
                               _%hd172705172777%_
                               _%tl172706172779%_
                               _%e172707172782%_
                               _%hd172708172785%_
                               _%tl172709172787%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172709172787%_))
                            (_%__match178998178999%_
                             _%e172686172726%_
                             _%hd172687172729%_
                             _%tl172688172731%_
                             _%e172689172734%_
                             _%hd172690172737%_
                             _%tl172691172739%_
                             _%e172692172742%_
                             _%hd172693172745%_
                             _%tl172694172747%_
                             _%e172695172750%_
                             _%hd172696172753%_
                             _%tl172697172755%_
                             _%e172698172758%_
                             _%hd172699172761%_
                             _%tl172700172763%_
                             _%e172701172766%_
                             _%hd172702172769%_
                             _%tl172703172771%_
                             _%e172704172774%_
                             _%hd172705172777%_
                             _%tl172706172779%_
                             _%e172707172782%_
                             _%hd172708172785%_
                             _%tl172709172787%_)
                            (_%__kont178517178518%_))))
                     (_%__match178990178991%_
                      (lambda (_%e172686172726%_
                               _%hd172687172729%_
                               _%tl172688172731%_
                               _%e172689172734%_
                               _%hd172690172737%_
                               _%tl172691172739%_
                               _%e172692172742%_
                               _%hd172693172745%_
                               _%tl172694172747%_
                               _%e172695172750%_
                               _%hd172696172753%_
                               _%tl172697172755%_
                               _%e172698172758%_
                               _%hd172699172761%_
                               _%tl172700172763%_
                               _%e172701172766%_
                               _%hd172702172769%_
                               _%tl172703172771%_
                               _%e172704172774%_
                               _%hd172705172777%_
                               _%tl172706172779%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172700172763%_))
                            (let ((_%e172707172782%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172700172763%_))))
                              (let ((_%tl172709172787%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172707172782%_)))
                                    (_%hd172708172785%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172707172782%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172709172787%_))
                                    (_%__match178998178999%_
                                     _%e172686172726%_
                                     _%hd172687172729%_
                                     _%tl172688172731%_
                                     _%e172689172734%_
                                     _%hd172690172737%_
                                     _%tl172691172739%_
                                     _%e172692172742%_
                                     _%hd172693172745%_
                                     _%tl172694172747%_
                                     _%e172695172750%_
                                     _%hd172696172753%_
                                     _%tl172697172755%_
                                     _%e172698172758%_
                                     _%hd172699172761%_
                                     _%tl172700172763%_
                                     _%e172701172766%_
                                     _%hd172702172769%_
                                     _%tl172703172771%_
                                     _%e172704172774%_
                                     _%hd172705172777%_
                                     _%tl172706172779%_
                                     _%e172707172782%_
                                     _%hd172708172785%_
                                     _%tl172709172787%_)
                                    (_%__kont178517178518%_))))
                            (_%__kont178517178518%_))))
                     (_%__match178936178937%_
                      (lambda (_%e172662172839%_
                               _%hd172663172842%_
                               _%tl172664172844%_
                               _%e172665172847%_
                               _%hd172666172850%_
                               _%tl172667172852%_
                               _%e172668172855%_
                               _%hd172669172858%_
                               _%tl172670172860%_
                               _%e172671172863%_
                               _%hd172672172866%_
                               _%tl172673172868%_
                               _%e172674172871%_
                               _%hd172675172874%_
                               _%tl172676172876%_
                               _%e172677172879%_
                               _%hd172678172882%_
                               _%tl172679172884%_
                               _%e172680172887%_
                               _%hd172681172890%_
                               _%tl172682172892%_)
                        (let ((_%L172895%_ _%hd172681172890%_)
                              (_%L172896%_ _%hd172672172866%_))
                          (if (and (let ((__tmp179155
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172481%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172895%_
                                      __tmp179155))
                                   (let ((__tmp179156
                                          (let ((__tmp179157
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172896%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179157))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179156
                                      'gxc#!accessor::t)))
                              (_%__kont178513178514%_ _%L172895%_ _%L172896%_)
                              (_%__kont178517178518%_)))))
                     (_%__match178934178935%_
                      (lambda (_%e172662172839%_
                               _%hd172663172842%_
                               _%tl172664172844%_
                               _%e172665172847%_
                               _%hd172666172850%_
                               _%tl172667172852%_
                               _%e172668172855%_
                               _%hd172669172858%_
                               _%tl172670172860%_
                               _%e172671172863%_
                               _%hd172672172866%_
                               _%tl172673172868%_
                               _%e172674172871%_
                               _%hd172675172874%_
                               _%tl172676172876%_
                               _%e172677172879%_
                               _%hd172678172882%_
                               _%tl172679172884%_
                               _%e172680172887%_
                               _%hd172681172890%_
                               _%tl172682172892%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172676172876%_))
                            (_%__match178936178937%_
                             _%e172662172839%_
                             _%hd172663172842%_
                             _%tl172664172844%_
                             _%e172665172847%_
                             _%hd172666172850%_
                             _%tl172667172852%_
                             _%e172668172855%_
                             _%hd172669172858%_
                             _%tl172670172860%_
                             _%e172671172863%_
                             _%hd172672172866%_
                             _%tl172673172868%_
                             _%e172674172871%_
                             _%hd172675172874%_
                             _%tl172676172876%_
                             _%e172677172879%_
                             _%hd172678172882%_
                             _%tl172679172884%_
                             _%e172680172887%_
                             _%hd172681172890%_
                             _%tl172682172892%_)
                            (_%__match178990178991%_
                             _%e172662172839%_
                             _%hd172663172842%_
                             _%tl172664172844%_
                             _%e172665172847%_
                             _%hd172666172850%_
                             _%tl172667172852%_
                             _%e172668172855%_
                             _%hd172669172858%_
                             _%tl172670172860%_
                             _%e172671172863%_
                             _%hd172672172866%_
                             _%tl172673172868%_
                             _%e172674172871%_
                             _%hd172675172874%_
                             _%tl172676172876%_
                             _%e172677172879%_
                             _%hd172678172882%_
                             _%tl172679172884%_
                             _%e172680172887%_
                             _%hd172681172890%_
                             _%tl172682172892%_))))
                     (_%__match178880178881%_
                      (lambda (_%e172627172935%_
                               _%hd172628172938%_
                               _%tl172629172940%_
                               _%e172630172943%_
                               _%hd172631172946%_
                               _%tl172632172948%_
                               _%e172633172951%_
                               _%hd172634172954%_
                               _%tl172635172956%_
                               _%e172636172959%_
                               _%hd172637172962%_
                               _%tl172638172964%_
                               _%e172639172967%_
                               _%hd172640172970%_
                               _%tl172641172972%_
                               _%e172642172975%_
                               _%hd172643172978%_
                               _%tl172644172980%_
                               _%e172645172983%_
                               _%hd172646172986%_
                               _%tl172647172988%_
                               _%e172648172991%_
                               _%hd172649172994%_
                               _%tl172650172996%_
                               _%e172651172999%_
                               _%hd172652173002%_
                               _%tl172653173004%_
                               _%e172654173007%_
                               _%hd172655173010%_
                               _%tl172656173012%_
                               _%e172657173015%_
                               _%hd172658173018%_
                               _%tl172659173020%_)
                        (let ((_%L173023%_ _%hd172658173018%_)
                              (_%L173024%_ _%hd172655173010%_)
                              (_%L173025%_ _%hd172646172986%_)
                              (_%L173026%_ _%hd172637172962%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173026%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173026%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp179158
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172481%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173025%_
                                      __tmp179158)))
                              (_%__kont178511178512%_
                               _%L173023%_
                               _%L173024%_
                               _%L173025%_
                               _%L173026%_)
                              (_%__kont178517178518%_)))))
                     (_%__match178872178873%_
                      (lambda (_%e172627172935%_
                               _%hd172628172938%_
                               _%tl172629172940%_
                               _%e172630172943%_
                               _%hd172631172946%_
                               _%tl172632172948%_
                               _%e172633172951%_
                               _%hd172634172954%_
                               _%tl172635172956%_
                               _%e172636172959%_
                               _%hd172637172962%_
                               _%tl172638172964%_
                               _%e172639172967%_
                               _%hd172640172970%_
                               _%tl172641172972%_
                               _%e172642172975%_
                               _%hd172643172978%_
                               _%tl172644172980%_
                               _%e172645172983%_
                               _%hd172646172986%_
                               _%tl172647172988%_
                               _%e172648172991%_
                               _%hd172649172994%_
                               _%tl172650172996%_
                               _%e172651172999%_
                               _%hd172652173002%_
                               _%tl172653173004%_
                               _%e172654173007%_
                               _%hd172655173010%_
                               _%tl172656173012%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172650172996%_))
                            (let ((_%e172657173015%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172650172996%_))))
                              (let ((_%tl172659173020%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172657173015%_)))
                                    (_%hd172658173018%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172657173015%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172659173020%_))
                                    (_%__match178880178881%_
                                     _%e172627172935%_
                                     _%hd172628172938%_
                                     _%tl172629172940%_
                                     _%e172630172943%_
                                     _%hd172631172946%_
                                     _%tl172632172948%_
                                     _%e172633172951%_
                                     _%hd172634172954%_
                                     _%tl172635172956%_
                                     _%e172636172959%_
                                     _%hd172637172962%_
                                     _%tl172638172964%_
                                     _%e172639172967%_
                                     _%hd172640172970%_
                                     _%tl172641172972%_
                                     _%e172642172975%_
                                     _%hd172643172978%_
                                     _%tl172644172980%_
                                     _%e172645172983%_
                                     _%hd172646172986%_
                                     _%tl172647172988%_
                                     _%e172648172991%_
                                     _%hd172649172994%_
                                     _%tl172650172996%_
                                     _%e172651172999%_
                                     _%hd172652173002%_
                                     _%tl172653173004%_
                                     _%e172654173007%_
                                     _%hd172655173010%_
                                     _%tl172656173012%_
                                     _%e172657173015%_
                                     _%hd172658173018%_
                                     _%tl172659173020%_)
                                    (_%__kont178517178518%_))))
                            (_%__match178996178997%_
                             _%e172627172935%_
                             _%hd172628172938%_
                             _%tl172629172940%_
                             _%e172630172943%_
                             _%hd172631172946%_
                             _%tl172632172948%_
                             _%e172633172951%_
                             _%hd172634172954%_
                             _%tl172635172956%_
                             _%e172636172959%_
                             _%hd172637172962%_
                             _%tl172638172964%_
                             _%e172639172967%_
                             _%hd172640172970%_
                             _%tl172641172972%_
                             _%e172642172975%_
                             _%hd172643172978%_
                             _%tl172644172980%_
                             _%e172645172983%_
                             _%hd172646172986%_
                             _%tl172647172988%_
                             _%e172648172991%_
                             _%hd172649172994%_
                             _%tl172650172996%_))))
                     (_%__match178794178795%_
                      (lambda (_%e172593173069%_
                               _%hd172594173072%_
                               _%tl172595173074%_
                               _%e172596173077%_
                               _%hd172597173080%_
                               _%tl172598173082%_
                               _%e172599173085%_
                               _%hd172600173088%_
                               _%tl172601173090%_
                               _%e172602173093%_
                               _%hd172603173096%_
                               _%tl172604173098%_
                               _%e172605173101%_
                               _%hd172606173104%_
                               _%tl172607173106%_
                               _%e172608173109%_
                               _%hd172609173112%_
                               _%tl172610173114%_
                               _%e172611173117%_
                               _%hd172612173120%_
                               _%tl172613173122%_
                               _%e172614173125%_
                               _%hd172615173128%_
                               _%tl172616173130%_
                               _%e172617173133%_
                               _%hd172618173136%_
                               _%tl172619173138%_
                               _%e172620173141%_
                               _%hd172621173144%_
                               _%tl172622173146%_)
                        (let ((_%L173149%_ _%hd172621173144%_)
                              (_%L173150%_ _%hd172612173120%_)
                              (_%L173151%_ _%hd172603173096%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173151%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173151%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp179159
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172481%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173150%_
                                      __tmp179159)))
                              (_%__kont178509178510%_
                               _%L173149%_
                               _%L173150%_
                               _%L173151%_)
                              (_%__match178998178999%_
                               _%e172593173069%_
                               _%hd172594173072%_
                               _%tl172595173074%_
                               _%e172596173077%_
                               _%hd172597173080%_
                               _%tl172598173082%_
                               _%e172599173085%_
                               _%hd172600173088%_
                               _%tl172601173090%_
                               _%e172602173093%_
                               _%hd172603173096%_
                               _%tl172604173098%_
                               _%e172605173101%_
                               _%hd172606173104%_
                               _%tl172607173106%_
                               _%e172608173109%_
                               _%hd172609173112%_
                               _%tl172610173114%_
                               _%e172611173117%_
                               _%hd172612173120%_
                               _%tl172613173122%_
                               _%e172614173125%_
                               _%hd172615173128%_
                               _%tl172616173130%_)))))
                     (_%__match178792178793%_
                      (lambda (_%e172593173069%_
                               _%hd172594173072%_
                               _%tl172595173074%_
                               _%e172596173077%_
                               _%hd172597173080%_
                               _%tl172598173082%_
                               _%e172599173085%_
                               _%hd172600173088%_
                               _%tl172601173090%_
                               _%e172602173093%_
                               _%hd172603173096%_
                               _%tl172604173098%_
                               _%e172605173101%_
                               _%hd172606173104%_
                               _%tl172607173106%_
                               _%e172608173109%_
                               _%hd172609173112%_
                               _%tl172610173114%_
                               _%e172611173117%_
                               _%hd172612173120%_
                               _%tl172613173122%_
                               _%e172614173125%_
                               _%hd172615173128%_
                               _%tl172616173130%_
                               _%e172617173133%_
                               _%hd172618173136%_
                               _%tl172619173138%_
                               _%e172620173141%_
                               _%hd172621173144%_
                               _%tl172622173146%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172616173130%_))
                            (_%__match178794178795%_
                             _%e172593173069%_
                             _%hd172594173072%_
                             _%tl172595173074%_
                             _%e172596173077%_
                             _%hd172597173080%_
                             _%tl172598173082%_
                             _%e172599173085%_
                             _%hd172600173088%_
                             _%tl172601173090%_
                             _%e172602173093%_
                             _%hd172603173096%_
                             _%tl172604173098%_
                             _%e172605173101%_
                             _%hd172606173104%_
                             _%tl172607173106%_
                             _%e172608173109%_
                             _%hd172609173112%_
                             _%tl172610173114%_
                             _%e172611173117%_
                             _%hd172612173120%_
                             _%tl172613173122%_
                             _%e172614173125%_
                             _%hd172615173128%_
                             _%tl172616173130%_
                             _%e172617173133%_
                             _%hd172618173136%_
                             _%tl172619173138%_
                             _%e172620173141%_
                             _%hd172621173144%_
                             _%tl172622173146%_)
                            (_%__match178872178873%_
                             _%e172593173069%_
                             _%hd172594173072%_
                             _%tl172595173074%_
                             _%e172596173077%_
                             _%hd172597173080%_
                             _%tl172598173082%_
                             _%e172599173085%_
                             _%hd172600173088%_
                             _%tl172601173090%_
                             _%e172602173093%_
                             _%hd172603173096%_
                             _%tl172604173098%_
                             _%e172605173101%_
                             _%hd172606173104%_
                             _%tl172607173106%_
                             _%e172608173109%_
                             _%hd172609173112%_
                             _%tl172610173114%_
                             _%e172611173117%_
                             _%hd172612173120%_
                             _%tl172613173122%_
                             _%e172614173125%_
                             _%hd172615173128%_
                             _%tl172616173130%_
                             _%e172617173133%_
                             _%hd172618173136%_
                             _%tl172619173138%_
                             _%e172620173141%_
                             _%hd172621173144%_
                             _%tl172622173146%_))))
                     (_%__match178782178783%_
                      (lambda (_%e172593173069%_
                               _%hd172594173072%_
                               _%tl172595173074%_
                               _%e172596173077%_
                               _%hd172597173080%_
                               _%tl172598173082%_
                               _%e172599173085%_
                               _%hd172600173088%_
                               _%tl172601173090%_
                               _%e172602173093%_
                               _%hd172603173096%_
                               _%tl172604173098%_
                               _%e172605173101%_
                               _%hd172606173104%_
                               _%tl172607173106%_
                               _%e172608173109%_
                               _%hd172609173112%_
                               _%tl172610173114%_
                               _%e172611173117%_
                               _%hd172612173120%_
                               _%tl172613173122%_
                               _%e172614173125%_
                               _%hd172615173128%_
                               _%tl172616173130%_
                               _%e172617173133%_
                               _%hd172618173136%_
                               _%tl172619173138%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd172618173136%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172619173138%_))
                                (let ((_%e172620173141%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172619173138%_))))
                                  (let ((_%tl172622173146%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172620173141%_)))
                                        (_%hd172621173144%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172620173141%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172622173146%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172616173130%_))
                                            (_%__match178794178795%_
                                             _%e172593173069%_
                                             _%hd172594173072%_
                                             _%tl172595173074%_
                                             _%e172596173077%_
                                             _%hd172597173080%_
                                             _%tl172598173082%_
                                             _%e172599173085%_
                                             _%hd172600173088%_
                                             _%tl172601173090%_
                                             _%e172602173093%_
                                             _%hd172603173096%_
                                             _%tl172604173098%_
                                             _%e172605173101%_
                                             _%hd172606173104%_
                                             _%tl172607173106%_
                                             _%e172608173109%_
                                             _%hd172609173112%_
                                             _%tl172610173114%_
                                             _%e172611173117%_
                                             _%hd172612173120%_
                                             _%tl172613173122%_
                                             _%e172614173125%_
                                             _%hd172615173128%_
                                             _%tl172616173130%_
                                             _%e172617173133%_
                                             _%hd172618173136%_
                                             _%tl172619173138%_
                                             _%e172620173141%_
                                             _%hd172621173144%_
                                             _%tl172622173146%_)
                                            (_%__match178872178873%_
                                             _%e172593173069%_
                                             _%hd172594173072%_
                                             _%tl172595173074%_
                                             _%e172596173077%_
                                             _%hd172597173080%_
                                             _%tl172598173082%_
                                             _%e172599173085%_
                                             _%hd172600173088%_
                                             _%tl172601173090%_
                                             _%e172602173093%_
                                             _%hd172603173096%_
                                             _%tl172604173098%_
                                             _%e172605173101%_
                                             _%hd172606173104%_
                                             _%tl172607173106%_
                                             _%e172608173109%_
                                             _%hd172609173112%_
                                             _%tl172610173114%_
                                             _%e172611173117%_
                                             _%hd172612173120%_
                                             _%tl172613173122%_
                                             _%e172614173125%_
                                             _%hd172615173128%_
                                             _%tl172616173130%_
                                             _%e172617173133%_
                                             _%hd172618173136%_
                                             _%tl172619173138%_
                                             _%e172620173141%_
                                             _%hd172621173144%_
                                             _%tl172622173146%_))
                                        (_%__match178996178997%_
                                         _%e172593173069%_
                                         _%hd172594173072%_
                                         _%tl172595173074%_
                                         _%e172596173077%_
                                         _%hd172597173080%_
                                         _%tl172598173082%_
                                         _%e172599173085%_
                                         _%hd172600173088%_
                                         _%tl172601173090%_
                                         _%e172602173093%_
                                         _%hd172603173096%_
                                         _%tl172604173098%_
                                         _%e172605173101%_
                                         _%hd172606173104%_
                                         _%tl172607173106%_
                                         _%e172608173109%_
                                         _%hd172609173112%_
                                         _%tl172610173114%_
                                         _%e172611173117%_
                                         _%hd172612173120%_
                                         _%tl172613173122%_
                                         _%e172614173125%_
                                         _%hd172615173128%_
                                         _%tl172616173130%_))))
                                (_%__match178996178997%_
                                 _%e172593173069%_
                                 _%hd172594173072%_
                                 _%tl172595173074%_
                                 _%e172596173077%_
                                 _%hd172597173080%_
                                 _%tl172598173082%_
                                 _%e172599173085%_
                                 _%hd172600173088%_
                                 _%tl172601173090%_
                                 _%e172602173093%_
                                 _%hd172603173096%_
                                 _%tl172604173098%_
                                 _%e172605173101%_
                                 _%hd172606173104%_
                                 _%tl172607173106%_
                                 _%e172608173109%_
                                 _%hd172609173112%_
                                 _%tl172610173114%_
                                 _%e172611173117%_
                                 _%hd172612173120%_
                                 _%tl172613173122%_
                                 _%e172614173125%_
                                 _%hd172615173128%_
                                 _%tl172616173130%_))
                            (_%__match178996178997%_
                             _%e172593173069%_
                             _%hd172594173072%_
                             _%tl172595173074%_
                             _%e172596173077%_
                             _%hd172597173080%_
                             _%tl172598173082%_
                             _%e172599173085%_
                             _%hd172600173088%_
                             _%tl172601173090%_
                             _%e172602173093%_
                             _%hd172603173096%_
                             _%tl172604173098%_
                             _%e172605173101%_
                             _%hd172606173104%_
                             _%tl172607173106%_
                             _%e172608173109%_
                             _%hd172609173112%_
                             _%tl172610173114%_
                             _%e172611173117%_
                             _%hd172612173120%_
                             _%tl172613173122%_
                             _%e172614173125%_
                             _%hd172615173128%_
                             _%tl172616173130%_))))
                     (_%__match178714178715%_
                      (lambda (_%e172542173190%_
                               _%hd172543173193%_
                               _%tl172544173195%_
                               _%e172545173198%_
                               _%hd172546173201%_
                               _%tl172547173203%_
                               _%e172548173206%_
                               _%hd172549173209%_
                               _%tl172550173211%_
                               _%e172551173214%_
                               _%hd172552173217%_
                               _%tl172553173219%_
                               _%e172554173222%_
                               _%hd172555173225%_
                               _%tl172556173227%_
                               _%e172557173230%_
                               _%hd172558173233%_
                               _%tl172559173235%_
                               _%e172560173238%_
                               _%hd172561173241%_
                               _%tl172562173243%_
                               _%e172563173246%_
                               _%hd172564173249%_
                               _%tl172565173251%_
                               _%e172566173254%_
                               _%hd172567173257%_
                               _%tl172568173259%_
                               _%e172569173262%_
                               _%hd172570173265%_
                               _%tl172571173267%_
                               _%e172572173270%_
                               _%hd172573173273%_
                               _%tl172574173275%_
                               _%e172575173278%_
                               _%hd172576173281%_
                               _%tl172577173283%_
                               _%e172578173286%_
                               _%hd172579173289%_
                               _%tl172580173291%_
                               _%__splice178507178508%_
                               _%target172581173294%_
                               _%tl172583173296%_)
                        (letrec ((_%loop172584173299%_
                                  (lambda (_%hd172582173302%_
                                           _%args172588173304%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172582173302%_))
                                        (let ((_%e172585173307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172582173302%_))))
                                          (let ((_%lp-tl172587173312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172585173307%_)))
                                                (_%lp-hd172586173310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172585173307%_))))
                                            (_%loop172584173299%_
                                             _%lp-tl172587173312%_
                                             (cons _%lp-hd172586173310%_
                                                   _%args172588173304%_))))
                                        (let ((_%args172589173315%_
                                               (reverse _%args172588173304%_)))
                                          (let ((_%L173318%_
                                                 _%args172589173315%_)
                                                (_%L173319%_
                                                 _%hd172579173289%_)
                                                (_%L173320%_
                                                 _%hd172570173265%_)
                                                (_%L173321%_
                                                 _%hd172561173241%_)
                                                (_%L173322%_
                                                 _%hd172552173217%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173322%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173321%_
                                                        'call-method))
                                                     (let ((__tmp179160
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172481%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173320%_
                                                        __tmp179160)))
                                                (_%__kont178505178506%_
                                                 _%L173318%_
                                                 _%L173319%_
                                                 _%L173320%_
                                                 _%L173321%_
                                                 _%L173322%_)
                                                (_%__kont178517178518%_))))))))
                          (_%loop172584173299%_ _%target172581173294%_ '()))))
                     (_%__match178672178673%_
                      (lambda (_%e172542173190%_
                               _%hd172543173193%_
                               _%tl172544173195%_
                               _%e172545173198%_
                               _%hd172546173201%_
                               _%tl172547173203%_
                               _%e172548173206%_
                               _%hd172549173209%_
                               _%tl172550173211%_
                               _%e172551173214%_
                               _%hd172552173217%_
                               _%tl172553173219%_
                               _%e172554173222%_
                               _%hd172555173225%_
                               _%tl172556173227%_
                               _%e172557173230%_
                               _%hd172558173233%_
                               _%tl172559173235%_
                               _%e172560173238%_
                               _%hd172561173241%_
                               _%tl172562173243%_
                               _%e172563173246%_
                               _%hd172564173249%_
                               _%tl172565173251%_
                               _%e172566173254%_
                               _%hd172567173257%_
                               _%tl172568173259%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd172567173257%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172568173259%_))
                                (let ((_%e172569173262%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172568173259%_))))
                                  (let ((_%tl172571173267%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172569173262%_)))
                                        (_%hd172570173265%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172569173262%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172571173267%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172565173251%_))
                                            (let ((_%e172572173270%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172565173251%_))))
                                              (let ((_%tl172574173275%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172572173270%_)))
                                                    (_%hd172573173273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172572173270%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd172573173273%_))
                                                    (let ((_%e172575173278%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd172573173273%_))))
                                                      (let ((_%tl172577173283%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172575173278%_)))
                    (_%hd172576173281%_
                     (let () (declare (not safe)) (##car _%e172575173278%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd172576173281%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd172576173281%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172577173283%_))
                            (let ((_%e172578173286%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172577173283%_))))
                              (let ((_%tl172580173291%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172578173286%_)))
                                    (_%hd172579173289%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172578173286%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172580173291%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl172574173275%_))
                                        (let ((_%__splice178507178508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl172574173275%_
                                                  '0))))
                                          (let ((_%tl172583173296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178507178508%_
                                                    '1)))
                                                (_%target172581173294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178507178508%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl172583173296%_))
                                                (_%__match178714178715%_
                                                 _%e172542173190%_
                                                 _%hd172543173193%_
                                                 _%tl172544173195%_
                                                 _%e172545173198%_
                                                 _%hd172546173201%_
                                                 _%tl172547173203%_
                                                 _%e172548173206%_
                                                 _%hd172549173209%_
                                                 _%tl172550173211%_
                                                 _%e172551173214%_
                                                 _%hd172552173217%_
                                                 _%tl172553173219%_
                                                 _%e172554173222%_
                                                 _%hd172555173225%_
                                                 _%tl172556173227%_
                                                 _%e172557173230%_
                                                 _%hd172558173233%_
                                                 _%tl172559173235%_
                                                 _%e172560173238%_
                                                 _%hd172561173241%_
                                                 _%tl172562173243%_
                                                 _%e172563173246%_
                                                 _%hd172564173249%_
                                                 _%tl172565173251%_
                                                 _%e172566173254%_
                                                 _%hd172567173257%_
                                                 _%tl172568173259%_
                                                 _%e172569173262%_
                                                 _%hd172570173265%_
                                                 _%tl172571173267%_
                                                 _%e172572173270%_
                                                 _%hd172573173273%_
                                                 _%tl172574173275%_
                                                 _%e172575173278%_
                                                 _%hd172576173281%_
                                                 _%tl172577173283%_
                                                 _%e172578173286%_
                                                 _%hd172579173289%_
                                                 _%tl172580173291%_
                                                 _%__splice178507178508%_
                                                 _%target172581173294%_
                                                 _%tl172583173296%_)
                                                (_%__kont178517178518%_))))
                                        (_%__kont178517178518%_))
                                    (_%__kont178517178518%_))))
                            (_%__kont178517178518%_))
                        (_%__kont178517178518%_))
                    (_%__kont178517178518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178517178518%_))))
                                            (_%__match178996178997%_
                                             _%e172542173190%_
                                             _%hd172543173193%_
                                             _%tl172544173195%_
                                             _%e172545173198%_
                                             _%hd172546173201%_
                                             _%tl172547173203%_
                                             _%e172548173206%_
                                             _%hd172549173209%_
                                             _%tl172550173211%_
                                             _%e172551173214%_
                                             _%hd172552173217%_
                                             _%tl172553173219%_
                                             _%e172554173222%_
                                             _%hd172555173225%_
                                             _%tl172556173227%_
                                             _%e172557173230%_
                                             _%hd172558173233%_
                                             _%tl172559173235%_
                                             _%e172560173238%_
                                             _%hd172561173241%_
                                             _%tl172562173243%_
                                             _%e172563173246%_
                                             _%hd172564173249%_
                                             _%tl172565173251%_))
                                        (_%__match178996178997%_
                                         _%e172542173190%_
                                         _%hd172543173193%_
                                         _%tl172544173195%_
                                         _%e172545173198%_
                                         _%hd172546173201%_
                                         _%tl172547173203%_
                                         _%e172548173206%_
                                         _%hd172549173209%_
                                         _%tl172550173211%_
                                         _%e172551173214%_
                                         _%hd172552173217%_
                                         _%tl172553173219%_
                                         _%e172554173222%_
                                         _%hd172555173225%_
                                         _%tl172556173227%_
                                         _%e172557173230%_
                                         _%hd172558173233%_
                                         _%tl172559173235%_
                                         _%e172560173238%_
                                         _%hd172561173241%_
                                         _%tl172562173243%_
                                         _%e172563173246%_
                                         _%hd172564173249%_
                                         _%tl172565173251%_))))
                                (_%__match178996178997%_
                                 _%e172542173190%_
                                 _%hd172543173193%_
                                 _%tl172544173195%_
                                 _%e172545173198%_
                                 _%hd172546173201%_
                                 _%tl172547173203%_
                                 _%e172548173206%_
                                 _%hd172549173209%_
                                 _%tl172550173211%_
                                 _%e172551173214%_
                                 _%hd172552173217%_
                                 _%tl172553173219%_
                                 _%e172554173222%_
                                 _%hd172555173225%_
                                 _%tl172556173227%_
                                 _%e172557173230%_
                                 _%hd172558173233%_
                                 _%tl172559173235%_
                                 _%e172560173238%_
                                 _%hd172561173241%_
                                 _%tl172562173243%_
                                 _%e172563173246%_
                                 _%hd172564173249%_
                                 _%tl172565173251%_))
                            (_%__match178782178783%_
                             _%e172542173190%_
                             _%hd172543173193%_
                             _%tl172544173195%_
                             _%e172545173198%_
                             _%hd172546173201%_
                             _%tl172547173203%_
                             _%e172548173206%_
                             _%hd172549173209%_
                             _%tl172550173211%_
                             _%e172551173214%_
                             _%hd172552173217%_
                             _%tl172553173219%_
                             _%e172554173222%_
                             _%hd172555173225%_
                             _%tl172556173227%_
                             _%e172557173230%_
                             _%hd172558173233%_
                             _%tl172559173235%_
                             _%e172560173238%_
                             _%hd172561173241%_
                             _%tl172562173243%_
                             _%e172563173246%_
                             _%hd172564173249%_
                             _%tl172565173251%_
                             _%e172566173254%_
                             _%hd172567173257%_
                             _%tl172568173259%_))))
                     (_%__match178604178605%_
                      (lambda (_%e172498173382%_
                               _%hd172499173385%_
                               _%tl172500173387%_
                               _%e172501173390%_
                               _%hd172502173393%_
                               _%tl172503173395%_
                               _%e172504173398%_
                               _%hd172505173401%_
                               _%tl172506173403%_
                               _%e172507173406%_
                               _%hd172508173409%_
                               _%tl172509173411%_
                               _%e172510173414%_
                               _%hd172511173417%_
                               _%tl172512173419%_
                               _%e172513173422%_
                               _%hd172514173425%_
                               _%tl172515173427%_
                               _%e172516173430%_
                               _%hd172517173433%_
                               _%tl172518173435%_
                               _%e172519173438%_
                               _%hd172520173441%_
                               _%tl172521173443%_
                               _%e172522173446%_
                               _%hd172523173449%_
                               _%tl172524173451%_
                               _%e172525173454%_
                               _%hd172526173457%_
                               _%tl172527173459%_
                               _%__splice178503178504%_
                               _%target172528173462%_
                               _%tl172530173464%_)
                        (letrec ((_%loop172531173467%_
                                  (lambda (_%hd172529173470%_
                                           _%args172535173472%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172529173470%_))
                                        (let ((_%e172532173475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172529173470%_))))
                                          (let ((_%lp-tl172534173480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172532173475%_)))
                                                (_%lp-hd172533173478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172532173475%_))))
                                            (_%loop172531173467%_
                                             _%lp-tl172534173480%_
                                             (cons _%lp-hd172533173478%_
                                                   _%args172535173472%_))))
                                        (let ((_%args172536173483%_
                                               (reverse _%args172535173472%_)))
                                          (let ((_%L173486%_
                                                 _%args172536173483%_)
                                                (_%L173487%_
                                                 _%hd172526173457%_)
                                                (_%L173488%_
                                                 _%hd172517173433%_)
                                                (_%L173489%_
                                                 _%hd172508173409%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173489%_
                                                        'call-method))
                                                     (let ((__tmp179161
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172481%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173488%_
                                                        __tmp179161)))
                                                (_%__kont178501178502%_
                                                 _%L173486%_
                                                 _%L173487%_
                                                 _%L173488%_
                                                 _%L173489%_)
                                                (_%__match178792178793%_
                                                 _%e172498173382%_
                                                 _%hd172499173385%_
                                                 _%tl172500173387%_
                                                 _%e172501173390%_
                                                 _%hd172502173393%_
                                                 _%tl172503173395%_
                                                 _%e172504173398%_
                                                 _%hd172505173401%_
                                                 _%tl172506173403%_
                                                 _%e172507173406%_
                                                 _%hd172508173409%_
                                                 _%tl172509173411%_
                                                 _%e172510173414%_
                                                 _%hd172511173417%_
                                                 _%tl172512173419%_
                                                 _%e172513173422%_
                                                 _%hd172514173425%_
                                                 _%tl172515173427%_
                                                 _%e172516173430%_
                                                 _%hd172517173433%_
                                                 _%tl172518173435%_
                                                 _%e172519173438%_
                                                 _%hd172520173441%_
                                                 _%tl172521173443%_
                                                 _%e172522173446%_
                                                 _%hd172523173449%_
                                                 _%tl172524173451%_
                                                 _%e172525173454%_
                                                 _%hd172526173457%_
                                                 _%tl172527173459%_))))))))
                          (_%loop172531173467%_ _%target172528173462%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx178499178500%_))
                    (let ((_%e172498173382%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx178499178500%_))))
                      (let ((_%tl172500173387%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172498173382%_)))
                            (_%hd172499173385%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172498173382%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172500173387%_))
                            (let ((_%e172501173390%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172500173387%_))))
                              (let ((_%tl172503173395%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172501173390%_)))
                                    (_%hd172502173393%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172501173390%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172502173393%_))
                                    (let ((_%e172504173398%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172502173393%_))))
                                      (let ((_%tl172506173403%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172504173398%_)))
                                            (_%hd172505173401%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172504173398%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd172505173401%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd172505173401%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172506173403%_))
                                                    (let ((_%e172507173406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172506173403%_))))
                                                      (let ((_%tl172509173411%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172507173406%_)))
                    (_%hd172508173409%_
                     (let () (declare (not safe)) (##car _%e172507173406%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172509173411%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172503173395%_))
                        (let ((_%e172510173414%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172503173395%_))))
                          (let ((_%tl172512173419%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172510173414%_)))
                                (_%hd172511173417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172510173414%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172511173417%_))
                                (let ((_%e172513173422%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172511173417%_))))
                                  (let ((_%tl172515173427%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172513173422%_)))
                                        (_%hd172514173425%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172513173422%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172514173425%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd172514173425%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172515173427%_))
                                                (let ((_%e172516173430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172515173427%_))))
                                                  (let ((_%tl172518173435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172516173430%_)))
                                                        (_%hd172517173433%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172516173430%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172518173435%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172512173419%_))
                                                            (let ((_%e172519173438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172512173419%_))))
                      (let ((_%tl172521173443%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172519173438%_)))
                            (_%hd172520173441%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172519173438%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd172520173441%_))
                            (let ((_%e172522173446%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd172520173441%_))))
                              (let ((_%tl172524173451%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172522173446%_)))
                                    (_%hd172523173449%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172522173446%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd172523173449%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd172523173449%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172524173451%_))
                                            (let ((_%e172525173454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172524173451%_))))
                                              (let ((_%tl172527173459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172525173454%_)))
                                                    (_%hd172526173457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172525173454%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172527173459%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl172521173443%_))
                                                        (let ((_%__splice178503178504%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl172521173443%_ '0))))
                  (let ((_%tl172530173464%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178503178504%_ '1)))
                        (_%target172528173462%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178503178504%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl172530173464%_))
                        (_%__match178604178605%_
                         _%e172498173382%_
                         _%hd172499173385%_
                         _%tl172500173387%_
                         _%e172501173390%_
                         _%hd172502173393%_
                         _%tl172503173395%_
                         _%e172504173398%_
                         _%hd172505173401%_
                         _%tl172506173403%_
                         _%e172507173406%_
                         _%hd172508173409%_
                         _%tl172509173411%_
                         _%e172510173414%_
                         _%hd172511173417%_
                         _%tl172512173419%_
                         _%e172513173422%_
                         _%hd172514173425%_
                         _%tl172515173427%_
                         _%e172516173430%_
                         _%hd172517173433%_
                         _%tl172518173435%_
                         _%e172519173438%_
                         _%hd172520173441%_
                         _%tl172521173443%_
                         _%e172522173446%_
                         _%hd172523173449%_
                         _%tl172524173451%_
                         _%e172525173454%_
                         _%hd172526173457%_
                         _%tl172527173459%_
                         _%__splice178503178504%_
                         _%target172528173462%_
                         _%tl172530173464%_)
                        (_%__match178792178793%_
                         _%e172498173382%_
                         _%hd172499173385%_
                         _%tl172500173387%_
                         _%e172501173390%_
                         _%hd172502173393%_
                         _%tl172503173395%_
                         _%e172504173398%_
                         _%hd172505173401%_
                         _%tl172506173403%_
                         _%e172507173406%_
                         _%hd172508173409%_
                         _%tl172509173411%_
                         _%e172510173414%_
                         _%hd172511173417%_
                         _%tl172512173419%_
                         _%e172513173422%_
                         _%hd172514173425%_
                         _%tl172515173427%_
                         _%e172516173430%_
                         _%hd172517173433%_
                         _%tl172518173435%_
                         _%e172519173438%_
                         _%hd172520173441%_
                         _%tl172521173443%_
                         _%e172522173446%_
                         _%hd172523173449%_
                         _%tl172524173451%_
                         _%e172525173454%_
                         _%hd172526173457%_
                         _%tl172527173459%_))))
                (_%__match178792178793%_
                 _%e172498173382%_
                 _%hd172499173385%_
                 _%tl172500173387%_
                 _%e172501173390%_
                 _%hd172502173393%_
                 _%tl172503173395%_
                 _%e172504173398%_
                 _%hd172505173401%_
                 _%tl172506173403%_
                 _%e172507173406%_
                 _%hd172508173409%_
                 _%tl172509173411%_
                 _%e172510173414%_
                 _%hd172511173417%_
                 _%tl172512173419%_
                 _%e172513173422%_
                 _%hd172514173425%_
                 _%tl172515173427%_
                 _%e172516173430%_
                 _%hd172517173433%_
                 _%tl172518173435%_
                 _%e172519173438%_
                 _%hd172520173441%_
                 _%tl172521173443%_
                 _%e172522173446%_
                 _%hd172523173449%_
                 _%tl172524173451%_
                 _%e172525173454%_
                 _%hd172526173457%_
                 _%tl172527173459%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match178996178997%_
                                                     _%e172498173382%_
                                                     _%hd172499173385%_
                                                     _%tl172500173387%_
                                                     _%e172501173390%_
                                                     _%hd172502173393%_
                                                     _%tl172503173395%_
                                                     _%e172504173398%_
                                                     _%hd172505173401%_
                                                     _%tl172506173403%_
                                                     _%e172507173406%_
                                                     _%hd172508173409%_
                                                     _%tl172509173411%_
                                                     _%e172510173414%_
                                                     _%hd172511173417%_
                                                     _%tl172512173419%_
                                                     _%e172513173422%_
                                                     _%hd172514173425%_
                                                     _%tl172515173427%_
                                                     _%e172516173430%_
                                                     _%hd172517173433%_
                                                     _%tl172518173435%_
                                                     _%e172519173438%_
                                                     _%hd172520173441%_
                                                     _%tl172521173443%_))))
                                            (_%__match178996178997%_
                                             _%e172498173382%_
                                             _%hd172499173385%_
                                             _%tl172500173387%_
                                             _%e172501173390%_
                                             _%hd172502173393%_
                                             _%tl172503173395%_
                                             _%e172504173398%_
                                             _%hd172505173401%_
                                             _%tl172506173403%_
                                             _%e172507173406%_
                                             _%hd172508173409%_
                                             _%tl172509173411%_
                                             _%e172510173414%_
                                             _%hd172511173417%_
                                             _%tl172512173419%_
                                             _%e172513173422%_
                                             _%hd172514173425%_
                                             _%tl172515173427%_
                                             _%e172516173430%_
                                             _%hd172517173433%_
                                             _%tl172518173435%_
                                             _%e172519173438%_
                                             _%hd172520173441%_
                                             _%tl172521173443%_))
                                        (_%__match178672178673%_
                                         _%e172498173382%_
                                         _%hd172499173385%_
                                         _%tl172500173387%_
                                         _%e172501173390%_
                                         _%hd172502173393%_
                                         _%tl172503173395%_
                                         _%e172504173398%_
                                         _%hd172505173401%_
                                         _%tl172506173403%_
                                         _%e172507173406%_
                                         _%hd172508173409%_
                                         _%tl172509173411%_
                                         _%e172510173414%_
                                         _%hd172511173417%_
                                         _%tl172512173419%_
                                         _%e172513173422%_
                                         _%hd172514173425%_
                                         _%tl172515173427%_
                                         _%e172516173430%_
                                         _%hd172517173433%_
                                         _%tl172518173435%_
                                         _%e172519173438%_
                                         _%hd172520173441%_
                                         _%tl172521173443%_
                                         _%e172522173446%_
                                         _%hd172523173449%_
                                         _%tl172524173451%_))
                                    (_%__match178996178997%_
                                     _%e172498173382%_
                                     _%hd172499173385%_
                                     _%tl172500173387%_
                                     _%e172501173390%_
                                     _%hd172502173393%_
                                     _%tl172503173395%_
                                     _%e172504173398%_
                                     _%hd172505173401%_
                                     _%tl172506173403%_
                                     _%e172507173406%_
                                     _%hd172508173409%_
                                     _%tl172509173411%_
                                     _%e172510173414%_
                                     _%hd172511173417%_
                                     _%tl172512173419%_
                                     _%e172513173422%_
                                     _%hd172514173425%_
                                     _%tl172515173427%_
                                     _%e172516173430%_
                                     _%hd172517173433%_
                                     _%tl172518173435%_
                                     _%e172519173438%_
                                     _%hd172520173441%_
                                     _%tl172521173443%_))))
                            (_%__match178996178997%_
                             _%e172498173382%_
                             _%hd172499173385%_
                             _%tl172500173387%_
                             _%e172501173390%_
                             _%hd172502173393%_
                             _%tl172503173395%_
                             _%e172504173398%_
                             _%hd172505173401%_
                             _%tl172506173403%_
                             _%e172507173406%_
                             _%hd172508173409%_
                             _%tl172509173411%_
                             _%e172510173414%_
                             _%hd172511173417%_
                             _%tl172512173419%_
                             _%e172513173422%_
                             _%hd172514173425%_
                             _%tl172515173427%_
                             _%e172516173430%_
                             _%hd172517173433%_
                             _%tl172518173435%_
                             _%e172519173438%_
                             _%hd172520173441%_
                             _%tl172521173443%_))))
                    (_%__match178934178935%_
                     _%e172498173382%_
                     _%hd172499173385%_
                     _%tl172500173387%_
                     _%e172501173390%_
                     _%hd172502173393%_
                     _%tl172503173395%_
                     _%e172504173398%_
                     _%hd172505173401%_
                     _%tl172506173403%_
                     _%e172507173406%_
                     _%hd172508173409%_
                     _%tl172509173411%_
                     _%e172510173414%_
                     _%hd172511173417%_
                     _%tl172512173419%_
                     _%e172513173422%_
                     _%hd172514173425%_
                     _%tl172515173427%_
                     _%e172516173430%_
                     _%hd172517173433%_
                     _%tl172518173435%_))
                (_%__kont178517178518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont178517178518%_))
                                            (_%__kont178517178518%_))
                                        (_%__kont178517178518%_))))
                                (_%__kont178517178518%_))))
                        (_%__kont178517178518%_))
                    (_%__kont178517178518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178517178518%_))
                                                (_%__kont178517178518%_))
                                            (_%__kont178517178518%_))))
                                    (_%__kont178517178518%_))))
                            (_%__kont178517178518%_))))
                    (_%__kont178517178518%_))))))))))
