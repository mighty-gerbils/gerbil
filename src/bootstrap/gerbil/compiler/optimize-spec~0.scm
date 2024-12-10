(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1733868039)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp178007 (list gxc#::identity::t))
            (__tmp178006 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp178007
         '()
         __tmp178006
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args176804%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args176804%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp178008
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
        (__make-promise __tmp178008)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx176796%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self176799%_
                (let ((__obj177999
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj177999))
               (__tmp178009
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176799%_ _%stx176796%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp178009
           gxc#current-compile-method
           _%self176799%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp178011 (list gxc#::false::t))
            (__tmp178010 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp178011
         '()
         __tmp178010
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args176793%_
        (apply make-instance gxc#::extract-receiver::t _%$args176793%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp178012
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
        (__make-promise __tmp178012)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx176785%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self176788%_
                (let ((__obj178001
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj178001))
               (__tmp178013
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176788%_ _%stx176785%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp178013
           gxc#current-compile-method
           _%self176788%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp178015 (list gxc#::void::t))
            (__tmp178014 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp178015
         '(receiver methods slots)
         __tmp178014
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args176782%_
        (apply make-instance gxc#::collect-object-refs::t _%$args176782%_)))
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
      (let ((__tmp178016
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
        (__make-promise __tmp178016)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords176748%_
               _%receiver176743176749%_
               _%methods176744176751%_
               _%slots176745176753%_
               _%stx176755%_)
        (let* ((_%receiver176758%_
                (if (eq? _%receiver176743176749%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176743176749%_))
               (_%methods176760%_
                (if (eq? _%methods176744176751%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176744176751%_))
               (_%slots176762%_
                (if (eq? _%slots176745176753%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176745176753%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self176764%_
                  (let ((__obj178003
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
                       __obj178003
                       _%receiver176758%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178003
                       _%methods176760%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178003
                       _%slots176762%_
                       '3
                       '#f
                       '#f))
                    __obj178003))
                 (__tmp178017
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176764%_ _%stx176755%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp178017
             gxc#current-compile-method
             _%self176764%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords176771%_ . _%args176772%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords176771%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176771%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176771%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176771%_
                  'slots:
                  absent-value))
               _%args176772%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args176746176778%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args176746176778%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp178019 (list gxc#::basic-xform-expression::t))
            (__tmp178018 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp178019
         '(receiver klass methods slots)
         __tmp178018
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args176739%_
        (apply make-instance gxc#::subst-object-refs::t _%$args176739%_)))
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
      (let ((__tmp178020
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
        (__make-promise __tmp178020)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords176701%_
               _%receiver176695176702%_
               _%klass176696176704%_
               _%methods176697176706%_
               _%slots176698176708%_
               _%stx176710%_)
        (let* ((_%receiver176713%_
                (if (eq? _%receiver176695176702%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176695176702%_))
               (_%klass176715%_
                (if (eq? _%klass176696176704%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass176696176704%_))
               (_%methods176717%_
                (if (eq? _%methods176697176706%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176697176706%_))
               (_%slots176719%_
                (if (eq? _%slots176698176708%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176698176708%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self176721%_
                  (let ((__obj178005
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
                       __obj178005
                       _%receiver176713%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178005
                       _%klass176715%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178005
                       _%methods176717%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj178005
                       _%slots176719%_
                       '4
                       '#f
                       '#f))
                    __obj178005))
                 (__tmp178021
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176721%_ _%stx176710%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp178021
             gxc#current-compile-method
             _%self176721%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords176728%_ . _%args176729%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords176728%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176728%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176728%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176728%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176728%_
                  'slots:
                  absent-value))
               _%args176729%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args176699176735%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args176699176735%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self173810%_ _%stx173811%_)
        (letrec ((_%generate-method-bind173813%_
                  (lambda (_%$klass176687%_
                           _%$method-table176688%_
                           _%id176689%_
                           _%$id176690%_)
                    (let ((_%$tmp176692%_
                           (let ((__tmp178022
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp178022))))
                      (cons (cons _%$id176690%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp176692%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table176688%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id176689%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp176692%_ '()))
                    (cons (cons '%#ref (cons _%$tmp176692%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id176689%_
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
                 (_%generate-slot-bind173814%_
                  (lambda (_%$klass176681%_ _%id176682%_ _%$id176683%_)
                    (let ((_%$tmp176685%_
                           (let ((__tmp178023
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp178023))))
                      (cons (cons _%$id176683%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp176685%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass176681%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id176682%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp176685%_ '()))
                        (cons (cons '%#ref (cons _%$tmp176685%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id176682%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl173815%_
                  (lambda (_%$klass176675%_
                           _%$method-table176676%_
                           _%methods-bind176677%_
                           _%slots-bind176678%_
                           _%specializer-impl176679%_)
                    (let ((__tmp178024
                           (cons '%#lambda
                                 (cons (cons _%$klass176675%_
                                             (cons _%$method-table176676%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind176678%_
                                                            _%methods-bind176677%_))
                                                         (cons _%specializer-impl176679%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp178024 _%stx173811%_))))
                 (_%generate-specializer-def173816%_
                  (lambda (_%id176671%_
                           _%specializer-id176672%_
                           _%specializer-impl176673%_)
                    (let ((__tmp178025
                           (cons '%#begin
                                 (cons _%stx173811%_
                                       (cons (let ((__tmp178026
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id176672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl176673%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp178026
                                                _%stx173811%_))
                                             (cons (let ((__tmp178027
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id176671%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id176672%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp178027
                                                      _%stx173811%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp178025 _%stx173811%_)))))
          (let* ((_%__stx176893176894%_ _%stx173811%_)
                 (_%g173819173839%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx176893176894%_)))))
            (let ((_%__kont176895176896%_
                   (lambda (_%L173883%_ _%L173884%_)
                     (let ((_%method-calls173903%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs173904%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty173905%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?173907%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls173903%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs173904%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L173883%_))
                             (let* ((_%__stx176807176808%_ _%L173883%_)
                                    (_%g174295174313%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx176807176808%_)))))
                               (let ((_%__kont176809176810%_
                                      (lambda (_%L174349%_
                                               _%L174350%_
                                               _%L174351%_)
                                        (let ((_%receiver174371%_
                                               (let ((_%$e174368%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L174349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e174368%_
                                                     _%$e174368%_
                                                     _%L174351%_))))
                                          (for-each
                                           (lambda (_%g174372174374%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver174371%_
                                              _%method-calls173903%_
                                              _%slot-refs173904%_
                                              _%g174372174374%_))
                                           _%L174349%_)
                                          (if (_%no-specializer?173907%_)
                                              _%stx173811%_
                                              (let* ((_%specializer-id174383%_
                                                      (let* ((_%id174377%_
                                                              (let ((__tmp178028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L173884%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp178028 '"::specialize")))
                     (_%specializer-id174380%_
                      (let ((__tmp178029
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx173811%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id174377%_ __tmp178029))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id174380%_))
                _%specializer-id174380%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass174385%_
                                                      (let ((__tmp178030
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp178030)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table174387%_
                                                      (let ((__tmp178031
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp178031)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods174389%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls173903%_)))
                                                     (_%$methods174393%_
                                                      (map (lambda (_%id174391%_)
                                                             (let ((__tmp178032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174391%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178032)))
                   _%methods174389%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174402%_
                                                      (for-each
                                                       (lambda (_%g174394174397%_
                                                                _%g174395174399%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls173903%_
                                                            _%g174394174397%_
                                                            _%g174395174399%_)))
                                                       _%methods174389%_
                                                       _%$methods174393%_))
                                                     (_%methods-bind174412%_
                                                      (map (lambda (_%g174404174407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174405174409%_)
                     (_%generate-method-bind173813%_
                      _%$klass174385%_
                      _%$method-table174387%_
                      _%g174404174407%_
                      _%g174405174409%_))
                   _%methods174389%_
                   _%$methods174393%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots174414%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs173904%_)))
                                                     (_%$slots174418%_
                                                      (map (lambda (_%id174416%_)
                                                             (let ((__tmp178033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174416%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178033)))
                   _%slots174414%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174427%_
                                                      (for-each
                                                       (lambda (_%g174419174422%_
                                                                _%g174420174424%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs173904%_
                                                            _%g174419174422%_
                                                            _%g174420174424%_)))
                                                       _%slots174414%_
                                                       _%$slots174418%_))
                                                     (_%slots-bind174436%_
                                                      (map (lambda (_%g174428174431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174429174433%_)
                     (_%generate-slot-bind173814%_
                      _%$klass174385%_
                      _%g174428174431%_
                      _%g174429174433%_))
                   _%slots174414%_
                   _%$slots174418%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body174442%_
                                                      (map (lambda (_%g174437174439%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver174371%_
                                                              _%$klass174385%_
                                                              _%method-calls173903%_
                                                              _%slot-refs173904%_
                                                              _%g174437174439%_))
                                                           _%L174349%_))
                                                     (_%specializer-impl174444%_
                                                      (let ((__tmp178034
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L174351%_ _%L174350%_)
                                 _%specializer-body174442%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp178034 _%stx173811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl174446%_
                                                      (_%generate-specializer-impl173815%_
                                                       _%$klass174385%_
                                                       _%$method-table174387%_
                                                       _%methods-bind174412%_
                                                       _%slots-bind174436%_
                                                       _%specializer-impl174444%_)))
                                                (let ((__tmp178036
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173884%_)))
                                                      (__tmp178035
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id174383%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp178036
                                                   '" => "
                                                   __tmp178035))
                                                (_%generate-specializer-def173816%_
                                                 _%L173884%_
                                                 _%specializer-id174383%_
                                                 _%specializer-impl174446%_))))))
                                     (_%__kont176811176812%_
                                      (lambda () _%stx173811%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx176807176808%_))
                                     (let ((_%e174300174325%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx176807176808%_))))
                                       (let ((_%tl174302174330%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e174300174325%_)))
                                             (_%hd174301174328%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e174300174325%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl174302174330%_))
                                             (let ((_%e174303174333%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl174302174330%_))))
                                               (let ((_%tl174305174338%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e174303174333%_)))
                                                     (_%hd174304174336%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e174303174333%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd174304174336%_))
                                                     (let ((_%e174306174341%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd174304174336%_))))
                                                       (let ((_%tl174308174346%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e174306174341%_)))
                     (_%hd174307174344%_
                      (let () (declare (not safe)) (##car _%e174306174341%_))))
                 (_%__kont176809176810%_
                  _%tl174305174338%_
                  _%tl174308174346%_
                  _%hd174307174344%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont176811176812%_))))
                                             (_%__kont176811176812%_))))
                                     (_%__kont176811176812%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L173883%_))
                                 (let* ((_%g174453174472%_
                                         (lambda (_%g174454174469%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g174454174469%_))))
                                        (_%g174452174770%_
                                         (lambda (_%g174454174475%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g174454174475%_))
                                               (let ((_%e174456174477%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g174454174475%_))))
                                                 (let ((_%hd174457174480%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174456174477%_)))
                                                       (_%tl174458174482%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174456174477%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl174458174482%_))
                                                       (let ((_g178037_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl174458174482%_ '0))))
                 (begin
                   (let ((_g178038_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g178037_)
                                (##vector-length _g178037_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g178038_ 2)))
                         (error "Context expects 2 values" _g178038_)))
                   (let ((_%target174459174485%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g178037_ 0)))
                         (_%tl174461174487%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g178037_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl174461174487%_))
                         (letrec ((_%loop174462174490%_
                                   (lambda (_%hd174460174493%_
                                            _%clause174466174495%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174460174493%_))
                                         (let ((_%e174463174498%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174460174493%_))))
                                           (let ((_%lp-hd174464174501%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174463174498%_)))
                                                 (_%lp-tl174465174503%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174463174498%_))))
                                             (_%loop174462174490%_
                                              _%lp-tl174465174503%_
                                              (cons _%lp-hd174464174501%_
                                                    _%clause174466174495%_))))
                                         (let ((_%clause174467174506%_
                                                (reverse _%clause174466174495%_)))
                                           ((lambda (_%L174509%_)
                                              (for-each
                                               (lambda (_%clause174523%_)
                                                 (let* ((_%__stx176833176834%_
                                                         _%clause174523%_)
                                                        (_%g174526174541%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx176833176834%_)))))
                                                   (let ((_%__kont176835176836%_
                                                          (lambda (_%L174569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L174570%_
                           _%L174571%_)
                    (let ((_%receiver174590%_
                           (let ((_%$e174587%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L174569%_))))
                             (if _%$e174587%_ _%$e174587%_ _%L174571%_))))
                      (for-each
                       (lambda (_%g174591174593%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver174590%_
                          _%method-calls173903%_
                          _%slot-refs173904%_
                          _%g174591174593%_))
                       _%L174569%_))))
                 (_%__kont176837176838%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx176833176834%_))
                                                         (let ((_%e174531174553%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx176833176834%_))))
                   (let ((_%tl174533174558%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e174531174553%_)))
                         (_%hd174532174556%_
                          (let ()
                            (declare (not safe))
                            (##car _%e174531174553%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd174532174556%_))
                         (let ((_%e174534174561%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd174532174556%_))))
                           (let ((_%tl174536174566%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e174534174561%_)))
                                 (_%hd174535174564%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e174534174561%_))))
                             (_%__kont176835176836%_
                              _%tl174533174558%_
                              _%tl174536174566%_
                              _%hd174535174564%_)))
                         (_%__kont176837176838%_))))
                 (_%__kont176837176838%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp178039
                                                      (lambda (_%g174598174601%_
                                                               _%g174599174603%_)
                                                        (cons _%g174598174601%_
                                                              _%g174599174603%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp178039
                                                  '()
                                                  _%L174509%_)))
                                              (if (_%no-specializer?173907%_)
                                                  _%stx173811%_
                                                  (let* ((_%specializer-id174612%_
                                                          (let* ((_%id174606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp178040
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L173884%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp178040 '"::specialize")))
                         (_%specializer-id174609%_
                          (let ((__tmp178041
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx173811%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174606%_
                             __tmp178041))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174609%_))
                    _%specializer-id174609%_))
                 (_%$klass174614%_
                  (let ((__tmp178042
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178042)))
                 (_%$method-table174616%_
                  (let ((__tmp178043
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178043)))
                 (_%methods174618%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls173903%_)))
                 (_%$methods174622%_
                  (map (lambda (_%id174620%_)
                         (let ((__tmp178044 (gensym _%id174620%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178044)))
                       _%methods174618%_))
                 (_%_174631%_
                  (for-each
                   (lambda (_%g174623174626%_ _%g174624174628%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls173903%_
                        _%g174623174626%_
                        _%g174624174628%_)))
                   _%methods174618%_
                   _%$methods174622%_))
                 (_%methods-bind174641%_
                  (map (lambda (_%g174633174636%_ _%g174634174638%_)
                         (_%generate-method-bind173813%_
                          _%$klass174614%_
                          _%$method-table174616%_
                          _%g174633174636%_
                          _%g174634174638%_))
                       _%methods174618%_
                       _%$methods174622%_))
                 (_%slots174643%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs173904%_)))
                 (_%$slots174647%_
                  (map (lambda (_%id174645%_)
                         (let ((__tmp178045 (gensym _%id174645%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178045)))
                       _%slots174643%_))
                 (_%_174656%_
                  (for-each
                   (lambda (_%g174648174651%_ _%g174649174653%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs173904%_
                        _%g174648174651%_
                        _%g174649174653%_)))
                   _%slots174643%_
                   _%$slots174647%_))
                 (_%slots-bind174665%_
                  (map (lambda (_%g174657174660%_ _%g174658174662%_)
                         (_%generate-slot-bind173814%_
                          _%$klass174614%_
                          _%g174657174660%_
                          _%g174658174662%_))
                       _%slots174643%_
                       _%$slots174647%_))
                 (_%specializer-clauses174763%_
                  (map (lambda (_%clause174667%_)
                         (let* ((_%__stx176853176854%_ _%clause174667%_)
                                (_%g174670174685%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx176853176854%_)))))
                           (let ((_%__kont176855176856%_
                                  (lambda (_%L174713%_ _%L174714%_ _%L174715%_)
                                    (let* ((_%receiver174744%_
                                            (let ((_%$e174741%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L174713%_))))
                                              (if _%$e174741%_
                                                  _%$e174741%_
                                                  _%L174715%_)))
                                           (_%body174750%_
                                            (map (lambda (_%g174745174747%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver174744%_
                                                    _%$klass174614%_
                                                    _%method-calls173903%_
                                                    _%slot-refs173904%_
                                                    _%g174745174747%_))
                                                 _%L174713%_)))
                                      (cons (cons _%L174715%_ _%L174714%_)
                                            _%body174750%_))))
                                 (_%__kont176857176858%_
                                  (lambda () _%clause174667%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx176853176854%_))
                                 (let ((_%e174675174697%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx176853176854%_))))
                                   (let ((_%tl174677174702%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e174675174697%_)))
                                         (_%hd174676174700%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e174675174697%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174676174700%_))
                                         (let ((_%e174678174705%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174676174700%_))))
                                           (let ((_%tl174680174710%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174678174705%_)))
                                                 (_%hd174679174708%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174678174705%_))))
                                             (_%__kont176855176856%_
                                              _%tl174677174702%_
                                              _%tl174680174710%_
                                              _%hd174679174708%_)))
                                         (_%__kont176857176858%_))))
                                 (_%__kont176857176858%_)))))
                       (let ((__tmp178046
                              (lambda (_%g174755174758%_ _%g174756174760%_)
                                (cons _%g174755174758%_ _%g174756174760%_))))
                         (declare (not safe))
                         (__foldr1 __tmp178046 '() _%L174509%_))))
                 (_%specializer-impl174765%_
                  (let ((__tmp178047
                         (cons '%#case-lambda _%specializer-clauses174763%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp178047 _%stx173811%_)))
                 (_%specializer-impl174767%_
                  (_%generate-specializer-impl173815%_
                   _%$klass174614%_
                   _%$method-table174616%_
                   _%methods-bind174641%_
                   _%slots-bind174665%_
                   _%specializer-impl174765%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp178049
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L173884%_)))
                                                          (__tmp178048
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174612%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp178049
                                                       '" => "
                                                       __tmp178048))
                                                    (_%generate-specializer-def173816%_
                                                     _%L173884%_
                                                     _%specializer-id174612%_
                                                     _%specializer-impl174767%_))))
                                            _%clause174467174506%_))))))
                           (_%loop174462174490%_ _%target174459174485%_ '()))
                         (_%g174453174472%_ _%g174454174475%_)))))
               (_%g174453174472%_ _%g174454174475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174453174472%_
                                                _%g174454174475%_)))))
                                   (_%g174452174770%_ _%L173883%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L173883%_))
                                     (let* ((_%g174774174804%_
                                             (lambda (_%g174775174801%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g174775174801%_))))
                                            (_%g174773175435%_
                                             (lambda (_%g174775174807%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g174775174807%_))
                                                   (let ((_%e174779174809%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g174775174807%_))))
                                                     (let ((_%hd174780174812%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174779174809%_)))
                                                           (_%tl174781174814%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174779174809%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174781174814%_))
                                                           (let ((_%e174782174817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174781174814%_))))
                     (let ((_%hd174783174820%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174782174817%_)))
                           (_%tl174784174822%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174782174817%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd174783174820%_))
                           (let ((_%e174785174825%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd174783174820%_))))
                             (let ((_%hd174786174828%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e174785174825%_)))
                                   (_%tl174787174830%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e174785174825%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd174786174828%_))
                                   (let ((_%e174788174833%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd174786174828%_))))
                                     (let ((_%hd174789174836%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174788174833%_)))
                                           (_%tl174790174838%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174788174833%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd174789174836%_))
                                           (let ((_%e174791174841%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd174789174836%_))))
                                             (let ((_%hd174792174844%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e174791174841%_)))
                                                   (_%tl174793174846%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e174791174841%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl174793174846%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl174790174838%_))
                                                       (let ((_%e174794174849%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl174790174838%_))))
                 (let ((_%hd174795174852%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174794174849%_)))
                       (_%tl174796174854%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174794174849%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl174796174854%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174787174830%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl174784174822%_))
                               (let ((_%e174797174857%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl174784174822%_))))
                                 (let ((_%hd174798174860%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174797174857%_)))
                                       (_%tl174799174862%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174797174857%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl174799174862%_))
                                       ((lambda (_%L174865%_
                                                 _%L174866%_
                                                 _%L174867%_)
                                          (let* ((_%g174891174909%_
                                                  (lambda (_%g174892174906%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g174892174906%_))))
                                                 (_%g174890174965%_
                                                  (lambda (_%g174892174912%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g174892174912%_))
                                                        (let ((_%e174896174914%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g174892174912%_))))
                  (let ((_%hd174897174917%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174896174914%_)))
                        (_%tl174898174919%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174896174914%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174898174919%_))
                        (let ((_%e174899174922%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174898174919%_))))
                          (let ((_%hd174900174925%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174899174922%_)))
                                (_%tl174901174927%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174899174922%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174900174925%_))
                                (let ((_%e174902174930%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174900174925%_))))
                                  (let ((_%hd174903174933%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174902174930%_)))
                                        (_%tl174904174935%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174902174930%_))))
                                    ((lambda (_%L174938%_
                                              _%L174939%_
                                              _%L174940%_)
                                       (let ((_%receiver174959%_
                                              (let ((_%$e174956%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L174938%_))))
                                                (if _%$e174956%_
                                                    _%$e174956%_
                                                    _%L174940%_))))
                                         (for-each
                                          (lambda (_%g174960174962%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver174959%_
                                             _%method-calls173903%_
                                             _%slot-refs173904%_
                                             _%g174960174962%_))
                                          _%L174938%_)))
                                     _%tl174901174927%_
                                     _%tl174904174935%_
                                     _%hd174903174933%_)))
                                (_%g174891174909%_ _%g174892174912%_))))
                        (_%g174891174909%_ _%g174892174912%_))))
                (_%g174891174909%_ _%g174892174912%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g174890174965%_ _%L174866%_))
                                          (let* ((_%g174968174987%_
                                                  (lambda (_%g174969174984%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g174969174984%_))))
                                                 (_%g174967175111%_
                                                  (lambda (_%g174969174990%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g174969174990%_))
                                                        (let ((_%e174971174992%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g174969174990%_))))
                  (let ((_%hd174972174995%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174971174992%_)))
                        (_%tl174973174997%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174971174992%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl174973174997%_))
                        (let ((_g178050_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl174973174997%_
                                  '0))))
                          (begin
                            (let ((_g178051_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g178050_)
                                         (##vector-length _g178050_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g178051_ 2)))
                                  (error "Context expects 2 values"
                                         _g178051_)))
                            (let ((_%target174974175000%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g178050_ 0)))
                                  (_%tl174976175002%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g178050_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl174976175002%_))
                                  (letrec ((_%loop174977175005%_
                                            (lambda (_%hd174975175008%_
                                                     _%clause174981175010%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd174975175008%_))
                                                  (let ((_%e174978175013%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd174975175008%_))))
                                                    (let ((_%lp-hd174979175016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e174978175013%_)))
                                                          (_%lp-tl174980175018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e174978175013%_))))
                                                      (_%loop174977175005%_
                                                       _%lp-tl174980175018%_
                                                       (cons _%lp-hd174979175016%_
                                                             _%clause174981175010%_))))
                                                  (let ((_%clause174982175021%_
                                                         (reverse _%clause174981175010%_)))
                                                    ((lambda (_%L175024%_)
                                                       (for-each
                                                        (lambda (_%clause175037%_)
                                                          (let* ((_%g175039175054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g175040175051%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g175040175051%_))))
                         (_%g175038175101%_
                          (lambda (_%g175040175057%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g175040175057%_))
                                (let ((_%e175044175059%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g175040175057%_))))
                                  (let ((_%hd175045175062%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175044175059%_)))
                                        (_%tl175046175064%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175044175059%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd175045175062%_))
                                        (let ((_%e175047175067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd175045175062%_))))
                                          (let ((_%hd175048175070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175047175067%_)))
                                                (_%tl175049175072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175047175067%_))))
                                            ((lambda (_%L175075%_
                                                      _%L175076%_
                                                      _%L175077%_)
                                               (let ((_%receiver175095%_
                                                      (let ((_%$e175092%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L175075%_))))
                (if _%$e175092%_ _%$e175092%_ _%L175077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g175096175098%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver175095%_
                                                     _%method-calls173903%_
                                                     _%slot-refs173904%_
                                                     _%g175096175098%_))
                                                  _%L175075%_)))
                                             _%tl175046175064%_
                                             _%tl175049175072%_
                                             _%hd175048175070%_)))
                                        (_%g175039175054%_
                                         _%g175040175057%_))))
                                (_%g175039175054%_ _%g175040175057%_)))))
                    (_%g175038175101%_ _%clause175037%_)))
                (let ((__tmp178052
                       (lambda (_%g175103175106%_ _%g175104175108%_)
                         (cons _%g175103175106%_ _%g175104175108%_))))
                  (declare (not safe))
                  (__foldr1 __tmp178052 '() _%L175024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause174982175021%_))))))
                                    (_%loop174977175005%_
                                     _%target174974175000%_
                                     '()))
                                  (_%g174968174987%_ _%g174969174990%_)))))
                        (_%g174968174987%_ _%g174969174990%_))))
                (_%g174968174987%_ _%g174969174990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g174967175111%_ _%L174865%_))
                                          (if (_%no-specializer?173907%_)
                                              _%stx173811%_
                                              (let* ((_%specializer-id175120%_
                                                      (let* ((_%id175114%_
                                                              (let ((__tmp178053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L173884%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp178053 '"::specialize")))
                     (_%specializer-id175117%_
                      (let ((__tmp178054
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx173811%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175114%_ __tmp178054))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175117%_))
                _%specializer-id175117%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175122%_
                                                      (let ((__tmp178055
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp178055)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175124%_
                                                      (let ((__tmp178056
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp178056)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175126%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls173903%_)))
                                                     (_%$methods175130%_
                                                      (map (lambda (_%id175128%_)
                                                             (let ((__tmp178057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175128%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178057)))
                   _%methods175126%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175139%_
                                                      (for-each
                                                       (lambda (_%g175131175134%_
                                                                _%g175132175136%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls173903%_
                                                            _%g175131175134%_
                                                            _%g175132175136%_)))
                                                       _%methods175126%_
                                                       _%$methods175130%_))
                                                     (_%methods-bind175149%_
                                                      (map (lambda (_%g175141175144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175142175146%_)
                     (_%generate-method-bind173813%_
                      _%$klass175122%_
                      _%$method-table175124%_
                      _%g175141175144%_
                      _%g175142175146%_))
                   _%methods175126%_
                   _%$methods175130%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175151%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs173904%_)))
                                                     (_%$slots175155%_
                                                      (map (lambda (_%id175153%_)
                                                             (let ((__tmp178058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175153%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178058)))
                   _%slots175151%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175164%_
                                                      (for-each
                                                       (lambda (_%g175156175159%_
                                                                _%g175157175161%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs173904%_
                                                            _%g175156175159%_
                                                            _%g175157175161%_)))
                                                       _%slots175151%_
                                                       _%$slots175155%_))
                                                     (_%slots-bind175173%_
                                                      (map (lambda (_%g175165175168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175166175170%_)
                     (_%generate-slot-bind173814%_
                      _%$klass175122%_
                      _%g175165175168%_
                      _%g175166175170%_))
                   _%slots175151%_
                   _%$slots175155%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr175265%_
                                                      (let* ((_%g175175175193%_
                                                              (lambda (_%g175176175190%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175176175190%_))))
                     (_%g175174175262%_
                      (lambda (_%g175176175196%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175176175196%_))
                            (let ((_%e175180175198%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175176175196%_))))
                              (let ((_%hd175181175201%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175180175198%_)))
                                    (_%tl175182175203%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175180175198%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl175182175203%_))
                                    (let ((_%e175183175206%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl175182175203%_))))
                                      (let ((_%hd175184175209%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175183175206%_)))
                                            (_%tl175185175211%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175183175206%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd175184175209%_))
                                            (let ((_%e175186175214%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd175184175209%_))))
                                              (let ((_%hd175187175217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175186175214%_)))
                                                    (_%tl175188175219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175186175214%_))))
                                                ((lambda (_%L175222%_
                                                          _%L175223%_
                                                          _%L175224%_)
                                                   (let* ((_%receiver175253%_
                                                           (let ((_%$e175250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L175222%_))))
                     (if _%$e175250%_ _%$e175250%_ _%L175224%_)))
                  (_%body175259%_
                   (map (lambda (_%g175254175256%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver175253%_
                           _%$klass175122%_
                           _%method-calls173903%_
                           _%slot-refs173904%_
                           _%g175254175256%_))
                        _%L175222%_))
                  (__tmp178059
                   (cons '%#lambda
                         (cons (cons _%L175224%_ _%L175223%_)
                               _%body175259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp178059
                                                      _%L174866%_)))
                                                 _%tl175185175211%_
                                                 _%tl175188175219%_
                                                 _%hd175187175217%_)))
                                            (_%g175175175193%_
                                             _%g175176175196%_))))
                                    (_%g175175175193%_ _%g175176175196%_))))
                            (_%g175175175193%_ _%g175176175196%_)))))
                (_%g175174175262%_ _%L174866%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr175428%_
                                                      (let* ((_%g175267175286%_
                                                              (lambda (_%g175268175283%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175268175283%_))))
                     (_%g175266175425%_
                      (lambda (_%g175268175289%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175268175289%_))
                            (let ((_%e175270175291%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175268175289%_))))
                              (let ((_%hd175271175294%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175270175291%_)))
                                    (_%tl175272175296%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175270175291%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl175272175296%_))
                                    (let ((_g178060_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl175272175296%_
                                              '0))))
                                      (begin
                                        (let ((_g178061_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g178060_)
                                                     (##vector-length
                                                      _g178060_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g178061_ 2)))
                                              (error "Context expects 2 values"
                                                     _g178061_)))
                                        (let ((_%target175273175299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g178060_ 0)))
                                              (_%tl175275175301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g178060_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175275175301%_))
                                              (letrec ((_%loop175276175304%_
                                                        (lambda (_%hd175274175307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause175280175309%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175274175307%_))
                      (let ((_%e175277175312%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175274175307%_))))
                        (let ((_%lp-hd175278175315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175277175312%_)))
                              (_%lp-tl175279175317%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175277175312%_))))
                          (_%loop175276175304%_
                           _%lp-tl175279175317%_
                           (cons _%lp-hd175278175315%_
                                 _%clause175280175309%_))))
                      (let ((_%clause175281175320%_
                             (reverse _%clause175280175309%_)))
                        ((lambda (_%L175323%_)
                           (let* ((_%clauses175423%_
                                   (map (lambda (_%clause175337%_)
                                          (let* ((_%__stx176873176874%_
                                                  _%clause175337%_)
                                                 (_%g175340175355%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx176873176874%_)))))
                                            (let ((_%__kont176875176876%_
                                                   (lambda (_%L175383%_
                                                            _%L175384%_
                                                            _%L175385%_)
                                                     (let* ((_%receiver175404%_
                                                             (let ((_%$e175401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L175383%_))))
                       (if _%$e175401%_ _%$e175401%_ _%L175385%_)))
                    (_%body175410%_
                     (map (lambda (_%g175405175407%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver175404%_
                             _%$klass175122%_
                             _%method-calls173903%_
                             _%slot-refs173904%_
                             _%g175405175407%_))
                          _%L175383%_)))
               (cons (cons _%L175385%_ _%L175384%_) _%body175410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176877176878%_
                                                   (lambda ()
                                                     _%clause175337%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx176873176874%_))
                                                  (let ((_%e175345175367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx176873176874%_))))
                                                    (let ((_%tl175347175372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e175345175367%_)))
                                                          (_%hd175346175370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e175345175367%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd175346175370%_))
                                                          (let ((_%e175348175375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd175346175370%_))))
                    (let ((_%tl175350175380%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e175348175375%_)))
                          (_%hd175349175378%_
                           (let ()
                             (declare (not safe))
                             (##car _%e175348175375%_))))
                      (_%__kont176875176876%_
                       _%tl175347175372%_
                       _%tl175350175380%_
                       _%hd175349175378%_)))
                  (_%__kont176877176878%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176877176878%_)))))
                                        (let ((__tmp178062
                                               (lambda (_%g175415175418%_
                                                        _%g175416175420%_)
                                                 (cons _%g175415175418%_
                                                       _%g175416175420%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp178062
                                           '()
                                           _%L175323%_))))
                                  (__tmp178063
                                   (cons '%#case-lambda _%clauses175423%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp178063 _%L174865%_)))
                         _%clause175281175320%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175276175304%_
                                                 _%target175273175299%_
                                                 '()))
                                              (_%g175267175286%_
                                               _%g175268175289%_)))))
                                    (_%g175267175286%_ _%g175268175289%_))))
                            (_%g175267175286%_ _%g175268175289%_)))))
                (_%g175266175425%_ _%L174865%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175430%_
                                                      (let ((__tmp178064
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L174867%_ '())
                                             (cons _%specializer-lambda-expr175265%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr175428%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp178064 _%stx173811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175432%_
                                                      (_%generate-specializer-impl173815%_
                                                       _%$klass175122%_
                                                       _%$method-table175124%_
                                                       _%methods-bind175149%_
                                                       _%slots-bind175173%_
                                                       _%specializer-impl175430%_)))
                                                (let ((__tmp178066
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173884%_)))
                                                      (__tmp178065
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175120%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp178066
                                                   '" => "
                                                   __tmp178065))
                                                (_%generate-specializer-def173816%_
                                                 _%L173884%_
                                                 _%specializer-id175120%_
                                                 _%specializer-impl175432%_))))
                                        _%hd174798174860%_
                                        _%hd174795174852%_
                                        _%hd174792174844%_)
                                       (_%g174774174804%_ _%g174775174807%_))))
                               (_%g174774174804%_ _%g174775174807%_))
                           (_%g174774174804%_ _%g174775174807%_))
                       (_%g174774174804%_ _%g174775174807%_))))
               (_%g174774174804%_ _%g174775174807%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174774174804%_
                                                    _%g174775174807%_))))
                                           (_%g174774174804%_
                                            _%g174775174807%_))))
                                   (_%g174774174804%_ _%g174775174807%_))))
                           (_%g174774174804%_ _%g174775174807%_))))
                   (_%g174774174804%_ _%g174775174807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174774174804%_
                                                    _%g174775174807%_)))))
                                       (_%g174773175435%_ _%L173883%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L173883%_))
                                         (let* ((_%g175439175492%_
                                                 (lambda (_%g175440175489%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g175440175489%_))))
                                                (_%g175438176663%_
                                                 (lambda (_%g175440175495%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g175440175495%_))
                                                       (let ((_%e175446175497%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g175440175495%_))))
                 (let ((_%hd175447175500%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175446175497%_)))
                       (_%tl175448175502%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175446175497%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd175447175500%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd175447175500%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175448175502%_))
                               (let ((_%e175449175505%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175448175502%_))))
                                 (let ((_%hd175450175508%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175449175505%_)))
                                       (_%tl175451175510%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175449175505%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd175450175508%_))
                                       (let ((_%e175452175513%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd175450175508%_))))
                                         (let ((_%hd175453175516%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e175452175513%_)))
                                               (_%tl175454175518%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e175452175513%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd175453175516%_))
                                               (let ((_%e175455175521%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd175453175516%_))))
                                                 (let ((_%hd175456175524%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175455175521%_)))
                                                       (_%tl175457175526%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175455175521%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd175456175524%_))
                                                       (let ((_%e175458175529%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd175456175524%_))))
                 (let ((_%hd175459175532%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175458175529%_)))
                       (_%tl175460175534%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175458175529%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175460175534%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl175457175526%_))
                           (let ((_%e175461175537%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl175457175526%_))))
                             (let ((_%hd175462175540%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175461175537%_)))
                                   (_%tl175463175542%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175461175537%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175462175540%_))
                                   (let ((_%e175464175545%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175462175540%_))))
                                     (let ((_%hd175465175548%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175464175545%_)))
                                           (_%tl175466175550%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175464175545%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd175465175548%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd175465175548%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl175466175550%_))
                                                   (let ((_%e175467175553%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl175466175550%_))))
                                                     (let ((_%hd175468175556%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175467175553%_)))
                                                           (_%tl175469175558%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175467175553%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd175468175556%_))
                                                           (let ((_%e175470175561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd175468175556%_))))
                     (let ((_%hd175471175564%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175470175561%_)))
                           (_%tl175472175566%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175470175561%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175471175564%_))
                           (let ((_%e175473175569%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175471175564%_))))
                             (let ((_%hd175474175572%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175473175569%_)))
                                   (_%tl175475175574%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175473175569%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175474175572%_))
                                   (let ((_%e175476175577%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175474175572%_))))
                                     (let ((_%hd175477175580%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175476175577%_)))
                                           (_%tl175478175582%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175476175577%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl175478175582%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl175475175574%_))
                                               (let ((_%e175479175585%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl175475175574%_))))
                                                 (let ((_%hd175480175588%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175479175585%_)))
                                                       (_%tl175481175590%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175479175585%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl175481175590%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl175472175566%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl175469175558%_))
                       (let ((_%e175482175593%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl175469175558%_))))
                         (let ((_%hd175483175596%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e175482175593%_)))
                               (_%tl175484175598%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e175482175593%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl175484175598%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl175463175542%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175454175518%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl175451175510%_))
                                           (let ((_%e175485175601%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl175451175510%_))))
                                             (let ((_%hd175486175604%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175485175601%_)))
                                                   (_%tl175487175606%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175485175601%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175487175606%_))
                                                   ((lambda (_%L175609%_
                                                             _%L175610%_
                                                             _%L175611%_
                                                             _%L175612%_
                                                             _%L175613%_)
                                                      (let* ((_%g175653175715%_
                                                              (lambda (_%g175654175712%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175654175712%_))))
                     (_%g175652176660%_
                      (lambda (_%g175654175718%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175654175718%_))
                            (let ((_%e175660175720%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175654175718%_))))
                              (let ((_%hd175661175723%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175660175720%_)))
                                    (_%tl175662175725%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175660175720%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd175661175723%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd175661175723%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl175662175725%_))
                                            (let ((_%e175663175728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl175662175725%_))))
                                              (let ((_%hd175664175731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175663175728%_)))
                                                    (_%tl175665175733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175663175728%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175665175733%_))
                                                    (let ((_%e175666175736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175665175733%_))))
                                                      (let ((_%hd175667175739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175666175736%_)))
                    (_%tl175668175741%_
                     (let () (declare (not safe)) (##cdr _%e175666175736%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd175667175739%_))
                    (let ((_%e175669175744%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd175667175739%_))))
                      (let ((_%hd175670175747%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175669175744%_)))
                            (_%tl175671175749%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175669175744%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd175670175747%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd175670175747%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl175671175749%_))
                                    (let ((_%e175672175752%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl175671175749%_))))
                                      (let ((_%hd175673175755%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175672175752%_)))
                                            (_%tl175674175757%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175672175752%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd175673175755%_))
                                            (let ((_%e175675175760%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd175673175755%_))))
                                              (let ((_%hd175676175763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175675175760%_)))
                                                    (_%tl175677175765%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175675175760%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd175676175763%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd175676175763%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl175677175765%_))
                                                            (let ((_%e175678175768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl175677175765%_))))
                      (let ((_%hd175679175771%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175678175768%_)))
                            (_%tl175680175773%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175678175768%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175680175773%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl175674175757%_))
                                (let ((_%e175681175776%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl175674175757%_))))
                                  (let ((_%hd175682175779%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175681175776%_)))
                                        (_%tl175683175781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175681175776%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd175682175779%_))
                                        (let ((_%e175684175784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd175682175779%_))))
                                          (let ((_%hd175685175787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175684175784%_)))
                                                (_%tl175686175789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175684175784%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd175685175787%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd175685175787%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl175686175789%_))
                                                        (let ((_%e175687175792%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl175686175789%_))))
                  (let ((_%hd175688175795%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175687175792%_)))
                        (_%tl175689175797%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175687175792%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl175689175797%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175683175781%_))
                            (let ((_%e175690175800%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175683175781%_))))
                              (let ((_%hd175691175803%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175690175800%_)))
                                    (_%tl175692175805%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175690175800%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd175691175803%_))
                                    (let ((_%e175693175808%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd175691175803%_))))
                                      (let ((_%hd175694175811%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175693175808%_)))
                                            (_%tl175695175813%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175693175808%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd175694175811%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd175694175811%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175695175813%_))
                                                    (let ((_%e175696175816%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175695175813%_))))
                                                      (let ((_%hd175697175819%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175696175816%_)))
                    (_%tl175698175821%_
                     (let () (declare (not safe)) (##cdr _%e175696175816%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl175698175821%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175692175805%_))
                        (if (let ((__tmp178067
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl175692175805%_))))
                              (declare (not safe))
                              (##fx>= __tmp178067 '1))
                            (let ((_g178068_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl175692175805%_
                                      '1))))
                              (begin
                                (let ((_g178069_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g178068_)
                                             (##vector-length _g178068_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g178069_ 2)))
                                      (error "Context expects 2 values"
                                             _g178069_)))
                                (let ((_%target175699175824%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g178068_ 0)))
                                      (_%tl175701175826%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g178068_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175701175826%_))
                                      (let ((_%e175708175829%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175701175826%_))))
                                        (let ((_%hd175709175832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175708175829%_)))
                                              (_%tl175710175834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175708175829%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175710175834%_))
                                              (letrec ((_%loop175702175837%_
                                                        (lambda (_%hd175700175840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref175706175842%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175700175840%_))
                      (let ((_%e175703175845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175700175840%_))))
                        (let ((_%lp-hd175704175848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175703175845%_)))
                              (_%lp-tl175705175850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175703175845%_))))
                          (_%loop175702175837%_
                           _%lp-tl175705175850%_
                           (cons _%lp-hd175704175848%_
                                 _%kw-ref175706175842%_))))
                      (let ((_%kw-ref175707175853%_
                             (reverse _%kw-ref175706175842%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175668175741%_))
                            ((lambda (_%L175856%_
                                      _%L175857%_
                                      _%L175858%_
                                      _%L175859%_
                                      _%L175860%_)
                               (let* ((_%kw-count175911%_
                                       (length (let ((__tmp178070
                                                      (lambda (_%g175903175906%_
                                                               _%g175904175908%_)
                                                        (cons _%g175903175906%_
                                                              _%g175904175908%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp178070
                                                  '()
                                                  _%L175857%_))))
                                      (_%self-index175913%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count175911%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L175611%_))
                                     (let* ((_%g175917175931%_
                                             (lambda (_%g175918175928%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175918175928%_))))
                                            (_%g175916176054%_
                                             (lambda (_%g175918175934%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175918175934%_))
                                                   (let ((_%e175921175936%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175918175934%_))))
                                                     (let ((_%hd175922175939%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175921175936%_)))
                                                           (_%tl175923175941%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175921175936%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175923175941%_))
                                                           (let ((_%e175924175944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175923175941%_))))
                     (let ((_%hd175925175947%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175924175944%_)))
                           (_%tl175926175949%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175924175944%_))))
                       ((lambda (_%L175952%_ _%L175953%_)
                          (let* ((_%self175970%_
                                  (list-ref _%L175953%_ _%self-index175913%_))
                                 (_%receiver175975%_
                                  (let ((_%$e175972%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L175952%_))))
                                    (if _%$e175972%_
                                        _%$e175972%_
                                        _%self175970%_))))
                            (for-each
                             (lambda (_%g175977175979%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver175975%_
                                _%method-calls173903%_
                                _%slot-refs173904%_
                                _%g175977175979%_))
                             _%L175952%_)
                            (if (_%no-specializer?173907%_)
                                _%stx173811%_
                                (let* ((_%specializer-id175988%_
                                        (let* ((_%id175982%_
                                                (let ((__tmp178071
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173884%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp178071
                                                   '"::specialize")))
                                               (_%specializer-id175985%_
                                                (let ((__tmp178072
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx173811%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id175982%_
                                                   __tmp178072))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id175985%_))
                                          _%specializer-id175985%_))
                                       (_%$klass175990%_
                                        (let ((__tmp178073
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp178073)))
                                       (_%$method-table175992%_
                                        (let ((__tmp178074
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp178074)))
                                       (_%methods175994%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls173903%_)))
                                       (_%$methods175998%_
                                        (map (lambda (_%id175996%_)
                                               (let ((__tmp178075
                                                      (gensym _%id175996%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp178075)))
                                             _%methods175994%_))
                                       (_%_176007%_
                                        (for-each
                                         (lambda (_%g175999176002%_
                                                  _%g176000176004%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls173903%_
                                              _%g175999176002%_
                                              _%g176000176004%_)))
                                         _%methods175994%_
                                         _%$methods175998%_))
                                       (_%methods-bind176017%_
                                        (map (lambda (_%g176009176012%_
                                                      _%g176010176014%_)
                                               (_%generate-method-bind173813%_
                                                _%$klass175990%_
                                                _%$method-table175992%_
                                                _%g176009176012%_
                                                _%g176010176014%_))
                                             _%methods175994%_
                                             _%$methods175998%_))
                                       (_%slots176019%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs173904%_)))
                                       (_%$slots176023%_
                                        (map (lambda (_%id176021%_)
                                               (let ((__tmp178076
                                                      (gensym _%id176021%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp178076)))
                                             _%slots176019%_))
                                       (_%_176032%_
                                        (for-each
                                         (lambda (_%g176024176027%_
                                                  _%g176025176029%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs173904%_
                                              _%g176024176027%_
                                              _%g176025176029%_)))
                                         _%slots176019%_
                                         _%$slots176023%_))
                                       (_%slots-bind176041%_
                                        (map (lambda (_%g176033176036%_
                                                      _%g176034176038%_)
                                               (_%generate-slot-bind173814%_
                                                _%$klass175990%_
                                                _%g176033176036%_
                                                _%g176034176038%_))
                                             _%slots176019%_
                                             _%$slots176023%_))
                                       (_%specializer-impl176049%_
                                        (let* ((_%specializer-body176047%_
                                                (map (lambda (_%g176042176044%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver175975%_
                                                        _%$klass175990%_
                                                        _%method-calls173903%_
                                                        _%slot-refs173904%_
                                                        _%g176042176044%_))
                                                     _%L175952%_))
                                               (__tmp178077
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L175613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L175612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp178078
                                   (cons '%#lambda
                                         (cons _%L175953%_
                                               _%specializer-body176047%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp178078 _%L175611%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L175610%_ '())))
                                      '()))
                          '())
                    (cons _%L175609%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp178077
                                           _%stx173811%_)))
                                       (_%specializer-impl176051%_
                                        (_%generate-specializer-impl173815%_
                                         _%$klass175990%_
                                         _%$method-table175992%_
                                         _%methods-bind176017%_
                                         _%slots-bind176041%_
                                         _%specializer-impl176049%_)))
                                  (let ((__tmp178080
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L173884%_)))
                                        (__tmp178079
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id175988%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp178080
                                     '" => "
                                     __tmp178079))
                                  (_%generate-specializer-def173816%_
                                   _%L173884%_
                                   _%specializer-id175988%_
                                   _%specializer-impl176051%_)))))
                        _%tl175926175949%_
                        _%hd175925175947%_)))
                   (_%g175917175931%_ _%g175918175934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175917175931%_
                                                    _%g175918175934%_)))))
                                       (_%g175916176054%_ _%L175611%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L175611%_))
                                         (let* ((_%g176058176088%_
                                                 (lambda (_%g176059176085%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176059176085%_))))
                                                (_%g176057176656%_
                                                 (lambda (_%g176059176091%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176059176091%_))
                                                       (let ((_%e176063176093%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176059176091%_))))
                 (let ((_%hd176064176096%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176063176093%_)))
                       (_%tl176065176098%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176063176093%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl176065176098%_))
                       (let ((_%e176066176101%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176065176098%_))))
                         (let ((_%hd176067176104%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176066176101%_)))
                               (_%tl176068176106%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176066176101%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd176067176104%_))
                               (let ((_%e176069176109%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd176067176104%_))))
                                 (let ((_%hd176070176112%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176069176109%_)))
                                       (_%tl176071176114%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176069176109%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176070176112%_))
                                       (let ((_%e176072176117%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176070176112%_))))
                                         (let ((_%hd176073176120%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176072176117%_)))
                                               (_%tl176074176122%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176072176117%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176073176120%_))
                                               (let ((_%e176075176125%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176073176120%_))))
                                                 (let ((_%hd176076176128%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176075176125%_)))
                                                       (_%tl176077176130%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176075176125%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176077176130%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl176074176122%_))
                                                           (let ((_%e176078176133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl176074176122%_))))
                     (let ((_%hd176079176136%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176078176133%_)))
                           (_%tl176080176138%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176078176133%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl176080176138%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176071176114%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl176068176106%_))
                                   (let ((_%e176081176141%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl176068176106%_))))
                                     (let ((_%hd176082176144%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176081176141%_)))
                                           (_%tl176083176146%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176081176141%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176083176146%_))
                                           ((lambda (_%L176149%_
                                                     _%L176150%_
                                                     _%L176151%_)
                                              (let* ((_%g176175176189%_
                                                      (lambda (_%g176176176186%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176176176186%_))))
                                                     (_%g176174176236%_
                                                      (lambda (_%g176176176192%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176176176192%_))
                                                            (let ((_%e176179176194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176176176192%_))))
                      (let ((_%hd176180176197%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176179176194%_)))
                            (_%tl176181176199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176179176194%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176181176199%_))
                            (let ((_%e176182176202%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176181176199%_))))
                              (let ((_%hd176183176205%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176182176202%_)))
                                    (_%tl176184176207%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176182176202%_))))
                                ((lambda (_%L176210%_ _%L176211%_)
                                   (let* ((_%self176224%_
                                           (list-ref
                                            _%L176211%_
                                            _%self-index175913%_))
                                          (_%receiver176229%_
                                           (let ((_%$e176226%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L176210%_))))
                                             (if _%$e176226%_
                                                 _%$e176226%_
                                                 _%self176224%_))))
                                     (for-each
                                      (lambda (_%g176231176233%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver176229%_
                                         _%method-calls173903%_
                                         _%slot-refs173904%_
                                         _%g176231176233%_))
                                      _%L176210%_)))
                                 _%tl176184176207%_
                                 _%hd176183176205%_)))
                            (_%g176175176189%_ _%g176176176192%_))))
                    (_%g176175176189%_ _%g176176176192%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176174176236%_
                                                 _%L176150%_))
                                              (let* ((_%g176239176258%_
                                                      (lambda (_%g176240176255%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176240176255%_))))
                                                     (_%g176238176369%_
                                                      (lambda (_%g176240176261%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176240176261%_))
                                                            (let ((_%e176242176263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176240176261%_))))
                      (let ((_%hd176243176266%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176242176263%_)))
                            (_%tl176244176268%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176242176263%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl176244176268%_))
                            (let ((_g178081_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176244176268%_
                                      '0))))
                              (begin
                                (let ((_g178082_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g178081_)
                                             (##vector-length _g178081_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g178082_ 2)))
                                      (error "Context expects 2 values"
                                             _g178082_)))
                                (let ((_%target176245176271%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g178081_ 0)))
                                      (_%tl176247176273%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g178081_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176247176273%_))
                                      (letrec ((_%loop176248176276%_
                                                (lambda (_%hd176246176279%_
                                                         _%clause176252176281%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd176246176279%_))
                                                      (let ((_%e176249176284%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd176246176279%_))))
                (let ((_%lp-hd176250176287%_
                       (let () (declare (not safe)) (##car _%e176249176284%_)))
                      (_%lp-tl176251176289%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e176249176284%_))))
                  (_%loop176248176276%_
                   _%lp-tl176251176289%_
                   (cons _%lp-hd176250176287%_ _%clause176252176281%_))))
              (let ((_%clause176253176292%_ (reverse _%clause176252176281%_)))
                ((lambda (_%L176295%_)
                   (for-each
                    (lambda (_%clause176308%_)
                      (let* ((_%g176310176321%_
                              (lambda (_%g176311176318%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g176311176318%_))))
                             (_%g176309176359%_
                              (lambda (_%g176311176324%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g176311176324%_))
                                    (let ((_%e176314176326%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g176311176324%_))))
                                      (let ((_%hd176315176329%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176314176326%_)))
                                            (_%tl176316176331%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176314176326%_))))
                                        ((lambda (_%L176334%_ _%L176335%_)
                                           (let* ((_%self176347%_
                                                   (list-ref
                                                    _%L176335%_
                                                    _%self-index175913%_))
                                                  (_%receiver176352%_
                                                   (let ((_%$e176349%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L176334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e176349%_
                                                         _%$e176349%_
                                                         _%self176347%_))))
                                             (for-each
                                              (lambda (_%g176354176356%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver176352%_
                                                 _%method-calls173903%_
                                                 _%slot-refs173904%_
                                                 _%g176354176356%_))
                                              _%L176334%_)))
                                         _%tl176316176331%_
                                         _%hd176315176329%_)))
                                    (_%g176310176321%_ _%g176311176324%_)))))
                        (_%g176309176359%_ _%clause176308%_)))
                    (let ((__tmp178083
                           (lambda (_%g176361176364%_ _%g176362176366%_)
                             (cons _%g176361176364%_ _%g176362176366%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178083 '() _%L176295%_))))
                 _%clause176253176292%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop176248176276%_
                                         _%target176245176271%_
                                         '()))
                                      (_%g176239176258%_ _%g176240176261%_)))))
                            (_%g176239176258%_ _%g176240176261%_))))
                    (_%g176239176258%_ _%g176240176261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176238176369%_
                                                 _%L176149%_))
                                              (if (_%no-specializer?173907%_)
                                                  _%stx173811%_
                                                  (let* ((_%specializer-id176378%_
                                                          (let* ((_%id176372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp178084
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L173884%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp178084 '"::specialize")))
                         (_%specializer-id176375%_
                          (let ((__tmp178085
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx173811%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id176372%_
                             __tmp178085))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id176375%_))
                    _%specializer-id176375%_))
                 (_%$klass176380%_
                  (let ((__tmp178086
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178086)))
                 (_%$method-table176382%_
                  (let ((__tmp178087
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178087)))
                 (_%methods176384%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls173903%_)))
                 (_%$methods176388%_
                  (map (lambda (_%id176386%_)
                         (let ((__tmp178088 (gensym _%id176386%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178088)))
                       _%methods176384%_))
                 (_%_176397%_
                  (for-each
                   (lambda (_%g176389176392%_ _%g176390176394%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls173903%_
                        _%g176389176392%_
                        _%g176390176394%_)))
                   _%methods176384%_
                   _%$methods176388%_))
                 (_%methods-bind176407%_
                  (map (lambda (_%g176399176402%_ _%g176400176404%_)
                         (_%generate-method-bind173813%_
                          _%$klass176380%_
                          _%$method-table176382%_
                          _%g176399176402%_
                          _%g176400176404%_))
                       _%methods176384%_
                       _%$methods176388%_))
                 (_%slots176409%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs173904%_)))
                 (_%$slots176413%_
                  (map (lambda (_%id176411%_)
                         (let ((__tmp178089 (gensym _%id176411%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178089)))
                       _%slots176409%_))
                 (_%_176422%_
                  (for-each
                   (lambda (_%g176414176417%_ _%g176415176419%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs173904%_
                        _%g176414176417%_
                        _%g176415176419%_)))
                   _%slots176409%_
                   _%$slots176413%_))
                 (_%slots-bind176431%_
                  (map (lambda (_%g176423176426%_ _%g176424176428%_)
                         (_%generate-slot-bind173814%_
                          _%$klass176380%_
                          _%g176423176426%_
                          _%g176424176428%_))
                       _%slots176409%_
                       _%$slots176413%_))
                 (_%specializer-lambda-expr176509%_
                  (let* ((_%g176433176447%_
                          (lambda (_%g176434176444%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176434176444%_))))
                         (_%g176432176506%_
                          (lambda (_%g176434176450%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176434176450%_))
                                (let ((_%e176437176452%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176434176450%_))))
                                  (let ((_%hd176438176455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176437176452%_)))
                                        (_%tl176439176457%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176437176452%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176439176457%_))
                                        (let ((_%e176440176460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176439176457%_))))
                                          (let ((_%hd176441176463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176440176460%_)))
                                                (_%tl176442176465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176440176460%_))))
                                            ((lambda (_%L176468%_ _%L176469%_)
                                               (let* ((_%self176492%_
                                                       (list-ref
                                                        _%L176469%_
                                                        _%self-index175913%_))
                                                      (_%receiver176497%_
                                                       (let ((_%$e176494%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L176468%_))))
                 (if _%$e176494%_ _%$e176494%_ _%self176492%_)))
              (_%body176503%_
               (map (lambda (_%g176498176500%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver176497%_
                       _%$klass176380%_
                       _%method-calls173903%_
                       _%slot-refs173904%_
                       _%g176498176500%_))
                    _%L176468%_))
              (__tmp178090 (cons '%#lambda (cons _%L176469%_ _%body176503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp178090
                                                  _%L176150%_)))
                                             _%tl176442176465%_
                                             _%hd176441176463%_)))
                                        (_%g176433176447%_
                                         _%g176434176450%_))))
                                (_%g176433176447%_ _%g176434176450%_)))))
                    (_%g176432176506%_ _%L176150%_)))
                 (_%specializer-case-lambda-expr176649%_
                  (let* ((_%g176511176530%_
                          (lambda (_%g176512176527%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176512176527%_))))
                         (_%g176510176646%_
                          (lambda (_%g176512176533%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176512176533%_))
                                (let ((_%e176514176535%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176512176533%_))))
                                  (let ((_%hd176515176538%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176514176535%_)))
                                        (_%tl176516176540%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176514176535%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl176516176540%_))
                                        (let ((_g178091_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl176516176540%_
                                                  '0))))
                                          (begin
                                            (let ((_g178092_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g178091_)
                                                         (##vector-length
                                                          _g178091_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g178092_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g178092_)))
                                            (let ((_%target176517176543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g178091_
                                                      0)))
                                                  (_%tl176519176545%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g178091_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl176519176545%_))
                                                  (letrec ((_%loop176520176548%_
                                                            (lambda (_%hd176518176551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause176524176553%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd176518176551%_))
                          (let ((_%e176521176556%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd176518176551%_))))
                            (let ((_%lp-hd176522176559%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e176521176556%_)))
                                  (_%lp-tl176523176561%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e176521176556%_))))
                              (_%loop176520176548%_
                               _%lp-tl176523176561%_
                               (cons _%lp-hd176522176559%_
                                     _%clause176524176553%_))))
                          (let ((_%clause176525176564%_
                                 (reverse _%clause176524176553%_)))
                            ((lambda (_%L176567%_)
                               (let* ((_%clauses176644%_
                                       (map (lambda (_%clause176581%_)
                                              (let* ((_%g176583176594%_
                                                      (lambda (_%g176584176591%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176584176591%_))))
                                                     (_%g176582176634%_
                                                      (lambda (_%g176584176597%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176584176597%_))
                                                            (let ((_%e176587176599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176584176597%_))))
                      (let ((_%hd176588176602%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176587176599%_)))
                            (_%tl176589176604%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176587176599%_))))
                        ((lambda (_%L176607%_ _%L176608%_)
                           (let* ((_%self176620%_
                                   (list-ref _%L176608%_ _%self-index175913%_))
                                  (_%receiver176625%_
                                   (let ((_%$e176622%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L176607%_))))
                                     (if _%$e176622%_
                                         _%$e176622%_
                                         _%self176620%_)))
                                  (_%body176631%_
                                   (map (lambda (_%g176626176628%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver176625%_
                                           _%$klass176380%_
                                           _%method-calls173903%_
                                           _%slot-refs173904%_
                                           _%g176626176628%_))
                                        _%L176607%_)))
                             (cons _%L176608%_ _%body176631%_)))
                         _%tl176589176604%_
                         _%hd176588176602%_)))
                    (_%g176583176594%_ _%g176584176597%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176582176634%_
                                                 _%clause176581%_)))
                                            (let ((__tmp178093
                                                   (lambda (_%g176636176639%_
                                                            _%g176637176641%_)
                                                     (cons _%g176636176639%_
                                                           _%g176637176641%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp178093
                                               '()
                                               _%L176567%_))))
                                      (__tmp178094
                                       (cons '%#case-lambda
                                             _%clauses176644%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp178094
                                  _%L176149%_)))
                             _%clause176525176564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop176520176548%_
                                                     _%target176517176543%_
                                                     '()))
                                                  (_%g176511176530%_
                                                   _%g176512176533%_)))))
                                        (_%g176511176530%_
                                         _%g176512176533%_))))
                                (_%g176511176530%_ _%g176512176533%_)))))
                    (_%g176510176646%_ _%L176149%_)))
                 (_%specializer-impl176651%_
                  (let ((__tmp178095
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L175613%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L175612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp178096
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L176151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr176509%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr176649%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp178096
                                                _%stx173811%_))
                                             '()))
                                 '())
                           (cons _%L175610%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L175609%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp178095 _%stx173811%_)))
                 (_%specializer-impl176653%_
                  (_%generate-specializer-impl173815%_
                   _%$klass176380%_
                   _%$method-table176382%_
                   _%methods-bind176407%_
                   _%slots-bind176431%_
                   _%specializer-impl176651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp178098
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L173884%_)))
                                                          (__tmp178097
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id176378%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp178098
                                                       '" => "
                                                       __tmp178097))
                                                    (_%generate-specializer-def173816%_
                                                     _%L173884%_
                                                     _%specializer-id176378%_
                                                     _%specializer-impl176653%_))))
                                            _%hd176082176144%_
                                            _%hd176079176136%_
                                            _%hd176076176128%_)
                                           (_%g176058176088%_
                                            _%g176059176091%_))))
                                   (_%g176058176088%_ _%g176059176091%_))
                               (_%g176058176088%_ _%g176059176091%_))
                           (_%g176058176088%_ _%g176059176091%_))))
                   (_%g176058176088%_ _%g176059176091%_))
               (_%g176058176088%_ _%g176059176091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176058176088%_
                                                _%g176059176091%_))))
                                       (_%g176058176088%_ _%g176059176091%_))))
                               (_%g176058176088%_ _%g176059176091%_))))
                       (_%g176058176088%_ _%g176059176091%_))))
               (_%g176058176088%_ _%g176059176091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176057176656%_ _%L175611%_))
                                         _%stx173811%_))))
                             _%hd175709175832%_
                             _%kw-ref175707175853%_
                             _%hd175697175819%_
                             _%hd175688175795%_
                             _%hd175679175771%_)
                            (_%g175653175715%_ _%g175654175718%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175702175837%_
                                                 _%target175699175824%_
                                                 '()))
                                              (_%g175653175715%_
                                               _%g175654175718%_))))
                                      (_%g175653175715%_ _%g175654175718%_)))))
                            (_%g175653175715%_ _%g175654175718%_))
                        (_%g175653175715%_ _%g175654175718%_))
                    (_%g175653175715%_ _%g175654175718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175653175715%_
                                                     _%g175654175718%_))
                                                (_%g175653175715%_
                                                 _%g175654175718%_))
                                            (_%g175653175715%_
                                             _%g175654175718%_))))
                                    (_%g175653175715%_ _%g175654175718%_))))
                            (_%g175653175715%_ _%g175654175718%_))
                        (_%g175653175715%_ _%g175654175718%_))))
                (_%g175653175715%_ _%g175654175718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175653175715%_
                                                     _%g175654175718%_))
                                                (_%g175653175715%_
                                                 _%g175654175718%_))))
                                        (_%g175653175715%_
                                         _%g175654175718%_))))
                                (_%g175653175715%_ _%g175654175718%_))
                            (_%g175653175715%_ _%g175654175718%_))))
                    (_%g175653175715%_ _%g175654175718%_))
                (_%g175653175715%_ _%g175654175718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175653175715%_
                                                     _%g175654175718%_))))
                                            (_%g175653175715%_
                                             _%g175654175718%_))))
                                    (_%g175653175715%_ _%g175654175718%_))
                                (_%g175653175715%_ _%g175654175718%_))
                            (_%g175653175715%_ _%g175654175718%_))))
                    (_%g175653175715%_ _%g175654175718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175653175715%_
                                                     _%g175654175718%_))))
                                            (_%g175653175715%_
                                             _%g175654175718%_))
                                        (_%g175653175715%_ _%g175654175718%_))
                                    (_%g175653175715%_ _%g175654175718%_))))
                            (_%g175653175715%_ _%g175654175718%_)))))
                (_%g175652176660%_ _%L175610%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd175486175604%_
                                                    _%hd175483175596%_
                                                    _%hd175480175588%_
                                                    _%hd175477175580%_
                                                    _%hd175459175532%_)
                                                   (_%g175439175492%_
                                                    _%g175440175495%_))))
                                           (_%g175439175492%_
                                            _%g175440175495%_))
                                       (_%g175439175492%_ _%g175440175495%_))
                                   (_%g175439175492%_ _%g175440175495%_))
                               (_%g175439175492%_ _%g175440175495%_))))
                       (_%g175439175492%_ _%g175440175495%_))
                   (_%g175439175492%_ _%g175440175495%_))
               (_%g175439175492%_ _%g175440175495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175439175492%_
                                                _%g175440175495%_))
                                           (_%g175439175492%_
                                            _%g175440175495%_))))
                                   (_%g175439175492%_ _%g175440175495%_))))
                           (_%g175439175492%_ _%g175440175495%_))))
                   (_%g175439175492%_ _%g175440175495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175439175492%_
                                                    _%g175440175495%_))
                                               (_%g175439175492%_
                                                _%g175440175495%_))
                                           (_%g175439175492%_
                                            _%g175440175495%_))))
                                   (_%g175439175492%_ _%g175440175495%_))))
                           (_%g175439175492%_ _%g175440175495%_))
                       (_%g175439175492%_ _%g175440175495%_))))
               (_%g175439175492%_ _%g175440175495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175439175492%_
                                                _%g175440175495%_))))
                                       (_%g175439175492%_ _%g175440175495%_))))
                               (_%g175439175492%_ _%g175440175495%_))
                           (_%g175439175492%_ _%g175440175495%_))
                       (_%g175439175492%_ _%g175440175495%_))))
               (_%g175439175492%_ _%g175440175495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g175438176663%_ _%L173883%_))
                                         _%stx173811%_))))))))
                  (_%__kont176897176898%_ (lambda () _%stx173811%_)))
              (let ((_%__match176926176927%_
                     (lambda (_%e173823173851%_
                              _%hd173824173854%_
                              _%tl173825173856%_
                              _%e173826173859%_
                              _%hd173827173862%_
                              _%tl173828173864%_
                              _%e173829173867%_
                              _%hd173830173870%_
                              _%tl173831173872%_
                              _%e173832173875%_
                              _%hd173833173878%_
                              _%tl173834173880%_)
                       (let ((_%L173883%_ _%hd173833173878%_)
                             (_%L173884%_ _%hd173830173870%_))
                         (if (let ((__tmp178099
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L173884%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp178099))
                             (_%__kont176895176896%_ _%L173883%_ _%L173884%_)
                             (_%__kont176897176898%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx176893176894%_))
                    (let ((_%e173823173851%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx176893176894%_))))
                      (let ((_%tl173825173856%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173823173851%_)))
                            (_%hd173824173854%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173823173851%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173825173856%_))
                            (let ((_%e173826173859%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173825173856%_))))
                              (let ((_%tl173828173864%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173826173859%_)))
                                    (_%hd173827173862%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173826173859%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd173827173862%_))
                                    (let ((_%e173829173867%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd173827173862%_))))
                                      (let ((_%tl173831173872%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173829173867%_)))
                                            (_%hd173830173870%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173829173867%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173831173872%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173828173864%_))
                                                (let ((_%e173832173875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173828173864%_))))
                                                  (let ((_%tl173834173880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173832173875%_)))
                                                        (_%hd173833173878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173832173875%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173834173880%_))
                                                        (_%__match176926176927%_
                                                         _%e173823173851%_
                                                         _%hd173824173854%_
                                                         _%tl173825173856%_
                                                         _%e173826173859%_
                                                         _%hd173827173862%_
                                                         _%tl173828173864%_
                                                         _%e173829173867%_
                                                         _%hd173830173870%_
                                                         _%tl173831173872%_
                                                         _%e173832173875%_
                                                         _%hd173833173878%_
                                                         _%tl173834173880%_)
                                                        (_%__kont176897176898%_))))
                                                (_%__kont176897176898%_))
                                            (_%__kont176897176898%_))))
                                    (_%__kont176897176898%_))))
                            (_%__kont176897176898%_))))
                    (_%__kont176897176898%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self173663%_ _%stx173664%_)
        (let* ((_%__stx176929176930%_ _%stx173664%_)
               (_%g173667173700%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx176929176930%_)))))
          (let ((_%__kont176931176932%_ (lambda (_%L173790%_) _%L173790%_))
                (_%__kont176933176934%_
                 (lambda (_%L173729%_ _%L173730%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173663%_ _%L173729%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx176929176930%_))
                (let ((_%e173670173750%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx176929176930%_))))
                  (let ((_%tl173672173755%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173670173750%_)))
                        (_%hd173671173753%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173670173750%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl173672173755%_))
                        (let ((_%e173673173758%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl173672173755%_))))
                          (let ((_%tl173675173763%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e173673173758%_)))
                                (_%hd173674173761%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e173673173758%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd173674173761%_))
                                (let ((_%e173676173766%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd173674173761%_))))
                                  (let ((_%tl173678173771%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173676173766%_)))
                                        (_%hd173677173769%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173676173766%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd173677173769%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd173677173769%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173678173771%_))
                                                (let ((_%e173679173774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173678173771%_))))
                                                  (let ((_%tl173681173779%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173679173774%_)))
                                                        (_%hd173680173777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173679173774%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173681173779%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl173675173763%_))
                                                            (let ((_%e173682173782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173675173763%_))))
                      (let ((_%tl173684173787%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173682173782%_)))
                            (_%hd173683173785%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173682173782%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173684173787%_))
                            (_%__kont176931176932%_ _%hd173680173777%_)
                            (let ()
                              (declare (not safe))
                              (_%g173667173700%_)))))
                    (let () (declare (not safe)) (_%g173667173700%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl173675173763%_))
                    (let ((_%e173693173721%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173675173763%_))))
                      (let ((_%tl173695173726%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173693173721%_)))
                            (_%hd173694173724%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173693173721%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173695173726%_))
                            (_%__kont176933176934%_
                             _%hd173694173724%_
                             _%hd173674173761%_)
                            (let ()
                              (declare (not safe))
                              (_%g173667173700%_)))))
                    (let () (declare (not safe)) (_%g173667173700%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173675173763%_))
                                                    (let ((_%e173693173721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173675173763%_))))
                                                      (let ((_%tl173695173726%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e173693173721%_)))
                    (_%hd173694173724%_
                     (let () (declare (not safe)) (##car _%e173693173721%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl173695173726%_))
                    (_%__kont176933176934%_
                     _%hd173694173724%_
                     _%hd173674173761%_)
                    (let () (declare (not safe)) (_%g173667173700%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173667173700%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173675173763%_))
                                                (let ((_%e173693173721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173675173763%_))))
                                                  (let ((_%tl173695173726%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173693173721%_)))
                                                        (_%hd173694173724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173693173721%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173695173726%_))
                                                        (_%__kont176933176934%_
                                                         _%hd173694173724%_
                                                         _%hd173674173761%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g173667173700%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g173667173700%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl173675173763%_))
                                            (let ((_%e173693173721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl173675173763%_))))
                                              (let ((_%tl173695173726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173693173721%_)))
                                                    (_%hd173694173724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173693173721%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl173695173726%_))
                                                    (_%__kont176933176934%_
                                                     _%hd173694173724%_
                                                     _%hd173674173761%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173667173700%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g173667173700%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173675173763%_))
                                    (let ((_%e173693173721%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173675173763%_))))
                                      (let ((_%tl173695173726%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173693173721%_)))
                                            (_%hd173694173724%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173693173721%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173695173726%_))
                                            (_%__kont176933176934%_
                                             _%hd173694173724%_
                                             _%hd173674173761%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g173667173700%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g173667173700%_))))))
                        (let () (declare (not safe)) (_%g173667173700%_)))))
                (let () (declare (not safe)) (_%g173667173700%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self173579%_ _%stx173580%_)
        (let* ((_%g173582173603%_
                (lambda (_%g173583173600%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g173583173600%_))))
               (_%g173581173660%_
                (lambda (_%g173583173606%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g173583173606%_))
                      (let ((_%e173587173608%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g173583173606%_))))
                        (let ((_%hd173588173611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173587173608%_)))
                              (_%tl173589173613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173587173608%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173589173613%_))
                              (let ((_%e173590173616%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173589173613%_))))
                                (let ((_%hd173591173619%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173590173616%_)))
                                      (_%tl173592173621%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173590173616%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl173592173621%_))
                                      (let ((_%e173593173624%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl173592173621%_))))
                                        (let ((_%hd173594173627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173593173624%_)))
                                              (_%tl173595173629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173593173624%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173595173629%_))
                                              (let ((_%e173596173632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173595173629%_))))
                                                (let ((_%hd173597173635%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173596173632%_)))
                                                      (_%tl173598173637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173596173632%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173598173637%_))
                                                      ((lambda (_%L173640%_
                                                                _%L173641%_
                                                                _%L173642%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self173579%_
                                                            _%L173641%_)))
                                                       _%hd173597173635%_
                                                       _%hd173594173627%_
                                                       _%hd173591173619%_)
                                                      (_%g173582173603%_
                                                       _%g173583173606%_))))
                                              (_%g173582173603%_
                                               _%g173583173606%_))))
                                      (_%g173582173603%_ _%g173583173606%_))))
                              (_%g173582173603%_ _%g173583173606%_))))
                      (_%g173582173603%_ _%g173583173606%_)))))
          (_%g173581173660%_ _%stx173580%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self172540%_ _%stx172541%_)
        (let* ((_%__stx176995176996%_ _%stx172541%_)
               (_%g172549172771%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx176995176996%_)))))
          (let ((_%__kont176997176998%_
                 (lambda (_%L173528%_ _%L173529%_ _%L173530%_ _%L173531%_)
                   (let ((__tmp178101
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172540%_ 'methods)))
                         (__tmp178100
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173529%_))))
                     (declare (not safe))
                     (hash-put! __tmp178101 __tmp178100 '#t))
                   (for-each
                    (lambda (_%g173564173566%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self172540%_ _%g173564173566%_)))
                    (let ((__tmp178102
                           (lambda (_%g173568173571%_ _%g173569173573%_)
                             (cons _%g173568173571%_ _%g173569173573%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178102 '() _%L173528%_)))))
                (_%__kont177001177002%_
                 (lambda (_%L173363%_
                          _%L173364%_
                          _%L173365%_
                          _%L173366%_
                          _%L173367%_)
                   (let ((__tmp178104
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172540%_ 'methods)))
                         (__tmp178103
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173364%_))))
                     (declare (not safe))
                     (hash-put! __tmp178104 __tmp178103 '#t))
                   (for-each
                    (lambda (_%g173407173409%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self172540%_ _%g173407173409%_)))
                    (let ((__tmp178105
                           (lambda (_%g173411173414%_ _%g173412173416%_)
                             (cons _%g173411173414%_ _%g173412173416%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178105 '() _%L173363%_)))))
                (_%__kont177005177006%_
                 (lambda (_%L173196%_ _%L173197%_ _%L173198%_)
                   (let ((__tmp178107
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172540%_ 'slots)))
                         (__tmp178106
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173196%_))))
                     (declare (not safe))
                     (hash-put! __tmp178107 __tmp178106 '#t))))
                (_%__kont177007177008%_
                 (lambda (_%L173073%_ _%L173074%_ _%L173075%_ _%L173076%_)
                   (let ((__tmp178109
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172540%_ 'slots)))
                         (__tmp178108
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173074%_))))
                     (declare (not safe))
                     (hash-put! __tmp178109 __tmp178108 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self172540%_ _%L173073%_))))
                (_%__kont177009177010%_
                 (lambda (_%L172947%_ _%L172948%_)
                   (let* ((_%accessor172970%_
                           (let ((__tmp178110
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L172948%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp178110)))
                          (_%klass172972%_
                           (let ((__tmp178111
                                  (##structure-ref
                                   _%accessor172970%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx172541%_
                              __tmp178111)))
                          (_%slot172974%_
                           (##structure-ref
                            _%accessor172970%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor172970%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass172972%_
                                    _%slot172974%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass172972%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp178113
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self172540%_ 'slots)))
                               (__tmp178112
                                (##structure-ref
                                 _%accessor172970%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp178113 __tmp178112 '#t))))))
                (_%__kont177011177012%_
                 (lambda (_%L172847%_ _%L172848%_ _%L172849%_)
                   (let* ((_%mutator172876%_
                           (let ((__tmp178114
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L172849%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp178114)))
                          (_%klass172878%_
                           (let ((__tmp178115
                                  (##structure-ref
                                   _%mutator172876%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx172541%_
                              __tmp178115)))
                          (_%slot172880%_
                           (##structure-ref
                            _%mutator172876%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator172876%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass172878%_
                                    _%slot172880%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass172878%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp178116
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self172540%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp178116 _%slot172880%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self172540%_ _%L172847%_)))))
                (_%__kont177013177014%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self172540%_ _%stx172541%_)))))
            (let* ((_%__match177494177495%_
                    (lambda (_%e172743172783%_
                             _%hd172744172786%_
                             _%tl172745172788%_
                             _%e172746172791%_
                             _%hd172747172794%_
                             _%tl172748172796%_
                             _%e172749172799%_
                             _%hd172750172802%_
                             _%tl172751172804%_
                             _%e172752172807%_
                             _%hd172753172810%_
                             _%tl172754172812%_
                             _%e172755172815%_
                             _%hd172756172818%_
                             _%tl172757172820%_
                             _%e172758172823%_
                             _%hd172759172826%_
                             _%tl172760172828%_
                             _%e172761172831%_
                             _%hd172762172834%_
                             _%tl172763172836%_
                             _%e172764172839%_
                             _%hd172765172842%_
                             _%tl172766172844%_)
                      (let ((_%L172847%_ _%hd172765172842%_)
                            (_%L172848%_ _%hd172762172834%_)
                            (_%L172849%_ _%hd172753172810%_))
                        (if (and (let ((__tmp178117
                                        (let ((__tmp178118
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L172849%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp178118))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp178117
                                    'gxc#!mutator::t))
                                 (let ((__tmp178119
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172540%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172848%_
                                    __tmp178119)))
                            (_%__kont177011177012%_
                             _%L172847%_
                             _%L172848%_
                             _%L172849%_)
                            (_%__kont177013177014%_)))))
                   (_%__match177492177493%_
                    (lambda (_%e172743172783%_
                             _%hd172744172786%_
                             _%tl172745172788%_
                             _%e172746172791%_
                             _%hd172747172794%_
                             _%tl172748172796%_
                             _%e172749172799%_
                             _%hd172750172802%_
                             _%tl172751172804%_
                             _%e172752172807%_
                             _%hd172753172810%_
                             _%tl172754172812%_
                             _%e172755172815%_
                             _%hd172756172818%_
                             _%tl172757172820%_
                             _%e172758172823%_
                             _%hd172759172826%_
                             _%tl172760172828%_
                             _%e172761172831%_
                             _%hd172762172834%_
                             _%tl172763172836%_
                             _%e172764172839%_
                             _%hd172765172842%_
                             _%tl172766172844%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172766172844%_))
                          (_%__match177494177495%_
                           _%e172743172783%_
                           _%hd172744172786%_
                           _%tl172745172788%_
                           _%e172746172791%_
                           _%hd172747172794%_
                           _%tl172748172796%_
                           _%e172749172799%_
                           _%hd172750172802%_
                           _%tl172751172804%_
                           _%e172752172807%_
                           _%hd172753172810%_
                           _%tl172754172812%_
                           _%e172755172815%_
                           _%hd172756172818%_
                           _%tl172757172820%_
                           _%e172758172823%_
                           _%hd172759172826%_
                           _%tl172760172828%_
                           _%e172761172831%_
                           _%hd172762172834%_
                           _%tl172763172836%_
                           _%e172764172839%_
                           _%hd172765172842%_
                           _%tl172766172844%_)
                          (_%__kont177013177014%_))))
                   (_%__match177486177487%_
                    (lambda (_%e172743172783%_
                             _%hd172744172786%_
                             _%tl172745172788%_
                             _%e172746172791%_
                             _%hd172747172794%_
                             _%tl172748172796%_
                             _%e172749172799%_
                             _%hd172750172802%_
                             _%tl172751172804%_
                             _%e172752172807%_
                             _%hd172753172810%_
                             _%tl172754172812%_
                             _%e172755172815%_
                             _%hd172756172818%_
                             _%tl172757172820%_
                             _%e172758172823%_
                             _%hd172759172826%_
                             _%tl172760172828%_
                             _%e172761172831%_
                             _%hd172762172834%_
                             _%tl172763172836%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172757172820%_))
                          (let ((_%e172764172839%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172757172820%_))))
                            (let ((_%tl172766172844%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172764172839%_)))
                                  (_%hd172765172842%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172764172839%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172766172844%_))
                                  (_%__match177494177495%_
                                   _%e172743172783%_
                                   _%hd172744172786%_
                                   _%tl172745172788%_
                                   _%e172746172791%_
                                   _%hd172747172794%_
                                   _%tl172748172796%_
                                   _%e172749172799%_
                                   _%hd172750172802%_
                                   _%tl172751172804%_
                                   _%e172752172807%_
                                   _%hd172753172810%_
                                   _%tl172754172812%_
                                   _%e172755172815%_
                                   _%hd172756172818%_
                                   _%tl172757172820%_
                                   _%e172758172823%_
                                   _%hd172759172826%_
                                   _%tl172760172828%_
                                   _%e172761172831%_
                                   _%hd172762172834%_
                                   _%tl172763172836%_
                                   _%e172764172839%_
                                   _%hd172765172842%_
                                   _%tl172766172844%_)
                                  (_%__kont177013177014%_))))
                          (_%__kont177013177014%_))))
                   (_%__match177432177433%_
                    (lambda (_%e172719172891%_
                             _%hd172720172894%_
                             _%tl172721172896%_
                             _%e172722172899%_
                             _%hd172723172902%_
                             _%tl172724172904%_
                             _%e172725172907%_
                             _%hd172726172910%_
                             _%tl172727172912%_
                             _%e172728172915%_
                             _%hd172729172918%_
                             _%tl172730172920%_
                             _%e172731172923%_
                             _%hd172732172926%_
                             _%tl172733172928%_
                             _%e172734172931%_
                             _%hd172735172934%_
                             _%tl172736172936%_
                             _%e172737172939%_
                             _%hd172738172942%_
                             _%tl172739172944%_)
                      (let ((_%L172947%_ _%hd172738172942%_)
                            (_%L172948%_ _%hd172729172918%_))
                        (if (and (let ((__tmp178120
                                        (let ((__tmp178121
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L172948%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp178121))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp178120
                                    'gxc#!accessor::t))
                                 (let ((__tmp178122
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172540%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172947%_
                                    __tmp178122)))
                            (_%__kont177009177010%_ _%L172947%_ _%L172948%_)
                            (_%__kont177013177014%_)))))
                   (_%__match177430177431%_
                    (lambda (_%e172719172891%_
                             _%hd172720172894%_
                             _%tl172721172896%_
                             _%e172722172899%_
                             _%hd172723172902%_
                             _%tl172724172904%_
                             _%e172725172907%_
                             _%hd172726172910%_
                             _%tl172727172912%_
                             _%e172728172915%_
                             _%hd172729172918%_
                             _%tl172730172920%_
                             _%e172731172923%_
                             _%hd172732172926%_
                             _%tl172733172928%_
                             _%e172734172931%_
                             _%hd172735172934%_
                             _%tl172736172936%_
                             _%e172737172939%_
                             _%hd172738172942%_
                             _%tl172739172944%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172733172928%_))
                          (_%__match177432177433%_
                           _%e172719172891%_
                           _%hd172720172894%_
                           _%tl172721172896%_
                           _%e172722172899%_
                           _%hd172723172902%_
                           _%tl172724172904%_
                           _%e172725172907%_
                           _%hd172726172910%_
                           _%tl172727172912%_
                           _%e172728172915%_
                           _%hd172729172918%_
                           _%tl172730172920%_
                           _%e172731172923%_
                           _%hd172732172926%_
                           _%tl172733172928%_
                           _%e172734172931%_
                           _%hd172735172934%_
                           _%tl172736172936%_
                           _%e172737172939%_
                           _%hd172738172942%_
                           _%tl172739172944%_)
                          (_%__match177486177487%_
                           _%e172719172891%_
                           _%hd172720172894%_
                           _%tl172721172896%_
                           _%e172722172899%_
                           _%hd172723172902%_
                           _%tl172724172904%_
                           _%e172725172907%_
                           _%hd172726172910%_
                           _%tl172727172912%_
                           _%e172728172915%_
                           _%hd172729172918%_
                           _%tl172730172920%_
                           _%e172731172923%_
                           _%hd172732172926%_
                           _%tl172733172928%_
                           _%e172734172931%_
                           _%hd172735172934%_
                           _%tl172736172936%_
                           _%e172737172939%_
                           _%hd172738172942%_
                           _%tl172739172944%_))))
                   (_%__match177376177377%_
                    (lambda (_%e172684172985%_
                             _%hd172685172988%_
                             _%tl172686172990%_
                             _%e172687172993%_
                             _%hd172688172996%_
                             _%tl172689172998%_
                             _%e172690173001%_
                             _%hd172691173004%_
                             _%tl172692173006%_
                             _%e172693173009%_
                             _%hd172694173012%_
                             _%tl172695173014%_
                             _%e172696173017%_
                             _%hd172697173020%_
                             _%tl172698173022%_
                             _%e172699173025%_
                             _%hd172700173028%_
                             _%tl172701173030%_
                             _%e172702173033%_
                             _%hd172703173036%_
                             _%tl172704173038%_
                             _%e172705173041%_
                             _%hd172706173044%_
                             _%tl172707173046%_
                             _%e172708173049%_
                             _%hd172709173052%_
                             _%tl172710173054%_
                             _%e172711173057%_
                             _%hd172712173060%_
                             _%tl172713173062%_
                             _%e172714173065%_
                             _%hd172715173068%_
                             _%tl172716173070%_)
                      (let ((_%L173073%_ _%hd172715173068%_)
                            (_%L173074%_ _%hd172712173060%_)
                            (_%L173075%_ _%hd172703173036%_)
                            (_%L173076%_ _%hd172694173012%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173076%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173076%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp178123
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172540%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173075%_
                                    __tmp178123)))
                            (_%__kont177007177008%_
                             _%L173073%_
                             _%L173074%_
                             _%L173075%_
                             _%L173076%_)
                            (_%__kont177013177014%_)))))
                   (_%__match177368177369%_
                    (lambda (_%e172684172985%_
                             _%hd172685172988%_
                             _%tl172686172990%_
                             _%e172687172993%_
                             _%hd172688172996%_
                             _%tl172689172998%_
                             _%e172690173001%_
                             _%hd172691173004%_
                             _%tl172692173006%_
                             _%e172693173009%_
                             _%hd172694173012%_
                             _%tl172695173014%_
                             _%e172696173017%_
                             _%hd172697173020%_
                             _%tl172698173022%_
                             _%e172699173025%_
                             _%hd172700173028%_
                             _%tl172701173030%_
                             _%e172702173033%_
                             _%hd172703173036%_
                             _%tl172704173038%_
                             _%e172705173041%_
                             _%hd172706173044%_
                             _%tl172707173046%_
                             _%e172708173049%_
                             _%hd172709173052%_
                             _%tl172710173054%_
                             _%e172711173057%_
                             _%hd172712173060%_
                             _%tl172713173062%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172707173046%_))
                          (let ((_%e172714173065%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172707173046%_))))
                            (let ((_%tl172716173070%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172714173065%_)))
                                  (_%hd172715173068%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172714173065%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172716173070%_))
                                  (_%__match177376177377%_
                                   _%e172684172985%_
                                   _%hd172685172988%_
                                   _%tl172686172990%_
                                   _%e172687172993%_
                                   _%hd172688172996%_
                                   _%tl172689172998%_
                                   _%e172690173001%_
                                   _%hd172691173004%_
                                   _%tl172692173006%_
                                   _%e172693173009%_
                                   _%hd172694173012%_
                                   _%tl172695173014%_
                                   _%e172696173017%_
                                   _%hd172697173020%_
                                   _%tl172698173022%_
                                   _%e172699173025%_
                                   _%hd172700173028%_
                                   _%tl172701173030%_
                                   _%e172702173033%_
                                   _%hd172703173036%_
                                   _%tl172704173038%_
                                   _%e172705173041%_
                                   _%hd172706173044%_
                                   _%tl172707173046%_
                                   _%e172708173049%_
                                   _%hd172709173052%_
                                   _%tl172710173054%_
                                   _%e172711173057%_
                                   _%hd172712173060%_
                                   _%tl172713173062%_
                                   _%e172714173065%_
                                   _%hd172715173068%_
                                   _%tl172716173070%_)
                                  (_%__kont177013177014%_))))
                          (_%__match177492177493%_
                           _%e172684172985%_
                           _%hd172685172988%_
                           _%tl172686172990%_
                           _%e172687172993%_
                           _%hd172688172996%_
                           _%tl172689172998%_
                           _%e172690173001%_
                           _%hd172691173004%_
                           _%tl172692173006%_
                           _%e172693173009%_
                           _%hd172694173012%_
                           _%tl172695173014%_
                           _%e172696173017%_
                           _%hd172697173020%_
                           _%tl172698173022%_
                           _%e172699173025%_
                           _%hd172700173028%_
                           _%tl172701173030%_
                           _%e172702173033%_
                           _%hd172703173036%_
                           _%tl172704173038%_
                           _%e172705173041%_
                           _%hd172706173044%_
                           _%tl172707173046%_))))
                   (_%__match177290177291%_
                    (lambda (_%e172650173116%_
                             _%hd172651173119%_
                             _%tl172652173121%_
                             _%e172653173124%_
                             _%hd172654173127%_
                             _%tl172655173129%_
                             _%e172656173132%_
                             _%hd172657173135%_
                             _%tl172658173137%_
                             _%e172659173140%_
                             _%hd172660173143%_
                             _%tl172661173145%_
                             _%e172662173148%_
                             _%hd172663173151%_
                             _%tl172664173153%_
                             _%e172665173156%_
                             _%hd172666173159%_
                             _%tl172667173161%_
                             _%e172668173164%_
                             _%hd172669173167%_
                             _%tl172670173169%_
                             _%e172671173172%_
                             _%hd172672173175%_
                             _%tl172673173177%_
                             _%e172674173180%_
                             _%hd172675173183%_
                             _%tl172676173185%_
                             _%e172677173188%_
                             _%hd172678173191%_
                             _%tl172679173193%_)
                      (let ((_%L173196%_ _%hd172678173191%_)
                            (_%L173197%_ _%hd172669173167%_)
                            (_%L173198%_ _%hd172660173143%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173198%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173198%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp178124
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172540%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173197%_
                                    __tmp178124)))
                            (_%__kont177005177006%_
                             _%L173196%_
                             _%L173197%_
                             _%L173198%_)
                            (_%__match177494177495%_
                             _%e172650173116%_
                             _%hd172651173119%_
                             _%tl172652173121%_
                             _%e172653173124%_
                             _%hd172654173127%_
                             _%tl172655173129%_
                             _%e172656173132%_
                             _%hd172657173135%_
                             _%tl172658173137%_
                             _%e172659173140%_
                             _%hd172660173143%_
                             _%tl172661173145%_
                             _%e172662173148%_
                             _%hd172663173151%_
                             _%tl172664173153%_
                             _%e172665173156%_
                             _%hd172666173159%_
                             _%tl172667173161%_
                             _%e172668173164%_
                             _%hd172669173167%_
                             _%tl172670173169%_
                             _%e172671173172%_
                             _%hd172672173175%_
                             _%tl172673173177%_)))))
                   (_%__match177288177289%_
                    (lambda (_%e172650173116%_
                             _%hd172651173119%_
                             _%tl172652173121%_
                             _%e172653173124%_
                             _%hd172654173127%_
                             _%tl172655173129%_
                             _%e172656173132%_
                             _%hd172657173135%_
                             _%tl172658173137%_
                             _%e172659173140%_
                             _%hd172660173143%_
                             _%tl172661173145%_
                             _%e172662173148%_
                             _%hd172663173151%_
                             _%tl172664173153%_
                             _%e172665173156%_
                             _%hd172666173159%_
                             _%tl172667173161%_
                             _%e172668173164%_
                             _%hd172669173167%_
                             _%tl172670173169%_
                             _%e172671173172%_
                             _%hd172672173175%_
                             _%tl172673173177%_
                             _%e172674173180%_
                             _%hd172675173183%_
                             _%tl172676173185%_
                             _%e172677173188%_
                             _%hd172678173191%_
                             _%tl172679173193%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172673173177%_))
                          (_%__match177290177291%_
                           _%e172650173116%_
                           _%hd172651173119%_
                           _%tl172652173121%_
                           _%e172653173124%_
                           _%hd172654173127%_
                           _%tl172655173129%_
                           _%e172656173132%_
                           _%hd172657173135%_
                           _%tl172658173137%_
                           _%e172659173140%_
                           _%hd172660173143%_
                           _%tl172661173145%_
                           _%e172662173148%_
                           _%hd172663173151%_
                           _%tl172664173153%_
                           _%e172665173156%_
                           _%hd172666173159%_
                           _%tl172667173161%_
                           _%e172668173164%_
                           _%hd172669173167%_
                           _%tl172670173169%_
                           _%e172671173172%_
                           _%hd172672173175%_
                           _%tl172673173177%_
                           _%e172674173180%_
                           _%hd172675173183%_
                           _%tl172676173185%_
                           _%e172677173188%_
                           _%hd172678173191%_
                           _%tl172679173193%_)
                          (_%__match177368177369%_
                           _%e172650173116%_
                           _%hd172651173119%_
                           _%tl172652173121%_
                           _%e172653173124%_
                           _%hd172654173127%_
                           _%tl172655173129%_
                           _%e172656173132%_
                           _%hd172657173135%_
                           _%tl172658173137%_
                           _%e172659173140%_
                           _%hd172660173143%_
                           _%tl172661173145%_
                           _%e172662173148%_
                           _%hd172663173151%_
                           _%tl172664173153%_
                           _%e172665173156%_
                           _%hd172666173159%_
                           _%tl172667173161%_
                           _%e172668173164%_
                           _%hd172669173167%_
                           _%tl172670173169%_
                           _%e172671173172%_
                           _%hd172672173175%_
                           _%tl172673173177%_
                           _%e172674173180%_
                           _%hd172675173183%_
                           _%tl172676173185%_
                           _%e172677173188%_
                           _%hd172678173191%_
                           _%tl172679173193%_))))
                   (_%__match177278177279%_
                    (lambda (_%e172650173116%_
                             _%hd172651173119%_
                             _%tl172652173121%_
                             _%e172653173124%_
                             _%hd172654173127%_
                             _%tl172655173129%_
                             _%e172656173132%_
                             _%hd172657173135%_
                             _%tl172658173137%_
                             _%e172659173140%_
                             _%hd172660173143%_
                             _%tl172661173145%_
                             _%e172662173148%_
                             _%hd172663173151%_
                             _%tl172664173153%_
                             _%e172665173156%_
                             _%hd172666173159%_
                             _%tl172667173161%_
                             _%e172668173164%_
                             _%hd172669173167%_
                             _%tl172670173169%_
                             _%e172671173172%_
                             _%hd172672173175%_
                             _%tl172673173177%_
                             _%e172674173180%_
                             _%hd172675173183%_
                             _%tl172676173185%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd172675173183%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172676173185%_))
                              (let ((_%e172677173188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172676173185%_))))
                                (let ((_%tl172679173193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172677173188%_)))
                                      (_%hd172678173191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172677173188%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172679173193%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl172673173177%_))
                                          (_%__match177290177291%_
                                           _%e172650173116%_
                                           _%hd172651173119%_
                                           _%tl172652173121%_
                                           _%e172653173124%_
                                           _%hd172654173127%_
                                           _%tl172655173129%_
                                           _%e172656173132%_
                                           _%hd172657173135%_
                                           _%tl172658173137%_
                                           _%e172659173140%_
                                           _%hd172660173143%_
                                           _%tl172661173145%_
                                           _%e172662173148%_
                                           _%hd172663173151%_
                                           _%tl172664173153%_
                                           _%e172665173156%_
                                           _%hd172666173159%_
                                           _%tl172667173161%_
                                           _%e172668173164%_
                                           _%hd172669173167%_
                                           _%tl172670173169%_
                                           _%e172671173172%_
                                           _%hd172672173175%_
                                           _%tl172673173177%_
                                           _%e172674173180%_
                                           _%hd172675173183%_
                                           _%tl172676173185%_
                                           _%e172677173188%_
                                           _%hd172678173191%_
                                           _%tl172679173193%_)
                                          (_%__match177368177369%_
                                           _%e172650173116%_
                                           _%hd172651173119%_
                                           _%tl172652173121%_
                                           _%e172653173124%_
                                           _%hd172654173127%_
                                           _%tl172655173129%_
                                           _%e172656173132%_
                                           _%hd172657173135%_
                                           _%tl172658173137%_
                                           _%e172659173140%_
                                           _%hd172660173143%_
                                           _%tl172661173145%_
                                           _%e172662173148%_
                                           _%hd172663173151%_
                                           _%tl172664173153%_
                                           _%e172665173156%_
                                           _%hd172666173159%_
                                           _%tl172667173161%_
                                           _%e172668173164%_
                                           _%hd172669173167%_
                                           _%tl172670173169%_
                                           _%e172671173172%_
                                           _%hd172672173175%_
                                           _%tl172673173177%_
                                           _%e172674173180%_
                                           _%hd172675173183%_
                                           _%tl172676173185%_
                                           _%e172677173188%_
                                           _%hd172678173191%_
                                           _%tl172679173193%_))
                                      (_%__match177492177493%_
                                       _%e172650173116%_
                                       _%hd172651173119%_
                                       _%tl172652173121%_
                                       _%e172653173124%_
                                       _%hd172654173127%_
                                       _%tl172655173129%_
                                       _%e172656173132%_
                                       _%hd172657173135%_
                                       _%tl172658173137%_
                                       _%e172659173140%_
                                       _%hd172660173143%_
                                       _%tl172661173145%_
                                       _%e172662173148%_
                                       _%hd172663173151%_
                                       _%tl172664173153%_
                                       _%e172665173156%_
                                       _%hd172666173159%_
                                       _%tl172667173161%_
                                       _%e172668173164%_
                                       _%hd172669173167%_
                                       _%tl172670173169%_
                                       _%e172671173172%_
                                       _%hd172672173175%_
                                       _%tl172673173177%_))))
                              (_%__match177492177493%_
                               _%e172650173116%_
                               _%hd172651173119%_
                               _%tl172652173121%_
                               _%e172653173124%_
                               _%hd172654173127%_
                               _%tl172655173129%_
                               _%e172656173132%_
                               _%hd172657173135%_
                               _%tl172658173137%_
                               _%e172659173140%_
                               _%hd172660173143%_
                               _%tl172661173145%_
                               _%e172662173148%_
                               _%hd172663173151%_
                               _%tl172664173153%_
                               _%e172665173156%_
                               _%hd172666173159%_
                               _%tl172667173161%_
                               _%e172668173164%_
                               _%hd172669173167%_
                               _%tl172670173169%_
                               _%e172671173172%_
                               _%hd172672173175%_
                               _%tl172673173177%_))
                          (_%__match177492177493%_
                           _%e172650173116%_
                           _%hd172651173119%_
                           _%tl172652173121%_
                           _%e172653173124%_
                           _%hd172654173127%_
                           _%tl172655173129%_
                           _%e172656173132%_
                           _%hd172657173135%_
                           _%tl172658173137%_
                           _%e172659173140%_
                           _%hd172660173143%_
                           _%tl172661173145%_
                           _%e172662173148%_
                           _%hd172663173151%_
                           _%tl172664173153%_
                           _%e172665173156%_
                           _%hd172666173159%_
                           _%tl172667173161%_
                           _%e172668173164%_
                           _%hd172669173167%_
                           _%tl172670173169%_
                           _%e172671173172%_
                           _%hd172672173175%_
                           _%tl172673173177%_))))
                   (_%__match177210177211%_
                    (lambda (_%e172599173235%_
                             _%hd172600173238%_
                             _%tl172601173240%_
                             _%e172602173243%_
                             _%hd172603173246%_
                             _%tl172604173248%_
                             _%e172605173251%_
                             _%hd172606173254%_
                             _%tl172607173256%_
                             _%e172608173259%_
                             _%hd172609173262%_
                             _%tl172610173264%_
                             _%e172611173267%_
                             _%hd172612173270%_
                             _%tl172613173272%_
                             _%e172614173275%_
                             _%hd172615173278%_
                             _%tl172616173280%_
                             _%e172617173283%_
                             _%hd172618173286%_
                             _%tl172619173288%_
                             _%e172620173291%_
                             _%hd172621173294%_
                             _%tl172622173296%_
                             _%e172623173299%_
                             _%hd172624173302%_
                             _%tl172625173304%_
                             _%e172626173307%_
                             _%hd172627173310%_
                             _%tl172628173312%_
                             _%e172629173315%_
                             _%hd172630173318%_
                             _%tl172631173320%_
                             _%e172632173323%_
                             _%hd172633173326%_
                             _%tl172634173328%_
                             _%e172635173331%_
                             _%hd172636173334%_
                             _%tl172637173336%_
                             _%__splice177003177004%_
                             _%target172638173339%_
                             _%tl172640173341%_)
                      (letrec ((_%loop172641173344%_
                                (lambda (_%hd172639173347%_
                                         _%args172645173349%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172639173347%_))
                                      (let ((_%e172642173352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172639173347%_))))
                                        (let ((_%lp-tl172644173357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172642173352%_)))
                                              (_%lp-hd172643173355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172642173352%_))))
                                          (_%loop172641173344%_
                                           _%lp-tl172644173357%_
                                           (cons _%lp-hd172643173355%_
                                                 _%args172645173349%_))))
                                      (let ((_%args172646173360%_
                                             (reverse _%args172645173349%_)))
                                        (let ((_%L173363%_
                                               _%args172646173360%_)
                                              (_%L173364%_ _%hd172636173334%_)
                                              (_%L173365%_ _%hd172627173310%_)
                                              (_%L173366%_ _%hd172618173286%_)
                                              (_%L173367%_ _%hd172609173262%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173367%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173366%_
                                                      'call-method))
                                                   (let ((__tmp178125
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self172540%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L173365%_
                                                      __tmp178125)))
                                              (_%__kont177001177002%_
                                               _%L173363%_
                                               _%L173364%_
                                               _%L173365%_
                                               _%L173366%_
                                               _%L173367%_)
                                              (_%__kont177013177014%_))))))))
                        (_%loop172641173344%_ _%target172638173339%_ '()))))
                   (_%__match177168177169%_
                    (lambda (_%e172599173235%_
                             _%hd172600173238%_
                             _%tl172601173240%_
                             _%e172602173243%_
                             _%hd172603173246%_
                             _%tl172604173248%_
                             _%e172605173251%_
                             _%hd172606173254%_
                             _%tl172607173256%_
                             _%e172608173259%_
                             _%hd172609173262%_
                             _%tl172610173264%_
                             _%e172611173267%_
                             _%hd172612173270%_
                             _%tl172613173272%_
                             _%e172614173275%_
                             _%hd172615173278%_
                             _%tl172616173280%_
                             _%e172617173283%_
                             _%hd172618173286%_
                             _%tl172619173288%_
                             _%e172620173291%_
                             _%hd172621173294%_
                             _%tl172622173296%_
                             _%e172623173299%_
                             _%hd172624173302%_
                             _%tl172625173304%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd172624173302%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172625173304%_))
                              (let ((_%e172626173307%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172625173304%_))))
                                (let ((_%tl172628173312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172626173307%_)))
                                      (_%hd172627173310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172626173307%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172628173312%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl172622173296%_))
                                          (let ((_%e172629173315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl172622173296%_))))
                                            (let ((_%tl172631173320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172629173315%_)))
                                                  (_%hd172630173318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172629173315%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd172630173318%_))
                                                  (let ((_%e172632173323%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd172630173318%_))))
                                                    (let ((_%tl172634173328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172632173323%_)))
                                                          (_%hd172633173326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172632173323%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd172633173326%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd172633173326%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172634173328%_))
                          (let ((_%e172635173331%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172634173328%_))))
                            (let ((_%tl172637173336%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172635173331%_)))
                                  (_%hd172636173334%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172635173331%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172637173336%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl172631173320%_))
                                      (let ((_%__splice177003177004%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl172631173320%_
                                                '0))))
                                        (let ((_%tl172640173341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice177003177004%_
                                                  '1)))
                                              (_%target172638173339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice177003177004%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172640173341%_))
                                              (_%__match177210177211%_
                                               _%e172599173235%_
                                               _%hd172600173238%_
                                               _%tl172601173240%_
                                               _%e172602173243%_
                                               _%hd172603173246%_
                                               _%tl172604173248%_
                                               _%e172605173251%_
                                               _%hd172606173254%_
                                               _%tl172607173256%_
                                               _%e172608173259%_
                                               _%hd172609173262%_
                                               _%tl172610173264%_
                                               _%e172611173267%_
                                               _%hd172612173270%_
                                               _%tl172613173272%_
                                               _%e172614173275%_
                                               _%hd172615173278%_
                                               _%tl172616173280%_
                                               _%e172617173283%_
                                               _%hd172618173286%_
                                               _%tl172619173288%_
                                               _%e172620173291%_
                                               _%hd172621173294%_
                                               _%tl172622173296%_
                                               _%e172623173299%_
                                               _%hd172624173302%_
                                               _%tl172625173304%_
                                               _%e172626173307%_
                                               _%hd172627173310%_
                                               _%tl172628173312%_
                                               _%e172629173315%_
                                               _%hd172630173318%_
                                               _%tl172631173320%_
                                               _%e172632173323%_
                                               _%hd172633173326%_
                                               _%tl172634173328%_
                                               _%e172635173331%_
                                               _%hd172636173334%_
                                               _%tl172637173336%_
                                               _%__splice177003177004%_
                                               _%target172638173339%_
                                               _%tl172640173341%_)
                                              (_%__kont177013177014%_))))
                                      (_%__kont177013177014%_))
                                  (_%__kont177013177014%_))))
                          (_%__kont177013177014%_))
                      (_%__kont177013177014%_))
                  (_%__kont177013177014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177013177014%_))))
                                          (_%__match177492177493%_
                                           _%e172599173235%_
                                           _%hd172600173238%_
                                           _%tl172601173240%_
                                           _%e172602173243%_
                                           _%hd172603173246%_
                                           _%tl172604173248%_
                                           _%e172605173251%_
                                           _%hd172606173254%_
                                           _%tl172607173256%_
                                           _%e172608173259%_
                                           _%hd172609173262%_
                                           _%tl172610173264%_
                                           _%e172611173267%_
                                           _%hd172612173270%_
                                           _%tl172613173272%_
                                           _%e172614173275%_
                                           _%hd172615173278%_
                                           _%tl172616173280%_
                                           _%e172617173283%_
                                           _%hd172618173286%_
                                           _%tl172619173288%_
                                           _%e172620173291%_
                                           _%hd172621173294%_
                                           _%tl172622173296%_))
                                      (_%__match177492177493%_
                                       _%e172599173235%_
                                       _%hd172600173238%_
                                       _%tl172601173240%_
                                       _%e172602173243%_
                                       _%hd172603173246%_
                                       _%tl172604173248%_
                                       _%e172605173251%_
                                       _%hd172606173254%_
                                       _%tl172607173256%_
                                       _%e172608173259%_
                                       _%hd172609173262%_
                                       _%tl172610173264%_
                                       _%e172611173267%_
                                       _%hd172612173270%_
                                       _%tl172613173272%_
                                       _%e172614173275%_
                                       _%hd172615173278%_
                                       _%tl172616173280%_
                                       _%e172617173283%_
                                       _%hd172618173286%_
                                       _%tl172619173288%_
                                       _%e172620173291%_
                                       _%hd172621173294%_
                                       _%tl172622173296%_))))
                              (_%__match177492177493%_
                               _%e172599173235%_
                               _%hd172600173238%_
                               _%tl172601173240%_
                               _%e172602173243%_
                               _%hd172603173246%_
                               _%tl172604173248%_
                               _%e172605173251%_
                               _%hd172606173254%_
                               _%tl172607173256%_
                               _%e172608173259%_
                               _%hd172609173262%_
                               _%tl172610173264%_
                               _%e172611173267%_
                               _%hd172612173270%_
                               _%tl172613173272%_
                               _%e172614173275%_
                               _%hd172615173278%_
                               _%tl172616173280%_
                               _%e172617173283%_
                               _%hd172618173286%_
                               _%tl172619173288%_
                               _%e172620173291%_
                               _%hd172621173294%_
                               _%tl172622173296%_))
                          (_%__match177278177279%_
                           _%e172599173235%_
                           _%hd172600173238%_
                           _%tl172601173240%_
                           _%e172602173243%_
                           _%hd172603173246%_
                           _%tl172604173248%_
                           _%e172605173251%_
                           _%hd172606173254%_
                           _%tl172607173256%_
                           _%e172608173259%_
                           _%hd172609173262%_
                           _%tl172610173264%_
                           _%e172611173267%_
                           _%hd172612173270%_
                           _%tl172613173272%_
                           _%e172614173275%_
                           _%hd172615173278%_
                           _%tl172616173280%_
                           _%e172617173283%_
                           _%hd172618173286%_
                           _%tl172619173288%_
                           _%e172620173291%_
                           _%hd172621173294%_
                           _%tl172622173296%_
                           _%e172623173299%_
                           _%hd172624173302%_
                           _%tl172625173304%_))))
                   (_%__match177100177101%_
                    (lambda (_%e172555173424%_
                             _%hd172556173427%_
                             _%tl172557173429%_
                             _%e172558173432%_
                             _%hd172559173435%_
                             _%tl172560173437%_
                             _%e172561173440%_
                             _%hd172562173443%_
                             _%tl172563173445%_
                             _%e172564173448%_
                             _%hd172565173451%_
                             _%tl172566173453%_
                             _%e172567173456%_
                             _%hd172568173459%_
                             _%tl172569173461%_
                             _%e172570173464%_
                             _%hd172571173467%_
                             _%tl172572173469%_
                             _%e172573173472%_
                             _%hd172574173475%_
                             _%tl172575173477%_
                             _%e172576173480%_
                             _%hd172577173483%_
                             _%tl172578173485%_
                             _%e172579173488%_
                             _%hd172580173491%_
                             _%tl172581173493%_
                             _%e172582173496%_
                             _%hd172583173499%_
                             _%tl172584173501%_
                             _%__splice176999177000%_
                             _%target172585173504%_
                             _%tl172587173506%_)
                      (letrec ((_%loop172588173509%_
                                (lambda (_%hd172586173512%_
                                         _%args172592173514%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172586173512%_))
                                      (let ((_%e172589173517%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172586173512%_))))
                                        (let ((_%lp-tl172591173522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172589173517%_)))
                                              (_%lp-hd172590173520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172589173517%_))))
                                          (_%loop172588173509%_
                                           _%lp-tl172591173522%_
                                           (cons _%lp-hd172590173520%_
                                                 _%args172592173514%_))))
                                      (let ((_%args172593173525%_
                                             (reverse _%args172592173514%_)))
                                        (let ((_%L173528%_
                                               _%args172593173525%_)
                                              (_%L173529%_ _%hd172583173499%_)
                                              (_%L173530%_ _%hd172574173475%_)
                                              (_%L173531%_ _%hd172565173451%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173531%_
                                                      'call-method))
                                                   (let ((__tmp178126
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self172540%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L173530%_
                                                      __tmp178126)))
                                              (_%__kont176997176998%_
                                               _%L173528%_
                                               _%L173529%_
                                               _%L173530%_
                                               _%L173531%_)
                                              (_%__match177288177289%_
                                               _%e172555173424%_
                                               _%hd172556173427%_
                                               _%tl172557173429%_
                                               _%e172558173432%_
                                               _%hd172559173435%_
                                               _%tl172560173437%_
                                               _%e172561173440%_
                                               _%hd172562173443%_
                                               _%tl172563173445%_
                                               _%e172564173448%_
                                               _%hd172565173451%_
                                               _%tl172566173453%_
                                               _%e172567173456%_
                                               _%hd172568173459%_
                                               _%tl172569173461%_
                                               _%e172570173464%_
                                               _%hd172571173467%_
                                               _%tl172572173469%_
                                               _%e172573173472%_
                                               _%hd172574173475%_
                                               _%tl172575173477%_
                                               _%e172576173480%_
                                               _%hd172577173483%_
                                               _%tl172578173485%_
                                               _%e172579173488%_
                                               _%hd172580173491%_
                                               _%tl172581173493%_
                                               _%e172582173496%_
                                               _%hd172583173499%_
                                               _%tl172584173501%_))))))))
                        (_%loop172588173509%_ _%target172585173504%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx176995176996%_))
                  (let ((_%e172555173424%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx176995176996%_))))
                    (let ((_%tl172557173429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172555173424%_)))
                          (_%hd172556173427%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172555173424%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172557173429%_))
                          (let ((_%e172558173432%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172557173429%_))))
                            (let ((_%tl172560173437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172558173432%_)))
                                  (_%hd172559173435%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172558173432%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd172559173435%_))
                                  (let ((_%e172561173440%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd172559173435%_))))
                                    (let ((_%tl172563173445%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e172561173440%_)))
                                          (_%hd172562173443%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e172561173440%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd172562173443%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd172562173443%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl172563173445%_))
                                                  (let ((_%e172564173448%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl172563173445%_))))
                                                    (let ((_%tl172566173453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172564173448%_)))
                                                          (_%hd172565173451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172564173448%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl172566173453%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl172560173437%_))
                      (let ((_%e172567173456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl172560173437%_))))
                        (let ((_%tl172569173461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172567173456%_)))
                              (_%hd172568173459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172567173456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd172568173459%_))
                              (let ((_%e172570173464%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd172568173459%_))))
                                (let ((_%tl172572173469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172570173464%_)))
                                      (_%hd172571173467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172570173464%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd172571173467%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd172571173467%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl172572173469%_))
                                              (let ((_%e172573173472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl172572173469%_))))
                                                (let ((_%tl172575173477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e172573173472%_)))
                                                      (_%hd172574173475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e172573173472%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl172575173477%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl172569173461%_))
                                                          (let ((_%e172576173480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl172569173461%_))))
                    (let ((_%tl172578173485%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172576173480%_)))
                          (_%hd172577173483%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172576173480%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd172577173483%_))
                          (let ((_%e172579173488%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd172577173483%_))))
                            (let ((_%tl172581173493%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172579173488%_)))
                                  (_%hd172580173491%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172579173488%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd172580173491%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd172580173491%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl172581173493%_))
                                          (let ((_%e172582173496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl172581173493%_))))
                                            (let ((_%tl172584173501%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172582173496%_)))
                                                  (_%hd172583173499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172582173496%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl172584173501%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl172578173485%_))
                                                      (let ((_%__splice176999177000%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl172578173485%_ '0))))
                (let ((_%tl172587173506%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice176999177000%_ '1)))
                      (_%target172585173504%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice176999177000%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl172587173506%_))
                      (_%__match177100177101%_
                       _%e172555173424%_
                       _%hd172556173427%_
                       _%tl172557173429%_
                       _%e172558173432%_
                       _%hd172559173435%_
                       _%tl172560173437%_
                       _%e172561173440%_
                       _%hd172562173443%_
                       _%tl172563173445%_
                       _%e172564173448%_
                       _%hd172565173451%_
                       _%tl172566173453%_
                       _%e172567173456%_
                       _%hd172568173459%_
                       _%tl172569173461%_
                       _%e172570173464%_
                       _%hd172571173467%_
                       _%tl172572173469%_
                       _%e172573173472%_
                       _%hd172574173475%_
                       _%tl172575173477%_
                       _%e172576173480%_
                       _%hd172577173483%_
                       _%tl172578173485%_
                       _%e172579173488%_
                       _%hd172580173491%_
                       _%tl172581173493%_
                       _%e172582173496%_
                       _%hd172583173499%_
                       _%tl172584173501%_
                       _%__splice176999177000%_
                       _%target172585173504%_
                       _%tl172587173506%_)
                      (_%__match177288177289%_
                       _%e172555173424%_
                       _%hd172556173427%_
                       _%tl172557173429%_
                       _%e172558173432%_
                       _%hd172559173435%_
                       _%tl172560173437%_
                       _%e172561173440%_
                       _%hd172562173443%_
                       _%tl172563173445%_
                       _%e172564173448%_
                       _%hd172565173451%_
                       _%tl172566173453%_
                       _%e172567173456%_
                       _%hd172568173459%_
                       _%tl172569173461%_
                       _%e172570173464%_
                       _%hd172571173467%_
                       _%tl172572173469%_
                       _%e172573173472%_
                       _%hd172574173475%_
                       _%tl172575173477%_
                       _%e172576173480%_
                       _%hd172577173483%_
                       _%tl172578173485%_
                       _%e172579173488%_
                       _%hd172580173491%_
                       _%tl172581173493%_
                       _%e172582173496%_
                       _%hd172583173499%_
                       _%tl172584173501%_))))
              (_%__match177288177289%_
               _%e172555173424%_
               _%hd172556173427%_
               _%tl172557173429%_
               _%e172558173432%_
               _%hd172559173435%_
               _%tl172560173437%_
               _%e172561173440%_
               _%hd172562173443%_
               _%tl172563173445%_
               _%e172564173448%_
               _%hd172565173451%_
               _%tl172566173453%_
               _%e172567173456%_
               _%hd172568173459%_
               _%tl172569173461%_
               _%e172570173464%_
               _%hd172571173467%_
               _%tl172572173469%_
               _%e172573173472%_
               _%hd172574173475%_
               _%tl172575173477%_
               _%e172576173480%_
               _%hd172577173483%_
               _%tl172578173485%_
               _%e172579173488%_
               _%hd172580173491%_
               _%tl172581173493%_
               _%e172582173496%_
               _%hd172583173499%_
               _%tl172584173501%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match177492177493%_
                                                   _%e172555173424%_
                                                   _%hd172556173427%_
                                                   _%tl172557173429%_
                                                   _%e172558173432%_
                                                   _%hd172559173435%_
                                                   _%tl172560173437%_
                                                   _%e172561173440%_
                                                   _%hd172562173443%_
                                                   _%tl172563173445%_
                                                   _%e172564173448%_
                                                   _%hd172565173451%_
                                                   _%tl172566173453%_
                                                   _%e172567173456%_
                                                   _%hd172568173459%_
                                                   _%tl172569173461%_
                                                   _%e172570173464%_
                                                   _%hd172571173467%_
                                                   _%tl172572173469%_
                                                   _%e172573173472%_
                                                   _%hd172574173475%_
                                                   _%tl172575173477%_
                                                   _%e172576173480%_
                                                   _%hd172577173483%_
                                                   _%tl172578173485%_))))
                                          (_%__match177492177493%_
                                           _%e172555173424%_
                                           _%hd172556173427%_
                                           _%tl172557173429%_
                                           _%e172558173432%_
                                           _%hd172559173435%_
                                           _%tl172560173437%_
                                           _%e172561173440%_
                                           _%hd172562173443%_
                                           _%tl172563173445%_
                                           _%e172564173448%_
                                           _%hd172565173451%_
                                           _%tl172566173453%_
                                           _%e172567173456%_
                                           _%hd172568173459%_
                                           _%tl172569173461%_
                                           _%e172570173464%_
                                           _%hd172571173467%_
                                           _%tl172572173469%_
                                           _%e172573173472%_
                                           _%hd172574173475%_
                                           _%tl172575173477%_
                                           _%e172576173480%_
                                           _%hd172577173483%_
                                           _%tl172578173485%_))
                                      (_%__match177168177169%_
                                       _%e172555173424%_
                                       _%hd172556173427%_
                                       _%tl172557173429%_
                                       _%e172558173432%_
                                       _%hd172559173435%_
                                       _%tl172560173437%_
                                       _%e172561173440%_
                                       _%hd172562173443%_
                                       _%tl172563173445%_
                                       _%e172564173448%_
                                       _%hd172565173451%_
                                       _%tl172566173453%_
                                       _%e172567173456%_
                                       _%hd172568173459%_
                                       _%tl172569173461%_
                                       _%e172570173464%_
                                       _%hd172571173467%_
                                       _%tl172572173469%_
                                       _%e172573173472%_
                                       _%hd172574173475%_
                                       _%tl172575173477%_
                                       _%e172576173480%_
                                       _%hd172577173483%_
                                       _%tl172578173485%_
                                       _%e172579173488%_
                                       _%hd172580173491%_
                                       _%tl172581173493%_))
                                  (_%__match177492177493%_
                                   _%e172555173424%_
                                   _%hd172556173427%_
                                   _%tl172557173429%_
                                   _%e172558173432%_
                                   _%hd172559173435%_
                                   _%tl172560173437%_
                                   _%e172561173440%_
                                   _%hd172562173443%_
                                   _%tl172563173445%_
                                   _%e172564173448%_
                                   _%hd172565173451%_
                                   _%tl172566173453%_
                                   _%e172567173456%_
                                   _%hd172568173459%_
                                   _%tl172569173461%_
                                   _%e172570173464%_
                                   _%hd172571173467%_
                                   _%tl172572173469%_
                                   _%e172573173472%_
                                   _%hd172574173475%_
                                   _%tl172575173477%_
                                   _%e172576173480%_
                                   _%hd172577173483%_
                                   _%tl172578173485%_))))
                          (_%__match177492177493%_
                           _%e172555173424%_
                           _%hd172556173427%_
                           _%tl172557173429%_
                           _%e172558173432%_
                           _%hd172559173435%_
                           _%tl172560173437%_
                           _%e172561173440%_
                           _%hd172562173443%_
                           _%tl172563173445%_
                           _%e172564173448%_
                           _%hd172565173451%_
                           _%tl172566173453%_
                           _%e172567173456%_
                           _%hd172568173459%_
                           _%tl172569173461%_
                           _%e172570173464%_
                           _%hd172571173467%_
                           _%tl172572173469%_
                           _%e172573173472%_
                           _%hd172574173475%_
                           _%tl172575173477%_
                           _%e172576173480%_
                           _%hd172577173483%_
                           _%tl172578173485%_))))
                  (_%__match177430177431%_
                   _%e172555173424%_
                   _%hd172556173427%_
                   _%tl172557173429%_
                   _%e172558173432%_
                   _%hd172559173435%_
                   _%tl172560173437%_
                   _%e172561173440%_
                   _%hd172562173443%_
                   _%tl172563173445%_
                   _%e172564173448%_
                   _%hd172565173451%_
                   _%tl172566173453%_
                   _%e172567173456%_
                   _%hd172568173459%_
                   _%tl172569173461%_
                   _%e172570173464%_
                   _%hd172571173467%_
                   _%tl172572173469%_
                   _%e172573173472%_
                   _%hd172574173475%_
                   _%tl172575173477%_))
              (_%__kont177013177014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont177013177014%_))
                                          (_%__kont177013177014%_))
                                      (_%__kont177013177014%_))))
                              (_%__kont177013177014%_))))
                      (_%__kont177013177014%_))
                  (_%__kont177013177014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont177013177014%_))
                                              (_%__kont177013177014%_))
                                          (_%__kont177013177014%_))))
                                  (_%__kont177013177014%_))))
                          (_%__kont177013177014%_))))
                  (_%__kont177013177014%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self171479%_ _%stx171480%_)
        (letrec ((_%force-e171482%_
                  (lambda (_%target172538%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target172538%_ '()))
                                      '()))))))
          (let* ((_%__stx177497177498%_ _%stx171480%_)
                 (_%g171490171712%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx177497177498%_)))))
            (let ((_%__kont177499177500%_
                   (lambda (_%L172484%_ _%L172485%_ _%L172486%_ _%L172487%_)
                     (let ((_%$method172532%_
                            (let ((__tmp178128
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171479%_ 'methods)))
                                  (__tmp178127
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172485%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178128 __tmp178127)))
                           (_%args172533%_
                            (map (lambda (_%g172520172522%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self171479%_
                                      _%g172520172522%_)))
                                 (let ((__tmp178129
                                        (lambda (_%g172524172527%_
                                                 _%g172525172529%_)
                                          (cons _%g172524172527%_
                                                _%g172525172529%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp178129 '() _%L172484%_)))))
                       (let ((__tmp178130
                              (cons '%#call
                                    (cons (_%force-e171482%_ _%$method172532%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171479%_
                                                               'receiver))
                                                            '()))
                                                _%args172533%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178130 _%stx171480%_)))))
                  (_%__kont177503177504%_
                   (lambda (_%L172316%_
                            _%L172317%_
                            _%L172318%_
                            _%L172319%_
                            _%L172320%_)
                     (let ((_%$method172372%_
                            (let ((__tmp178132
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171479%_ 'methods)))
                                  (__tmp178131
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172317%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178132 __tmp178131)))
                           (_%args172373%_
                            (map (lambda (_%g172360172362%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self171479%_
                                      _%g172360172362%_)))
                                 (let ((__tmp178133
                                        (lambda (_%g172364172367%_
                                                 _%g172365172369%_)
                                          (cons _%g172364172367%_
                                                _%g172365172369%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp178133 '() _%L172316%_)))))
                       (let ((__tmp178134
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e171482%_
                                                 _%$method172372%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self171479%_ 'receiver))
                          '()))
              _%args172373%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178134 _%stx171480%_)))))
                  (_%__kont177507177508%_
                   (lambda (_%L172147%_ _%L172148%_ _%L172149%_)
                     (let* ((_%$field172181%_
                             (let ((__tmp178136
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self171479%_ 'slots)))
                                   (__tmp178135
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L172147%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp178136 __tmp178135)))
                            (__tmp178137
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171479%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field172181%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self171479%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp178137 _%stx171480%_))))
                  (_%__kont177509177510%_
                   (lambda (_%L172021%_ _%L172022%_ _%L172023%_ _%L172024%_)
                     (let ((_%$field172059%_
                            (let ((__tmp178139
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171479%_ 'slots)))
                                  (__tmp178138
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172022%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178139 __tmp178138)))
                           (_%expr172060%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self171479%_ _%L172021%_))))
                       (let ((__tmp178140
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self171479%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field172059%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self171479%_ 'receiver))
                          '()))
              (cons _%expr172060%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178140 _%stx171480%_)))))
                  (_%__kont177511177512%_
                   (lambda (_%L171893%_ _%L171894%_)
                     (let* ((_%accessor171916%_
                             (let ((__tmp178141
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171894%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp178141)))
                            (_%klass171918%_
                             (let ((__tmp178142
                                    (##structure-ref
                                     _%accessor171916%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx171480%_
                                __tmp178142)))
                            (_%slot171920%_
                             (##structure-ref
                              _%accessor171916%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor171916%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass171918%_
                                      _%slot171920%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass171918%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx171480%_
                           (let* ((_%$field171926%_
                                   (let ((__tmp178143
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171479%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp178143 _%slot171920%_)))
                                  (__tmp178144
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self171479%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field171926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self171479%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp178144
                              _%stx171480%_))))))
                  (_%__kont177513177514%_
                   (lambda (_%L171788%_ _%L171789%_ _%L171790%_)
                     (let* ((_%mutator171818%_
                             (let ((__tmp178145
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171790%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp178145)))
                            (_%klass171820%_
                             (let ((__tmp178146
                                    (##structure-ref
                                     _%mutator171818%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx171480%_
                                __tmp178146)))
                            (_%slot171822%_
                             (##structure-ref
                              _%mutator171818%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr171824%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self171479%_ _%L171788%_))))
                       (if (if (##structure-ref
                                _%mutator171818%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass171820%_
                                      _%slot171822%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass171820%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp178147
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L171790%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L171789%_
                                                                '()))
                                                    (cons _%expr171824%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp178147 _%stx171480%_))
                           (let* ((_%$field171830%_
                                   (let ((__tmp178148
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171479%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp178148 _%slot171822%_)))
                                  (__tmp178149
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self171479%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field171830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self171479%_ 'receiver))
                               '()))
                   (cons _%expr171824%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp178149
                              _%stx171480%_))))))
                  (_%__kont177515177516%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self171479%_ _%stx171480%_)))))
              (let* ((_%__match177996177997%_
                      (lambda (_%e171684171724%_
                               _%hd171685171727%_
                               _%tl171686171729%_
                               _%e171687171732%_
                               _%hd171688171735%_
                               _%tl171689171737%_
                               _%e171690171740%_
                               _%hd171691171743%_
                               _%tl171692171745%_
                               _%e171693171748%_
                               _%hd171694171751%_
                               _%tl171695171753%_
                               _%e171696171756%_
                               _%hd171697171759%_
                               _%tl171698171761%_
                               _%e171699171764%_
                               _%hd171700171767%_
                               _%tl171701171769%_
                               _%e171702171772%_
                               _%hd171703171775%_
                               _%tl171704171777%_
                               _%e171705171780%_
                               _%hd171706171783%_
                               _%tl171707171785%_)
                        (let ((_%L171788%_ _%hd171706171783%_)
                              (_%L171789%_ _%hd171703171775%_)
                              (_%L171790%_ _%hd171694171751%_))
                          (if (and (let ((__tmp178150
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171479%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171789%_
                                      __tmp178150))
                                   (let ((__tmp178151
                                          (let ((__tmp178152
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L171790%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp178152))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp178151
                                      'gxc#!mutator::t)))
                              (_%__kont177513177514%_
                               _%L171788%_
                               _%L171789%_
                               _%L171790%_)
                              (_%__kont177515177516%_)))))
                     (_%__match177994177995%_
                      (lambda (_%e171684171724%_
                               _%hd171685171727%_
                               _%tl171686171729%_
                               _%e171687171732%_
                               _%hd171688171735%_
                               _%tl171689171737%_
                               _%e171690171740%_
                               _%hd171691171743%_
                               _%tl171692171745%_
                               _%e171693171748%_
                               _%hd171694171751%_
                               _%tl171695171753%_
                               _%e171696171756%_
                               _%hd171697171759%_
                               _%tl171698171761%_
                               _%e171699171764%_
                               _%hd171700171767%_
                               _%tl171701171769%_
                               _%e171702171772%_
                               _%hd171703171775%_
                               _%tl171704171777%_
                               _%e171705171780%_
                               _%hd171706171783%_
                               _%tl171707171785%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171707171785%_))
                            (_%__match177996177997%_
                             _%e171684171724%_
                             _%hd171685171727%_
                             _%tl171686171729%_
                             _%e171687171732%_
                             _%hd171688171735%_
                             _%tl171689171737%_
                             _%e171690171740%_
                             _%hd171691171743%_
                             _%tl171692171745%_
                             _%e171693171748%_
                             _%hd171694171751%_
                             _%tl171695171753%_
                             _%e171696171756%_
                             _%hd171697171759%_
                             _%tl171698171761%_
                             _%e171699171764%_
                             _%hd171700171767%_
                             _%tl171701171769%_
                             _%e171702171772%_
                             _%hd171703171775%_
                             _%tl171704171777%_
                             _%e171705171780%_
                             _%hd171706171783%_
                             _%tl171707171785%_)
                            (_%__kont177515177516%_))))
                     (_%__match177988177989%_
                      (lambda (_%e171684171724%_
                               _%hd171685171727%_
                               _%tl171686171729%_
                               _%e171687171732%_
                               _%hd171688171735%_
                               _%tl171689171737%_
                               _%e171690171740%_
                               _%hd171691171743%_
                               _%tl171692171745%_
                               _%e171693171748%_
                               _%hd171694171751%_
                               _%tl171695171753%_
                               _%e171696171756%_
                               _%hd171697171759%_
                               _%tl171698171761%_
                               _%e171699171764%_
                               _%hd171700171767%_
                               _%tl171701171769%_
                               _%e171702171772%_
                               _%hd171703171775%_
                               _%tl171704171777%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171698171761%_))
                            (let ((_%e171705171780%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171698171761%_))))
                              (let ((_%tl171707171785%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171705171780%_)))
                                    (_%hd171706171783%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171705171780%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171707171785%_))
                                    (_%__match177996177997%_
                                     _%e171684171724%_
                                     _%hd171685171727%_
                                     _%tl171686171729%_
                                     _%e171687171732%_
                                     _%hd171688171735%_
                                     _%tl171689171737%_
                                     _%e171690171740%_
                                     _%hd171691171743%_
                                     _%tl171692171745%_
                                     _%e171693171748%_
                                     _%hd171694171751%_
                                     _%tl171695171753%_
                                     _%e171696171756%_
                                     _%hd171697171759%_
                                     _%tl171698171761%_
                                     _%e171699171764%_
                                     _%hd171700171767%_
                                     _%tl171701171769%_
                                     _%e171702171772%_
                                     _%hd171703171775%_
                                     _%tl171704171777%_
                                     _%e171705171780%_
                                     _%hd171706171783%_
                                     _%tl171707171785%_)
                                    (_%__kont177515177516%_))))
                            (_%__kont177515177516%_))))
                     (_%__match177934177935%_
                      (lambda (_%e171660171837%_
                               _%hd171661171840%_
                               _%tl171662171842%_
                               _%e171663171845%_
                               _%hd171664171848%_
                               _%tl171665171850%_
                               _%e171666171853%_
                               _%hd171667171856%_
                               _%tl171668171858%_
                               _%e171669171861%_
                               _%hd171670171864%_
                               _%tl171671171866%_
                               _%e171672171869%_
                               _%hd171673171872%_
                               _%tl171674171874%_
                               _%e171675171877%_
                               _%hd171676171880%_
                               _%tl171677171882%_
                               _%e171678171885%_
                               _%hd171679171888%_
                               _%tl171680171890%_)
                        (let ((_%L171893%_ _%hd171679171888%_)
                              (_%L171894%_ _%hd171670171864%_))
                          (if (and (let ((__tmp178153
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171479%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171893%_
                                      __tmp178153))
                                   (let ((__tmp178154
                                          (let ((__tmp178155
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L171894%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp178155))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp178154
                                      'gxc#!accessor::t)))
                              (_%__kont177511177512%_ _%L171893%_ _%L171894%_)
                              (_%__kont177515177516%_)))))
                     (_%__match177932177933%_
                      (lambda (_%e171660171837%_
                               _%hd171661171840%_
                               _%tl171662171842%_
                               _%e171663171845%_
                               _%hd171664171848%_
                               _%tl171665171850%_
                               _%e171666171853%_
                               _%hd171667171856%_
                               _%tl171668171858%_
                               _%e171669171861%_
                               _%hd171670171864%_
                               _%tl171671171866%_
                               _%e171672171869%_
                               _%hd171673171872%_
                               _%tl171674171874%_
                               _%e171675171877%_
                               _%hd171676171880%_
                               _%tl171677171882%_
                               _%e171678171885%_
                               _%hd171679171888%_
                               _%tl171680171890%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171674171874%_))
                            (_%__match177934177935%_
                             _%e171660171837%_
                             _%hd171661171840%_
                             _%tl171662171842%_
                             _%e171663171845%_
                             _%hd171664171848%_
                             _%tl171665171850%_
                             _%e171666171853%_
                             _%hd171667171856%_
                             _%tl171668171858%_
                             _%e171669171861%_
                             _%hd171670171864%_
                             _%tl171671171866%_
                             _%e171672171869%_
                             _%hd171673171872%_
                             _%tl171674171874%_
                             _%e171675171877%_
                             _%hd171676171880%_
                             _%tl171677171882%_
                             _%e171678171885%_
                             _%hd171679171888%_
                             _%tl171680171890%_)
                            (_%__match177988177989%_
                             _%e171660171837%_
                             _%hd171661171840%_
                             _%tl171662171842%_
                             _%e171663171845%_
                             _%hd171664171848%_
                             _%tl171665171850%_
                             _%e171666171853%_
                             _%hd171667171856%_
                             _%tl171668171858%_
                             _%e171669171861%_
                             _%hd171670171864%_
                             _%tl171671171866%_
                             _%e171672171869%_
                             _%hd171673171872%_
                             _%tl171674171874%_
                             _%e171675171877%_
                             _%hd171676171880%_
                             _%tl171677171882%_
                             _%e171678171885%_
                             _%hd171679171888%_
                             _%tl171680171890%_))))
                     (_%__match177878177879%_
                      (lambda (_%e171625171933%_
                               _%hd171626171936%_
                               _%tl171627171938%_
                               _%e171628171941%_
                               _%hd171629171944%_
                               _%tl171630171946%_
                               _%e171631171949%_
                               _%hd171632171952%_
                               _%tl171633171954%_
                               _%e171634171957%_
                               _%hd171635171960%_
                               _%tl171636171962%_
                               _%e171637171965%_
                               _%hd171638171968%_
                               _%tl171639171970%_
                               _%e171640171973%_
                               _%hd171641171976%_
                               _%tl171642171978%_
                               _%e171643171981%_
                               _%hd171644171984%_
                               _%tl171645171986%_
                               _%e171646171989%_
                               _%hd171647171992%_
                               _%tl171648171994%_
                               _%e171649171997%_
                               _%hd171650172000%_
                               _%tl171651172002%_
                               _%e171652172005%_
                               _%hd171653172008%_
                               _%tl171654172010%_
                               _%e171655172013%_
                               _%hd171656172016%_
                               _%tl171657172018%_)
                        (let ((_%L172021%_ _%hd171656172016%_)
                              (_%L172022%_ _%hd171653172008%_)
                              (_%L172023%_ _%hd171644171984%_)
                              (_%L172024%_ _%hd171635171960%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172024%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172024%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp178156
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171479%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172023%_
                                      __tmp178156)))
                              (_%__kont177509177510%_
                               _%L172021%_
                               _%L172022%_
                               _%L172023%_
                               _%L172024%_)
                              (_%__kont177515177516%_)))))
                     (_%__match177870177871%_
                      (lambda (_%e171625171933%_
                               _%hd171626171936%_
                               _%tl171627171938%_
                               _%e171628171941%_
                               _%hd171629171944%_
                               _%tl171630171946%_
                               _%e171631171949%_
                               _%hd171632171952%_
                               _%tl171633171954%_
                               _%e171634171957%_
                               _%hd171635171960%_
                               _%tl171636171962%_
                               _%e171637171965%_
                               _%hd171638171968%_
                               _%tl171639171970%_
                               _%e171640171973%_
                               _%hd171641171976%_
                               _%tl171642171978%_
                               _%e171643171981%_
                               _%hd171644171984%_
                               _%tl171645171986%_
                               _%e171646171989%_
                               _%hd171647171992%_
                               _%tl171648171994%_
                               _%e171649171997%_
                               _%hd171650172000%_
                               _%tl171651172002%_
                               _%e171652172005%_
                               _%hd171653172008%_
                               _%tl171654172010%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171648171994%_))
                            (let ((_%e171655172013%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171648171994%_))))
                              (let ((_%tl171657172018%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171655172013%_)))
                                    (_%hd171656172016%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171655172013%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171657172018%_))
                                    (_%__match177878177879%_
                                     _%e171625171933%_
                                     _%hd171626171936%_
                                     _%tl171627171938%_
                                     _%e171628171941%_
                                     _%hd171629171944%_
                                     _%tl171630171946%_
                                     _%e171631171949%_
                                     _%hd171632171952%_
                                     _%tl171633171954%_
                                     _%e171634171957%_
                                     _%hd171635171960%_
                                     _%tl171636171962%_
                                     _%e171637171965%_
                                     _%hd171638171968%_
                                     _%tl171639171970%_
                                     _%e171640171973%_
                                     _%hd171641171976%_
                                     _%tl171642171978%_
                                     _%e171643171981%_
                                     _%hd171644171984%_
                                     _%tl171645171986%_
                                     _%e171646171989%_
                                     _%hd171647171992%_
                                     _%tl171648171994%_
                                     _%e171649171997%_
                                     _%hd171650172000%_
                                     _%tl171651172002%_
                                     _%e171652172005%_
                                     _%hd171653172008%_
                                     _%tl171654172010%_
                                     _%e171655172013%_
                                     _%hd171656172016%_
                                     _%tl171657172018%_)
                                    (_%__kont177515177516%_))))
                            (_%__match177994177995%_
                             _%e171625171933%_
                             _%hd171626171936%_
                             _%tl171627171938%_
                             _%e171628171941%_
                             _%hd171629171944%_
                             _%tl171630171946%_
                             _%e171631171949%_
                             _%hd171632171952%_
                             _%tl171633171954%_
                             _%e171634171957%_
                             _%hd171635171960%_
                             _%tl171636171962%_
                             _%e171637171965%_
                             _%hd171638171968%_
                             _%tl171639171970%_
                             _%e171640171973%_
                             _%hd171641171976%_
                             _%tl171642171978%_
                             _%e171643171981%_
                             _%hd171644171984%_
                             _%tl171645171986%_
                             _%e171646171989%_
                             _%hd171647171992%_
                             _%tl171648171994%_))))
                     (_%__match177792177793%_
                      (lambda (_%e171591172067%_
                               _%hd171592172070%_
                               _%tl171593172072%_
                               _%e171594172075%_
                               _%hd171595172078%_
                               _%tl171596172080%_
                               _%e171597172083%_
                               _%hd171598172086%_
                               _%tl171599172088%_
                               _%e171600172091%_
                               _%hd171601172094%_
                               _%tl171602172096%_
                               _%e171603172099%_
                               _%hd171604172102%_
                               _%tl171605172104%_
                               _%e171606172107%_
                               _%hd171607172110%_
                               _%tl171608172112%_
                               _%e171609172115%_
                               _%hd171610172118%_
                               _%tl171611172120%_
                               _%e171612172123%_
                               _%hd171613172126%_
                               _%tl171614172128%_
                               _%e171615172131%_
                               _%hd171616172134%_
                               _%tl171617172136%_
                               _%e171618172139%_
                               _%hd171619172142%_
                               _%tl171620172144%_)
                        (let ((_%L172147%_ _%hd171619172142%_)
                              (_%L172148%_ _%hd171610172118%_)
                              (_%L172149%_ _%hd171601172094%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172149%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172149%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp178157
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171479%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172148%_
                                      __tmp178157)))
                              (_%__kont177507177508%_
                               _%L172147%_
                               _%L172148%_
                               _%L172149%_)
                              (_%__match177996177997%_
                               _%e171591172067%_
                               _%hd171592172070%_
                               _%tl171593172072%_
                               _%e171594172075%_
                               _%hd171595172078%_
                               _%tl171596172080%_
                               _%e171597172083%_
                               _%hd171598172086%_
                               _%tl171599172088%_
                               _%e171600172091%_
                               _%hd171601172094%_
                               _%tl171602172096%_
                               _%e171603172099%_
                               _%hd171604172102%_
                               _%tl171605172104%_
                               _%e171606172107%_
                               _%hd171607172110%_
                               _%tl171608172112%_
                               _%e171609172115%_
                               _%hd171610172118%_
                               _%tl171611172120%_
                               _%e171612172123%_
                               _%hd171613172126%_
                               _%tl171614172128%_)))))
                     (_%__match177790177791%_
                      (lambda (_%e171591172067%_
                               _%hd171592172070%_
                               _%tl171593172072%_
                               _%e171594172075%_
                               _%hd171595172078%_
                               _%tl171596172080%_
                               _%e171597172083%_
                               _%hd171598172086%_
                               _%tl171599172088%_
                               _%e171600172091%_
                               _%hd171601172094%_
                               _%tl171602172096%_
                               _%e171603172099%_
                               _%hd171604172102%_
                               _%tl171605172104%_
                               _%e171606172107%_
                               _%hd171607172110%_
                               _%tl171608172112%_
                               _%e171609172115%_
                               _%hd171610172118%_
                               _%tl171611172120%_
                               _%e171612172123%_
                               _%hd171613172126%_
                               _%tl171614172128%_
                               _%e171615172131%_
                               _%hd171616172134%_
                               _%tl171617172136%_
                               _%e171618172139%_
                               _%hd171619172142%_
                               _%tl171620172144%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171614172128%_))
                            (_%__match177792177793%_
                             _%e171591172067%_
                             _%hd171592172070%_
                             _%tl171593172072%_
                             _%e171594172075%_
                             _%hd171595172078%_
                             _%tl171596172080%_
                             _%e171597172083%_
                             _%hd171598172086%_
                             _%tl171599172088%_
                             _%e171600172091%_
                             _%hd171601172094%_
                             _%tl171602172096%_
                             _%e171603172099%_
                             _%hd171604172102%_
                             _%tl171605172104%_
                             _%e171606172107%_
                             _%hd171607172110%_
                             _%tl171608172112%_
                             _%e171609172115%_
                             _%hd171610172118%_
                             _%tl171611172120%_
                             _%e171612172123%_
                             _%hd171613172126%_
                             _%tl171614172128%_
                             _%e171615172131%_
                             _%hd171616172134%_
                             _%tl171617172136%_
                             _%e171618172139%_
                             _%hd171619172142%_
                             _%tl171620172144%_)
                            (_%__match177870177871%_
                             _%e171591172067%_
                             _%hd171592172070%_
                             _%tl171593172072%_
                             _%e171594172075%_
                             _%hd171595172078%_
                             _%tl171596172080%_
                             _%e171597172083%_
                             _%hd171598172086%_
                             _%tl171599172088%_
                             _%e171600172091%_
                             _%hd171601172094%_
                             _%tl171602172096%_
                             _%e171603172099%_
                             _%hd171604172102%_
                             _%tl171605172104%_
                             _%e171606172107%_
                             _%hd171607172110%_
                             _%tl171608172112%_
                             _%e171609172115%_
                             _%hd171610172118%_
                             _%tl171611172120%_
                             _%e171612172123%_
                             _%hd171613172126%_
                             _%tl171614172128%_
                             _%e171615172131%_
                             _%hd171616172134%_
                             _%tl171617172136%_
                             _%e171618172139%_
                             _%hd171619172142%_
                             _%tl171620172144%_))))
                     (_%__match177780177781%_
                      (lambda (_%e171591172067%_
                               _%hd171592172070%_
                               _%tl171593172072%_
                               _%e171594172075%_
                               _%hd171595172078%_
                               _%tl171596172080%_
                               _%e171597172083%_
                               _%hd171598172086%_
                               _%tl171599172088%_
                               _%e171600172091%_
                               _%hd171601172094%_
                               _%tl171602172096%_
                               _%e171603172099%_
                               _%hd171604172102%_
                               _%tl171605172104%_
                               _%e171606172107%_
                               _%hd171607172110%_
                               _%tl171608172112%_
                               _%e171609172115%_
                               _%hd171610172118%_
                               _%tl171611172120%_
                               _%e171612172123%_
                               _%hd171613172126%_
                               _%tl171614172128%_
                               _%e171615172131%_
                               _%hd171616172134%_
                               _%tl171617172136%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd171616172134%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171617172136%_))
                                (let ((_%e171618172139%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171617172136%_))))
                                  (let ((_%tl171620172144%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171618172139%_)))
                                        (_%hd171619172142%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171618172139%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl171620172144%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171614172128%_))
                                            (_%__match177792177793%_
                                             _%e171591172067%_
                                             _%hd171592172070%_
                                             _%tl171593172072%_
                                             _%e171594172075%_
                                             _%hd171595172078%_
                                             _%tl171596172080%_
                                             _%e171597172083%_
                                             _%hd171598172086%_
                                             _%tl171599172088%_
                                             _%e171600172091%_
                                             _%hd171601172094%_
                                             _%tl171602172096%_
                                             _%e171603172099%_
                                             _%hd171604172102%_
                                             _%tl171605172104%_
                                             _%e171606172107%_
                                             _%hd171607172110%_
                                             _%tl171608172112%_
                                             _%e171609172115%_
                                             _%hd171610172118%_
                                             _%tl171611172120%_
                                             _%e171612172123%_
                                             _%hd171613172126%_
                                             _%tl171614172128%_
                                             _%e171615172131%_
                                             _%hd171616172134%_
                                             _%tl171617172136%_
                                             _%e171618172139%_
                                             _%hd171619172142%_
                                             _%tl171620172144%_)
                                            (_%__match177870177871%_
                                             _%e171591172067%_
                                             _%hd171592172070%_
                                             _%tl171593172072%_
                                             _%e171594172075%_
                                             _%hd171595172078%_
                                             _%tl171596172080%_
                                             _%e171597172083%_
                                             _%hd171598172086%_
                                             _%tl171599172088%_
                                             _%e171600172091%_
                                             _%hd171601172094%_
                                             _%tl171602172096%_
                                             _%e171603172099%_
                                             _%hd171604172102%_
                                             _%tl171605172104%_
                                             _%e171606172107%_
                                             _%hd171607172110%_
                                             _%tl171608172112%_
                                             _%e171609172115%_
                                             _%hd171610172118%_
                                             _%tl171611172120%_
                                             _%e171612172123%_
                                             _%hd171613172126%_
                                             _%tl171614172128%_
                                             _%e171615172131%_
                                             _%hd171616172134%_
                                             _%tl171617172136%_
                                             _%e171618172139%_
                                             _%hd171619172142%_
                                             _%tl171620172144%_))
                                        (_%__match177994177995%_
                                         _%e171591172067%_
                                         _%hd171592172070%_
                                         _%tl171593172072%_
                                         _%e171594172075%_
                                         _%hd171595172078%_
                                         _%tl171596172080%_
                                         _%e171597172083%_
                                         _%hd171598172086%_
                                         _%tl171599172088%_
                                         _%e171600172091%_
                                         _%hd171601172094%_
                                         _%tl171602172096%_
                                         _%e171603172099%_
                                         _%hd171604172102%_
                                         _%tl171605172104%_
                                         _%e171606172107%_
                                         _%hd171607172110%_
                                         _%tl171608172112%_
                                         _%e171609172115%_
                                         _%hd171610172118%_
                                         _%tl171611172120%_
                                         _%e171612172123%_
                                         _%hd171613172126%_
                                         _%tl171614172128%_))))
                                (_%__match177994177995%_
                                 _%e171591172067%_
                                 _%hd171592172070%_
                                 _%tl171593172072%_
                                 _%e171594172075%_
                                 _%hd171595172078%_
                                 _%tl171596172080%_
                                 _%e171597172083%_
                                 _%hd171598172086%_
                                 _%tl171599172088%_
                                 _%e171600172091%_
                                 _%hd171601172094%_
                                 _%tl171602172096%_
                                 _%e171603172099%_
                                 _%hd171604172102%_
                                 _%tl171605172104%_
                                 _%e171606172107%_
                                 _%hd171607172110%_
                                 _%tl171608172112%_
                                 _%e171609172115%_
                                 _%hd171610172118%_
                                 _%tl171611172120%_
                                 _%e171612172123%_
                                 _%hd171613172126%_
                                 _%tl171614172128%_))
                            (_%__match177994177995%_
                             _%e171591172067%_
                             _%hd171592172070%_
                             _%tl171593172072%_
                             _%e171594172075%_
                             _%hd171595172078%_
                             _%tl171596172080%_
                             _%e171597172083%_
                             _%hd171598172086%_
                             _%tl171599172088%_
                             _%e171600172091%_
                             _%hd171601172094%_
                             _%tl171602172096%_
                             _%e171603172099%_
                             _%hd171604172102%_
                             _%tl171605172104%_
                             _%e171606172107%_
                             _%hd171607172110%_
                             _%tl171608172112%_
                             _%e171609172115%_
                             _%hd171610172118%_
                             _%tl171611172120%_
                             _%e171612172123%_
                             _%hd171613172126%_
                             _%tl171614172128%_))))
                     (_%__match177712177713%_
                      (lambda (_%e171540172188%_
                               _%hd171541172191%_
                               _%tl171542172193%_
                               _%e171543172196%_
                               _%hd171544172199%_
                               _%tl171545172201%_
                               _%e171546172204%_
                               _%hd171547172207%_
                               _%tl171548172209%_
                               _%e171549172212%_
                               _%hd171550172215%_
                               _%tl171551172217%_
                               _%e171552172220%_
                               _%hd171553172223%_
                               _%tl171554172225%_
                               _%e171555172228%_
                               _%hd171556172231%_
                               _%tl171557172233%_
                               _%e171558172236%_
                               _%hd171559172239%_
                               _%tl171560172241%_
                               _%e171561172244%_
                               _%hd171562172247%_
                               _%tl171563172249%_
                               _%e171564172252%_
                               _%hd171565172255%_
                               _%tl171566172257%_
                               _%e171567172260%_
                               _%hd171568172263%_
                               _%tl171569172265%_
                               _%e171570172268%_
                               _%hd171571172271%_
                               _%tl171572172273%_
                               _%e171573172276%_
                               _%hd171574172279%_
                               _%tl171575172281%_
                               _%e171576172284%_
                               _%hd171577172287%_
                               _%tl171578172289%_
                               _%__splice177505177506%_
                               _%target171579172292%_
                               _%tl171581172294%_)
                        (letrec ((_%loop171582172297%_
                                  (lambda (_%hd171580172300%_
                                           _%args171586172302%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171580172300%_))
                                        (let ((_%e171583172305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171580172300%_))))
                                          (let ((_%lp-tl171585172310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171583172305%_)))
                                                (_%lp-hd171584172308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171583172305%_))))
                                            (_%loop171582172297%_
                                             _%lp-tl171585172310%_
                                             (cons _%lp-hd171584172308%_
                                                   _%args171586172302%_))))
                                        (let ((_%args171587172313%_
                                               (reverse _%args171586172302%_)))
                                          (let ((_%L172316%_
                                                 _%args171587172313%_)
                                                (_%L172317%_
                                                 _%hd171577172287%_)
                                                (_%L172318%_
                                                 _%hd171568172263%_)
                                                (_%L172319%_
                                                 _%hd171559172239%_)
                                                (_%L172320%_
                                                 _%hd171550172215%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172320%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172319%_
                                                        'call-method))
                                                     (let ((__tmp178158
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171479%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L172318%_
                                                        __tmp178158)))
                                                (_%__kont177503177504%_
                                                 _%L172316%_
                                                 _%L172317%_
                                                 _%L172318%_
                                                 _%L172319%_
                                                 _%L172320%_)
                                                (_%__kont177515177516%_))))))))
                          (_%loop171582172297%_ _%target171579172292%_ '()))))
                     (_%__match177670177671%_
                      (lambda (_%e171540172188%_
                               _%hd171541172191%_
                               _%tl171542172193%_
                               _%e171543172196%_
                               _%hd171544172199%_
                               _%tl171545172201%_
                               _%e171546172204%_
                               _%hd171547172207%_
                               _%tl171548172209%_
                               _%e171549172212%_
                               _%hd171550172215%_
                               _%tl171551172217%_
                               _%e171552172220%_
                               _%hd171553172223%_
                               _%tl171554172225%_
                               _%e171555172228%_
                               _%hd171556172231%_
                               _%tl171557172233%_
                               _%e171558172236%_
                               _%hd171559172239%_
                               _%tl171560172241%_
                               _%e171561172244%_
                               _%hd171562172247%_
                               _%tl171563172249%_
                               _%e171564172252%_
                               _%hd171565172255%_
                               _%tl171566172257%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd171565172255%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171566172257%_))
                                (let ((_%e171567172260%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171566172257%_))))
                                  (let ((_%tl171569172265%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171567172260%_)))
                                        (_%hd171568172263%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171567172260%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl171569172265%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171563172249%_))
                                            (let ((_%e171570172268%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171563172249%_))))
                                              (let ((_%tl171572172273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171570172268%_)))
                                                    (_%hd171571172271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171570172268%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd171571172271%_))
                                                    (let ((_%e171573172276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd171571172271%_))))
                                                      (let ((_%tl171575172281%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171573172276%_)))
                    (_%hd171574172279%_
                     (let () (declare (not safe)) (##car _%e171573172276%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd171574172279%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd171574172279%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171575172281%_))
                            (let ((_%e171576172284%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171575172281%_))))
                              (let ((_%tl171578172289%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171576172284%_)))
                                    (_%hd171577172287%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171576172284%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171578172289%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl171572172273%_))
                                        (let ((_%__splice177505177506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl171572172273%_
                                                  '0))))
                                          (let ((_%tl171581172294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice177505177506%_
                                                    '1)))
                                                (_%target171579172292%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice177505177506%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl171581172294%_))
                                                (_%__match177712177713%_
                                                 _%e171540172188%_
                                                 _%hd171541172191%_
                                                 _%tl171542172193%_
                                                 _%e171543172196%_
                                                 _%hd171544172199%_
                                                 _%tl171545172201%_
                                                 _%e171546172204%_
                                                 _%hd171547172207%_
                                                 _%tl171548172209%_
                                                 _%e171549172212%_
                                                 _%hd171550172215%_
                                                 _%tl171551172217%_
                                                 _%e171552172220%_
                                                 _%hd171553172223%_
                                                 _%tl171554172225%_
                                                 _%e171555172228%_
                                                 _%hd171556172231%_
                                                 _%tl171557172233%_
                                                 _%e171558172236%_
                                                 _%hd171559172239%_
                                                 _%tl171560172241%_
                                                 _%e171561172244%_
                                                 _%hd171562172247%_
                                                 _%tl171563172249%_
                                                 _%e171564172252%_
                                                 _%hd171565172255%_
                                                 _%tl171566172257%_
                                                 _%e171567172260%_
                                                 _%hd171568172263%_
                                                 _%tl171569172265%_
                                                 _%e171570172268%_
                                                 _%hd171571172271%_
                                                 _%tl171572172273%_
                                                 _%e171573172276%_
                                                 _%hd171574172279%_
                                                 _%tl171575172281%_
                                                 _%e171576172284%_
                                                 _%hd171577172287%_
                                                 _%tl171578172289%_
                                                 _%__splice177505177506%_
                                                 _%target171579172292%_
                                                 _%tl171581172294%_)
                                                (_%__kont177515177516%_))))
                                        (_%__kont177515177516%_))
                                    (_%__kont177515177516%_))))
                            (_%__kont177515177516%_))
                        (_%__kont177515177516%_))
                    (_%__kont177515177516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont177515177516%_))))
                                            (_%__match177994177995%_
                                             _%e171540172188%_
                                             _%hd171541172191%_
                                             _%tl171542172193%_
                                             _%e171543172196%_
                                             _%hd171544172199%_
                                             _%tl171545172201%_
                                             _%e171546172204%_
                                             _%hd171547172207%_
                                             _%tl171548172209%_
                                             _%e171549172212%_
                                             _%hd171550172215%_
                                             _%tl171551172217%_
                                             _%e171552172220%_
                                             _%hd171553172223%_
                                             _%tl171554172225%_
                                             _%e171555172228%_
                                             _%hd171556172231%_
                                             _%tl171557172233%_
                                             _%e171558172236%_
                                             _%hd171559172239%_
                                             _%tl171560172241%_
                                             _%e171561172244%_
                                             _%hd171562172247%_
                                             _%tl171563172249%_))
                                        (_%__match177994177995%_
                                         _%e171540172188%_
                                         _%hd171541172191%_
                                         _%tl171542172193%_
                                         _%e171543172196%_
                                         _%hd171544172199%_
                                         _%tl171545172201%_
                                         _%e171546172204%_
                                         _%hd171547172207%_
                                         _%tl171548172209%_
                                         _%e171549172212%_
                                         _%hd171550172215%_
                                         _%tl171551172217%_
                                         _%e171552172220%_
                                         _%hd171553172223%_
                                         _%tl171554172225%_
                                         _%e171555172228%_
                                         _%hd171556172231%_
                                         _%tl171557172233%_
                                         _%e171558172236%_
                                         _%hd171559172239%_
                                         _%tl171560172241%_
                                         _%e171561172244%_
                                         _%hd171562172247%_
                                         _%tl171563172249%_))))
                                (_%__match177994177995%_
                                 _%e171540172188%_
                                 _%hd171541172191%_
                                 _%tl171542172193%_
                                 _%e171543172196%_
                                 _%hd171544172199%_
                                 _%tl171545172201%_
                                 _%e171546172204%_
                                 _%hd171547172207%_
                                 _%tl171548172209%_
                                 _%e171549172212%_
                                 _%hd171550172215%_
                                 _%tl171551172217%_
                                 _%e171552172220%_
                                 _%hd171553172223%_
                                 _%tl171554172225%_
                                 _%e171555172228%_
                                 _%hd171556172231%_
                                 _%tl171557172233%_
                                 _%e171558172236%_
                                 _%hd171559172239%_
                                 _%tl171560172241%_
                                 _%e171561172244%_
                                 _%hd171562172247%_
                                 _%tl171563172249%_))
                            (_%__match177780177781%_
                             _%e171540172188%_
                             _%hd171541172191%_
                             _%tl171542172193%_
                             _%e171543172196%_
                             _%hd171544172199%_
                             _%tl171545172201%_
                             _%e171546172204%_
                             _%hd171547172207%_
                             _%tl171548172209%_
                             _%e171549172212%_
                             _%hd171550172215%_
                             _%tl171551172217%_
                             _%e171552172220%_
                             _%hd171553172223%_
                             _%tl171554172225%_
                             _%e171555172228%_
                             _%hd171556172231%_
                             _%tl171557172233%_
                             _%e171558172236%_
                             _%hd171559172239%_
                             _%tl171560172241%_
                             _%e171561172244%_
                             _%hd171562172247%_
                             _%tl171563172249%_
                             _%e171564172252%_
                             _%hd171565172255%_
                             _%tl171566172257%_))))
                     (_%__match177602177603%_
                      (lambda (_%e171496172380%_
                               _%hd171497172383%_
                               _%tl171498172385%_
                               _%e171499172388%_
                               _%hd171500172391%_
                               _%tl171501172393%_
                               _%e171502172396%_
                               _%hd171503172399%_
                               _%tl171504172401%_
                               _%e171505172404%_
                               _%hd171506172407%_
                               _%tl171507172409%_
                               _%e171508172412%_
                               _%hd171509172415%_
                               _%tl171510172417%_
                               _%e171511172420%_
                               _%hd171512172423%_
                               _%tl171513172425%_
                               _%e171514172428%_
                               _%hd171515172431%_
                               _%tl171516172433%_
                               _%e171517172436%_
                               _%hd171518172439%_
                               _%tl171519172441%_
                               _%e171520172444%_
                               _%hd171521172447%_
                               _%tl171522172449%_
                               _%e171523172452%_
                               _%hd171524172455%_
                               _%tl171525172457%_
                               _%__splice177501177502%_
                               _%target171526172460%_
                               _%tl171528172462%_)
                        (letrec ((_%loop171529172465%_
                                  (lambda (_%hd171527172468%_
                                           _%args171533172470%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171527172468%_))
                                        (let ((_%e171530172473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171527172468%_))))
                                          (let ((_%lp-tl171532172478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171530172473%_)))
                                                (_%lp-hd171531172476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171530172473%_))))
                                            (_%loop171529172465%_
                                             _%lp-tl171532172478%_
                                             (cons _%lp-hd171531172476%_
                                                   _%args171533172470%_))))
                                        (let ((_%args171534172481%_
                                               (reverse _%args171533172470%_)))
                                          (let ((_%L172484%_
                                                 _%args171534172481%_)
                                                (_%L172485%_
                                                 _%hd171524172455%_)
                                                (_%L172486%_
                                                 _%hd171515172431%_)
                                                (_%L172487%_
                                                 _%hd171506172407%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172487%_
                                                        'call-method))
                                                     (let ((__tmp178159
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171479%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L172486%_
                                                        __tmp178159)))
                                                (_%__kont177499177500%_
                                                 _%L172484%_
                                                 _%L172485%_
                                                 _%L172486%_
                                                 _%L172487%_)
                                                (_%__match177790177791%_
                                                 _%e171496172380%_
                                                 _%hd171497172383%_
                                                 _%tl171498172385%_
                                                 _%e171499172388%_
                                                 _%hd171500172391%_
                                                 _%tl171501172393%_
                                                 _%e171502172396%_
                                                 _%hd171503172399%_
                                                 _%tl171504172401%_
                                                 _%e171505172404%_
                                                 _%hd171506172407%_
                                                 _%tl171507172409%_
                                                 _%e171508172412%_
                                                 _%hd171509172415%_
                                                 _%tl171510172417%_
                                                 _%e171511172420%_
                                                 _%hd171512172423%_
                                                 _%tl171513172425%_
                                                 _%e171514172428%_
                                                 _%hd171515172431%_
                                                 _%tl171516172433%_
                                                 _%e171517172436%_
                                                 _%hd171518172439%_
                                                 _%tl171519172441%_
                                                 _%e171520172444%_
                                                 _%hd171521172447%_
                                                 _%tl171522172449%_
                                                 _%e171523172452%_
                                                 _%hd171524172455%_
                                                 _%tl171525172457%_))))))))
                          (_%loop171529172465%_ _%target171526172460%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx177497177498%_))
                    (let ((_%e171496172380%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx177497177498%_))))
                      (let ((_%tl171498172385%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171496172380%_)))
                            (_%hd171497172383%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171496172380%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171498172385%_))
                            (let ((_%e171499172388%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171498172385%_))))
                              (let ((_%tl171501172393%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171499172388%_)))
                                    (_%hd171500172391%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171499172388%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd171500172391%_))
                                    (let ((_%e171502172396%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd171500172391%_))))
                                      (let ((_%tl171504172401%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171502172396%_)))
                                            (_%hd171503172399%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171502172396%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd171503172399%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd171503172399%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171504172401%_))
                                                    (let ((_%e171505172404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171504172401%_))))
                                                      (let ((_%tl171507172409%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171505172404%_)))
                    (_%hd171506172407%_
                     (let () (declare (not safe)) (##car _%e171505172404%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl171507172409%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl171501172393%_))
                        (let ((_%e171508172412%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl171501172393%_))))
                          (let ((_%tl171510172417%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171508172412%_)))
                                (_%hd171509172415%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171508172412%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd171509172415%_))
                                (let ((_%e171511172420%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd171509172415%_))))
                                  (let ((_%tl171513172425%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171511172420%_)))
                                        (_%hd171512172423%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171511172420%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd171512172423%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd171512172423%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171513172425%_))
                                                (let ((_%e171514172428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171513172425%_))))
                                                  (let ((_%tl171516172433%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171514172428%_)))
                                                        (_%hd171515172431%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171514172428%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171516172433%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl171510172417%_))
                                                            (let ((_%e171517172436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171510172417%_))))
                      (let ((_%tl171519172441%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171517172436%_)))
                            (_%hd171518172439%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171517172436%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd171518172439%_))
                            (let ((_%e171520172444%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd171518172439%_))))
                              (let ((_%tl171522172449%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171520172444%_)))
                                    (_%hd171521172447%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171520172444%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd171521172447%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd171521172447%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171522172449%_))
                                            (let ((_%e171523172452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171522172449%_))))
                                              (let ((_%tl171525172457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171523172452%_)))
                                                    (_%hd171524172455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171523172452%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl171525172457%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl171519172441%_))
                                                        (let ((_%__splice177501177502%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl171519172441%_ '0))))
                  (let ((_%tl171528172462%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice177501177502%_ '1)))
                        (_%target171526172460%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice177501177502%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl171528172462%_))
                        (_%__match177602177603%_
                         _%e171496172380%_
                         _%hd171497172383%_
                         _%tl171498172385%_
                         _%e171499172388%_
                         _%hd171500172391%_
                         _%tl171501172393%_
                         _%e171502172396%_
                         _%hd171503172399%_
                         _%tl171504172401%_
                         _%e171505172404%_
                         _%hd171506172407%_
                         _%tl171507172409%_
                         _%e171508172412%_
                         _%hd171509172415%_
                         _%tl171510172417%_
                         _%e171511172420%_
                         _%hd171512172423%_
                         _%tl171513172425%_
                         _%e171514172428%_
                         _%hd171515172431%_
                         _%tl171516172433%_
                         _%e171517172436%_
                         _%hd171518172439%_
                         _%tl171519172441%_
                         _%e171520172444%_
                         _%hd171521172447%_
                         _%tl171522172449%_
                         _%e171523172452%_
                         _%hd171524172455%_
                         _%tl171525172457%_
                         _%__splice177501177502%_
                         _%target171526172460%_
                         _%tl171528172462%_)
                        (_%__match177790177791%_
                         _%e171496172380%_
                         _%hd171497172383%_
                         _%tl171498172385%_
                         _%e171499172388%_
                         _%hd171500172391%_
                         _%tl171501172393%_
                         _%e171502172396%_
                         _%hd171503172399%_
                         _%tl171504172401%_
                         _%e171505172404%_
                         _%hd171506172407%_
                         _%tl171507172409%_
                         _%e171508172412%_
                         _%hd171509172415%_
                         _%tl171510172417%_
                         _%e171511172420%_
                         _%hd171512172423%_
                         _%tl171513172425%_
                         _%e171514172428%_
                         _%hd171515172431%_
                         _%tl171516172433%_
                         _%e171517172436%_
                         _%hd171518172439%_
                         _%tl171519172441%_
                         _%e171520172444%_
                         _%hd171521172447%_
                         _%tl171522172449%_
                         _%e171523172452%_
                         _%hd171524172455%_
                         _%tl171525172457%_))))
                (_%__match177790177791%_
                 _%e171496172380%_
                 _%hd171497172383%_
                 _%tl171498172385%_
                 _%e171499172388%_
                 _%hd171500172391%_
                 _%tl171501172393%_
                 _%e171502172396%_
                 _%hd171503172399%_
                 _%tl171504172401%_
                 _%e171505172404%_
                 _%hd171506172407%_
                 _%tl171507172409%_
                 _%e171508172412%_
                 _%hd171509172415%_
                 _%tl171510172417%_
                 _%e171511172420%_
                 _%hd171512172423%_
                 _%tl171513172425%_
                 _%e171514172428%_
                 _%hd171515172431%_
                 _%tl171516172433%_
                 _%e171517172436%_
                 _%hd171518172439%_
                 _%tl171519172441%_
                 _%e171520172444%_
                 _%hd171521172447%_
                 _%tl171522172449%_
                 _%e171523172452%_
                 _%hd171524172455%_
                 _%tl171525172457%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match177994177995%_
                                                     _%e171496172380%_
                                                     _%hd171497172383%_
                                                     _%tl171498172385%_
                                                     _%e171499172388%_
                                                     _%hd171500172391%_
                                                     _%tl171501172393%_
                                                     _%e171502172396%_
                                                     _%hd171503172399%_
                                                     _%tl171504172401%_
                                                     _%e171505172404%_
                                                     _%hd171506172407%_
                                                     _%tl171507172409%_
                                                     _%e171508172412%_
                                                     _%hd171509172415%_
                                                     _%tl171510172417%_
                                                     _%e171511172420%_
                                                     _%hd171512172423%_
                                                     _%tl171513172425%_
                                                     _%e171514172428%_
                                                     _%hd171515172431%_
                                                     _%tl171516172433%_
                                                     _%e171517172436%_
                                                     _%hd171518172439%_
                                                     _%tl171519172441%_))))
                                            (_%__match177994177995%_
                                             _%e171496172380%_
                                             _%hd171497172383%_
                                             _%tl171498172385%_
                                             _%e171499172388%_
                                             _%hd171500172391%_
                                             _%tl171501172393%_
                                             _%e171502172396%_
                                             _%hd171503172399%_
                                             _%tl171504172401%_
                                             _%e171505172404%_
                                             _%hd171506172407%_
                                             _%tl171507172409%_
                                             _%e171508172412%_
                                             _%hd171509172415%_
                                             _%tl171510172417%_
                                             _%e171511172420%_
                                             _%hd171512172423%_
                                             _%tl171513172425%_
                                             _%e171514172428%_
                                             _%hd171515172431%_
                                             _%tl171516172433%_
                                             _%e171517172436%_
                                             _%hd171518172439%_
                                             _%tl171519172441%_))
                                        (_%__match177670177671%_
                                         _%e171496172380%_
                                         _%hd171497172383%_
                                         _%tl171498172385%_
                                         _%e171499172388%_
                                         _%hd171500172391%_
                                         _%tl171501172393%_
                                         _%e171502172396%_
                                         _%hd171503172399%_
                                         _%tl171504172401%_
                                         _%e171505172404%_
                                         _%hd171506172407%_
                                         _%tl171507172409%_
                                         _%e171508172412%_
                                         _%hd171509172415%_
                                         _%tl171510172417%_
                                         _%e171511172420%_
                                         _%hd171512172423%_
                                         _%tl171513172425%_
                                         _%e171514172428%_
                                         _%hd171515172431%_
                                         _%tl171516172433%_
                                         _%e171517172436%_
                                         _%hd171518172439%_
                                         _%tl171519172441%_
                                         _%e171520172444%_
                                         _%hd171521172447%_
                                         _%tl171522172449%_))
                                    (_%__match177994177995%_
                                     _%e171496172380%_
                                     _%hd171497172383%_
                                     _%tl171498172385%_
                                     _%e171499172388%_
                                     _%hd171500172391%_
                                     _%tl171501172393%_
                                     _%e171502172396%_
                                     _%hd171503172399%_
                                     _%tl171504172401%_
                                     _%e171505172404%_
                                     _%hd171506172407%_
                                     _%tl171507172409%_
                                     _%e171508172412%_
                                     _%hd171509172415%_
                                     _%tl171510172417%_
                                     _%e171511172420%_
                                     _%hd171512172423%_
                                     _%tl171513172425%_
                                     _%e171514172428%_
                                     _%hd171515172431%_
                                     _%tl171516172433%_
                                     _%e171517172436%_
                                     _%hd171518172439%_
                                     _%tl171519172441%_))))
                            (_%__match177994177995%_
                             _%e171496172380%_
                             _%hd171497172383%_
                             _%tl171498172385%_
                             _%e171499172388%_
                             _%hd171500172391%_
                             _%tl171501172393%_
                             _%e171502172396%_
                             _%hd171503172399%_
                             _%tl171504172401%_
                             _%e171505172404%_
                             _%hd171506172407%_
                             _%tl171507172409%_
                             _%e171508172412%_
                             _%hd171509172415%_
                             _%tl171510172417%_
                             _%e171511172420%_
                             _%hd171512172423%_
                             _%tl171513172425%_
                             _%e171514172428%_
                             _%hd171515172431%_
                             _%tl171516172433%_
                             _%e171517172436%_
                             _%hd171518172439%_
                             _%tl171519172441%_))))
                    (_%__match177932177933%_
                     _%e171496172380%_
                     _%hd171497172383%_
                     _%tl171498172385%_
                     _%e171499172388%_
                     _%hd171500172391%_
                     _%tl171501172393%_
                     _%e171502172396%_
                     _%hd171503172399%_
                     _%tl171504172401%_
                     _%e171505172404%_
                     _%hd171506172407%_
                     _%tl171507172409%_
                     _%e171508172412%_
                     _%hd171509172415%_
                     _%tl171510172417%_
                     _%e171511172420%_
                     _%hd171512172423%_
                     _%tl171513172425%_
                     _%e171514172428%_
                     _%hd171515172431%_
                     _%tl171516172433%_))
                (_%__kont177515177516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont177515177516%_))
                                            (_%__kont177515177516%_))
                                        (_%__kont177515177516%_))))
                                (_%__kont177515177516%_))))
                        (_%__kont177515177516%_))
                    (_%__kont177515177516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont177515177516%_))
                                                (_%__kont177515177516%_))
                                            (_%__kont177515177516%_))))
                                    (_%__kont177515177516%_))))
                            (_%__kont177515177516%_))))
                    (_%__kont177515177516%_))))))))))
