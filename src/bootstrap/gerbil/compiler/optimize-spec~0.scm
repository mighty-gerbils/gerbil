(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1734280450)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp178999 (list gxc#::identity::t))
            (__tmp178998 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp178999
         '()
         __tmp178998
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args177796%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args177796%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp179000
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
        (__make-promise __tmp179000)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx177788%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self177791%_
                (let ((__obj178991
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj178991))
               (__tmp179001
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177791%_ _%stx177788%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179001
           gxc#current-compile-method
           _%self177791%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp179003 (list gxc#::false::t))
            (__tmp179002 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp179003
         '()
         __tmp179002
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args177785%_
        (apply make-instance gxc#::extract-receiver::t _%$args177785%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp179004
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
        (__make-promise __tmp179004)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx177777%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self177780%_
                (let ((__obj178993
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj178993))
               (__tmp179005
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self177780%_ _%stx177777%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp179005
           gxc#current-compile-method
           _%self177780%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp179007 (list gxc#::void::t))
            (__tmp179006 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp179007
         '(receiver methods slots)
         __tmp179006
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args177774%_
        (apply make-instance gxc#::collect-object-refs::t _%$args177774%_)))
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
      (let ((__tmp179008
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
        (__make-promise __tmp179008)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords177740%_
               _%receiver177735177741%_
               _%methods177736177743%_
               _%slots177737177745%_
               _%stx177747%_)
        (let* ((_%receiver177750%_
                (if (eq? _%receiver177735177741%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177735177741%_))
               (_%methods177752%_
                (if (eq? _%methods177736177743%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177736177743%_))
               (_%slots177754%_
                (if (eq? _%slots177737177745%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177737177745%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self177756%_
                  (let ((__obj178995
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
                       __obj178995
                       _%receiver177750%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178995
                       _%methods177752%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178995
                       _%slots177754%_
                       '3
                       '#f
                       '#f))
                    __obj178995))
                 (__tmp179009
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177756%_ _%stx177747%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179009
             gxc#current-compile-method
             _%self177756%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords177763%_ . _%args177764%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords177763%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177763%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177763%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177763%_
                  'slots:
                  absent-value))
               _%args177764%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args177738177770%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args177738177770%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp179011 (list gxc#::basic-xform-expression::t))
            (__tmp179010 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp179011
         '(receiver klass methods slots)
         __tmp179010
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args177731%_
        (apply make-instance gxc#::subst-object-refs::t _%$args177731%_)))
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
      (let ((__tmp179012
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
        (__make-promise __tmp179012)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords177693%_
               _%receiver177687177694%_
               _%klass177688177696%_
               _%methods177689177698%_
               _%slots177690177700%_
               _%stx177702%_)
        (let* ((_%receiver177705%_
                (if (eq? _%receiver177687177694%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver177687177694%_))
               (_%klass177707%_
                (if (eq? _%klass177688177696%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass177688177696%_))
               (_%methods177709%_
                (if (eq? _%methods177689177698%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods177689177698%_))
               (_%slots177711%_
                (if (eq? _%slots177690177700%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots177690177700%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self177713%_
                  (let ((__obj178997
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
                       __obj178997
                       _%receiver177705%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178997
                       _%klass177707%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178997
                       _%methods177709%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178997
                       _%slots177711%_
                       '4
                       '#f
                       '#f))
                    __obj178997))
                 (__tmp179013
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self177713%_ _%stx177702%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp179013
             gxc#current-compile-method
             _%self177713%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords177720%_ . _%args177721%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords177720%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177720%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177720%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177720%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords177720%_
                  'slots:
                  absent-value))
               _%args177721%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args177691177727%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args177691177727%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self174802%_ _%stx174803%_)
        (letrec ((_%generate-method-bind174805%_
                  (lambda (_%$klass177679%_
                           _%$method-table177680%_
                           _%id177681%_
                           _%$id177682%_)
                    (let ((_%$tmp177684%_
                           (let ((__tmp179014
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179014))))
                      (cons (cons _%$id177682%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp177684%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table177680%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id177681%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp177684%_ '()))
                    (cons (cons '%#ref (cons _%$tmp177684%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id177681%_
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
                 (_%generate-slot-bind174806%_
                  (lambda (_%$klass177673%_ _%id177674%_ _%$id177675%_)
                    (let ((_%$tmp177677%_
                           (let ((__tmp179015
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp179015))))
                      (cons (cons _%$id177675%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp177677%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass177673%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id177674%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp177677%_ '()))
                        (cons (cons '%#ref (cons _%$tmp177677%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id177674%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl174807%_
                  (lambda (_%$klass177667%_
                           _%$method-table177668%_
                           _%methods-bind177669%_
                           _%slots-bind177670%_
                           _%specializer-impl177671%_)
                    (let ((__tmp179016
                           (cons '%#lambda
                                 (cons (cons _%$klass177667%_
                                             (cons _%$method-table177668%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind177670%_
                                                            _%methods-bind177669%_))
                                                         (cons _%specializer-impl177671%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179016 _%stx174803%_))))
                 (_%generate-specializer-def174808%_
                  (lambda (_%id177663%_
                           _%specializer-id177664%_
                           _%specializer-impl177665%_)
                    (let ((__tmp179017
                           (cons '%#begin
                                 (cons _%stx174803%_
                                       (cons (let ((__tmp179018
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id177664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl177665%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179018
                                                _%stx174803%_))
                                             (cons (let ((__tmp179019
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id177663%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id177664%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179019
                                                      _%stx174803%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp179017 _%stx174803%_)))))
          (let* ((_%__stx177885177886%_ _%stx174803%_)
                 (_%g174811174831%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx177885177886%_)))))
            (let ((_%__kont177887177888%_
                   (lambda (_%L174875%_ _%L174876%_)
                     (let ((_%method-calls174895%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs174896%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty174897%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?174899%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls174895%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs174896%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L174875%_))
                             (let* ((_%__stx177799177800%_ _%L174875%_)
                                    (_%g175287175305%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx177799177800%_)))))
                               (let ((_%__kont177801177802%_
                                      (lambda (_%L175341%_
                                               _%L175342%_
                                               _%L175343%_)
                                        (let ((_%receiver175363%_
                                               (let ((_%$e175360%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L175341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e175360%_
                                                     _%$e175360%_
                                                     _%L175343%_))))
                                          (for-each
                                           (lambda (_%g175364175366%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver175363%_
                                              _%method-calls174895%_
                                              _%slot-refs174896%_
                                              _%g175364175366%_))
                                           _%L175341%_)
                                          (if (_%no-specializer?174899%_)
                                              _%stx174803%_
                                              (let* ((_%specializer-id175375%_
                                                      (let* ((_%id175369%_
                                                              (let ((__tmp179020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L174876%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179020 '"::specialize")))
                     (_%specializer-id175372%_
                      (let ((__tmp179021
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174803%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175369%_ __tmp179021))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175372%_))
                _%specializer-id175372%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175377%_
                                                      (let ((__tmp179022
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179022)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175379%_
                                                      (let ((__tmp179023
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179023)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175381%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174895%_)))
                                                     (_%$methods175385%_
                                                      (map (lambda (_%id175383%_)
                                                             (let ((__tmp179024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175383%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179024)))
                   _%methods175381%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175394%_
                                                      (for-each
                                                       (lambda (_%g175386175389%_
                                                                _%g175387175391%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174895%_
                                                            _%g175386175389%_
                                                            _%g175387175391%_)))
                                                       _%methods175381%_
                                                       _%$methods175385%_))
                                                     (_%methods-bind175404%_
                                                      (map (lambda (_%g175396175399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175397175401%_)
                     (_%generate-method-bind174805%_
                      _%$klass175377%_
                      _%$method-table175379%_
                      _%g175396175399%_
                      _%g175397175401%_))
                   _%methods175381%_
                   _%$methods175385%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175406%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174896%_)))
                                                     (_%$slots175410%_
                                                      (map (lambda (_%id175408%_)
                                                             (let ((__tmp179025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175408%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179025)))
                   _%slots175406%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175419%_
                                                      (for-each
                                                       (lambda (_%g175411175414%_
                                                                _%g175412175416%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174896%_
                                                            _%g175411175414%_
                                                            _%g175412175416%_)))
                                                       _%slots175406%_
                                                       _%$slots175410%_))
                                                     (_%slots-bind175428%_
                                                      (map (lambda (_%g175420175423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175421175425%_)
                     (_%generate-slot-bind174806%_
                      _%$klass175377%_
                      _%g175420175423%_
                      _%g175421175425%_))
                   _%slots175406%_
                   _%$slots175410%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body175434%_
                                                      (map (lambda (_%g175429175431%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver175363%_
                                                              _%$klass175377%_
                                                              _%method-calls174895%_
                                                              _%slot-refs174896%_
                                                              _%g175429175431%_))
                                                           _%L175341%_))
                                                     (_%specializer-impl175436%_
                                                      (let ((__tmp179026
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L175343%_ _%L175342%_)
                                 _%specializer-body175434%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179026 _%stx174803%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175438%_
                                                      (_%generate-specializer-impl174807%_
                                                       _%$klass175377%_
                                                       _%$method-table175379%_
                                                       _%methods-bind175404%_
                                                       _%slots-bind175428%_
                                                       _%specializer-impl175436%_)))
                                                (let ((__tmp179028
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174876%_)))
                                                      (__tmp179027
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175375%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179028
                                                   '" => "
                                                   __tmp179027))
                                                (_%generate-specializer-def174808%_
                                                 _%L174876%_
                                                 _%specializer-id175375%_
                                                 _%specializer-impl175438%_))))))
                                     (_%__kont177803177804%_
                                      (lambda () _%stx174803%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx177799177800%_))
                                     (let ((_%e175292175317%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx177799177800%_))))
                                       (let ((_%tl175294175322%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e175292175317%_)))
                                             (_%hd175293175320%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e175292175317%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl175294175322%_))
                                             (let ((_%e175295175325%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl175294175322%_))))
                                               (let ((_%tl175297175330%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e175295175325%_)))
                                                     (_%hd175296175328%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e175295175325%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd175296175328%_))
                                                     (let ((_%e175298175333%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd175296175328%_))))
                                                       (let ((_%tl175300175338%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e175298175333%_)))
                     (_%hd175299175336%_
                      (let () (declare (not safe)) (##car _%e175298175333%_))))
                 (_%__kont177801177802%_
                  _%tl175297175330%_
                  _%tl175300175338%_
                  _%hd175299175336%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont177803177804%_))))
                                             (_%__kont177803177804%_))))
                                     (_%__kont177803177804%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L174875%_))
                                 (let* ((_%g175445175464%_
                                         (lambda (_%g175446175461%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g175446175461%_))))
                                        (_%g175444175762%_
                                         (lambda (_%g175446175467%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g175446175467%_))
                                               (let ((_%e175448175469%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g175446175467%_))))
                                                 (let ((_%hd175449175472%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175448175469%_)))
                                                       (_%tl175450175474%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175448175469%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl175450175474%_))
                                                       (let ((_g179029_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl175450175474%_ '0))))
                 (begin
                   (let ((_g179030_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g179029_)
                                (##values-length _g179029_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g179030_ 2)))
                         (error "Context expects 2 values" _g179030_)))
                   (let ((_%target175451175477%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179029_ 0)))
                         (_%tl175453175479%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g179029_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl175453175479%_))
                         (letrec ((_%loop175454175482%_
                                   (lambda (_%hd175452175485%_
                                            _%clause175458175487%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175452175485%_))
                                         (let ((_%e175455175490%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175452175485%_))))
                                           (let ((_%lp-hd175456175493%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175455175490%_)))
                                                 (_%lp-tl175457175495%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175455175490%_))))
                                             (_%loop175454175482%_
                                              _%lp-tl175457175495%_
                                              (cons _%lp-hd175456175493%_
                                                    _%clause175458175487%_))))
                                         (let ((_%clause175459175498%_
                                                (reverse _%clause175458175487%_)))
                                           ((lambda (_%L175501%_)
                                              (for-each
                                               (lambda (_%clause175515%_)
                                                 (let* ((_%__stx177825177826%_
                                                         _%clause175515%_)
                                                        (_%g175518175533%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx177825177826%_)))))
                                                   (let ((_%__kont177827177828%_
                                                          (lambda (_%L175561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L175562%_
                           _%L175563%_)
                    (let ((_%receiver175582%_
                           (let ((_%$e175579%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L175561%_))))
                             (if _%$e175579%_ _%$e175579%_ _%L175563%_))))
                      (for-each
                       (lambda (_%g175583175585%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver175582%_
                          _%method-calls174895%_
                          _%slot-refs174896%_
                          _%g175583175585%_))
                       _%L175561%_))))
                 (_%__kont177829177830%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx177825177826%_))
                                                         (let ((_%e175523175545%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx177825177826%_))))
                   (let ((_%tl175525175550%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e175523175545%_)))
                         (_%hd175524175548%_
                          (let ()
                            (declare (not safe))
                            (##car _%e175523175545%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd175524175548%_))
                         (let ((_%e175526175553%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd175524175548%_))))
                           (let ((_%tl175528175558%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e175526175553%_)))
                                 (_%hd175527175556%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e175526175553%_))))
                             (_%__kont177827177828%_
                              _%tl175525175550%_
                              _%tl175528175558%_
                              _%hd175527175556%_)))
                         (_%__kont177829177830%_))))
                 (_%__kont177829177830%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp179031
                                                      (lambda (_%g175590175593%_
                                                               _%g175591175595%_)
                                                        (cons _%g175590175593%_
                                                              _%g175591175595%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179031
                                                  '()
                                                  _%L175501%_)))
                                              (if (_%no-specializer?174899%_)
                                                  _%stx174803%_
                                                  (let* ((_%specializer-id175604%_
                                                          (let* ((_%id175598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179032
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L174876%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179032 '"::specialize")))
                         (_%specializer-id175601%_
                          (let ((__tmp179033
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174803%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id175598%_
                             __tmp179033))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id175601%_))
                    _%specializer-id175601%_))
                 (_%$klass175606%_
                  (let ((__tmp179034
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179034)))
                 (_%$method-table175608%_
                  (let ((__tmp179035
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179035)))
                 (_%methods175610%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174895%_)))
                 (_%$methods175614%_
                  (map (lambda (_%id175612%_)
                         (let ((__tmp179036 (gensym _%id175612%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179036)))
                       _%methods175610%_))
                 (_%_175623%_
                  (for-each
                   (lambda (_%g175615175618%_ _%g175616175620%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174895%_
                        _%g175615175618%_
                        _%g175616175620%_)))
                   _%methods175610%_
                   _%$methods175614%_))
                 (_%methods-bind175633%_
                  (map (lambda (_%g175625175628%_ _%g175626175630%_)
                         (_%generate-method-bind174805%_
                          _%$klass175606%_
                          _%$method-table175608%_
                          _%g175625175628%_
                          _%g175626175630%_))
                       _%methods175610%_
                       _%$methods175614%_))
                 (_%slots175635%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174896%_)))
                 (_%$slots175639%_
                  (map (lambda (_%id175637%_)
                         (let ((__tmp179037 (gensym _%id175637%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179037)))
                       _%slots175635%_))
                 (_%_175648%_
                  (for-each
                   (lambda (_%g175640175643%_ _%g175641175645%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174896%_
                        _%g175640175643%_
                        _%g175641175645%_)))
                   _%slots175635%_
                   _%$slots175639%_))
                 (_%slots-bind175657%_
                  (map (lambda (_%g175649175652%_ _%g175650175654%_)
                         (_%generate-slot-bind174806%_
                          _%$klass175606%_
                          _%g175649175652%_
                          _%g175650175654%_))
                       _%slots175635%_
                       _%$slots175639%_))
                 (_%specializer-clauses175755%_
                  (map (lambda (_%clause175659%_)
                         (let* ((_%__stx177845177846%_ _%clause175659%_)
                                (_%g175662175677%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx177845177846%_)))))
                           (let ((_%__kont177847177848%_
                                  (lambda (_%L175705%_ _%L175706%_ _%L175707%_)
                                    (let* ((_%receiver175736%_
                                            (let ((_%$e175733%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L175705%_))))
                                              (if _%$e175733%_
                                                  _%$e175733%_
                                                  _%L175707%_)))
                                           (_%body175742%_
                                            (map (lambda (_%g175737175739%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver175736%_
                                                    _%$klass175606%_
                                                    _%method-calls174895%_
                                                    _%slot-refs174896%_
                                                    _%g175737175739%_))
                                                 _%L175705%_)))
                                      (cons (cons _%L175707%_ _%L175706%_)
                                            _%body175742%_))))
                                 (_%__kont177849177850%_
                                  (lambda () _%clause175659%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx177845177846%_))
                                 (let ((_%e175667175689%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx177845177846%_))))
                                   (let ((_%tl175669175694%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e175667175689%_)))
                                         (_%hd175668175692%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e175667175689%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd175668175692%_))
                                         (let ((_%e175670175697%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd175668175692%_))))
                                           (let ((_%tl175672175702%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e175670175697%_)))
                                                 (_%hd175671175700%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e175670175697%_))))
                                             (_%__kont177847177848%_
                                              _%tl175669175694%_
                                              _%tl175672175702%_
                                              _%hd175671175700%_)))
                                         (_%__kont177849177850%_))))
                                 (_%__kont177849177850%_)))))
                       (let ((__tmp179038
                              (lambda (_%g175747175750%_ _%g175748175752%_)
                                (cons _%g175747175750%_ _%g175748175752%_))))
                         (declare (not safe))
                         (__foldr1 __tmp179038 '() _%L175501%_))))
                 (_%specializer-impl175757%_
                  (let ((__tmp179039
                         (cons '%#case-lambda _%specializer-clauses175755%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179039 _%stx174803%_)))
                 (_%specializer-impl175759%_
                  (_%generate-specializer-impl174807%_
                   _%$klass175606%_
                   _%$method-table175608%_
                   _%methods-bind175633%_
                   _%slots-bind175657%_
                   _%specializer-impl175757%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179041
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L174876%_)))
                                                          (__tmp179040
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id175604%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179041
                                                       '" => "
                                                       __tmp179040))
                                                    (_%generate-specializer-def174808%_
                                                     _%L174876%_
                                                     _%specializer-id175604%_
                                                     _%specializer-impl175759%_))))
                                            _%clause175459175498%_))))))
                           (_%loop175454175482%_ _%target175451175477%_ '()))
                         (_%g175445175464%_ _%g175446175467%_)))))
               (_%g175445175464%_ _%g175446175467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175445175464%_
                                                _%g175446175467%_)))))
                                   (_%g175444175762%_ _%L174875%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L174875%_))
                                     (let* ((_%g175766175796%_
                                             (lambda (_%g175767175793%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175767175793%_))))
                                            (_%g175765176427%_
                                             (lambda (_%g175767175799%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175767175799%_))
                                                   (let ((_%e175771175801%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175767175799%_))))
                                                     (let ((_%hd175772175804%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175771175801%_)))
                                                           (_%tl175773175806%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175771175801%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175773175806%_))
                                                           (let ((_%e175774175809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175773175806%_))))
                     (let ((_%hd175775175812%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175774175809%_)))
                           (_%tl175776175814%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175774175809%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175775175812%_))
                           (let ((_%e175777175817%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175775175812%_))))
                             (let ((_%hd175778175820%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175777175817%_)))
                                   (_%tl175779175822%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175777175817%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175778175820%_))
                                   (let ((_%e175780175825%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175778175820%_))))
                                     (let ((_%hd175781175828%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175780175825%_)))
                                           (_%tl175782175830%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175780175825%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd175781175828%_))
                                           (let ((_%e175783175833%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd175781175828%_))))
                                             (let ((_%hd175784175836%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175783175833%_)))
                                                   (_%tl175785175838%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175783175833%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175785175838%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl175782175830%_))
                                                       (let ((_%e175786175841%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl175782175830%_))))
                 (let ((_%hd175787175844%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175786175841%_)))
                       (_%tl175788175846%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175786175841%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175788175846%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl175779175822%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175776175814%_))
                               (let ((_%e175789175849%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175776175814%_))))
                                 (let ((_%hd175790175852%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175789175849%_)))
                                       (_%tl175791175854%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175789175849%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175791175854%_))
                                       ((lambda (_%L175857%_
                                                 _%L175858%_
                                                 _%L175859%_)
                                          (let* ((_%g175883175901%_
                                                  (lambda (_%g175884175898%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g175884175898%_))))
                                                 (_%g175882175957%_
                                                  (lambda (_%g175884175904%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g175884175904%_))
                                                        (let ((_%e175888175906%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g175884175904%_))))
                  (let ((_%hd175889175909%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175888175906%_)))
                        (_%tl175890175911%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175888175906%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl175890175911%_))
                        (let ((_%e175891175914%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl175890175911%_))))
                          (let ((_%hd175892175917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e175891175914%_)))
                                (_%tl175893175919%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e175891175914%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd175892175917%_))
                                (let ((_%e175894175922%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd175892175917%_))))
                                  (let ((_%hd175895175925%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175894175922%_)))
                                        (_%tl175896175927%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175894175922%_))))
                                    ((lambda (_%L175930%_
                                              _%L175931%_
                                              _%L175932%_)
                                       (let ((_%receiver175951%_
                                              (let ((_%$e175948%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L175930%_))))
                                                (if _%$e175948%_
                                                    _%$e175948%_
                                                    _%L175932%_))))
                                         (for-each
                                          (lambda (_%g175952175954%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver175951%_
                                             _%method-calls174895%_
                                             _%slot-refs174896%_
                                             _%g175952175954%_))
                                          _%L175930%_)))
                                     _%tl175893175919%_
                                     _%tl175896175927%_
                                     _%hd175895175925%_)))
                                (_%g175883175901%_ _%g175884175904%_))))
                        (_%g175883175901%_ _%g175884175904%_))))
                (_%g175883175901%_ _%g175884175904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g175882175957%_ _%L175858%_))
                                          (let* ((_%g175960175979%_
                                                  (lambda (_%g175961175976%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g175961175976%_))))
                                                 (_%g175959176103%_
                                                  (lambda (_%g175961175982%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g175961175982%_))
                                                        (let ((_%e175963175984%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g175961175982%_))))
                  (let ((_%hd175964175987%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175963175984%_)))
                        (_%tl175965175989%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175963175984%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175965175989%_))
                        (let ((_g179042_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl175965175989%_
                                  '0))))
                          (begin
                            (let ((_g179043_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g179042_)
                                         (##values-length _g179042_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g179043_ 2)))
                                  (error "Context expects 2 values"
                                         _g179043_)))
                            (let ((_%target175966175992%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179042_ 0)))
                                  (_%tl175968175994%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179042_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl175968175994%_))
                                  (letrec ((_%loop175969175997%_
                                            (lambda (_%hd175967176000%_
                                                     _%clause175973176002%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd175967176000%_))
                                                  (let ((_%e175970176005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd175967176000%_))))
                                                    (let ((_%lp-hd175971176008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e175970176005%_)))
                                                          (_%lp-tl175972176010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e175970176005%_))))
                                                      (_%loop175969175997%_
                                                       _%lp-tl175972176010%_
                                                       (cons _%lp-hd175971176008%_
                                                             _%clause175973176002%_))))
                                                  (let ((_%clause175974176013%_
                                                         (reverse _%clause175973176002%_)))
                                                    ((lambda (_%L176016%_)
                                                       (for-each
                                                        (lambda (_%clause176029%_)
                                                          (let* ((_%g176031176046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g176032176043%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176032176043%_))))
                         (_%g176030176093%_
                          (lambda (_%g176032176049%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176032176049%_))
                                (let ((_%e176036176051%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176032176049%_))))
                                  (let ((_%hd176037176054%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176036176051%_)))
                                        (_%tl176038176056%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176036176051%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176037176054%_))
                                        (let ((_%e176039176059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176037176054%_))))
                                          (let ((_%hd176040176062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176039176059%_)))
                                                (_%tl176041176064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176039176059%_))))
                                            ((lambda (_%L176067%_
                                                      _%L176068%_
                                                      _%L176069%_)
                                               (let ((_%receiver176087%_
                                                      (let ((_%$e176084%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L176067%_))))
                (if _%$e176084%_ _%$e176084%_ _%L176069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g176088176090%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver176087%_
                                                     _%method-calls174895%_
                                                     _%slot-refs174896%_
                                                     _%g176088176090%_))
                                                  _%L176067%_)))
                                             _%tl176038176056%_
                                             _%tl176041176064%_
                                             _%hd176040176062%_)))
                                        (_%g176031176046%_
                                         _%g176032176049%_))))
                                (_%g176031176046%_ _%g176032176049%_)))))
                    (_%g176030176093%_ _%clause176029%_)))
                (let ((__tmp179044
                       (lambda (_%g176095176098%_ _%g176096176100%_)
                         (cons _%g176095176098%_ _%g176096176100%_))))
                  (declare (not safe))
                  (__foldr1 __tmp179044 '() _%L176016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause175974176013%_))))))
                                    (_%loop175969175997%_
                                     _%target175966175992%_
                                     '()))
                                  (_%g175960175979%_ _%g175961175982%_)))))
                        (_%g175960175979%_ _%g175961175982%_))))
                (_%g175960175979%_ _%g175961175982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g175959176103%_ _%L175857%_))
                                          (if (_%no-specializer?174899%_)
                                              _%stx174803%_
                                              (let* ((_%specializer-id176112%_
                                                      (let* ((_%id176106%_
                                                              (let ((__tmp179045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L174876%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp179045 '"::specialize")))
                     (_%specializer-id176109%_
                      (let ((__tmp179046
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx174803%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id176106%_ __tmp179046))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id176109%_))
                _%specializer-id176109%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass176114%_
                                                      (let ((__tmp179047
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp179047)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table176116%_
                                                      (let ((__tmp179048
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp179048)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods176118%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls174895%_)))
                                                     (_%$methods176122%_
                                                      (map (lambda (_%id176120%_)
                                                             (let ((__tmp179049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176120%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179049)))
                   _%methods176118%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176131%_
                                                      (for-each
                                                       (lambda (_%g176123176126%_
                                                                _%g176124176128%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls174895%_
                                                            _%g176123176126%_
                                                            _%g176124176128%_)))
                                                       _%methods176118%_
                                                       _%$methods176122%_))
                                                     (_%methods-bind176141%_
                                                      (map (lambda (_%g176133176136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176134176138%_)
                     (_%generate-method-bind174805%_
                      _%$klass176114%_
                      _%$method-table176116%_
                      _%g176133176136%_
                      _%g176134176138%_))
                   _%methods176118%_
                   _%$methods176122%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots176143%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs174896%_)))
                                                     (_%$slots176147%_
                                                      (map (lambda (_%id176145%_)
                                                             (let ((__tmp179050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id176145%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp179050)))
                   _%slots176143%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_176156%_
                                                      (for-each
                                                       (lambda (_%g176148176151%_
                                                                _%g176149176153%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs174896%_
                                                            _%g176148176151%_
                                                            _%g176149176153%_)))
                                                       _%slots176143%_
                                                       _%$slots176147%_))
                                                     (_%slots-bind176165%_
                                                      (map (lambda (_%g176157176160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g176158176162%_)
                     (_%generate-slot-bind174806%_
                      _%$klass176114%_
                      _%g176157176160%_
                      _%g176158176162%_))
                   _%slots176143%_
                   _%$slots176147%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr176257%_
                                                      (let* ((_%g176167176185%_
                                                              (lambda (_%g176168176182%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176168176182%_))))
                     (_%g176166176254%_
                      (lambda (_%g176168176188%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176168176188%_))
                            (let ((_%e176172176190%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176168176188%_))))
                              (let ((_%hd176173176193%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176172176190%_)))
                                    (_%tl176174176195%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176172176190%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176174176195%_))
                                    (let ((_%e176175176198%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176174176195%_))))
                                      (let ((_%hd176176176201%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176175176198%_)))
                                            (_%tl176177176203%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176175176198%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176176176201%_))
                                            (let ((_%e176178176206%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176176176201%_))))
                                              (let ((_%hd176179176209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176178176206%_)))
                                                    (_%tl176180176211%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176178176206%_))))
                                                ((lambda (_%L176214%_
                                                          _%L176215%_
                                                          _%L176216%_)
                                                   (let* ((_%receiver176245%_
                                                           (let ((_%$e176242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L176214%_))))
                     (if _%$e176242%_ _%$e176242%_ _%L176216%_)))
                  (_%body176251%_
                   (map (lambda (_%g176246176248%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver176245%_
                           _%$klass176114%_
                           _%method-calls174895%_
                           _%slot-refs174896%_
                           _%g176246176248%_))
                        _%L176214%_))
                  (__tmp179051
                   (cons '%#lambda
                         (cons (cons _%L176216%_ _%L176215%_)
                               _%body176251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp179051
                                                      _%L175858%_)))
                                                 _%tl176177176203%_
                                                 _%tl176180176211%_
                                                 _%hd176179176209%_)))
                                            (_%g176167176185%_
                                             _%g176168176188%_))))
                                    (_%g176167176185%_ _%g176168176188%_))))
                            (_%g176167176185%_ _%g176168176188%_)))))
                (_%g176166176254%_ _%L175858%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr176420%_
                                                      (let* ((_%g176259176278%_
                                                              (lambda (_%g176260176275%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176260176275%_))))
                     (_%g176258176417%_
                      (lambda (_%g176260176281%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176260176281%_))
                            (let ((_%e176262176283%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176260176281%_))))
                              (let ((_%hd176263176286%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176262176283%_)))
                                    (_%tl176264176288%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176262176283%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl176264176288%_))
                                    (let ((_g179052_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl176264176288%_
                                              '0))))
                                      (begin
                                        (let ((_g179053_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g179052_)
                                                     (##values-length
                                                      _g179052_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g179053_ 2)))
                                              (error "Context expects 2 values"
                                                     _g179053_)))
                                        (let ((_%target176265176291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179052_ 0)))
                                              (_%tl176267176293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g179052_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176267176293%_))
                                              (letrec ((_%loop176268176296%_
                                                        (lambda (_%hd176266176299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause176272176301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176266176299%_))
                      (let ((_%e176269176304%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176266176299%_))))
                        (let ((_%lp-hd176270176307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176269176304%_)))
                              (_%lp-tl176271176309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176269176304%_))))
                          (_%loop176268176296%_
                           _%lp-tl176271176309%_
                           (cons _%lp-hd176270176307%_
                                 _%clause176272176301%_))))
                      (let ((_%clause176273176312%_
                             (reverse _%clause176272176301%_)))
                        ((lambda (_%L176315%_)
                           (let* ((_%clauses176415%_
                                   (map (lambda (_%clause176329%_)
                                          (let* ((_%__stx177865177866%_
                                                  _%clause176329%_)
                                                 (_%g176332176347%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx177865177866%_)))))
                                            (let ((_%__kont177867177868%_
                                                   (lambda (_%L176375%_
                                                            _%L176376%_
                                                            _%L176377%_)
                                                     (let* ((_%receiver176396%_
                                                             (let ((_%$e176393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L176375%_))))
                       (if _%$e176393%_ _%$e176393%_ _%L176377%_)))
                    (_%body176402%_
                     (map (lambda (_%g176397176399%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver176396%_
                             _%$klass176114%_
                             _%method-calls174895%_
                             _%slot-refs174896%_
                             _%g176397176399%_))
                          _%L176375%_)))
               (cons (cons _%L176377%_ _%L176376%_) _%body176402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177869177870%_
                                                   (lambda ()
                                                     _%clause176329%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx177865177866%_))
                                                  (let ((_%e176337176359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx177865177866%_))))
                                                    (let ((_%tl176339176364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e176337176359%_)))
                                                          (_%hd176338176362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e176337176359%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd176338176362%_))
                                                          (let ((_%e176340176367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd176338176362%_))))
                    (let ((_%tl176342176372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e176340176367%_)))
                          (_%hd176341176370%_
                           (let ()
                             (declare (not safe))
                             (##car _%e176340176367%_))))
                      (_%__kont177867177868%_
                       _%tl176339176364%_
                       _%tl176342176372%_
                       _%hd176341176370%_)))
                  (_%__kont177869177870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177869177870%_)))))
                                        (let ((__tmp179054
                                               (lambda (_%g176407176410%_
                                                        _%g176408176412%_)
                                                 (cons _%g176407176410%_
                                                       _%g176408176412%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp179054
                                           '()
                                           _%L176315%_))))
                                  (__tmp179055
                                   (cons '%#case-lambda _%clauses176415%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179055 _%L175857%_)))
                         _%clause176273176312%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176268176296%_
                                                 _%target176265176291%_
                                                 '()))
                                              (_%g176259176278%_
                                               _%g176260176281%_)))))
                                    (_%g176259176278%_ _%g176260176281%_))))
                            (_%g176259176278%_ _%g176260176281%_)))))
                (_%g176258176417%_ _%L175857%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176422%_
                                                      (let ((__tmp179056
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L175859%_ '())
                                             (cons _%specializer-lambda-expr176257%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr176420%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp179056 _%stx174803%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl176424%_
                                                      (_%generate-specializer-impl174807%_
                                                       _%$klass176114%_
                                                       _%$method-table176116%_
                                                       _%methods-bind176141%_
                                                       _%slots-bind176165%_
                                                       _%specializer-impl176422%_)))
                                                (let ((__tmp179058
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174876%_)))
                                                      (__tmp179057
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id176112%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp179058
                                                   '" => "
                                                   __tmp179057))
                                                (_%generate-specializer-def174808%_
                                                 _%L174876%_
                                                 _%specializer-id176112%_
                                                 _%specializer-impl176424%_))))
                                        _%hd175790175852%_
                                        _%hd175787175844%_
                                        _%hd175784175836%_)
                                       (_%g175766175796%_ _%g175767175799%_))))
                               (_%g175766175796%_ _%g175767175799%_))
                           (_%g175766175796%_ _%g175767175799%_))
                       (_%g175766175796%_ _%g175767175799%_))))
               (_%g175766175796%_ _%g175767175799%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175766175796%_
                                                    _%g175767175799%_))))
                                           (_%g175766175796%_
                                            _%g175767175799%_))))
                                   (_%g175766175796%_ _%g175767175799%_))))
                           (_%g175766175796%_ _%g175767175799%_))))
                   (_%g175766175796%_ _%g175767175799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175766175796%_
                                                    _%g175767175799%_)))))
                                       (_%g175765176427%_ _%L174875%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L174875%_))
                                         (let* ((_%g176431176484%_
                                                 (lambda (_%g176432176481%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176432176481%_))))
                                                (_%g176430177655%_
                                                 (lambda (_%g176432176487%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176432176487%_))
                                                       (let ((_%e176438176489%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176432176487%_))))
                 (let ((_%hd176439176492%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176438176489%_)))
                       (_%tl176440176494%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176438176489%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd176439176492%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd176439176492%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl176440176494%_))
                               (let ((_%e176441176497%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl176440176494%_))))
                                 (let ((_%hd176442176500%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176441176497%_)))
                                       (_%tl176443176502%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176441176497%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176442176500%_))
                                       (let ((_%e176444176505%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176442176500%_))))
                                         (let ((_%hd176445176508%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176444176505%_)))
                                               (_%tl176446176510%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176444176505%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176445176508%_))
                                               (let ((_%e176447176513%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176445176508%_))))
                                                 (let ((_%hd176448176516%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176447176513%_)))
                                                       (_%tl176449176518%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176447176513%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd176448176516%_))
                                                       (let ((_%e176450176521%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd176448176516%_))))
                 (let ((_%hd176451176524%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176450176521%_)))
                       (_%tl176452176526%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176450176521%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl176452176526%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl176449176518%_))
                           (let ((_%e176453176529%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl176449176518%_))))
                             (let ((_%hd176454176532%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176453176529%_)))
                                   (_%tl176455176534%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176453176529%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176454176532%_))
                                   (let ((_%e176456176537%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176454176532%_))))
                                     (let ((_%hd176457176540%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176456176537%_)))
                                           (_%tl176458176542%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176456176537%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd176457176540%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd176457176540%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl176458176542%_))
                                                   (let ((_%e176459176545%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl176458176542%_))))
                                                     (let ((_%hd176460176548%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176459176545%_)))
                                                           (_%tl176461176550%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176459176545%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd176460176548%_))
                                                           (let ((_%e176462176553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd176460176548%_))))
                     (let ((_%hd176463176556%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176462176553%_)))
                           (_%tl176464176558%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176462176553%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd176463176556%_))
                           (let ((_%e176465176561%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd176463176556%_))))
                             (let ((_%hd176466176564%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e176465176561%_)))
                                   (_%tl176467176566%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e176465176561%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd176466176564%_))
                                   (let ((_%e176468176569%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd176466176564%_))))
                                     (let ((_%hd176469176572%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176468176569%_)))
                                           (_%tl176470176574%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176468176569%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176470176574%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl176467176566%_))
                                               (let ((_%e176471176577%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl176467176566%_))))
                                                 (let ((_%hd176472176580%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176471176577%_)))
                                                       (_%tl176473176582%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176471176577%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176473176582%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl176464176558%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl176461176550%_))
                       (let ((_%e176474176585%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176461176550%_))))
                         (let ((_%hd176475176588%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176474176585%_)))
                               (_%tl176476176590%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176474176585%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176476176590%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl176455176534%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl176446176510%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl176443176502%_))
                                           (let ((_%e176477176593%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl176443176502%_))))
                                             (let ((_%hd176478176596%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e176477176593%_)))
                                                   (_%tl176479176598%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e176477176593%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl176479176598%_))
                                                   ((lambda (_%L176601%_
                                                             _%L176602%_
                                                             _%L176603%_
                                                             _%L176604%_
                                                             _%L176605%_)
                                                      (let* ((_%g176645176707%_
                                                              (lambda (_%g176646176704%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g176646176704%_))))
                     (_%g176644177652%_
                      (lambda (_%g176646176710%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g176646176710%_))
                            (let ((_%e176652176712%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g176646176710%_))))
                              (let ((_%hd176653176715%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176652176712%_)))
                                    (_%tl176654176717%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176652176712%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd176653176715%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd176653176715%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl176654176717%_))
                                            (let ((_%e176655176720%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl176654176717%_))))
                                              (let ((_%hd176656176723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176655176720%_)))
                                                    (_%tl176657176725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176655176720%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176657176725%_))
                                                    (let ((_%e176658176728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176657176725%_))))
                                                      (let ((_%hd176659176731%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176658176728%_)))
                    (_%tl176660176733%_
                     (let () (declare (not safe)) (##cdr _%e176658176728%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd176659176731%_))
                    (let ((_%e176661176736%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd176659176731%_))))
                      (let ((_%hd176662176739%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176661176736%_)))
                            (_%tl176663176741%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176661176736%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd176662176739%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd176662176739%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl176663176741%_))
                                    (let ((_%e176664176744%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl176663176741%_))))
                                      (let ((_%hd176665176747%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176664176744%_)))
                                            (_%tl176666176749%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176664176744%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd176665176747%_))
                                            (let ((_%e176667176752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd176665176747%_))))
                                              (let ((_%hd176668176755%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e176667176752%_)))
                                                    (_%tl176669176757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e176667176752%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd176668176755%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd176668176755%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl176669176757%_))
                                                            (let ((_%e176670176760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl176669176757%_))))
                      (let ((_%hd176671176763%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176670176760%_)))
                            (_%tl176672176765%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176670176760%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176672176765%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl176666176749%_))
                                (let ((_%e176673176768%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl176666176749%_))))
                                  (let ((_%hd176674176771%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176673176768%_)))
                                        (_%tl176675176773%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176673176768%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd176674176771%_))
                                        (let ((_%e176676176776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd176674176771%_))))
                                          (let ((_%hd176677176779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176676176776%_)))
                                                (_%tl176678176781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176676176776%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd176677176779%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd176677176779%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl176678176781%_))
                                                        (let ((_%e176679176784%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl176678176781%_))))
                  (let ((_%hd176680176787%_
                         (let ()
                           (declare (not safe))
                           (##car _%e176679176784%_)))
                        (_%tl176681176789%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e176679176784%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl176681176789%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176675176773%_))
                            (let ((_%e176682176792%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176675176773%_))))
                              (let ((_%hd176683176795%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176682176792%_)))
                                    (_%tl176684176797%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176682176792%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd176683176795%_))
                                    (let ((_%e176685176800%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd176683176795%_))))
                                      (let ((_%hd176686176803%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176685176800%_)))
                                            (_%tl176687176805%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176685176800%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd176686176803%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd176686176803%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl176687176805%_))
                                                    (let ((_%e176688176808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl176687176805%_))))
                                                      (let ((_%hd176689176811%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e176688176808%_)))
                    (_%tl176690176813%_
                     (let () (declare (not safe)) (##cdr _%e176688176808%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl176690176813%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl176684176797%_))
                        (if (let ((__tmp179059
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl176684176797%_))))
                              (declare (not safe))
                              (##fx>= __tmp179059 '1))
                            (let ((_g179060_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176684176797%_
                                      '1))))
                              (begin
                                (let ((_g179061_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179060_)
                                             (##values-length _g179060_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179061_ 2)))
                                      (error "Context expects 2 values"
                                             _g179061_)))
                                (let ((_%target176691176816%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179060_ 0)))
                                      (_%tl176693176818%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179060_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl176693176818%_))
                                      (let ((_%e176700176821%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl176693176818%_))))
                                        (let ((_%hd176701176824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e176700176821%_)))
                                              (_%tl176702176826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e176700176821%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl176702176826%_))
                                              (letrec ((_%loop176694176829%_
                                                        (lambda (_%hd176692176832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref176698176834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd176692176832%_))
                      (let ((_%e176695176837%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd176692176832%_))))
                        (let ((_%lp-hd176696176840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e176695176837%_)))
                              (_%lp-tl176697176842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e176695176837%_))))
                          (_%loop176694176829%_
                           _%lp-tl176697176842%_
                           (cons _%lp-hd176696176840%_
                                 _%kw-ref176698176834%_))))
                      (let ((_%kw-ref176699176845%_
                             (reverse _%kw-ref176698176834%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl176660176733%_))
                            ((lambda (_%L176848%_
                                      _%L176849%_
                                      _%L176850%_
                                      _%L176851%_
                                      _%L176852%_)
                               (let* ((_%kw-count176903%_
                                       (length (let ((__tmp179062
                                                      (lambda (_%g176895176898%_
                                                               _%g176896176900%_)
                                                        (cons _%g176895176898%_
                                                              _%g176896176900%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp179062
                                                  '()
                                                  _%L176849%_))))
                                      (_%self-index176905%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count176903%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L176603%_))
                                     (let* ((_%g176909176923%_
                                             (lambda (_%g176910176920%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g176910176920%_))))
                                            (_%g176908177046%_
                                             (lambda (_%g176910176926%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g176910176926%_))
                                                   (let ((_%e176913176928%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g176910176926%_))))
                                                     (let ((_%hd176914176931%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e176913176928%_)))
                                                           (_%tl176915176933%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e176913176928%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl176915176933%_))
                                                           (let ((_%e176916176936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl176915176933%_))))
                     (let ((_%hd176917176939%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176916176936%_)))
                           (_%tl176918176941%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176916176936%_))))
                       ((lambda (_%L176944%_ _%L176945%_)
                          (let* ((_%self176962%_
                                  (list-ref _%L176945%_ _%self-index176905%_))
                                 (_%receiver176967%_
                                  (let ((_%$e176964%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L176944%_))))
                                    (if _%$e176964%_
                                        _%$e176964%_
                                        _%self176962%_))))
                            (for-each
                             (lambda (_%g176969176971%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver176967%_
                                _%method-calls174895%_
                                _%slot-refs174896%_
                                _%g176969176971%_))
                             _%L176944%_)
                            (if (_%no-specializer?174899%_)
                                _%stx174803%_
                                (let* ((_%specializer-id176980%_
                                        (let* ((_%id176974%_
                                                (let ((__tmp179063
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L174876%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp179063
                                                   '"::specialize")))
                                               (_%specializer-id176977%_
                                                (let ((__tmp179064
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx174803%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id176974%_
                                                   __tmp179064))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id176977%_))
                                          _%specializer-id176977%_))
                                       (_%$klass176982%_
                                        (let ((__tmp179065
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179065)))
                                       (_%$method-table176984%_
                                        (let ((__tmp179066
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp179066)))
                                       (_%methods176986%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls174895%_)))
                                       (_%$methods176990%_
                                        (map (lambda (_%id176988%_)
                                               (let ((__tmp179067
                                                      (gensym _%id176988%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179067)))
                                             _%methods176986%_))
                                       (_%_176999%_
                                        (for-each
                                         (lambda (_%g176991176994%_
                                                  _%g176992176996%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls174895%_
                                              _%g176991176994%_
                                              _%g176992176996%_)))
                                         _%methods176986%_
                                         _%$methods176990%_))
                                       (_%methods-bind177009%_
                                        (map (lambda (_%g177001177004%_
                                                      _%g177002177006%_)
                                               (_%generate-method-bind174805%_
                                                _%$klass176982%_
                                                _%$method-table176984%_
                                                _%g177001177004%_
                                                _%g177002177006%_))
                                             _%methods176986%_
                                             _%$methods176990%_))
                                       (_%slots177011%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs174896%_)))
                                       (_%$slots177015%_
                                        (map (lambda (_%id177013%_)
                                               (let ((__tmp179068
                                                      (gensym _%id177013%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp179068)))
                                             _%slots177011%_))
                                       (_%_177024%_
                                        (for-each
                                         (lambda (_%g177016177019%_
                                                  _%g177017177021%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs174896%_
                                              _%g177016177019%_
                                              _%g177017177021%_)))
                                         _%slots177011%_
                                         _%$slots177015%_))
                                       (_%slots-bind177033%_
                                        (map (lambda (_%g177025177028%_
                                                      _%g177026177030%_)
                                               (_%generate-slot-bind174806%_
                                                _%$klass176982%_
                                                _%g177025177028%_
                                                _%g177026177030%_))
                                             _%slots177011%_
                                             _%$slots177015%_))
                                       (_%specializer-impl177041%_
                                        (let* ((_%specializer-body177039%_
                                                (map (lambda (_%g177034177036%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver176967%_
                                                        _%$klass176982%_
                                                        _%method-calls174895%_
                                                        _%slot-refs174896%_
                                                        _%g177034177036%_))
                                                     _%L176944%_))
                                               (__tmp179069
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L176605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L176604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp179070
                                   (cons '%#lambda
                                         (cons _%L176945%_
                                               _%specializer-body177039%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp179070 _%L176603%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L176602%_ '())))
                                      '()))
                          '())
                    (cons _%L176601%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp179069
                                           _%stx174803%_)))
                                       (_%specializer-impl177043%_
                                        (_%generate-specializer-impl174807%_
                                         _%$klass176982%_
                                         _%$method-table176984%_
                                         _%methods-bind177009%_
                                         _%slots-bind177033%_
                                         _%specializer-impl177041%_)))
                                  (let ((__tmp179072
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L174876%_)))
                                        (__tmp179071
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id176980%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp179072
                                     '" => "
                                     __tmp179071))
                                  (_%generate-specializer-def174808%_
                                   _%L174876%_
                                   _%specializer-id176980%_
                                   _%specializer-impl177043%_)))))
                        _%tl176918176941%_
                        _%hd176917176939%_)))
                   (_%g176909176923%_ _%g176910176926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176909176923%_
                                                    _%g176910176926%_)))))
                                       (_%g176908177046%_ _%L176603%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L176603%_))
                                         (let* ((_%g177050177080%_
                                                 (lambda (_%g177051177077%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g177051177077%_))))
                                                (_%g177049177648%_
                                                 (lambda (_%g177051177083%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g177051177083%_))
                                                       (let ((_%e177055177085%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g177051177083%_))))
                 (let ((_%hd177056177088%_
                        (let ()
                          (declare (not safe))
                          (##car _%e177055177085%_)))
                       (_%tl177057177090%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e177055177085%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl177057177090%_))
                       (let ((_%e177058177093%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl177057177090%_))))
                         (let ((_%hd177059177096%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e177058177093%_)))
                               (_%tl177060177098%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e177058177093%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd177059177096%_))
                               (let ((_%e177061177101%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd177059177096%_))))
                                 (let ((_%hd177062177104%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e177061177101%_)))
                                       (_%tl177063177106%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e177061177101%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd177062177104%_))
                                       (let ((_%e177064177109%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd177062177104%_))))
                                         (let ((_%hd177065177112%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e177064177109%_)))
                                               (_%tl177066177114%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e177064177109%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd177065177112%_))
                                               (let ((_%e177067177117%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd177065177112%_))))
                                                 (let ((_%hd177068177120%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e177067177117%_)))
                                                       (_%tl177069177122%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e177067177117%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl177069177122%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl177066177114%_))
                                                           (let ((_%e177070177125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl177066177114%_))))
                     (let ((_%hd177071177128%_
                            (let ()
                              (declare (not safe))
                              (##car _%e177070177125%_)))
                           (_%tl177072177130%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e177070177125%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl177072177130%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl177063177106%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl177060177098%_))
                                   (let ((_%e177073177133%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl177060177098%_))))
                                     (let ((_%hd177074177136%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e177073177133%_)))
                                           (_%tl177075177138%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e177073177133%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl177075177138%_))
                                           ((lambda (_%L177141%_
                                                     _%L177142%_
                                                     _%L177143%_)
                                              (let* ((_%g177167177181%_
                                                      (lambda (_%g177168177178%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177168177178%_))))
                                                     (_%g177166177228%_
                                                      (lambda (_%g177168177184%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177168177184%_))
                                                            (let ((_%e177171177186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177168177184%_))))
                      (let ((_%hd177172177189%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177171177186%_)))
                            (_%tl177173177191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177171177186%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl177173177191%_))
                            (let ((_%e177174177194%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl177173177191%_))))
                              (let ((_%hd177175177197%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e177174177194%_)))
                                    (_%tl177176177199%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e177174177194%_))))
                                ((lambda (_%L177202%_ _%L177203%_)
                                   (let* ((_%self177216%_
                                           (list-ref
                                            _%L177203%_
                                            _%self-index176905%_))
                                          (_%receiver177221%_
                                           (let ((_%$e177218%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L177202%_))))
                                             (if _%$e177218%_
                                                 _%$e177218%_
                                                 _%self177216%_))))
                                     (for-each
                                      (lambda (_%g177223177225%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver177221%_
                                         _%method-calls174895%_
                                         _%slot-refs174896%_
                                         _%g177223177225%_))
                                      _%L177202%_)))
                                 _%tl177176177199%_
                                 _%hd177175177197%_)))
                            (_%g177167177181%_ _%g177168177184%_))))
                    (_%g177167177181%_ _%g177168177184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177166177228%_
                                                 _%L177142%_))
                                              (let* ((_%g177231177250%_
                                                      (lambda (_%g177232177247%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177232177247%_))))
                                                     (_%g177230177361%_
                                                      (lambda (_%g177232177253%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177232177253%_))
                                                            (let ((_%e177234177255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177232177253%_))))
                      (let ((_%hd177235177258%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177234177255%_)))
                            (_%tl177236177260%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177234177255%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl177236177260%_))
                            (let ((_g179073_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl177236177260%_
                                      '0))))
                              (begin
                                (let ((_g179074_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g179073_)
                                             (##values-length _g179073_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g179074_ 2)))
                                      (error "Context expects 2 values"
                                             _g179074_)))
                                (let ((_%target177237177263%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179073_ 0)))
                                      (_%tl177239177265%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g179073_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl177239177265%_))
                                      (letrec ((_%loop177240177268%_
                                                (lambda (_%hd177238177271%_
                                                         _%clause177244177273%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd177238177271%_))
                                                      (let ((_%e177241177276%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd177238177271%_))))
                (let ((_%lp-hd177242177279%_
                       (let () (declare (not safe)) (##car _%e177241177276%_)))
                      (_%lp-tl177243177281%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e177241177276%_))))
                  (_%loop177240177268%_
                   _%lp-tl177243177281%_
                   (cons _%lp-hd177242177279%_ _%clause177244177273%_))))
              (let ((_%clause177245177284%_ (reverse _%clause177244177273%_)))
                ((lambda (_%L177287%_)
                   (for-each
                    (lambda (_%clause177300%_)
                      (let* ((_%g177302177313%_
                              (lambda (_%g177303177310%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g177303177310%_))))
                             (_%g177301177351%_
                              (lambda (_%g177303177316%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g177303177316%_))
                                    (let ((_%e177306177318%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g177303177316%_))))
                                      (let ((_%hd177307177321%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e177306177318%_)))
                                            (_%tl177308177323%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e177306177318%_))))
                                        ((lambda (_%L177326%_ _%L177327%_)
                                           (let* ((_%self177339%_
                                                   (list-ref
                                                    _%L177327%_
                                                    _%self-index176905%_))
                                                  (_%receiver177344%_
                                                   (let ((_%$e177341%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L177326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e177341%_
                                                         _%$e177341%_
                                                         _%self177339%_))))
                                             (for-each
                                              (lambda (_%g177346177348%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver177344%_
                                                 _%method-calls174895%_
                                                 _%slot-refs174896%_
                                                 _%g177346177348%_))
                                              _%L177326%_)))
                                         _%tl177308177323%_
                                         _%hd177307177321%_)))
                                    (_%g177302177313%_ _%g177303177316%_)))))
                        (_%g177301177351%_ _%clause177300%_)))
                    (let ((__tmp179075
                           (lambda (_%g177353177356%_ _%g177354177358%_)
                             (cons _%g177353177356%_ _%g177354177358%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179075 '() _%L177287%_))))
                 _%clause177245177284%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop177240177268%_
                                         _%target177237177263%_
                                         '()))
                                      (_%g177231177250%_ _%g177232177253%_)))))
                            (_%g177231177250%_ _%g177232177253%_))))
                    (_%g177231177250%_ _%g177232177253%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177230177361%_
                                                 _%L177141%_))
                                              (if (_%no-specializer?174899%_)
                                                  _%stx174803%_
                                                  (let* ((_%specializer-id177370%_
                                                          (let* ((_%id177364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179076
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L174876%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp179076 '"::specialize")))
                         (_%specializer-id177367%_
                          (let ((__tmp179077
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx174803%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id177364%_
                             __tmp179077))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id177367%_))
                    _%specializer-id177367%_))
                 (_%$klass177372%_
                  (let ((__tmp179078
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179078)))
                 (_%$method-table177374%_
                  (let ((__tmp179079
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp179079)))
                 (_%methods177376%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls174895%_)))
                 (_%$methods177380%_
                  (map (lambda (_%id177378%_)
                         (let ((__tmp179080 (gensym _%id177378%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179080)))
                       _%methods177376%_))
                 (_%_177389%_
                  (for-each
                   (lambda (_%g177381177384%_ _%g177382177386%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls174895%_
                        _%g177381177384%_
                        _%g177382177386%_)))
                   _%methods177376%_
                   _%$methods177380%_))
                 (_%methods-bind177399%_
                  (map (lambda (_%g177391177394%_ _%g177392177396%_)
                         (_%generate-method-bind174805%_
                          _%$klass177372%_
                          _%$method-table177374%_
                          _%g177391177394%_
                          _%g177392177396%_))
                       _%methods177376%_
                       _%$methods177380%_))
                 (_%slots177401%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs174896%_)))
                 (_%$slots177405%_
                  (map (lambda (_%id177403%_)
                         (let ((__tmp179081 (gensym _%id177403%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp179081)))
                       _%slots177401%_))
                 (_%_177414%_
                  (for-each
                   (lambda (_%g177406177409%_ _%g177407177411%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs174896%_
                        _%g177406177409%_
                        _%g177407177411%_)))
                   _%slots177401%_
                   _%$slots177405%_))
                 (_%slots-bind177423%_
                  (map (lambda (_%g177415177418%_ _%g177416177420%_)
                         (_%generate-slot-bind174806%_
                          _%$klass177372%_
                          _%g177415177418%_
                          _%g177416177420%_))
                       _%slots177401%_
                       _%$slots177405%_))
                 (_%specializer-lambda-expr177501%_
                  (let* ((_%g177425177439%_
                          (lambda (_%g177426177436%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177426177436%_))))
                         (_%g177424177498%_
                          (lambda (_%g177426177442%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177426177442%_))
                                (let ((_%e177429177444%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177426177442%_))))
                                  (let ((_%hd177430177447%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177429177444%_)))
                                        (_%tl177431177449%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177429177444%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl177431177449%_))
                                        (let ((_%e177432177452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl177431177449%_))))
                                          (let ((_%hd177433177455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e177432177452%_)))
                                                (_%tl177434177457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e177432177452%_))))
                                            ((lambda (_%L177460%_ _%L177461%_)
                                               (let* ((_%self177484%_
                                                       (list-ref
                                                        _%L177461%_
                                                        _%self-index176905%_))
                                                      (_%receiver177489%_
                                                       (let ((_%$e177486%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L177460%_))))
                 (if _%$e177486%_ _%$e177486%_ _%self177484%_)))
              (_%body177495%_
               (map (lambda (_%g177490177492%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver177489%_
                       _%$klass177372%_
                       _%method-calls174895%_
                       _%slot-refs174896%_
                       _%g177490177492%_))
                    _%L177460%_))
              (__tmp179082 (cons '%#lambda (cons _%L177461%_ _%body177495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp179082
                                                  _%L177142%_)))
                                             _%tl177434177457%_
                                             _%hd177433177455%_)))
                                        (_%g177425177439%_
                                         _%g177426177442%_))))
                                (_%g177425177439%_ _%g177426177442%_)))))
                    (_%g177424177498%_ _%L177142%_)))
                 (_%specializer-case-lambda-expr177641%_
                  (let* ((_%g177503177522%_
                          (lambda (_%g177504177519%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g177504177519%_))))
                         (_%g177502177638%_
                          (lambda (_%g177504177525%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g177504177525%_))
                                (let ((_%e177506177527%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g177504177525%_))))
                                  (let ((_%hd177507177530%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177506177527%_)))
                                        (_%tl177508177532%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177506177527%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl177508177532%_))
                                        (let ((_g179083_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl177508177532%_
                                                  '0))))
                                          (begin
                                            (let ((_g179084_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g179083_)
                                                         (##values-length
                                                          _g179083_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g179084_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g179084_)))
                                            (let ((_%target177509177535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179083_
                                                      0)))
                                                  (_%tl177511177537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g179083_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl177511177537%_))
                                                  (letrec ((_%loop177512177540%_
                                                            (lambda (_%hd177510177543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause177516177545%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd177510177543%_))
                          (let ((_%e177513177548%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd177510177543%_))))
                            (let ((_%lp-hd177514177551%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e177513177548%_)))
                                  (_%lp-tl177515177553%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e177513177548%_))))
                              (_%loop177512177540%_
                               _%lp-tl177515177553%_
                               (cons _%lp-hd177514177551%_
                                     _%clause177516177545%_))))
                          (let ((_%clause177517177556%_
                                 (reverse _%clause177516177545%_)))
                            ((lambda (_%L177559%_)
                               (let* ((_%clauses177636%_
                                       (map (lambda (_%clause177573%_)
                                              (let* ((_%g177575177586%_
                                                      (lambda (_%g177576177583%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g177576177583%_))))
                                                     (_%g177574177626%_
                                                      (lambda (_%g177576177589%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g177576177589%_))
                                                            (let ((_%e177579177591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g177576177589%_))))
                      (let ((_%hd177580177594%_
                             (let ()
                               (declare (not safe))
                               (##car _%e177579177591%_)))
                            (_%tl177581177596%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e177579177591%_))))
                        ((lambda (_%L177599%_ _%L177600%_)
                           (let* ((_%self177612%_
                                   (list-ref _%L177600%_ _%self-index176905%_))
                                  (_%receiver177617%_
                                   (let ((_%$e177614%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L177599%_))))
                                     (if _%$e177614%_
                                         _%$e177614%_
                                         _%self177612%_)))
                                  (_%body177623%_
                                   (map (lambda (_%g177618177620%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver177617%_
                                           _%$klass177372%_
                                           _%method-calls174895%_
                                           _%slot-refs174896%_
                                           _%g177618177620%_))
                                        _%L177599%_)))
                             (cons _%L177600%_ _%body177623%_)))
                         _%tl177581177596%_
                         _%hd177580177594%_)))
                    (_%g177575177586%_ _%g177576177589%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g177574177626%_
                                                 _%clause177573%_)))
                                            (let ((__tmp179085
                                                   (lambda (_%g177628177631%_
                                                            _%g177629177633%_)
                                                     (cons _%g177628177631%_
                                                           _%g177629177633%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp179085
                                               '()
                                               _%L177559%_))))
                                      (__tmp179086
                                       (cons '%#case-lambda
                                             _%clauses177636%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp179086
                                  _%L177141%_)))
                             _%clause177517177556%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop177512177540%_
                                                     _%target177509177535%_
                                                     '()))
                                                  (_%g177503177522%_
                                                   _%g177504177525%_)))))
                                        (_%g177503177522%_
                                         _%g177504177525%_))))
                                (_%g177503177522%_ _%g177504177525%_)))))
                    (_%g177502177638%_ _%L177141%_)))
                 (_%specializer-impl177643%_
                  (let ((__tmp179087
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L176605%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L176604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp179088
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L177143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr177501%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr177641%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp179088
                                                _%stx174803%_))
                                             '()))
                                 '())
                           (cons _%L176602%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L176601%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp179087 _%stx174803%_)))
                 (_%specializer-impl177645%_
                  (_%generate-specializer-impl174807%_
                   _%$klass177372%_
                   _%$method-table177374%_
                   _%methods-bind177399%_
                   _%slots-bind177423%_
                   _%specializer-impl177643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp179090
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L174876%_)))
                                                          (__tmp179089
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id177370%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp179090
                                                       '" => "
                                                       __tmp179089))
                                                    (_%generate-specializer-def174808%_
                                                     _%L174876%_
                                                     _%specializer-id177370%_
                                                     _%specializer-impl177645%_))))
                                            _%hd177074177136%_
                                            _%hd177071177128%_
                                            _%hd177068177120%_)
                                           (_%g177050177080%_
                                            _%g177051177083%_))))
                                   (_%g177050177080%_ _%g177051177083%_))
                               (_%g177050177080%_ _%g177051177083%_))
                           (_%g177050177080%_ _%g177051177083%_))))
                   (_%g177050177080%_ _%g177051177083%_))
               (_%g177050177080%_ _%g177051177083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g177050177080%_
                                                _%g177051177083%_))))
                                       (_%g177050177080%_ _%g177051177083%_))))
                               (_%g177050177080%_ _%g177051177083%_))))
                       (_%g177050177080%_ _%g177051177083%_))))
               (_%g177050177080%_ _%g177051177083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g177049177648%_ _%L176603%_))
                                         _%stx174803%_))))
                             _%hd176701176824%_
                             _%kw-ref176699176845%_
                             _%hd176689176811%_
                             _%hd176680176787%_
                             _%hd176671176763%_)
                            (_%g176645176707%_ _%g176646176710%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop176694176829%_
                                                 _%target176691176816%_
                                                 '()))
                                              (_%g176645176707%_
                                               _%g176646176710%_))))
                                      (_%g176645176707%_ _%g176646176710%_)))))
                            (_%g176645176707%_ _%g176646176710%_))
                        (_%g176645176707%_ _%g176646176710%_))
                    (_%g176645176707%_ _%g176646176710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176645176707%_
                                                     _%g176646176710%_))
                                                (_%g176645176707%_
                                                 _%g176646176710%_))
                                            (_%g176645176707%_
                                             _%g176646176710%_))))
                                    (_%g176645176707%_ _%g176646176710%_))))
                            (_%g176645176707%_ _%g176646176710%_))
                        (_%g176645176707%_ _%g176646176710%_))))
                (_%g176645176707%_ _%g176646176710%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176645176707%_
                                                     _%g176646176710%_))
                                                (_%g176645176707%_
                                                 _%g176646176710%_))))
                                        (_%g176645176707%_
                                         _%g176646176710%_))))
                                (_%g176645176707%_ _%g176646176710%_))
                            (_%g176645176707%_ _%g176646176710%_))))
                    (_%g176645176707%_ _%g176646176710%_))
                (_%g176645176707%_ _%g176646176710%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176645176707%_
                                                     _%g176646176710%_))))
                                            (_%g176645176707%_
                                             _%g176646176710%_))))
                                    (_%g176645176707%_ _%g176646176710%_))
                                (_%g176645176707%_ _%g176646176710%_))
                            (_%g176645176707%_ _%g176646176710%_))))
                    (_%g176645176707%_ _%g176646176710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g176645176707%_
                                                     _%g176646176710%_))))
                                            (_%g176645176707%_
                                             _%g176646176710%_))
                                        (_%g176645176707%_ _%g176646176710%_))
                                    (_%g176645176707%_ _%g176646176710%_))))
                            (_%g176645176707%_ _%g176646176710%_)))))
                (_%g176644177652%_ _%L176602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd176478176596%_
                                                    _%hd176475176588%_
                                                    _%hd176472176580%_
                                                    _%hd176469176572%_
                                                    _%hd176451176524%_)
                                                   (_%g176431176484%_
                                                    _%g176432176487%_))))
                                           (_%g176431176484%_
                                            _%g176432176487%_))
                                       (_%g176431176484%_ _%g176432176487%_))
                                   (_%g176431176484%_ _%g176432176487%_))
                               (_%g176431176484%_ _%g176432176487%_))))
                       (_%g176431176484%_ _%g176432176487%_))
                   (_%g176431176484%_ _%g176432176487%_))
               (_%g176431176484%_ _%g176432176487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176431176484%_
                                                _%g176432176487%_))
                                           (_%g176431176484%_
                                            _%g176432176487%_))))
                                   (_%g176431176484%_ _%g176432176487%_))))
                           (_%g176431176484%_ _%g176432176487%_))))
                   (_%g176431176484%_ _%g176432176487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g176431176484%_
                                                    _%g176432176487%_))
                                               (_%g176431176484%_
                                                _%g176432176487%_))
                                           (_%g176431176484%_
                                            _%g176432176487%_))))
                                   (_%g176431176484%_ _%g176432176487%_))))
                           (_%g176431176484%_ _%g176432176487%_))
                       (_%g176431176484%_ _%g176432176487%_))))
               (_%g176431176484%_ _%g176432176487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176431176484%_
                                                _%g176432176487%_))))
                                       (_%g176431176484%_ _%g176432176487%_))))
                               (_%g176431176484%_ _%g176432176487%_))
                           (_%g176431176484%_ _%g176432176487%_))
                       (_%g176431176484%_ _%g176432176487%_))))
               (_%g176431176484%_ _%g176432176487%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176430177655%_ _%L174875%_))
                                         _%stx174803%_))))))))
                  (_%__kont177889177890%_ (lambda () _%stx174803%_)))
              (let ((_%__match177918177919%_
                     (lambda (_%e174815174843%_
                              _%hd174816174846%_
                              _%tl174817174848%_
                              _%e174818174851%_
                              _%hd174819174854%_
                              _%tl174820174856%_
                              _%e174821174859%_
                              _%hd174822174862%_
                              _%tl174823174864%_
                              _%e174824174867%_
                              _%hd174825174870%_
                              _%tl174826174872%_)
                       (let ((_%L174875%_ _%hd174825174870%_)
                             (_%L174876%_ _%hd174822174862%_))
                         (if (let ((__tmp179091
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L174876%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp179091))
                             (_%__kont177887177888%_ _%L174875%_ _%L174876%_)
                             (_%__kont177889177890%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx177885177886%_))
                    (let ((_%e174815174843%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx177885177886%_))))
                      (let ((_%tl174817174848%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174815174843%_)))
                            (_%hd174816174846%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174815174843%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174817174848%_))
                            (let ((_%e174818174851%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174817174848%_))))
                              (let ((_%tl174820174856%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174818174851%_)))
                                    (_%hd174819174854%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174818174851%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd174819174854%_))
                                    (let ((_%e174821174859%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd174819174854%_))))
                                      (let ((_%tl174823174864%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174821174859%_)))
                                            (_%hd174822174862%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174821174859%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174823174864%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174820174856%_))
                                                (let ((_%e174824174867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174820174856%_))))
                                                  (let ((_%tl174826174872%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174824174867%_)))
                                                        (_%hd174825174870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174824174867%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174826174872%_))
                                                        (_%__match177918177919%_
                                                         _%e174815174843%_
                                                         _%hd174816174846%_
                                                         _%tl174817174848%_
                                                         _%e174818174851%_
                                                         _%hd174819174854%_
                                                         _%tl174820174856%_
                                                         _%e174821174859%_
                                                         _%hd174822174862%_
                                                         _%tl174823174864%_
                                                         _%e174824174867%_
                                                         _%hd174825174870%_
                                                         _%tl174826174872%_)
                                                        (_%__kont177889177890%_))))
                                                (_%__kont177889177890%_))
                                            (_%__kont177889177890%_))))
                                    (_%__kont177889177890%_))))
                            (_%__kont177889177890%_))))
                    (_%__kont177889177890%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self174655%_ _%stx174656%_)
        (let* ((_%__stx177921177922%_ _%stx174656%_)
               (_%g174659174692%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx177921177922%_)))))
          (let ((_%__kont177923177924%_ (lambda (_%L174782%_) _%L174782%_))
                (_%__kont177925177926%_
                 (lambda (_%L174721%_ _%L174722%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self174655%_ _%L174721%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx177921177922%_))
                (let ((_%e174662174742%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx177921177922%_))))
                  (let ((_%tl174664174747%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174662174742%_)))
                        (_%hd174663174745%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174662174742%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174664174747%_))
                        (let ((_%e174665174750%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174664174747%_))))
                          (let ((_%tl174667174755%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174665174750%_)))
                                (_%hd174666174753%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174665174750%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174666174753%_))
                                (let ((_%e174668174758%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174666174753%_))))
                                  (let ((_%tl174670174763%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174668174758%_)))
                                        (_%hd174669174761%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174668174758%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd174669174761%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd174669174761%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174670174763%_))
                                                (let ((_%e174671174766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174670174763%_))))
                                                  (let ((_%tl174673174771%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174671174766%_)))
                                                        (_%hd174672174769%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174671174766%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174673174771%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174667174755%_))
                                                            (let ((_%e174674174774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174667174755%_))))
                      (let ((_%tl174676174779%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174674174774%_)))
                            (_%hd174675174777%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174674174774%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174676174779%_))
                            (_%__kont177923177924%_ _%hd174672174769%_)
                            (let ()
                              (declare (not safe))
                              (_%g174659174692%_)))))
                    (let () (declare (not safe)) (_%g174659174692%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl174667174755%_))
                    (let ((_%e174685174713%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174667174755%_))))
                      (let ((_%tl174687174718%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174685174713%_)))
                            (_%hd174686174716%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174685174713%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174687174718%_))
                            (_%__kont177925177926%_
                             _%hd174686174716%_
                             _%hd174666174753%_)
                            (let ()
                              (declare (not safe))
                              (_%g174659174692%_)))))
                    (let () (declare (not safe)) (_%g174659174692%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174667174755%_))
                                                    (let ((_%e174685174713%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174667174755%_))))
                                                      (let ((_%tl174687174718%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e174685174713%_)))
                    (_%hd174686174716%_
                     (let () (declare (not safe)) (##car _%e174685174713%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174687174718%_))
                    (_%__kont177925177926%_
                     _%hd174686174716%_
                     _%hd174666174753%_)
                    (let () (declare (not safe)) (_%g174659174692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174659174692%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl174667174755%_))
                                                (let ((_%e174685174713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl174667174755%_))))
                                                  (let ((_%tl174687174718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e174685174713%_)))
                                                        (_%hd174686174716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e174685174713%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl174687174718%_))
                                                        (_%__kont177925177926%_
                                                         _%hd174686174716%_
                                                         _%hd174666174753%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g174659174692%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g174659174692%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174667174755%_))
                                            (let ((_%e174685174713%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174667174755%_))))
                                              (let ((_%tl174687174718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174685174713%_)))
                                                    (_%hd174686174716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174685174713%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl174687174718%_))
                                                    (_%__kont177925177926%_
                                                     _%hd174686174716%_
                                                     _%hd174666174753%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g174659174692%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g174659174692%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174667174755%_))
                                    (let ((_%e174685174713%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174667174755%_))))
                                      (let ((_%tl174687174718%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174685174713%_)))
                                            (_%hd174686174716%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174685174713%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl174687174718%_))
                                            (_%__kont177925177926%_
                                             _%hd174686174716%_
                                             _%hd174666174753%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g174659174692%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g174659174692%_))))))
                        (let () (declare (not safe)) (_%g174659174692%_)))))
                (let () (declare (not safe)) (_%g174659174692%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self174571%_ _%stx174572%_)
        (let* ((_%g174574174595%_
                (lambda (_%g174575174592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g174575174592%_))))
               (_%g174573174652%_
                (lambda (_%g174575174598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g174575174598%_))
                      (let ((_%e174579174600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g174575174598%_))))
                        (let ((_%hd174580174603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174579174600%_)))
                              (_%tl174581174605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174579174600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl174581174605%_))
                              (let ((_%e174582174608%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl174581174605%_))))
                                (let ((_%hd174583174611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e174582174608%_)))
                                      (_%tl174584174613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e174582174608%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174584174613%_))
                                      (let ((_%e174585174616%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174584174613%_))))
                                        (let ((_%hd174586174619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174585174616%_)))
                                              (_%tl174587174621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174585174616%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl174587174621%_))
                                              (let ((_%e174588174624%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl174587174621%_))))
                                                (let ((_%hd174589174627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e174588174624%_)))
                                                      (_%tl174590174629%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e174588174624%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl174590174629%_))
                                                      ((lambda (_%L174632%_
                                                                _%L174633%_
                                                                _%L174634%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self174571%_
                                                            _%L174633%_)))
                                                       _%hd174589174627%_
                                                       _%hd174586174619%_
                                                       _%hd174583174611%_)
                                                      (_%g174574174595%_
                                                       _%g174575174598%_))))
                                              (_%g174574174595%_
                                               _%g174575174598%_))))
                                      (_%g174574174595%_ _%g174575174598%_))))
                              (_%g174574174595%_ _%g174575174598%_))))
                      (_%g174574174595%_ _%g174575174598%_)))))
          (_%g174573174652%_ _%stx174572%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self173532%_ _%stx173533%_)
        (let* ((_%__stx177987177988%_ _%stx173533%_)
               (_%g173541173763%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx177987177988%_)))))
          (let ((_%__kont177989177990%_
                 (lambda (_%L174520%_ _%L174521%_ _%L174522%_ _%L174523%_)
                   (let ((__tmp179093
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173532%_ 'methods)))
                         (__tmp179092
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174521%_))))
                     (declare (not safe))
                     (hash-put! __tmp179093 __tmp179092 '#t))
                   (for-each
                    (lambda (_%g174556174558%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173532%_ _%g174556174558%_)))
                    (let ((__tmp179094
                           (lambda (_%g174560174563%_ _%g174561174565%_)
                             (cons _%g174560174563%_ _%g174561174565%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179094 '() _%L174520%_)))))
                (_%__kont177993177994%_
                 (lambda (_%L174355%_
                          _%L174356%_
                          _%L174357%_
                          _%L174358%_
                          _%L174359%_)
                   (let ((__tmp179096
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173532%_ 'methods)))
                         (__tmp179095
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174356%_))))
                     (declare (not safe))
                     (hash-put! __tmp179096 __tmp179095 '#t))
                   (for-each
                    (lambda (_%g174399174401%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self173532%_ _%g174399174401%_)))
                    (let ((__tmp179097
                           (lambda (_%g174403174406%_ _%g174404174408%_)
                             (cons _%g174403174406%_ _%g174404174408%_))))
                      (declare (not safe))
                      (__foldr1 __tmp179097 '() _%L174355%_)))))
                (_%__kont177997177998%_
                 (lambda (_%L174188%_ _%L174189%_ _%L174190%_)
                   (let ((__tmp179099
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173532%_ 'slots)))
                         (__tmp179098
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174188%_))))
                     (declare (not safe))
                     (hash-put! __tmp179099 __tmp179098 '#t))))
                (_%__kont177999178000%_
                 (lambda (_%L174065%_ _%L174066%_ _%L174067%_ _%L174068%_)
                   (let ((__tmp179101
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self173532%_ 'slots)))
                         (__tmp179100
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L174066%_))))
                     (declare (not safe))
                     (hash-put! __tmp179101 __tmp179100 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173532%_ _%L174065%_))))
                (_%__kont178001178002%_
                 (lambda (_%L173939%_ _%L173940%_)
                   (let* ((_%accessor173962%_
                           (let ((__tmp179102
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L173940%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179102)))
                          (_%klass173964%_
                           (let ((__tmp179103
                                  (##structure-ref
                                   _%accessor173962%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173533%_
                              __tmp179103)))
                          (_%slot173966%_
                           (##structure-ref
                            _%accessor173962%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor173962%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass173964%_
                                    _%slot173966%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass173964%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179105
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173532%_ 'slots)))
                               (__tmp179104
                                (##structure-ref
                                 _%accessor173962%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp179105 __tmp179104 '#t))))))
                (_%__kont178003178004%_
                 (lambda (_%L173839%_ _%L173840%_ _%L173841%_)
                   (let* ((_%mutator173868%_
                           (let ((__tmp179106
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L173841%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp179106)))
                          (_%klass173870%_
                           (let ((__tmp179107
                                  (##structure-ref
                                   _%mutator173868%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx173533%_
                              __tmp179107)))
                          (_%slot173872%_
                           (##structure-ref
                            _%mutator173868%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator173868%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass173870%_
                                    _%slot173872%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass173870%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp179108
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self173532%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp179108 _%slot173872%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self173532%_ _%L173839%_)))))
                (_%__kont178005178006%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self173532%_ _%stx173533%_)))))
            (let* ((_%__match178486178487%_
                    (lambda (_%e173735173775%_
                             _%hd173736173778%_
                             _%tl173737173780%_
                             _%e173738173783%_
                             _%hd173739173786%_
                             _%tl173740173788%_
                             _%e173741173791%_
                             _%hd173742173794%_
                             _%tl173743173796%_
                             _%e173744173799%_
                             _%hd173745173802%_
                             _%tl173746173804%_
                             _%e173747173807%_
                             _%hd173748173810%_
                             _%tl173749173812%_
                             _%e173750173815%_
                             _%hd173751173818%_
                             _%tl173752173820%_
                             _%e173753173823%_
                             _%hd173754173826%_
                             _%tl173755173828%_
                             _%e173756173831%_
                             _%hd173757173834%_
                             _%tl173758173836%_)
                      (let ((_%L173839%_ _%hd173757173834%_)
                            (_%L173840%_ _%hd173754173826%_)
                            (_%L173841%_ _%hd173745173802%_))
                        (if (and (let ((__tmp179109
                                        (let ((__tmp179110
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L173841%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179110))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179109
                                    'gxc#!mutator::t))
                                 (let ((__tmp179111
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173532%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173840%_
                                    __tmp179111)))
                            (_%__kont178003178004%_
                             _%L173839%_
                             _%L173840%_
                             _%L173841%_)
                            (_%__kont178005178006%_)))))
                   (_%__match178484178485%_
                    (lambda (_%e173735173775%_
                             _%hd173736173778%_
                             _%tl173737173780%_
                             _%e173738173783%_
                             _%hd173739173786%_
                             _%tl173740173788%_
                             _%e173741173791%_
                             _%hd173742173794%_
                             _%tl173743173796%_
                             _%e173744173799%_
                             _%hd173745173802%_
                             _%tl173746173804%_
                             _%e173747173807%_
                             _%hd173748173810%_
                             _%tl173749173812%_
                             _%e173750173815%_
                             _%hd173751173818%_
                             _%tl173752173820%_
                             _%e173753173823%_
                             _%hd173754173826%_
                             _%tl173755173828%_
                             _%e173756173831%_
                             _%hd173757173834%_
                             _%tl173758173836%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173758173836%_))
                          (_%__match178486178487%_
                           _%e173735173775%_
                           _%hd173736173778%_
                           _%tl173737173780%_
                           _%e173738173783%_
                           _%hd173739173786%_
                           _%tl173740173788%_
                           _%e173741173791%_
                           _%hd173742173794%_
                           _%tl173743173796%_
                           _%e173744173799%_
                           _%hd173745173802%_
                           _%tl173746173804%_
                           _%e173747173807%_
                           _%hd173748173810%_
                           _%tl173749173812%_
                           _%e173750173815%_
                           _%hd173751173818%_
                           _%tl173752173820%_
                           _%e173753173823%_
                           _%hd173754173826%_
                           _%tl173755173828%_
                           _%e173756173831%_
                           _%hd173757173834%_
                           _%tl173758173836%_)
                          (_%__kont178005178006%_))))
                   (_%__match178478178479%_
                    (lambda (_%e173735173775%_
                             _%hd173736173778%_
                             _%tl173737173780%_
                             _%e173738173783%_
                             _%hd173739173786%_
                             _%tl173740173788%_
                             _%e173741173791%_
                             _%hd173742173794%_
                             _%tl173743173796%_
                             _%e173744173799%_
                             _%hd173745173802%_
                             _%tl173746173804%_
                             _%e173747173807%_
                             _%hd173748173810%_
                             _%tl173749173812%_
                             _%e173750173815%_
                             _%hd173751173818%_
                             _%tl173752173820%_
                             _%e173753173823%_
                             _%hd173754173826%_
                             _%tl173755173828%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173749173812%_))
                          (let ((_%e173756173831%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173749173812%_))))
                            (let ((_%tl173758173836%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173756173831%_)))
                                  (_%hd173757173834%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173756173831%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173758173836%_))
                                  (_%__match178486178487%_
                                   _%e173735173775%_
                                   _%hd173736173778%_
                                   _%tl173737173780%_
                                   _%e173738173783%_
                                   _%hd173739173786%_
                                   _%tl173740173788%_
                                   _%e173741173791%_
                                   _%hd173742173794%_
                                   _%tl173743173796%_
                                   _%e173744173799%_
                                   _%hd173745173802%_
                                   _%tl173746173804%_
                                   _%e173747173807%_
                                   _%hd173748173810%_
                                   _%tl173749173812%_
                                   _%e173750173815%_
                                   _%hd173751173818%_
                                   _%tl173752173820%_
                                   _%e173753173823%_
                                   _%hd173754173826%_
                                   _%tl173755173828%_
                                   _%e173756173831%_
                                   _%hd173757173834%_
                                   _%tl173758173836%_)
                                  (_%__kont178005178006%_))))
                          (_%__kont178005178006%_))))
                   (_%__match178424178425%_
                    (lambda (_%e173711173883%_
                             _%hd173712173886%_
                             _%tl173713173888%_
                             _%e173714173891%_
                             _%hd173715173894%_
                             _%tl173716173896%_
                             _%e173717173899%_
                             _%hd173718173902%_
                             _%tl173719173904%_
                             _%e173720173907%_
                             _%hd173721173910%_
                             _%tl173722173912%_
                             _%e173723173915%_
                             _%hd173724173918%_
                             _%tl173725173920%_
                             _%e173726173923%_
                             _%hd173727173926%_
                             _%tl173728173928%_
                             _%e173729173931%_
                             _%hd173730173934%_
                             _%tl173731173936%_)
                      (let ((_%L173939%_ _%hd173730173934%_)
                            (_%L173940%_ _%hd173721173910%_))
                        (if (and (let ((__tmp179112
                                        (let ((__tmp179113
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L173940%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp179113))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp179112
                                    'gxc#!accessor::t))
                                 (let ((__tmp179114
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173532%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173939%_
                                    __tmp179114)))
                            (_%__kont178001178002%_ _%L173939%_ _%L173940%_)
                            (_%__kont178005178006%_)))))
                   (_%__match178422178423%_
                    (lambda (_%e173711173883%_
                             _%hd173712173886%_
                             _%tl173713173888%_
                             _%e173714173891%_
                             _%hd173715173894%_
                             _%tl173716173896%_
                             _%e173717173899%_
                             _%hd173718173902%_
                             _%tl173719173904%_
                             _%e173720173907%_
                             _%hd173721173910%_
                             _%tl173722173912%_
                             _%e173723173915%_
                             _%hd173724173918%_
                             _%tl173725173920%_
                             _%e173726173923%_
                             _%hd173727173926%_
                             _%tl173728173928%_
                             _%e173729173931%_
                             _%hd173730173934%_
                             _%tl173731173936%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173725173920%_))
                          (_%__match178424178425%_
                           _%e173711173883%_
                           _%hd173712173886%_
                           _%tl173713173888%_
                           _%e173714173891%_
                           _%hd173715173894%_
                           _%tl173716173896%_
                           _%e173717173899%_
                           _%hd173718173902%_
                           _%tl173719173904%_
                           _%e173720173907%_
                           _%hd173721173910%_
                           _%tl173722173912%_
                           _%e173723173915%_
                           _%hd173724173918%_
                           _%tl173725173920%_
                           _%e173726173923%_
                           _%hd173727173926%_
                           _%tl173728173928%_
                           _%e173729173931%_
                           _%hd173730173934%_
                           _%tl173731173936%_)
                          (_%__match178478178479%_
                           _%e173711173883%_
                           _%hd173712173886%_
                           _%tl173713173888%_
                           _%e173714173891%_
                           _%hd173715173894%_
                           _%tl173716173896%_
                           _%e173717173899%_
                           _%hd173718173902%_
                           _%tl173719173904%_
                           _%e173720173907%_
                           _%hd173721173910%_
                           _%tl173722173912%_
                           _%e173723173915%_
                           _%hd173724173918%_
                           _%tl173725173920%_
                           _%e173726173923%_
                           _%hd173727173926%_
                           _%tl173728173928%_
                           _%e173729173931%_
                           _%hd173730173934%_
                           _%tl173731173936%_))))
                   (_%__match178368178369%_
                    (lambda (_%e173676173977%_
                             _%hd173677173980%_
                             _%tl173678173982%_
                             _%e173679173985%_
                             _%hd173680173988%_
                             _%tl173681173990%_
                             _%e173682173993%_
                             _%hd173683173996%_
                             _%tl173684173998%_
                             _%e173685174001%_
                             _%hd173686174004%_
                             _%tl173687174006%_
                             _%e173688174009%_
                             _%hd173689174012%_
                             _%tl173690174014%_
                             _%e173691174017%_
                             _%hd173692174020%_
                             _%tl173693174022%_
                             _%e173694174025%_
                             _%hd173695174028%_
                             _%tl173696174030%_
                             _%e173697174033%_
                             _%hd173698174036%_
                             _%tl173699174038%_
                             _%e173700174041%_
                             _%hd173701174044%_
                             _%tl173702174046%_
                             _%e173703174049%_
                             _%hd173704174052%_
                             _%tl173705174054%_
                             _%e173706174057%_
                             _%hd173707174060%_
                             _%tl173708174062%_)
                      (let ((_%L174065%_ _%hd173707174060%_)
                            (_%L174066%_ _%hd173704174052%_)
                            (_%L174067%_ _%hd173695174028%_)
                            (_%L174068%_ _%hd173686174004%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174068%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174068%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp179115
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173532%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174067%_
                                    __tmp179115)))
                            (_%__kont177999178000%_
                             _%L174065%_
                             _%L174066%_
                             _%L174067%_
                             _%L174068%_)
                            (_%__kont178005178006%_)))))
                   (_%__match178360178361%_
                    (lambda (_%e173676173977%_
                             _%hd173677173980%_
                             _%tl173678173982%_
                             _%e173679173985%_
                             _%hd173680173988%_
                             _%tl173681173990%_
                             _%e173682173993%_
                             _%hd173683173996%_
                             _%tl173684173998%_
                             _%e173685174001%_
                             _%hd173686174004%_
                             _%tl173687174006%_
                             _%e173688174009%_
                             _%hd173689174012%_
                             _%tl173690174014%_
                             _%e173691174017%_
                             _%hd173692174020%_
                             _%tl173693174022%_
                             _%e173694174025%_
                             _%hd173695174028%_
                             _%tl173696174030%_
                             _%e173697174033%_
                             _%hd173698174036%_
                             _%tl173699174038%_
                             _%e173700174041%_
                             _%hd173701174044%_
                             _%tl173702174046%_
                             _%e173703174049%_
                             _%hd173704174052%_
                             _%tl173705174054%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173699174038%_))
                          (let ((_%e173706174057%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173699174038%_))))
                            (let ((_%tl173708174062%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173706174057%_)))
                                  (_%hd173707174060%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173706174057%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173708174062%_))
                                  (_%__match178368178369%_
                                   _%e173676173977%_
                                   _%hd173677173980%_
                                   _%tl173678173982%_
                                   _%e173679173985%_
                                   _%hd173680173988%_
                                   _%tl173681173990%_
                                   _%e173682173993%_
                                   _%hd173683173996%_
                                   _%tl173684173998%_
                                   _%e173685174001%_
                                   _%hd173686174004%_
                                   _%tl173687174006%_
                                   _%e173688174009%_
                                   _%hd173689174012%_
                                   _%tl173690174014%_
                                   _%e173691174017%_
                                   _%hd173692174020%_
                                   _%tl173693174022%_
                                   _%e173694174025%_
                                   _%hd173695174028%_
                                   _%tl173696174030%_
                                   _%e173697174033%_
                                   _%hd173698174036%_
                                   _%tl173699174038%_
                                   _%e173700174041%_
                                   _%hd173701174044%_
                                   _%tl173702174046%_
                                   _%e173703174049%_
                                   _%hd173704174052%_
                                   _%tl173705174054%_
                                   _%e173706174057%_
                                   _%hd173707174060%_
                                   _%tl173708174062%_)
                                  (_%__kont178005178006%_))))
                          (_%__match178484178485%_
                           _%e173676173977%_
                           _%hd173677173980%_
                           _%tl173678173982%_
                           _%e173679173985%_
                           _%hd173680173988%_
                           _%tl173681173990%_
                           _%e173682173993%_
                           _%hd173683173996%_
                           _%tl173684173998%_
                           _%e173685174001%_
                           _%hd173686174004%_
                           _%tl173687174006%_
                           _%e173688174009%_
                           _%hd173689174012%_
                           _%tl173690174014%_
                           _%e173691174017%_
                           _%hd173692174020%_
                           _%tl173693174022%_
                           _%e173694174025%_
                           _%hd173695174028%_
                           _%tl173696174030%_
                           _%e173697174033%_
                           _%hd173698174036%_
                           _%tl173699174038%_))))
                   (_%__match178282178283%_
                    (lambda (_%e173642174108%_
                             _%hd173643174111%_
                             _%tl173644174113%_
                             _%e173645174116%_
                             _%hd173646174119%_
                             _%tl173647174121%_
                             _%e173648174124%_
                             _%hd173649174127%_
                             _%tl173650174129%_
                             _%e173651174132%_
                             _%hd173652174135%_
                             _%tl173653174137%_
                             _%e173654174140%_
                             _%hd173655174143%_
                             _%tl173656174145%_
                             _%e173657174148%_
                             _%hd173658174151%_
                             _%tl173659174153%_
                             _%e173660174156%_
                             _%hd173661174159%_
                             _%tl173662174161%_
                             _%e173663174164%_
                             _%hd173664174167%_
                             _%tl173665174169%_
                             _%e173666174172%_
                             _%hd173667174175%_
                             _%tl173668174177%_
                             _%e173669174180%_
                             _%hd173670174183%_
                             _%tl173671174185%_)
                      (let ((_%L174188%_ _%hd173670174183%_)
                            (_%L174189%_ _%hd173661174159%_)
                            (_%L174190%_ _%hd173652174135%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174190%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L174190%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp179116
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self173532%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L174189%_
                                    __tmp179116)))
                            (_%__kont177997177998%_
                             _%L174188%_
                             _%L174189%_
                             _%L174190%_)
                            (_%__match178486178487%_
                             _%e173642174108%_
                             _%hd173643174111%_
                             _%tl173644174113%_
                             _%e173645174116%_
                             _%hd173646174119%_
                             _%tl173647174121%_
                             _%e173648174124%_
                             _%hd173649174127%_
                             _%tl173650174129%_
                             _%e173651174132%_
                             _%hd173652174135%_
                             _%tl173653174137%_
                             _%e173654174140%_
                             _%hd173655174143%_
                             _%tl173656174145%_
                             _%e173657174148%_
                             _%hd173658174151%_
                             _%tl173659174153%_
                             _%e173660174156%_
                             _%hd173661174159%_
                             _%tl173662174161%_
                             _%e173663174164%_
                             _%hd173664174167%_
                             _%tl173665174169%_)))))
                   (_%__match178280178281%_
                    (lambda (_%e173642174108%_
                             _%hd173643174111%_
                             _%tl173644174113%_
                             _%e173645174116%_
                             _%hd173646174119%_
                             _%tl173647174121%_
                             _%e173648174124%_
                             _%hd173649174127%_
                             _%tl173650174129%_
                             _%e173651174132%_
                             _%hd173652174135%_
                             _%tl173653174137%_
                             _%e173654174140%_
                             _%hd173655174143%_
                             _%tl173656174145%_
                             _%e173657174148%_
                             _%hd173658174151%_
                             _%tl173659174153%_
                             _%e173660174156%_
                             _%hd173661174159%_
                             _%tl173662174161%_
                             _%e173663174164%_
                             _%hd173664174167%_
                             _%tl173665174169%_
                             _%e173666174172%_
                             _%hd173667174175%_
                             _%tl173668174177%_
                             _%e173669174180%_
                             _%hd173670174183%_
                             _%tl173671174185%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl173665174169%_))
                          (_%__match178282178283%_
                           _%e173642174108%_
                           _%hd173643174111%_
                           _%tl173644174113%_
                           _%e173645174116%_
                           _%hd173646174119%_
                           _%tl173647174121%_
                           _%e173648174124%_
                           _%hd173649174127%_
                           _%tl173650174129%_
                           _%e173651174132%_
                           _%hd173652174135%_
                           _%tl173653174137%_
                           _%e173654174140%_
                           _%hd173655174143%_
                           _%tl173656174145%_
                           _%e173657174148%_
                           _%hd173658174151%_
                           _%tl173659174153%_
                           _%e173660174156%_
                           _%hd173661174159%_
                           _%tl173662174161%_
                           _%e173663174164%_
                           _%hd173664174167%_
                           _%tl173665174169%_
                           _%e173666174172%_
                           _%hd173667174175%_
                           _%tl173668174177%_
                           _%e173669174180%_
                           _%hd173670174183%_
                           _%tl173671174185%_)
                          (_%__match178360178361%_
                           _%e173642174108%_
                           _%hd173643174111%_
                           _%tl173644174113%_
                           _%e173645174116%_
                           _%hd173646174119%_
                           _%tl173647174121%_
                           _%e173648174124%_
                           _%hd173649174127%_
                           _%tl173650174129%_
                           _%e173651174132%_
                           _%hd173652174135%_
                           _%tl173653174137%_
                           _%e173654174140%_
                           _%hd173655174143%_
                           _%tl173656174145%_
                           _%e173657174148%_
                           _%hd173658174151%_
                           _%tl173659174153%_
                           _%e173660174156%_
                           _%hd173661174159%_
                           _%tl173662174161%_
                           _%e173663174164%_
                           _%hd173664174167%_
                           _%tl173665174169%_
                           _%e173666174172%_
                           _%hd173667174175%_
                           _%tl173668174177%_
                           _%e173669174180%_
                           _%hd173670174183%_
                           _%tl173671174185%_))))
                   (_%__match178270178271%_
                    (lambda (_%e173642174108%_
                             _%hd173643174111%_
                             _%tl173644174113%_
                             _%e173645174116%_
                             _%hd173646174119%_
                             _%tl173647174121%_
                             _%e173648174124%_
                             _%hd173649174127%_
                             _%tl173650174129%_
                             _%e173651174132%_
                             _%hd173652174135%_
                             _%tl173653174137%_
                             _%e173654174140%_
                             _%hd173655174143%_
                             _%tl173656174145%_
                             _%e173657174148%_
                             _%hd173658174151%_
                             _%tl173659174153%_
                             _%e173660174156%_
                             _%hd173661174159%_
                             _%tl173662174161%_
                             _%e173663174164%_
                             _%hd173664174167%_
                             _%tl173665174169%_
                             _%e173666174172%_
                             _%hd173667174175%_
                             _%tl173668174177%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd173667174175%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173668174177%_))
                              (let ((_%e173669174180%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173668174177%_))))
                                (let ((_%tl173671174185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173669174180%_)))
                                      (_%hd173670174183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173669174180%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173671174185%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl173665174169%_))
                                          (_%__match178282178283%_
                                           _%e173642174108%_
                                           _%hd173643174111%_
                                           _%tl173644174113%_
                                           _%e173645174116%_
                                           _%hd173646174119%_
                                           _%tl173647174121%_
                                           _%e173648174124%_
                                           _%hd173649174127%_
                                           _%tl173650174129%_
                                           _%e173651174132%_
                                           _%hd173652174135%_
                                           _%tl173653174137%_
                                           _%e173654174140%_
                                           _%hd173655174143%_
                                           _%tl173656174145%_
                                           _%e173657174148%_
                                           _%hd173658174151%_
                                           _%tl173659174153%_
                                           _%e173660174156%_
                                           _%hd173661174159%_
                                           _%tl173662174161%_
                                           _%e173663174164%_
                                           _%hd173664174167%_
                                           _%tl173665174169%_
                                           _%e173666174172%_
                                           _%hd173667174175%_
                                           _%tl173668174177%_
                                           _%e173669174180%_
                                           _%hd173670174183%_
                                           _%tl173671174185%_)
                                          (_%__match178360178361%_
                                           _%e173642174108%_
                                           _%hd173643174111%_
                                           _%tl173644174113%_
                                           _%e173645174116%_
                                           _%hd173646174119%_
                                           _%tl173647174121%_
                                           _%e173648174124%_
                                           _%hd173649174127%_
                                           _%tl173650174129%_
                                           _%e173651174132%_
                                           _%hd173652174135%_
                                           _%tl173653174137%_
                                           _%e173654174140%_
                                           _%hd173655174143%_
                                           _%tl173656174145%_
                                           _%e173657174148%_
                                           _%hd173658174151%_
                                           _%tl173659174153%_
                                           _%e173660174156%_
                                           _%hd173661174159%_
                                           _%tl173662174161%_
                                           _%e173663174164%_
                                           _%hd173664174167%_
                                           _%tl173665174169%_
                                           _%e173666174172%_
                                           _%hd173667174175%_
                                           _%tl173668174177%_
                                           _%e173669174180%_
                                           _%hd173670174183%_
                                           _%tl173671174185%_))
                                      (_%__match178484178485%_
                                       _%e173642174108%_
                                       _%hd173643174111%_
                                       _%tl173644174113%_
                                       _%e173645174116%_
                                       _%hd173646174119%_
                                       _%tl173647174121%_
                                       _%e173648174124%_
                                       _%hd173649174127%_
                                       _%tl173650174129%_
                                       _%e173651174132%_
                                       _%hd173652174135%_
                                       _%tl173653174137%_
                                       _%e173654174140%_
                                       _%hd173655174143%_
                                       _%tl173656174145%_
                                       _%e173657174148%_
                                       _%hd173658174151%_
                                       _%tl173659174153%_
                                       _%e173660174156%_
                                       _%hd173661174159%_
                                       _%tl173662174161%_
                                       _%e173663174164%_
                                       _%hd173664174167%_
                                       _%tl173665174169%_))))
                              (_%__match178484178485%_
                               _%e173642174108%_
                               _%hd173643174111%_
                               _%tl173644174113%_
                               _%e173645174116%_
                               _%hd173646174119%_
                               _%tl173647174121%_
                               _%e173648174124%_
                               _%hd173649174127%_
                               _%tl173650174129%_
                               _%e173651174132%_
                               _%hd173652174135%_
                               _%tl173653174137%_
                               _%e173654174140%_
                               _%hd173655174143%_
                               _%tl173656174145%_
                               _%e173657174148%_
                               _%hd173658174151%_
                               _%tl173659174153%_
                               _%e173660174156%_
                               _%hd173661174159%_
                               _%tl173662174161%_
                               _%e173663174164%_
                               _%hd173664174167%_
                               _%tl173665174169%_))
                          (_%__match178484178485%_
                           _%e173642174108%_
                           _%hd173643174111%_
                           _%tl173644174113%_
                           _%e173645174116%_
                           _%hd173646174119%_
                           _%tl173647174121%_
                           _%e173648174124%_
                           _%hd173649174127%_
                           _%tl173650174129%_
                           _%e173651174132%_
                           _%hd173652174135%_
                           _%tl173653174137%_
                           _%e173654174140%_
                           _%hd173655174143%_
                           _%tl173656174145%_
                           _%e173657174148%_
                           _%hd173658174151%_
                           _%tl173659174153%_
                           _%e173660174156%_
                           _%hd173661174159%_
                           _%tl173662174161%_
                           _%e173663174164%_
                           _%hd173664174167%_
                           _%tl173665174169%_))))
                   (_%__match178202178203%_
                    (lambda (_%e173591174227%_
                             _%hd173592174230%_
                             _%tl173593174232%_
                             _%e173594174235%_
                             _%hd173595174238%_
                             _%tl173596174240%_
                             _%e173597174243%_
                             _%hd173598174246%_
                             _%tl173599174248%_
                             _%e173600174251%_
                             _%hd173601174254%_
                             _%tl173602174256%_
                             _%e173603174259%_
                             _%hd173604174262%_
                             _%tl173605174264%_
                             _%e173606174267%_
                             _%hd173607174270%_
                             _%tl173608174272%_
                             _%e173609174275%_
                             _%hd173610174278%_
                             _%tl173611174280%_
                             _%e173612174283%_
                             _%hd173613174286%_
                             _%tl173614174288%_
                             _%e173615174291%_
                             _%hd173616174294%_
                             _%tl173617174296%_
                             _%e173618174299%_
                             _%hd173619174302%_
                             _%tl173620174304%_
                             _%e173621174307%_
                             _%hd173622174310%_
                             _%tl173623174312%_
                             _%e173624174315%_
                             _%hd173625174318%_
                             _%tl173626174320%_
                             _%e173627174323%_
                             _%hd173628174326%_
                             _%tl173629174328%_
                             _%__splice177995177996%_
                             _%target173630174331%_
                             _%tl173632174333%_)
                      (letrec ((_%loop173633174336%_
                                (lambda (_%hd173631174339%_
                                         _%args173637174341%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173631174339%_))
                                      (let ((_%e173634174344%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173631174339%_))))
                                        (let ((_%lp-tl173636174349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173634174344%_)))
                                              (_%lp-hd173635174347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173634174344%_))))
                                          (_%loop173633174336%_
                                           _%lp-tl173636174349%_
                                           (cons _%lp-hd173635174347%_
                                                 _%args173637174341%_))))
                                      (let ((_%args173638174352%_
                                             (reverse _%args173637174341%_)))
                                        (let ((_%L174355%_
                                               _%args173638174352%_)
                                              (_%L174356%_ _%hd173628174326%_)
                                              (_%L174357%_ _%hd173619174302%_)
                                              (_%L174358%_ _%hd173610174278%_)
                                              (_%L174359%_ _%hd173601174254%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174359%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174358%_
                                                      'call-method))
                                                   (let ((__tmp179117
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173532%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174357%_
                                                      __tmp179117)))
                                              (_%__kont177993177994%_
                                               _%L174355%_
                                               _%L174356%_
                                               _%L174357%_
                                               _%L174358%_
                                               _%L174359%_)
                                              (_%__kont178005178006%_))))))))
                        (_%loop173633174336%_ _%target173630174331%_ '()))))
                   (_%__match178160178161%_
                    (lambda (_%e173591174227%_
                             _%hd173592174230%_
                             _%tl173593174232%_
                             _%e173594174235%_
                             _%hd173595174238%_
                             _%tl173596174240%_
                             _%e173597174243%_
                             _%hd173598174246%_
                             _%tl173599174248%_
                             _%e173600174251%_
                             _%hd173601174254%_
                             _%tl173602174256%_
                             _%e173603174259%_
                             _%hd173604174262%_
                             _%tl173605174264%_
                             _%e173606174267%_
                             _%hd173607174270%_
                             _%tl173608174272%_
                             _%e173609174275%_
                             _%hd173610174278%_
                             _%tl173611174280%_
                             _%e173612174283%_
                             _%hd173613174286%_
                             _%tl173614174288%_
                             _%e173615174291%_
                             _%hd173616174294%_
                             _%tl173617174296%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd173616174294%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173617174296%_))
                              (let ((_%e173618174299%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173617174296%_))))
                                (let ((_%tl173620174304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173618174299%_)))
                                      (_%hd173619174302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173618174299%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173620174304%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173614174288%_))
                                          (let ((_%e173621174307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173614174288%_))))
                                            (let ((_%tl173623174312%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173621174307%_)))
                                                  (_%hd173622174310%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173621174307%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173622174310%_))
                                                  (let ((_%e173624174315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173622174310%_))))
                                                    (let ((_%tl173626174320%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173624174315%_)))
                                                          (_%hd173625174318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173624174315%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd173625174318%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd173625174318%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173626174320%_))
                          (let ((_%e173627174323%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173626174320%_))))
                            (let ((_%tl173629174328%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173627174323%_)))
                                  (_%hd173628174326%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173627174323%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173629174328%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl173623174312%_))
                                      (let ((_%__splice177995177996%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl173623174312%_
                                                '0))))
                                        (let ((_%tl173632174333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice177995177996%_
                                                  '1)))
                                              (_%target173630174331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice177995177996%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173632174333%_))
                                              (_%__match178202178203%_
                                               _%e173591174227%_
                                               _%hd173592174230%_
                                               _%tl173593174232%_
                                               _%e173594174235%_
                                               _%hd173595174238%_
                                               _%tl173596174240%_
                                               _%e173597174243%_
                                               _%hd173598174246%_
                                               _%tl173599174248%_
                                               _%e173600174251%_
                                               _%hd173601174254%_
                                               _%tl173602174256%_
                                               _%e173603174259%_
                                               _%hd173604174262%_
                                               _%tl173605174264%_
                                               _%e173606174267%_
                                               _%hd173607174270%_
                                               _%tl173608174272%_
                                               _%e173609174275%_
                                               _%hd173610174278%_
                                               _%tl173611174280%_
                                               _%e173612174283%_
                                               _%hd173613174286%_
                                               _%tl173614174288%_
                                               _%e173615174291%_
                                               _%hd173616174294%_
                                               _%tl173617174296%_
                                               _%e173618174299%_
                                               _%hd173619174302%_
                                               _%tl173620174304%_
                                               _%e173621174307%_
                                               _%hd173622174310%_
                                               _%tl173623174312%_
                                               _%e173624174315%_
                                               _%hd173625174318%_
                                               _%tl173626174320%_
                                               _%e173627174323%_
                                               _%hd173628174326%_
                                               _%tl173629174328%_
                                               _%__splice177995177996%_
                                               _%target173630174331%_
                                               _%tl173632174333%_)
                                              (_%__kont178005178006%_))))
                                      (_%__kont178005178006%_))
                                  (_%__kont178005178006%_))))
                          (_%__kont178005178006%_))
                      (_%__kont178005178006%_))
                  (_%__kont178005178006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178005178006%_))))
                                          (_%__match178484178485%_
                                           _%e173591174227%_
                                           _%hd173592174230%_
                                           _%tl173593174232%_
                                           _%e173594174235%_
                                           _%hd173595174238%_
                                           _%tl173596174240%_
                                           _%e173597174243%_
                                           _%hd173598174246%_
                                           _%tl173599174248%_
                                           _%e173600174251%_
                                           _%hd173601174254%_
                                           _%tl173602174256%_
                                           _%e173603174259%_
                                           _%hd173604174262%_
                                           _%tl173605174264%_
                                           _%e173606174267%_
                                           _%hd173607174270%_
                                           _%tl173608174272%_
                                           _%e173609174275%_
                                           _%hd173610174278%_
                                           _%tl173611174280%_
                                           _%e173612174283%_
                                           _%hd173613174286%_
                                           _%tl173614174288%_))
                                      (_%__match178484178485%_
                                       _%e173591174227%_
                                       _%hd173592174230%_
                                       _%tl173593174232%_
                                       _%e173594174235%_
                                       _%hd173595174238%_
                                       _%tl173596174240%_
                                       _%e173597174243%_
                                       _%hd173598174246%_
                                       _%tl173599174248%_
                                       _%e173600174251%_
                                       _%hd173601174254%_
                                       _%tl173602174256%_
                                       _%e173603174259%_
                                       _%hd173604174262%_
                                       _%tl173605174264%_
                                       _%e173606174267%_
                                       _%hd173607174270%_
                                       _%tl173608174272%_
                                       _%e173609174275%_
                                       _%hd173610174278%_
                                       _%tl173611174280%_
                                       _%e173612174283%_
                                       _%hd173613174286%_
                                       _%tl173614174288%_))))
                              (_%__match178484178485%_
                               _%e173591174227%_
                               _%hd173592174230%_
                               _%tl173593174232%_
                               _%e173594174235%_
                               _%hd173595174238%_
                               _%tl173596174240%_
                               _%e173597174243%_
                               _%hd173598174246%_
                               _%tl173599174248%_
                               _%e173600174251%_
                               _%hd173601174254%_
                               _%tl173602174256%_
                               _%e173603174259%_
                               _%hd173604174262%_
                               _%tl173605174264%_
                               _%e173606174267%_
                               _%hd173607174270%_
                               _%tl173608174272%_
                               _%e173609174275%_
                               _%hd173610174278%_
                               _%tl173611174280%_
                               _%e173612174283%_
                               _%hd173613174286%_
                               _%tl173614174288%_))
                          (_%__match178270178271%_
                           _%e173591174227%_
                           _%hd173592174230%_
                           _%tl173593174232%_
                           _%e173594174235%_
                           _%hd173595174238%_
                           _%tl173596174240%_
                           _%e173597174243%_
                           _%hd173598174246%_
                           _%tl173599174248%_
                           _%e173600174251%_
                           _%hd173601174254%_
                           _%tl173602174256%_
                           _%e173603174259%_
                           _%hd173604174262%_
                           _%tl173605174264%_
                           _%e173606174267%_
                           _%hd173607174270%_
                           _%tl173608174272%_
                           _%e173609174275%_
                           _%hd173610174278%_
                           _%tl173611174280%_
                           _%e173612174283%_
                           _%hd173613174286%_
                           _%tl173614174288%_
                           _%e173615174291%_
                           _%hd173616174294%_
                           _%tl173617174296%_))))
                   (_%__match178092178093%_
                    (lambda (_%e173547174416%_
                             _%hd173548174419%_
                             _%tl173549174421%_
                             _%e173550174424%_
                             _%hd173551174427%_
                             _%tl173552174429%_
                             _%e173553174432%_
                             _%hd173554174435%_
                             _%tl173555174437%_
                             _%e173556174440%_
                             _%hd173557174443%_
                             _%tl173558174445%_
                             _%e173559174448%_
                             _%hd173560174451%_
                             _%tl173561174453%_
                             _%e173562174456%_
                             _%hd173563174459%_
                             _%tl173564174461%_
                             _%e173565174464%_
                             _%hd173566174467%_
                             _%tl173567174469%_
                             _%e173568174472%_
                             _%hd173569174475%_
                             _%tl173570174477%_
                             _%e173571174480%_
                             _%hd173572174483%_
                             _%tl173573174485%_
                             _%e173574174488%_
                             _%hd173575174491%_
                             _%tl173576174493%_
                             _%__splice177991177992%_
                             _%target173577174496%_
                             _%tl173579174498%_)
                      (letrec ((_%loop173580174501%_
                                (lambda (_%hd173578174504%_
                                         _%args173584174506%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd173578174504%_))
                                      (let ((_%e173581174509%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd173578174504%_))))
                                        (let ((_%lp-tl173583174514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173581174509%_)))
                                              (_%lp-hd173582174512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173581174509%_))))
                                          (_%loop173580174501%_
                                           _%lp-tl173583174514%_
                                           (cons _%lp-hd173582174512%_
                                                 _%args173584174506%_))))
                                      (let ((_%args173585174517%_
                                             (reverse _%args173584174506%_)))
                                        (let ((_%L174520%_
                                               _%args173585174517%_)
                                              (_%L174521%_ _%hd173575174491%_)
                                              (_%L174522%_ _%hd173566174467%_)
                                              (_%L174523%_ _%hd173557174443%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L174523%_
                                                      'call-method))
                                                   (let ((__tmp179118
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self173532%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L174522%_
                                                      __tmp179118)))
                                              (_%__kont177989177990%_
                                               _%L174520%_
                                               _%L174521%_
                                               _%L174522%_
                                               _%L174523%_)
                                              (_%__match178280178281%_
                                               _%e173547174416%_
                                               _%hd173548174419%_
                                               _%tl173549174421%_
                                               _%e173550174424%_
                                               _%hd173551174427%_
                                               _%tl173552174429%_
                                               _%e173553174432%_
                                               _%hd173554174435%_
                                               _%tl173555174437%_
                                               _%e173556174440%_
                                               _%hd173557174443%_
                                               _%tl173558174445%_
                                               _%e173559174448%_
                                               _%hd173560174451%_
                                               _%tl173561174453%_
                                               _%e173562174456%_
                                               _%hd173563174459%_
                                               _%tl173564174461%_
                                               _%e173565174464%_
                                               _%hd173566174467%_
                                               _%tl173567174469%_
                                               _%e173568174472%_
                                               _%hd173569174475%_
                                               _%tl173570174477%_
                                               _%e173571174480%_
                                               _%hd173572174483%_
                                               _%tl173573174485%_
                                               _%e173574174488%_
                                               _%hd173575174491%_
                                               _%tl173576174493%_))))))))
                        (_%loop173580174501%_ _%target173577174496%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx177987177988%_))
                  (let ((_%e173547174416%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx177987177988%_))))
                    (let ((_%tl173549174421%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173547174416%_)))
                          (_%hd173548174419%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173547174416%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl173549174421%_))
                          (let ((_%e173550174424%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl173549174421%_))))
                            (let ((_%tl173552174429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173550174424%_)))
                                  (_%hd173551174427%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173550174424%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd173551174427%_))
                                  (let ((_%e173553174432%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd173551174427%_))))
                                    (let ((_%tl173555174437%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e173553174432%_)))
                                          (_%hd173554174435%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e173553174432%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd173554174435%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd173554174435%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl173555174437%_))
                                                  (let ((_%e173556174440%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl173555174437%_))))
                                                    (let ((_%tl173558174445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173556174440%_)))
                                                          (_%hd173557174443%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173556174440%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl173558174445%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl173552174429%_))
                      (let ((_%e173559174448%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl173552174429%_))))
                        (let ((_%tl173561174453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173559174448%_)))
                              (_%hd173560174451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173559174448%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd173560174451%_))
                              (let ((_%e173562174456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd173560174451%_))))
                                (let ((_%tl173564174461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173562174456%_)))
                                      (_%hd173563174459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173562174456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd173563174459%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd173563174459%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173564174461%_))
                                              (let ((_%e173565174464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173564174461%_))))
                                                (let ((_%tl173567174469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173565174464%_)))
                                                      (_%hd173566174467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173565174464%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173567174469%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl173561174453%_))
                                                          (let ((_%e173568174472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl173561174453%_))))
                    (let ((_%tl173570174477%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173568174472%_)))
                          (_%hd173569174475%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173568174472%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd173569174475%_))
                          (let ((_%e173571174480%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd173569174475%_))))
                            (let ((_%tl173573174485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e173571174480%_)))
                                  (_%hd173572174483%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e173571174480%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd173572174483%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd173572174483%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl173573174485%_))
                                          (let ((_%e173574174488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl173573174485%_))))
                                            (let ((_%tl173576174493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e173574174488%_)))
                                                  (_%hd173575174491%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e173574174488%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl173576174493%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl173570174477%_))
                                                      (let ((_%__splice177991177992%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl173570174477%_ '0))))
                (let ((_%tl173579174498%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice177991177992%_ '1)))
                      (_%target173577174496%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice177991177992%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl173579174498%_))
                      (_%__match178092178093%_
                       _%e173547174416%_
                       _%hd173548174419%_
                       _%tl173549174421%_
                       _%e173550174424%_
                       _%hd173551174427%_
                       _%tl173552174429%_
                       _%e173553174432%_
                       _%hd173554174435%_
                       _%tl173555174437%_
                       _%e173556174440%_
                       _%hd173557174443%_
                       _%tl173558174445%_
                       _%e173559174448%_
                       _%hd173560174451%_
                       _%tl173561174453%_
                       _%e173562174456%_
                       _%hd173563174459%_
                       _%tl173564174461%_
                       _%e173565174464%_
                       _%hd173566174467%_
                       _%tl173567174469%_
                       _%e173568174472%_
                       _%hd173569174475%_
                       _%tl173570174477%_
                       _%e173571174480%_
                       _%hd173572174483%_
                       _%tl173573174485%_
                       _%e173574174488%_
                       _%hd173575174491%_
                       _%tl173576174493%_
                       _%__splice177991177992%_
                       _%target173577174496%_
                       _%tl173579174498%_)
                      (_%__match178280178281%_
                       _%e173547174416%_
                       _%hd173548174419%_
                       _%tl173549174421%_
                       _%e173550174424%_
                       _%hd173551174427%_
                       _%tl173552174429%_
                       _%e173553174432%_
                       _%hd173554174435%_
                       _%tl173555174437%_
                       _%e173556174440%_
                       _%hd173557174443%_
                       _%tl173558174445%_
                       _%e173559174448%_
                       _%hd173560174451%_
                       _%tl173561174453%_
                       _%e173562174456%_
                       _%hd173563174459%_
                       _%tl173564174461%_
                       _%e173565174464%_
                       _%hd173566174467%_
                       _%tl173567174469%_
                       _%e173568174472%_
                       _%hd173569174475%_
                       _%tl173570174477%_
                       _%e173571174480%_
                       _%hd173572174483%_
                       _%tl173573174485%_
                       _%e173574174488%_
                       _%hd173575174491%_
                       _%tl173576174493%_))))
              (_%__match178280178281%_
               _%e173547174416%_
               _%hd173548174419%_
               _%tl173549174421%_
               _%e173550174424%_
               _%hd173551174427%_
               _%tl173552174429%_
               _%e173553174432%_
               _%hd173554174435%_
               _%tl173555174437%_
               _%e173556174440%_
               _%hd173557174443%_
               _%tl173558174445%_
               _%e173559174448%_
               _%hd173560174451%_
               _%tl173561174453%_
               _%e173562174456%_
               _%hd173563174459%_
               _%tl173564174461%_
               _%e173565174464%_
               _%hd173566174467%_
               _%tl173567174469%_
               _%e173568174472%_
               _%hd173569174475%_
               _%tl173570174477%_
               _%e173571174480%_
               _%hd173572174483%_
               _%tl173573174485%_
               _%e173574174488%_
               _%hd173575174491%_
               _%tl173576174493%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match178484178485%_
                                                   _%e173547174416%_
                                                   _%hd173548174419%_
                                                   _%tl173549174421%_
                                                   _%e173550174424%_
                                                   _%hd173551174427%_
                                                   _%tl173552174429%_
                                                   _%e173553174432%_
                                                   _%hd173554174435%_
                                                   _%tl173555174437%_
                                                   _%e173556174440%_
                                                   _%hd173557174443%_
                                                   _%tl173558174445%_
                                                   _%e173559174448%_
                                                   _%hd173560174451%_
                                                   _%tl173561174453%_
                                                   _%e173562174456%_
                                                   _%hd173563174459%_
                                                   _%tl173564174461%_
                                                   _%e173565174464%_
                                                   _%hd173566174467%_
                                                   _%tl173567174469%_
                                                   _%e173568174472%_
                                                   _%hd173569174475%_
                                                   _%tl173570174477%_))))
                                          (_%__match178484178485%_
                                           _%e173547174416%_
                                           _%hd173548174419%_
                                           _%tl173549174421%_
                                           _%e173550174424%_
                                           _%hd173551174427%_
                                           _%tl173552174429%_
                                           _%e173553174432%_
                                           _%hd173554174435%_
                                           _%tl173555174437%_
                                           _%e173556174440%_
                                           _%hd173557174443%_
                                           _%tl173558174445%_
                                           _%e173559174448%_
                                           _%hd173560174451%_
                                           _%tl173561174453%_
                                           _%e173562174456%_
                                           _%hd173563174459%_
                                           _%tl173564174461%_
                                           _%e173565174464%_
                                           _%hd173566174467%_
                                           _%tl173567174469%_
                                           _%e173568174472%_
                                           _%hd173569174475%_
                                           _%tl173570174477%_))
                                      (_%__match178160178161%_
                                       _%e173547174416%_
                                       _%hd173548174419%_
                                       _%tl173549174421%_
                                       _%e173550174424%_
                                       _%hd173551174427%_
                                       _%tl173552174429%_
                                       _%e173553174432%_
                                       _%hd173554174435%_
                                       _%tl173555174437%_
                                       _%e173556174440%_
                                       _%hd173557174443%_
                                       _%tl173558174445%_
                                       _%e173559174448%_
                                       _%hd173560174451%_
                                       _%tl173561174453%_
                                       _%e173562174456%_
                                       _%hd173563174459%_
                                       _%tl173564174461%_
                                       _%e173565174464%_
                                       _%hd173566174467%_
                                       _%tl173567174469%_
                                       _%e173568174472%_
                                       _%hd173569174475%_
                                       _%tl173570174477%_
                                       _%e173571174480%_
                                       _%hd173572174483%_
                                       _%tl173573174485%_))
                                  (_%__match178484178485%_
                                   _%e173547174416%_
                                   _%hd173548174419%_
                                   _%tl173549174421%_
                                   _%e173550174424%_
                                   _%hd173551174427%_
                                   _%tl173552174429%_
                                   _%e173553174432%_
                                   _%hd173554174435%_
                                   _%tl173555174437%_
                                   _%e173556174440%_
                                   _%hd173557174443%_
                                   _%tl173558174445%_
                                   _%e173559174448%_
                                   _%hd173560174451%_
                                   _%tl173561174453%_
                                   _%e173562174456%_
                                   _%hd173563174459%_
                                   _%tl173564174461%_
                                   _%e173565174464%_
                                   _%hd173566174467%_
                                   _%tl173567174469%_
                                   _%e173568174472%_
                                   _%hd173569174475%_
                                   _%tl173570174477%_))))
                          (_%__match178484178485%_
                           _%e173547174416%_
                           _%hd173548174419%_
                           _%tl173549174421%_
                           _%e173550174424%_
                           _%hd173551174427%_
                           _%tl173552174429%_
                           _%e173553174432%_
                           _%hd173554174435%_
                           _%tl173555174437%_
                           _%e173556174440%_
                           _%hd173557174443%_
                           _%tl173558174445%_
                           _%e173559174448%_
                           _%hd173560174451%_
                           _%tl173561174453%_
                           _%e173562174456%_
                           _%hd173563174459%_
                           _%tl173564174461%_
                           _%e173565174464%_
                           _%hd173566174467%_
                           _%tl173567174469%_
                           _%e173568174472%_
                           _%hd173569174475%_
                           _%tl173570174477%_))))
                  (_%__match178422178423%_
                   _%e173547174416%_
                   _%hd173548174419%_
                   _%tl173549174421%_
                   _%e173550174424%_
                   _%hd173551174427%_
                   _%tl173552174429%_
                   _%e173553174432%_
                   _%hd173554174435%_
                   _%tl173555174437%_
                   _%e173556174440%_
                   _%hd173557174443%_
                   _%tl173558174445%_
                   _%e173559174448%_
                   _%hd173560174451%_
                   _%tl173561174453%_
                   _%e173562174456%_
                   _%hd173563174459%_
                   _%tl173564174461%_
                   _%e173565174464%_
                   _%hd173566174467%_
                   _%tl173567174469%_))
              (_%__kont178005178006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont178005178006%_))
                                          (_%__kont178005178006%_))
                                      (_%__kont178005178006%_))))
                              (_%__kont178005178006%_))))
                      (_%__kont178005178006%_))
                  (_%__kont178005178006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont178005178006%_))
                                              (_%__kont178005178006%_))
                                          (_%__kont178005178006%_))))
                                  (_%__kont178005178006%_))))
                          (_%__kont178005178006%_))))
                  (_%__kont178005178006%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self172471%_ _%stx172472%_)
        (letrec ((_%force-e172474%_
                  (lambda (_%target173530%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target173530%_ '()))
                                      '()))))))
          (let* ((_%__stx178489178490%_ _%stx172472%_)
                 (_%g172482172704%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx178489178490%_)))))
            (let ((_%__kont178491178492%_
                   (lambda (_%L173476%_ _%L173477%_ _%L173478%_ _%L173479%_)
                     (let ((_%$method173524%_
                            (let ((__tmp179120
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172471%_ 'methods)))
                                  (__tmp179119
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173477%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179120 __tmp179119)))
                           (_%args173525%_
                            (map (lambda (_%g173512173514%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172471%_
                                      _%g173512173514%_)))
                                 (let ((__tmp179121
                                        (lambda (_%g173516173519%_
                                                 _%g173517173521%_)
                                          (cons _%g173516173519%_
                                                _%g173517173521%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179121 '() _%L173476%_)))))
                       (let ((__tmp179122
                              (cons '%#call
                                    (cons (_%force-e172474%_ _%$method173524%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172471%_
                                                               'receiver))
                                                            '()))
                                                _%args173525%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179122 _%stx172472%_)))))
                  (_%__kont178495178496%_
                   (lambda (_%L173308%_
                            _%L173309%_
                            _%L173310%_
                            _%L173311%_
                            _%L173312%_)
                     (let ((_%$method173364%_
                            (let ((__tmp179124
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172471%_ 'methods)))
                                  (__tmp179123
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173309%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179124 __tmp179123)))
                           (_%args173365%_
                            (map (lambda (_%g173352173354%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self172471%_
                                      _%g173352173354%_)))
                                 (let ((__tmp179125
                                        (lambda (_%g173356173359%_
                                                 _%g173357173361%_)
                                          (cons _%g173356173359%_
                                                _%g173357173361%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp179125 '() _%L173308%_)))))
                       (let ((__tmp179126
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e172474%_
                                                 _%$method173364%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172471%_ 'receiver))
                          '()))
              _%args173365%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179126 _%stx172472%_)))))
                  (_%__kont178499178500%_
                   (lambda (_%L173139%_ _%L173140%_ _%L173141%_)
                     (let* ((_%$field173173%_
                             (let ((__tmp179128
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self172471%_ 'slots)))
                                   (__tmp179127
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L173139%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp179128 __tmp179127)))
                            (__tmp179129
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self172471%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field173173%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self172471%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp179129 _%stx172472%_))))
                  (_%__kont178501178502%_
                   (lambda (_%L173013%_ _%L173014%_ _%L173015%_ _%L173016%_)
                     (let ((_%$field173051%_
                            (let ((__tmp179131
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self172471%_ 'slots)))
                                  (__tmp179130
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L173014%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp179131 __tmp179130)))
                           (_%expr173052%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self172471%_ _%L173013%_))))
                       (let ((__tmp179132
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self172471%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field173051%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self172471%_ 'receiver))
                          '()))
              (cons _%expr173052%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp179132 _%stx172472%_)))))
                  (_%__kont178503178504%_
                   (lambda (_%L172885%_ _%L172886%_)
                     (let* ((_%accessor172908%_
                             (let ((__tmp179133
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172886%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179133)))
                            (_%klass172910%_
                             (let ((__tmp179134
                                    (##structure-ref
                                     _%accessor172908%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172472%_
                                __tmp179134)))
                            (_%slot172912%_
                             (##structure-ref
                              _%accessor172908%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor172908%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass172910%_
                                      _%slot172912%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass172910%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx172472%_
                           (let* ((_%$field172918%_
                                   (let ((__tmp179135
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172471%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179135 _%slot172912%_)))
                                  (__tmp179136
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172471%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field172918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172471%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179136
                              _%stx172472%_))))))
                  (_%__kont178505178506%_
                   (lambda (_%L172780%_ _%L172781%_ _%L172782%_)
                     (let* ((_%mutator172810%_
                             (let ((__tmp179137
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172782%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp179137)))
                            (_%klass172812%_
                             (let ((__tmp179138
                                    (##structure-ref
                                     _%mutator172810%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx172472%_
                                __tmp179138)))
                            (_%slot172814%_
                             (##structure-ref
                              _%mutator172810%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr172816%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self172471%_ _%L172780%_))))
                       (if (if (##structure-ref
                                _%mutator172810%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass172812%_
                                      _%slot172814%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass172812%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp179139
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L172782%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L172781%_
                                                                '()))
                                                    (cons _%expr172816%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp179139 _%stx172472%_))
                           (let* ((_%$field172822%_
                                   (let ((__tmp179140
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172471%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp179140 _%slot172814%_)))
                                  (__tmp179141
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self172471%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field172822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self172471%_ 'receiver))
                               '()))
                   (cons _%expr172816%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp179141
                              _%stx172472%_))))))
                  (_%__kont178507178508%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self172471%_ _%stx172472%_)))))
              (let* ((_%__match178988178989%_
                      (lambda (_%e172676172716%_
                               _%hd172677172719%_
                               _%tl172678172721%_
                               _%e172679172724%_
                               _%hd172680172727%_
                               _%tl172681172729%_
                               _%e172682172732%_
                               _%hd172683172735%_
                               _%tl172684172737%_
                               _%e172685172740%_
                               _%hd172686172743%_
                               _%tl172687172745%_
                               _%e172688172748%_
                               _%hd172689172751%_
                               _%tl172690172753%_
                               _%e172691172756%_
                               _%hd172692172759%_
                               _%tl172693172761%_
                               _%e172694172764%_
                               _%hd172695172767%_
                               _%tl172696172769%_
                               _%e172697172772%_
                               _%hd172698172775%_
                               _%tl172699172777%_)
                        (let ((_%L172780%_ _%hd172698172775%_)
                              (_%L172781%_ _%hd172695172767%_)
                              (_%L172782%_ _%hd172686172743%_))
                          (if (and (let ((__tmp179142
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172471%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172781%_
                                      __tmp179142))
                                   (let ((__tmp179143
                                          (let ((__tmp179144
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172782%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179144))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179143
                                      'gxc#!mutator::t)))
                              (_%__kont178505178506%_
                               _%L172780%_
                               _%L172781%_
                               _%L172782%_)
                              (_%__kont178507178508%_)))))
                     (_%__match178986178987%_
                      (lambda (_%e172676172716%_
                               _%hd172677172719%_
                               _%tl172678172721%_
                               _%e172679172724%_
                               _%hd172680172727%_
                               _%tl172681172729%_
                               _%e172682172732%_
                               _%hd172683172735%_
                               _%tl172684172737%_
                               _%e172685172740%_
                               _%hd172686172743%_
                               _%tl172687172745%_
                               _%e172688172748%_
                               _%hd172689172751%_
                               _%tl172690172753%_
                               _%e172691172756%_
                               _%hd172692172759%_
                               _%tl172693172761%_
                               _%e172694172764%_
                               _%hd172695172767%_
                               _%tl172696172769%_
                               _%e172697172772%_
                               _%hd172698172775%_
                               _%tl172699172777%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172699172777%_))
                            (_%__match178988178989%_
                             _%e172676172716%_
                             _%hd172677172719%_
                             _%tl172678172721%_
                             _%e172679172724%_
                             _%hd172680172727%_
                             _%tl172681172729%_
                             _%e172682172732%_
                             _%hd172683172735%_
                             _%tl172684172737%_
                             _%e172685172740%_
                             _%hd172686172743%_
                             _%tl172687172745%_
                             _%e172688172748%_
                             _%hd172689172751%_
                             _%tl172690172753%_
                             _%e172691172756%_
                             _%hd172692172759%_
                             _%tl172693172761%_
                             _%e172694172764%_
                             _%hd172695172767%_
                             _%tl172696172769%_
                             _%e172697172772%_
                             _%hd172698172775%_
                             _%tl172699172777%_)
                            (_%__kont178507178508%_))))
                     (_%__match178980178981%_
                      (lambda (_%e172676172716%_
                               _%hd172677172719%_
                               _%tl172678172721%_
                               _%e172679172724%_
                               _%hd172680172727%_
                               _%tl172681172729%_
                               _%e172682172732%_
                               _%hd172683172735%_
                               _%tl172684172737%_
                               _%e172685172740%_
                               _%hd172686172743%_
                               _%tl172687172745%_
                               _%e172688172748%_
                               _%hd172689172751%_
                               _%tl172690172753%_
                               _%e172691172756%_
                               _%hd172692172759%_
                               _%tl172693172761%_
                               _%e172694172764%_
                               _%hd172695172767%_
                               _%tl172696172769%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172690172753%_))
                            (let ((_%e172697172772%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172690172753%_))))
                              (let ((_%tl172699172777%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172697172772%_)))
                                    (_%hd172698172775%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172697172772%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172699172777%_))
                                    (_%__match178988178989%_
                                     _%e172676172716%_
                                     _%hd172677172719%_
                                     _%tl172678172721%_
                                     _%e172679172724%_
                                     _%hd172680172727%_
                                     _%tl172681172729%_
                                     _%e172682172732%_
                                     _%hd172683172735%_
                                     _%tl172684172737%_
                                     _%e172685172740%_
                                     _%hd172686172743%_
                                     _%tl172687172745%_
                                     _%e172688172748%_
                                     _%hd172689172751%_
                                     _%tl172690172753%_
                                     _%e172691172756%_
                                     _%hd172692172759%_
                                     _%tl172693172761%_
                                     _%e172694172764%_
                                     _%hd172695172767%_
                                     _%tl172696172769%_
                                     _%e172697172772%_
                                     _%hd172698172775%_
                                     _%tl172699172777%_)
                                    (_%__kont178507178508%_))))
                            (_%__kont178507178508%_))))
                     (_%__match178926178927%_
                      (lambda (_%e172652172829%_
                               _%hd172653172832%_
                               _%tl172654172834%_
                               _%e172655172837%_
                               _%hd172656172840%_
                               _%tl172657172842%_
                               _%e172658172845%_
                               _%hd172659172848%_
                               _%tl172660172850%_
                               _%e172661172853%_
                               _%hd172662172856%_
                               _%tl172663172858%_
                               _%e172664172861%_
                               _%hd172665172864%_
                               _%tl172666172866%_
                               _%e172667172869%_
                               _%hd172668172872%_
                               _%tl172669172874%_
                               _%e172670172877%_
                               _%hd172671172880%_
                               _%tl172672172882%_)
                        (let ((_%L172885%_ _%hd172671172880%_)
                              (_%L172886%_ _%hd172662172856%_))
                          (if (and (let ((__tmp179145
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172471%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172885%_
                                      __tmp179145))
                                   (let ((__tmp179146
                                          (let ((__tmp179147
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L172886%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp179147))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp179146
                                      'gxc#!accessor::t)))
                              (_%__kont178503178504%_ _%L172885%_ _%L172886%_)
                              (_%__kont178507178508%_)))))
                     (_%__match178924178925%_
                      (lambda (_%e172652172829%_
                               _%hd172653172832%_
                               _%tl172654172834%_
                               _%e172655172837%_
                               _%hd172656172840%_
                               _%tl172657172842%_
                               _%e172658172845%_
                               _%hd172659172848%_
                               _%tl172660172850%_
                               _%e172661172853%_
                               _%hd172662172856%_
                               _%tl172663172858%_
                               _%e172664172861%_
                               _%hd172665172864%_
                               _%tl172666172866%_
                               _%e172667172869%_
                               _%hd172668172872%_
                               _%tl172669172874%_
                               _%e172670172877%_
                               _%hd172671172880%_
                               _%tl172672172882%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172666172866%_))
                            (_%__match178926178927%_
                             _%e172652172829%_
                             _%hd172653172832%_
                             _%tl172654172834%_
                             _%e172655172837%_
                             _%hd172656172840%_
                             _%tl172657172842%_
                             _%e172658172845%_
                             _%hd172659172848%_
                             _%tl172660172850%_
                             _%e172661172853%_
                             _%hd172662172856%_
                             _%tl172663172858%_
                             _%e172664172861%_
                             _%hd172665172864%_
                             _%tl172666172866%_
                             _%e172667172869%_
                             _%hd172668172872%_
                             _%tl172669172874%_
                             _%e172670172877%_
                             _%hd172671172880%_
                             _%tl172672172882%_)
                            (_%__match178980178981%_
                             _%e172652172829%_
                             _%hd172653172832%_
                             _%tl172654172834%_
                             _%e172655172837%_
                             _%hd172656172840%_
                             _%tl172657172842%_
                             _%e172658172845%_
                             _%hd172659172848%_
                             _%tl172660172850%_
                             _%e172661172853%_
                             _%hd172662172856%_
                             _%tl172663172858%_
                             _%e172664172861%_
                             _%hd172665172864%_
                             _%tl172666172866%_
                             _%e172667172869%_
                             _%hd172668172872%_
                             _%tl172669172874%_
                             _%e172670172877%_
                             _%hd172671172880%_
                             _%tl172672172882%_))))
                     (_%__match178870178871%_
                      (lambda (_%e172617172925%_
                               _%hd172618172928%_
                               _%tl172619172930%_
                               _%e172620172933%_
                               _%hd172621172936%_
                               _%tl172622172938%_
                               _%e172623172941%_
                               _%hd172624172944%_
                               _%tl172625172946%_
                               _%e172626172949%_
                               _%hd172627172952%_
                               _%tl172628172954%_
                               _%e172629172957%_
                               _%hd172630172960%_
                               _%tl172631172962%_
                               _%e172632172965%_
                               _%hd172633172968%_
                               _%tl172634172970%_
                               _%e172635172973%_
                               _%hd172636172976%_
                               _%tl172637172978%_
                               _%e172638172981%_
                               _%hd172639172984%_
                               _%tl172640172986%_
                               _%e172641172989%_
                               _%hd172642172992%_
                               _%tl172643172994%_
                               _%e172644172997%_
                               _%hd172645173000%_
                               _%tl172646173002%_
                               _%e172647173005%_
                               _%hd172648173008%_
                               _%tl172649173010%_)
                        (let ((_%L173013%_ _%hd172648173008%_)
                              (_%L173014%_ _%hd172645173000%_)
                              (_%L173015%_ _%hd172636172976%_)
                              (_%L173016%_ _%hd172627172952%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173016%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173016%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp179148
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172471%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173015%_
                                      __tmp179148)))
                              (_%__kont178501178502%_
                               _%L173013%_
                               _%L173014%_
                               _%L173015%_
                               _%L173016%_)
                              (_%__kont178507178508%_)))))
                     (_%__match178862178863%_
                      (lambda (_%e172617172925%_
                               _%hd172618172928%_
                               _%tl172619172930%_
                               _%e172620172933%_
                               _%hd172621172936%_
                               _%tl172622172938%_
                               _%e172623172941%_
                               _%hd172624172944%_
                               _%tl172625172946%_
                               _%e172626172949%_
                               _%hd172627172952%_
                               _%tl172628172954%_
                               _%e172629172957%_
                               _%hd172630172960%_
                               _%tl172631172962%_
                               _%e172632172965%_
                               _%hd172633172968%_
                               _%tl172634172970%_
                               _%e172635172973%_
                               _%hd172636172976%_
                               _%tl172637172978%_
                               _%e172638172981%_
                               _%hd172639172984%_
                               _%tl172640172986%_
                               _%e172641172989%_
                               _%hd172642172992%_
                               _%tl172643172994%_
                               _%e172644172997%_
                               _%hd172645173000%_
                               _%tl172646173002%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172640172986%_))
                            (let ((_%e172647173005%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172640172986%_))))
                              (let ((_%tl172649173010%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172647173005%_)))
                                    (_%hd172648173008%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172647173005%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172649173010%_))
                                    (_%__match178870178871%_
                                     _%e172617172925%_
                                     _%hd172618172928%_
                                     _%tl172619172930%_
                                     _%e172620172933%_
                                     _%hd172621172936%_
                                     _%tl172622172938%_
                                     _%e172623172941%_
                                     _%hd172624172944%_
                                     _%tl172625172946%_
                                     _%e172626172949%_
                                     _%hd172627172952%_
                                     _%tl172628172954%_
                                     _%e172629172957%_
                                     _%hd172630172960%_
                                     _%tl172631172962%_
                                     _%e172632172965%_
                                     _%hd172633172968%_
                                     _%tl172634172970%_
                                     _%e172635172973%_
                                     _%hd172636172976%_
                                     _%tl172637172978%_
                                     _%e172638172981%_
                                     _%hd172639172984%_
                                     _%tl172640172986%_
                                     _%e172641172989%_
                                     _%hd172642172992%_
                                     _%tl172643172994%_
                                     _%e172644172997%_
                                     _%hd172645173000%_
                                     _%tl172646173002%_
                                     _%e172647173005%_
                                     _%hd172648173008%_
                                     _%tl172649173010%_)
                                    (_%__kont178507178508%_))))
                            (_%__match178986178987%_
                             _%e172617172925%_
                             _%hd172618172928%_
                             _%tl172619172930%_
                             _%e172620172933%_
                             _%hd172621172936%_
                             _%tl172622172938%_
                             _%e172623172941%_
                             _%hd172624172944%_
                             _%tl172625172946%_
                             _%e172626172949%_
                             _%hd172627172952%_
                             _%tl172628172954%_
                             _%e172629172957%_
                             _%hd172630172960%_
                             _%tl172631172962%_
                             _%e172632172965%_
                             _%hd172633172968%_
                             _%tl172634172970%_
                             _%e172635172973%_
                             _%hd172636172976%_
                             _%tl172637172978%_
                             _%e172638172981%_
                             _%hd172639172984%_
                             _%tl172640172986%_))))
                     (_%__match178784178785%_
                      (lambda (_%e172583173059%_
                               _%hd172584173062%_
                               _%tl172585173064%_
                               _%e172586173067%_
                               _%hd172587173070%_
                               _%tl172588173072%_
                               _%e172589173075%_
                               _%hd172590173078%_
                               _%tl172591173080%_
                               _%e172592173083%_
                               _%hd172593173086%_
                               _%tl172594173088%_
                               _%e172595173091%_
                               _%hd172596173094%_
                               _%tl172597173096%_
                               _%e172598173099%_
                               _%hd172599173102%_
                               _%tl172600173104%_
                               _%e172601173107%_
                               _%hd172602173110%_
                               _%tl172603173112%_
                               _%e172604173115%_
                               _%hd172605173118%_
                               _%tl172606173120%_
                               _%e172607173123%_
                               _%hd172608173126%_
                               _%tl172609173128%_
                               _%e172610173131%_
                               _%hd172611173134%_
                               _%tl172612173136%_)
                        (let ((_%L173139%_ _%hd172611173134%_)
                              (_%L173140%_ _%hd172602173110%_)
                              (_%L173141%_ _%hd172593173086%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173141%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L173141%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp179149
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self172471%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L173140%_
                                      __tmp179149)))
                              (_%__kont178499178500%_
                               _%L173139%_
                               _%L173140%_
                               _%L173141%_)
                              (_%__match178988178989%_
                               _%e172583173059%_
                               _%hd172584173062%_
                               _%tl172585173064%_
                               _%e172586173067%_
                               _%hd172587173070%_
                               _%tl172588173072%_
                               _%e172589173075%_
                               _%hd172590173078%_
                               _%tl172591173080%_
                               _%e172592173083%_
                               _%hd172593173086%_
                               _%tl172594173088%_
                               _%e172595173091%_
                               _%hd172596173094%_
                               _%tl172597173096%_
                               _%e172598173099%_
                               _%hd172599173102%_
                               _%tl172600173104%_
                               _%e172601173107%_
                               _%hd172602173110%_
                               _%tl172603173112%_
                               _%e172604173115%_
                               _%hd172605173118%_
                               _%tl172606173120%_)))))
                     (_%__match178782178783%_
                      (lambda (_%e172583173059%_
                               _%hd172584173062%_
                               _%tl172585173064%_
                               _%e172586173067%_
                               _%hd172587173070%_
                               _%tl172588173072%_
                               _%e172589173075%_
                               _%hd172590173078%_
                               _%tl172591173080%_
                               _%e172592173083%_
                               _%hd172593173086%_
                               _%tl172594173088%_
                               _%e172595173091%_
                               _%hd172596173094%_
                               _%tl172597173096%_
                               _%e172598173099%_
                               _%hd172599173102%_
                               _%tl172600173104%_
                               _%e172601173107%_
                               _%hd172602173110%_
                               _%tl172603173112%_
                               _%e172604173115%_
                               _%hd172605173118%_
                               _%tl172606173120%_
                               _%e172607173123%_
                               _%hd172608173126%_
                               _%tl172609173128%_
                               _%e172610173131%_
                               _%hd172611173134%_
                               _%tl172612173136%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172606173120%_))
                            (_%__match178784178785%_
                             _%e172583173059%_
                             _%hd172584173062%_
                             _%tl172585173064%_
                             _%e172586173067%_
                             _%hd172587173070%_
                             _%tl172588173072%_
                             _%e172589173075%_
                             _%hd172590173078%_
                             _%tl172591173080%_
                             _%e172592173083%_
                             _%hd172593173086%_
                             _%tl172594173088%_
                             _%e172595173091%_
                             _%hd172596173094%_
                             _%tl172597173096%_
                             _%e172598173099%_
                             _%hd172599173102%_
                             _%tl172600173104%_
                             _%e172601173107%_
                             _%hd172602173110%_
                             _%tl172603173112%_
                             _%e172604173115%_
                             _%hd172605173118%_
                             _%tl172606173120%_
                             _%e172607173123%_
                             _%hd172608173126%_
                             _%tl172609173128%_
                             _%e172610173131%_
                             _%hd172611173134%_
                             _%tl172612173136%_)
                            (_%__match178862178863%_
                             _%e172583173059%_
                             _%hd172584173062%_
                             _%tl172585173064%_
                             _%e172586173067%_
                             _%hd172587173070%_
                             _%tl172588173072%_
                             _%e172589173075%_
                             _%hd172590173078%_
                             _%tl172591173080%_
                             _%e172592173083%_
                             _%hd172593173086%_
                             _%tl172594173088%_
                             _%e172595173091%_
                             _%hd172596173094%_
                             _%tl172597173096%_
                             _%e172598173099%_
                             _%hd172599173102%_
                             _%tl172600173104%_
                             _%e172601173107%_
                             _%hd172602173110%_
                             _%tl172603173112%_
                             _%e172604173115%_
                             _%hd172605173118%_
                             _%tl172606173120%_
                             _%e172607173123%_
                             _%hd172608173126%_
                             _%tl172609173128%_
                             _%e172610173131%_
                             _%hd172611173134%_
                             _%tl172612173136%_))))
                     (_%__match178772178773%_
                      (lambda (_%e172583173059%_
                               _%hd172584173062%_
                               _%tl172585173064%_
                               _%e172586173067%_
                               _%hd172587173070%_
                               _%tl172588173072%_
                               _%e172589173075%_
                               _%hd172590173078%_
                               _%tl172591173080%_
                               _%e172592173083%_
                               _%hd172593173086%_
                               _%tl172594173088%_
                               _%e172595173091%_
                               _%hd172596173094%_
                               _%tl172597173096%_
                               _%e172598173099%_
                               _%hd172599173102%_
                               _%tl172600173104%_
                               _%e172601173107%_
                               _%hd172602173110%_
                               _%tl172603173112%_
                               _%e172604173115%_
                               _%hd172605173118%_
                               _%tl172606173120%_
                               _%e172607173123%_
                               _%hd172608173126%_
                               _%tl172609173128%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd172608173126%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172609173128%_))
                                (let ((_%e172610173131%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172609173128%_))))
                                  (let ((_%tl172612173136%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172610173131%_)))
                                        (_%hd172611173134%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172610173131%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172612173136%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172606173120%_))
                                            (_%__match178784178785%_
                                             _%e172583173059%_
                                             _%hd172584173062%_
                                             _%tl172585173064%_
                                             _%e172586173067%_
                                             _%hd172587173070%_
                                             _%tl172588173072%_
                                             _%e172589173075%_
                                             _%hd172590173078%_
                                             _%tl172591173080%_
                                             _%e172592173083%_
                                             _%hd172593173086%_
                                             _%tl172594173088%_
                                             _%e172595173091%_
                                             _%hd172596173094%_
                                             _%tl172597173096%_
                                             _%e172598173099%_
                                             _%hd172599173102%_
                                             _%tl172600173104%_
                                             _%e172601173107%_
                                             _%hd172602173110%_
                                             _%tl172603173112%_
                                             _%e172604173115%_
                                             _%hd172605173118%_
                                             _%tl172606173120%_
                                             _%e172607173123%_
                                             _%hd172608173126%_
                                             _%tl172609173128%_
                                             _%e172610173131%_
                                             _%hd172611173134%_
                                             _%tl172612173136%_)
                                            (_%__match178862178863%_
                                             _%e172583173059%_
                                             _%hd172584173062%_
                                             _%tl172585173064%_
                                             _%e172586173067%_
                                             _%hd172587173070%_
                                             _%tl172588173072%_
                                             _%e172589173075%_
                                             _%hd172590173078%_
                                             _%tl172591173080%_
                                             _%e172592173083%_
                                             _%hd172593173086%_
                                             _%tl172594173088%_
                                             _%e172595173091%_
                                             _%hd172596173094%_
                                             _%tl172597173096%_
                                             _%e172598173099%_
                                             _%hd172599173102%_
                                             _%tl172600173104%_
                                             _%e172601173107%_
                                             _%hd172602173110%_
                                             _%tl172603173112%_
                                             _%e172604173115%_
                                             _%hd172605173118%_
                                             _%tl172606173120%_
                                             _%e172607173123%_
                                             _%hd172608173126%_
                                             _%tl172609173128%_
                                             _%e172610173131%_
                                             _%hd172611173134%_
                                             _%tl172612173136%_))
                                        (_%__match178986178987%_
                                         _%e172583173059%_
                                         _%hd172584173062%_
                                         _%tl172585173064%_
                                         _%e172586173067%_
                                         _%hd172587173070%_
                                         _%tl172588173072%_
                                         _%e172589173075%_
                                         _%hd172590173078%_
                                         _%tl172591173080%_
                                         _%e172592173083%_
                                         _%hd172593173086%_
                                         _%tl172594173088%_
                                         _%e172595173091%_
                                         _%hd172596173094%_
                                         _%tl172597173096%_
                                         _%e172598173099%_
                                         _%hd172599173102%_
                                         _%tl172600173104%_
                                         _%e172601173107%_
                                         _%hd172602173110%_
                                         _%tl172603173112%_
                                         _%e172604173115%_
                                         _%hd172605173118%_
                                         _%tl172606173120%_))))
                                (_%__match178986178987%_
                                 _%e172583173059%_
                                 _%hd172584173062%_
                                 _%tl172585173064%_
                                 _%e172586173067%_
                                 _%hd172587173070%_
                                 _%tl172588173072%_
                                 _%e172589173075%_
                                 _%hd172590173078%_
                                 _%tl172591173080%_
                                 _%e172592173083%_
                                 _%hd172593173086%_
                                 _%tl172594173088%_
                                 _%e172595173091%_
                                 _%hd172596173094%_
                                 _%tl172597173096%_
                                 _%e172598173099%_
                                 _%hd172599173102%_
                                 _%tl172600173104%_
                                 _%e172601173107%_
                                 _%hd172602173110%_
                                 _%tl172603173112%_
                                 _%e172604173115%_
                                 _%hd172605173118%_
                                 _%tl172606173120%_))
                            (_%__match178986178987%_
                             _%e172583173059%_
                             _%hd172584173062%_
                             _%tl172585173064%_
                             _%e172586173067%_
                             _%hd172587173070%_
                             _%tl172588173072%_
                             _%e172589173075%_
                             _%hd172590173078%_
                             _%tl172591173080%_
                             _%e172592173083%_
                             _%hd172593173086%_
                             _%tl172594173088%_
                             _%e172595173091%_
                             _%hd172596173094%_
                             _%tl172597173096%_
                             _%e172598173099%_
                             _%hd172599173102%_
                             _%tl172600173104%_
                             _%e172601173107%_
                             _%hd172602173110%_
                             _%tl172603173112%_
                             _%e172604173115%_
                             _%hd172605173118%_
                             _%tl172606173120%_))))
                     (_%__match178704178705%_
                      (lambda (_%e172532173180%_
                               _%hd172533173183%_
                               _%tl172534173185%_
                               _%e172535173188%_
                               _%hd172536173191%_
                               _%tl172537173193%_
                               _%e172538173196%_
                               _%hd172539173199%_
                               _%tl172540173201%_
                               _%e172541173204%_
                               _%hd172542173207%_
                               _%tl172543173209%_
                               _%e172544173212%_
                               _%hd172545173215%_
                               _%tl172546173217%_
                               _%e172547173220%_
                               _%hd172548173223%_
                               _%tl172549173225%_
                               _%e172550173228%_
                               _%hd172551173231%_
                               _%tl172552173233%_
                               _%e172553173236%_
                               _%hd172554173239%_
                               _%tl172555173241%_
                               _%e172556173244%_
                               _%hd172557173247%_
                               _%tl172558173249%_
                               _%e172559173252%_
                               _%hd172560173255%_
                               _%tl172561173257%_
                               _%e172562173260%_
                               _%hd172563173263%_
                               _%tl172564173265%_
                               _%e172565173268%_
                               _%hd172566173271%_
                               _%tl172567173273%_
                               _%e172568173276%_
                               _%hd172569173279%_
                               _%tl172570173281%_
                               _%__splice178497178498%_
                               _%target172571173284%_
                               _%tl172573173286%_)
                        (letrec ((_%loop172574173289%_
                                  (lambda (_%hd172572173292%_
                                           _%args172578173294%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172572173292%_))
                                        (let ((_%e172575173297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172572173292%_))))
                                          (let ((_%lp-tl172577173302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172575173297%_)))
                                                (_%lp-hd172576173300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172575173297%_))))
                                            (_%loop172574173289%_
                                             _%lp-tl172577173302%_
                                             (cons _%lp-hd172576173300%_
                                                   _%args172578173294%_))))
                                        (let ((_%args172579173305%_
                                               (reverse _%args172578173294%_)))
                                          (let ((_%L173308%_
                                                 _%args172579173305%_)
                                                (_%L173309%_
                                                 _%hd172569173279%_)
                                                (_%L173310%_
                                                 _%hd172560173255%_)
                                                (_%L173311%_
                                                 _%hd172551173231%_)
                                                (_%L173312%_
                                                 _%hd172542173207%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173312%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173311%_
                                                        'call-method))
                                                     (let ((__tmp179150
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172471%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173310%_
                                                        __tmp179150)))
                                                (_%__kont178495178496%_
                                                 _%L173308%_
                                                 _%L173309%_
                                                 _%L173310%_
                                                 _%L173311%_
                                                 _%L173312%_)
                                                (_%__kont178507178508%_))))))))
                          (_%loop172574173289%_ _%target172571173284%_ '()))))
                     (_%__match178662178663%_
                      (lambda (_%e172532173180%_
                               _%hd172533173183%_
                               _%tl172534173185%_
                               _%e172535173188%_
                               _%hd172536173191%_
                               _%tl172537173193%_
                               _%e172538173196%_
                               _%hd172539173199%_
                               _%tl172540173201%_
                               _%e172541173204%_
                               _%hd172542173207%_
                               _%tl172543173209%_
                               _%e172544173212%_
                               _%hd172545173215%_
                               _%tl172546173217%_
                               _%e172547173220%_
                               _%hd172548173223%_
                               _%tl172549173225%_
                               _%e172550173228%_
                               _%hd172551173231%_
                               _%tl172552173233%_
                               _%e172553173236%_
                               _%hd172554173239%_
                               _%tl172555173241%_
                               _%e172556173244%_
                               _%hd172557173247%_
                               _%tl172558173249%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd172557173247%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl172558173249%_))
                                (let ((_%e172559173252%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl172558173249%_))))
                                  (let ((_%tl172561173257%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172559173252%_)))
                                        (_%hd172560173255%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172559173252%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl172561173257%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172555173241%_))
                                            (let ((_%e172562173260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172555173241%_))))
                                              (let ((_%tl172564173265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172562173260%_)))
                                                    (_%hd172563173263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172562173260%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd172563173263%_))
                                                    (let ((_%e172565173268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd172563173263%_))))
                                                      (let ((_%tl172567173273%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172565173268%_)))
                    (_%hd172566173271%_
                     (let () (declare (not safe)) (##car _%e172565173268%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd172566173271%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd172566173271%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172567173273%_))
                            (let ((_%e172568173276%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172567173273%_))))
                              (let ((_%tl172570173281%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172568173276%_)))
                                    (_%hd172569173279%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172568173276%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl172570173281%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl172564173265%_))
                                        (let ((_%__splice178497178498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl172564173265%_
                                                  '0))))
                                          (let ((_%tl172573173286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178497178498%_
                                                    '1)))
                                                (_%target172571173284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice178497178498%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl172573173286%_))
                                                (_%__match178704178705%_
                                                 _%e172532173180%_
                                                 _%hd172533173183%_
                                                 _%tl172534173185%_
                                                 _%e172535173188%_
                                                 _%hd172536173191%_
                                                 _%tl172537173193%_
                                                 _%e172538173196%_
                                                 _%hd172539173199%_
                                                 _%tl172540173201%_
                                                 _%e172541173204%_
                                                 _%hd172542173207%_
                                                 _%tl172543173209%_
                                                 _%e172544173212%_
                                                 _%hd172545173215%_
                                                 _%tl172546173217%_
                                                 _%e172547173220%_
                                                 _%hd172548173223%_
                                                 _%tl172549173225%_
                                                 _%e172550173228%_
                                                 _%hd172551173231%_
                                                 _%tl172552173233%_
                                                 _%e172553173236%_
                                                 _%hd172554173239%_
                                                 _%tl172555173241%_
                                                 _%e172556173244%_
                                                 _%hd172557173247%_
                                                 _%tl172558173249%_
                                                 _%e172559173252%_
                                                 _%hd172560173255%_
                                                 _%tl172561173257%_
                                                 _%e172562173260%_
                                                 _%hd172563173263%_
                                                 _%tl172564173265%_
                                                 _%e172565173268%_
                                                 _%hd172566173271%_
                                                 _%tl172567173273%_
                                                 _%e172568173276%_
                                                 _%hd172569173279%_
                                                 _%tl172570173281%_
                                                 _%__splice178497178498%_
                                                 _%target172571173284%_
                                                 _%tl172573173286%_)
                                                (_%__kont178507178508%_))))
                                        (_%__kont178507178508%_))
                                    (_%__kont178507178508%_))))
                            (_%__kont178507178508%_))
                        (_%__kont178507178508%_))
                    (_%__kont178507178508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178507178508%_))))
                                            (_%__match178986178987%_
                                             _%e172532173180%_
                                             _%hd172533173183%_
                                             _%tl172534173185%_
                                             _%e172535173188%_
                                             _%hd172536173191%_
                                             _%tl172537173193%_
                                             _%e172538173196%_
                                             _%hd172539173199%_
                                             _%tl172540173201%_
                                             _%e172541173204%_
                                             _%hd172542173207%_
                                             _%tl172543173209%_
                                             _%e172544173212%_
                                             _%hd172545173215%_
                                             _%tl172546173217%_
                                             _%e172547173220%_
                                             _%hd172548173223%_
                                             _%tl172549173225%_
                                             _%e172550173228%_
                                             _%hd172551173231%_
                                             _%tl172552173233%_
                                             _%e172553173236%_
                                             _%hd172554173239%_
                                             _%tl172555173241%_))
                                        (_%__match178986178987%_
                                         _%e172532173180%_
                                         _%hd172533173183%_
                                         _%tl172534173185%_
                                         _%e172535173188%_
                                         _%hd172536173191%_
                                         _%tl172537173193%_
                                         _%e172538173196%_
                                         _%hd172539173199%_
                                         _%tl172540173201%_
                                         _%e172541173204%_
                                         _%hd172542173207%_
                                         _%tl172543173209%_
                                         _%e172544173212%_
                                         _%hd172545173215%_
                                         _%tl172546173217%_
                                         _%e172547173220%_
                                         _%hd172548173223%_
                                         _%tl172549173225%_
                                         _%e172550173228%_
                                         _%hd172551173231%_
                                         _%tl172552173233%_
                                         _%e172553173236%_
                                         _%hd172554173239%_
                                         _%tl172555173241%_))))
                                (_%__match178986178987%_
                                 _%e172532173180%_
                                 _%hd172533173183%_
                                 _%tl172534173185%_
                                 _%e172535173188%_
                                 _%hd172536173191%_
                                 _%tl172537173193%_
                                 _%e172538173196%_
                                 _%hd172539173199%_
                                 _%tl172540173201%_
                                 _%e172541173204%_
                                 _%hd172542173207%_
                                 _%tl172543173209%_
                                 _%e172544173212%_
                                 _%hd172545173215%_
                                 _%tl172546173217%_
                                 _%e172547173220%_
                                 _%hd172548173223%_
                                 _%tl172549173225%_
                                 _%e172550173228%_
                                 _%hd172551173231%_
                                 _%tl172552173233%_
                                 _%e172553173236%_
                                 _%hd172554173239%_
                                 _%tl172555173241%_))
                            (_%__match178772178773%_
                             _%e172532173180%_
                             _%hd172533173183%_
                             _%tl172534173185%_
                             _%e172535173188%_
                             _%hd172536173191%_
                             _%tl172537173193%_
                             _%e172538173196%_
                             _%hd172539173199%_
                             _%tl172540173201%_
                             _%e172541173204%_
                             _%hd172542173207%_
                             _%tl172543173209%_
                             _%e172544173212%_
                             _%hd172545173215%_
                             _%tl172546173217%_
                             _%e172547173220%_
                             _%hd172548173223%_
                             _%tl172549173225%_
                             _%e172550173228%_
                             _%hd172551173231%_
                             _%tl172552173233%_
                             _%e172553173236%_
                             _%hd172554173239%_
                             _%tl172555173241%_
                             _%e172556173244%_
                             _%hd172557173247%_
                             _%tl172558173249%_))))
                     (_%__match178594178595%_
                      (lambda (_%e172488173372%_
                               _%hd172489173375%_
                               _%tl172490173377%_
                               _%e172491173380%_
                               _%hd172492173383%_
                               _%tl172493173385%_
                               _%e172494173388%_
                               _%hd172495173391%_
                               _%tl172496173393%_
                               _%e172497173396%_
                               _%hd172498173399%_
                               _%tl172499173401%_
                               _%e172500173404%_
                               _%hd172501173407%_
                               _%tl172502173409%_
                               _%e172503173412%_
                               _%hd172504173415%_
                               _%tl172505173417%_
                               _%e172506173420%_
                               _%hd172507173423%_
                               _%tl172508173425%_
                               _%e172509173428%_
                               _%hd172510173431%_
                               _%tl172511173433%_
                               _%e172512173436%_
                               _%hd172513173439%_
                               _%tl172514173441%_
                               _%e172515173444%_
                               _%hd172516173447%_
                               _%tl172517173449%_
                               _%__splice178493178494%_
                               _%target172518173452%_
                               _%tl172520173454%_)
                        (letrec ((_%loop172521173457%_
                                  (lambda (_%hd172519173460%_
                                           _%args172525173462%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172519173460%_))
                                        (let ((_%e172522173465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172519173460%_))))
                                          (let ((_%lp-tl172524173470%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172522173465%_)))
                                                (_%lp-hd172523173468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172522173465%_))))
                                            (_%loop172521173457%_
                                             _%lp-tl172524173470%_
                                             (cons _%lp-hd172523173468%_
                                                   _%args172525173462%_))))
                                        (let ((_%args172526173473%_
                                               (reverse _%args172525173462%_)))
                                          (let ((_%L173476%_
                                                 _%args172526173473%_)
                                                (_%L173477%_
                                                 _%hd172516173447%_)
                                                (_%L173478%_
                                                 _%hd172507173423%_)
                                                (_%L173479%_
                                                 _%hd172498173399%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L173479%_
                                                        'call-method))
                                                     (let ((__tmp179151
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self172471%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L173478%_
                                                        __tmp179151)))
                                                (_%__kont178491178492%_
                                                 _%L173476%_
                                                 _%L173477%_
                                                 _%L173478%_
                                                 _%L173479%_)
                                                (_%__match178782178783%_
                                                 _%e172488173372%_
                                                 _%hd172489173375%_
                                                 _%tl172490173377%_
                                                 _%e172491173380%_
                                                 _%hd172492173383%_
                                                 _%tl172493173385%_
                                                 _%e172494173388%_
                                                 _%hd172495173391%_
                                                 _%tl172496173393%_
                                                 _%e172497173396%_
                                                 _%hd172498173399%_
                                                 _%tl172499173401%_
                                                 _%e172500173404%_
                                                 _%hd172501173407%_
                                                 _%tl172502173409%_
                                                 _%e172503173412%_
                                                 _%hd172504173415%_
                                                 _%tl172505173417%_
                                                 _%e172506173420%_
                                                 _%hd172507173423%_
                                                 _%tl172508173425%_
                                                 _%e172509173428%_
                                                 _%hd172510173431%_
                                                 _%tl172511173433%_
                                                 _%e172512173436%_
                                                 _%hd172513173439%_
                                                 _%tl172514173441%_
                                                 _%e172515173444%_
                                                 _%hd172516173447%_
                                                 _%tl172517173449%_))))))))
                          (_%loop172521173457%_ _%target172518173452%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx178489178490%_))
                    (let ((_%e172488173372%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx178489178490%_))))
                      (let ((_%tl172490173377%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172488173372%_)))
                            (_%hd172489173375%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172488173372%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172490173377%_))
                            (let ((_%e172491173380%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172490173377%_))))
                              (let ((_%tl172493173385%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172491173380%_)))
                                    (_%hd172492173383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172491173380%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172492173383%_))
                                    (let ((_%e172494173388%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172492173383%_))))
                                      (let ((_%tl172496173393%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172494173388%_)))
                                            (_%hd172495173391%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172494173388%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd172495173391%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd172495173391%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172496173393%_))
                                                    (let ((_%e172497173396%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172496173393%_))))
                                                      (let ((_%tl172499173401%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172497173396%_)))
                    (_%hd172498173399%_
                     (let () (declare (not safe)) (##car _%e172497173396%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172499173401%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172493173385%_))
                        (let ((_%e172500173404%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172493173385%_))))
                          (let ((_%tl172502173409%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172500173404%_)))
                                (_%hd172501173407%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172500173404%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172501173407%_))
                                (let ((_%e172503173412%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172501173407%_))))
                                  (let ((_%tl172505173417%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172503173412%_)))
                                        (_%hd172504173415%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172503173412%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172504173415%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd172504173415%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172505173417%_))
                                                (let ((_%e172506173420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172505173417%_))))
                                                  (let ((_%tl172508173425%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172506173420%_)))
                                                        (_%hd172507173423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172506173420%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172508173425%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172502173409%_))
                                                            (let ((_%e172509173428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172502173409%_))))
                      (let ((_%tl172511173433%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172509173428%_)))
                            (_%hd172510173431%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172509173428%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd172510173431%_))
                            (let ((_%e172512173436%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd172510173431%_))))
                              (let ((_%tl172514173441%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172512173436%_)))
                                    (_%hd172513173439%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172512173436%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd172513173439%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd172513173439%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172514173441%_))
                                            (let ((_%e172515173444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172514173441%_))))
                                              (let ((_%tl172517173449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172515173444%_)))
                                                    (_%hd172516173447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172515173444%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172517173449%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl172511173433%_))
                                                        (let ((_%__splice178493178494%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl172511173433%_ '0))))
                  (let ((_%tl172520173454%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178493178494%_ '1)))
                        (_%target172518173452%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice178493178494%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl172520173454%_))
                        (_%__match178594178595%_
                         _%e172488173372%_
                         _%hd172489173375%_
                         _%tl172490173377%_
                         _%e172491173380%_
                         _%hd172492173383%_
                         _%tl172493173385%_
                         _%e172494173388%_
                         _%hd172495173391%_
                         _%tl172496173393%_
                         _%e172497173396%_
                         _%hd172498173399%_
                         _%tl172499173401%_
                         _%e172500173404%_
                         _%hd172501173407%_
                         _%tl172502173409%_
                         _%e172503173412%_
                         _%hd172504173415%_
                         _%tl172505173417%_
                         _%e172506173420%_
                         _%hd172507173423%_
                         _%tl172508173425%_
                         _%e172509173428%_
                         _%hd172510173431%_
                         _%tl172511173433%_
                         _%e172512173436%_
                         _%hd172513173439%_
                         _%tl172514173441%_
                         _%e172515173444%_
                         _%hd172516173447%_
                         _%tl172517173449%_
                         _%__splice178493178494%_
                         _%target172518173452%_
                         _%tl172520173454%_)
                        (_%__match178782178783%_
                         _%e172488173372%_
                         _%hd172489173375%_
                         _%tl172490173377%_
                         _%e172491173380%_
                         _%hd172492173383%_
                         _%tl172493173385%_
                         _%e172494173388%_
                         _%hd172495173391%_
                         _%tl172496173393%_
                         _%e172497173396%_
                         _%hd172498173399%_
                         _%tl172499173401%_
                         _%e172500173404%_
                         _%hd172501173407%_
                         _%tl172502173409%_
                         _%e172503173412%_
                         _%hd172504173415%_
                         _%tl172505173417%_
                         _%e172506173420%_
                         _%hd172507173423%_
                         _%tl172508173425%_
                         _%e172509173428%_
                         _%hd172510173431%_
                         _%tl172511173433%_
                         _%e172512173436%_
                         _%hd172513173439%_
                         _%tl172514173441%_
                         _%e172515173444%_
                         _%hd172516173447%_
                         _%tl172517173449%_))))
                (_%__match178782178783%_
                 _%e172488173372%_
                 _%hd172489173375%_
                 _%tl172490173377%_
                 _%e172491173380%_
                 _%hd172492173383%_
                 _%tl172493173385%_
                 _%e172494173388%_
                 _%hd172495173391%_
                 _%tl172496173393%_
                 _%e172497173396%_
                 _%hd172498173399%_
                 _%tl172499173401%_
                 _%e172500173404%_
                 _%hd172501173407%_
                 _%tl172502173409%_
                 _%e172503173412%_
                 _%hd172504173415%_
                 _%tl172505173417%_
                 _%e172506173420%_
                 _%hd172507173423%_
                 _%tl172508173425%_
                 _%e172509173428%_
                 _%hd172510173431%_
                 _%tl172511173433%_
                 _%e172512173436%_
                 _%hd172513173439%_
                 _%tl172514173441%_
                 _%e172515173444%_
                 _%hd172516173447%_
                 _%tl172517173449%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match178986178987%_
                                                     _%e172488173372%_
                                                     _%hd172489173375%_
                                                     _%tl172490173377%_
                                                     _%e172491173380%_
                                                     _%hd172492173383%_
                                                     _%tl172493173385%_
                                                     _%e172494173388%_
                                                     _%hd172495173391%_
                                                     _%tl172496173393%_
                                                     _%e172497173396%_
                                                     _%hd172498173399%_
                                                     _%tl172499173401%_
                                                     _%e172500173404%_
                                                     _%hd172501173407%_
                                                     _%tl172502173409%_
                                                     _%e172503173412%_
                                                     _%hd172504173415%_
                                                     _%tl172505173417%_
                                                     _%e172506173420%_
                                                     _%hd172507173423%_
                                                     _%tl172508173425%_
                                                     _%e172509173428%_
                                                     _%hd172510173431%_
                                                     _%tl172511173433%_))))
                                            (_%__match178986178987%_
                                             _%e172488173372%_
                                             _%hd172489173375%_
                                             _%tl172490173377%_
                                             _%e172491173380%_
                                             _%hd172492173383%_
                                             _%tl172493173385%_
                                             _%e172494173388%_
                                             _%hd172495173391%_
                                             _%tl172496173393%_
                                             _%e172497173396%_
                                             _%hd172498173399%_
                                             _%tl172499173401%_
                                             _%e172500173404%_
                                             _%hd172501173407%_
                                             _%tl172502173409%_
                                             _%e172503173412%_
                                             _%hd172504173415%_
                                             _%tl172505173417%_
                                             _%e172506173420%_
                                             _%hd172507173423%_
                                             _%tl172508173425%_
                                             _%e172509173428%_
                                             _%hd172510173431%_
                                             _%tl172511173433%_))
                                        (_%__match178662178663%_
                                         _%e172488173372%_
                                         _%hd172489173375%_
                                         _%tl172490173377%_
                                         _%e172491173380%_
                                         _%hd172492173383%_
                                         _%tl172493173385%_
                                         _%e172494173388%_
                                         _%hd172495173391%_
                                         _%tl172496173393%_
                                         _%e172497173396%_
                                         _%hd172498173399%_
                                         _%tl172499173401%_
                                         _%e172500173404%_
                                         _%hd172501173407%_
                                         _%tl172502173409%_
                                         _%e172503173412%_
                                         _%hd172504173415%_
                                         _%tl172505173417%_
                                         _%e172506173420%_
                                         _%hd172507173423%_
                                         _%tl172508173425%_
                                         _%e172509173428%_
                                         _%hd172510173431%_
                                         _%tl172511173433%_
                                         _%e172512173436%_
                                         _%hd172513173439%_
                                         _%tl172514173441%_))
                                    (_%__match178986178987%_
                                     _%e172488173372%_
                                     _%hd172489173375%_
                                     _%tl172490173377%_
                                     _%e172491173380%_
                                     _%hd172492173383%_
                                     _%tl172493173385%_
                                     _%e172494173388%_
                                     _%hd172495173391%_
                                     _%tl172496173393%_
                                     _%e172497173396%_
                                     _%hd172498173399%_
                                     _%tl172499173401%_
                                     _%e172500173404%_
                                     _%hd172501173407%_
                                     _%tl172502173409%_
                                     _%e172503173412%_
                                     _%hd172504173415%_
                                     _%tl172505173417%_
                                     _%e172506173420%_
                                     _%hd172507173423%_
                                     _%tl172508173425%_
                                     _%e172509173428%_
                                     _%hd172510173431%_
                                     _%tl172511173433%_))))
                            (_%__match178986178987%_
                             _%e172488173372%_
                             _%hd172489173375%_
                             _%tl172490173377%_
                             _%e172491173380%_
                             _%hd172492173383%_
                             _%tl172493173385%_
                             _%e172494173388%_
                             _%hd172495173391%_
                             _%tl172496173393%_
                             _%e172497173396%_
                             _%hd172498173399%_
                             _%tl172499173401%_
                             _%e172500173404%_
                             _%hd172501173407%_
                             _%tl172502173409%_
                             _%e172503173412%_
                             _%hd172504173415%_
                             _%tl172505173417%_
                             _%e172506173420%_
                             _%hd172507173423%_
                             _%tl172508173425%_
                             _%e172509173428%_
                             _%hd172510173431%_
                             _%tl172511173433%_))))
                    (_%__match178924178925%_
                     _%e172488173372%_
                     _%hd172489173375%_
                     _%tl172490173377%_
                     _%e172491173380%_
                     _%hd172492173383%_
                     _%tl172493173385%_
                     _%e172494173388%_
                     _%hd172495173391%_
                     _%tl172496173393%_
                     _%e172497173396%_
                     _%hd172498173399%_
                     _%tl172499173401%_
                     _%e172500173404%_
                     _%hd172501173407%_
                     _%tl172502173409%_
                     _%e172503173412%_
                     _%hd172504173415%_
                     _%tl172505173417%_
                     _%e172506173420%_
                     _%hd172507173423%_
                     _%tl172508173425%_))
                (_%__kont178507178508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont178507178508%_))
                                            (_%__kont178507178508%_))
                                        (_%__kont178507178508%_))))
                                (_%__kont178507178508%_))))
                        (_%__kont178507178508%_))
                    (_%__kont178507178508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178507178508%_))
                                                (_%__kont178507178508%_))
                                            (_%__kont178507178508%_))))
                                    (_%__kont178507178508%_))))
                            (_%__kont178507178508%_))))
                    (_%__kont178507178508%_))))))))))
