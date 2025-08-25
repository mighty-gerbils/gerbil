(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1756156304)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp186265 (list gxc#::identity::t))
            (__tmp186264 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp186265
         '()
         __tmp186264
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args185062%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args185062%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp186266
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
        (__make-promise __tmp186266)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx185054%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self185057%_
                (let ((__obj186257
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj186257))
               (__tmp186267
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self185057%_ _%stx185054%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp186267
           gxc#current-compile-method
           _%self185057%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp186269 (list gxc#::false::t))
            (__tmp186268 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp186269
         '()
         __tmp186268
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args185051%_
        (apply make-instance gxc#::extract-receiver::t _%$args185051%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp186270
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
        (__make-promise __tmp186270)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx185043%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self185046%_
                (let ((__obj186259
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj186259))
               (__tmp186271
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self185046%_ _%stx185043%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp186271
           gxc#current-compile-method
           _%self185046%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp186273 (list gxc#::void::t))
            (__tmp186272 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp186273
         '(receiver methods slots)
         __tmp186272
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args185040%_
        (apply make-instance gxc#::collect-object-refs::t _%$args185040%_)))
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
      (let ((__tmp186274
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
        (__make-promise __tmp186274)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords185006%_
               _%receiver185001185007%_
               _%methods185002185009%_
               _%slots185003185011%_
               _%stx185013%_)
        (let* ((_%receiver185016%_
                (if (eq? _%receiver185001185007%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver185001185007%_))
               (_%methods185018%_
                (if (eq? _%methods185002185009%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods185002185009%_))
               (_%slots185020%_
                (if (eq? _%slots185003185011%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots185003185011%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self185022%_
                  (let ((__obj186261
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
                       __obj186261
                       _%receiver185016%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186261
                       _%methods185018%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186261
                       _%slots185020%_
                       '3
                       '#f
                       '#f))
                    __obj186261))
                 (__tmp186275
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self185022%_ _%stx185013%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp186275
             gxc#current-compile-method
             _%self185022%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords185029%_ . _%args185030%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords185029%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185029%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185029%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185029%_
                  'slots:
                  absent-value))
               _%args185030%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args185004185036%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args185004185036%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp186277 (list gxc#::basic-xform-expression::t))
            (__tmp186276 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp186277
         '(receiver klass methods slots)
         __tmp186276
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args184997%_
        (apply make-instance gxc#::subst-object-refs::t _%$args184997%_)))
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
      (let ((__tmp186278
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
        (__make-promise __tmp186278)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords184959%_
               _%receiver184953184960%_
               _%klass184954184962%_
               _%methods184955184964%_
               _%slots184956184966%_
               _%stx184968%_)
        (let* ((_%receiver184971%_
                (if (eq? _%receiver184953184960%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver184953184960%_))
               (_%klass184973%_
                (if (eq? _%klass184954184962%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass184954184962%_))
               (_%methods184975%_
                (if (eq? _%methods184955184964%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods184955184964%_))
               (_%slots184977%_
                (if (eq? _%slots184956184966%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots184956184966%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self184979%_
                  (let ((__obj186263
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
                       __obj186263
                       _%receiver184971%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186263
                       _%klass184973%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186263
                       _%methods184975%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186263
                       _%slots184977%_
                       '4
                       '#f
                       '#f))
                    __obj186263))
                 (__tmp186279
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self184979%_ _%stx184968%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp186279
             gxc#current-compile-method
             _%self184979%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords184986%_ . _%args184987%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords184986%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords184986%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords184986%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords184986%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords184986%_
                  'slots:
                  absent-value))
               _%args184987%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args184957184993%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args184957184993%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self182068%_ _%stx182069%_)
        (letrec ((_%generate-method-bind182071%_
                  (lambda (_%$klass184945%_
                           _%$method-table184946%_
                           _%id184947%_
                           _%$id184948%_)
                    (let ((_%$tmp184950%_
                           (let ((__tmp186280
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp186280))))
                      (cons (cons _%$id184948%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp184950%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table184946%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id184947%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp184950%_ '()))
                    (cons (cons '%#ref (cons _%$tmp184950%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id184947%_
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
                 (_%generate-slot-bind182072%_
                  (lambda (_%$klass184939%_ _%id184940%_ _%$id184941%_)
                    (let ((_%$tmp184943%_
                           (let ((__tmp186281
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp186281))))
                      (cons (cons _%$id184941%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp184943%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass184939%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id184940%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp184943%_ '()))
                        (cons (cons '%#ref (cons _%$tmp184943%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id184940%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl182073%_
                  (lambda (_%$klass184933%_
                           _%$method-table184934%_
                           _%methods-bind184935%_
                           _%slots-bind184936%_
                           _%specializer-impl184937%_)
                    (let ((__tmp186282
                           (cons '%#lambda
                                 (cons (cons _%$klass184933%_
                                             (cons _%$method-table184934%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind184936%_
                                                            _%methods-bind184935%_))
                                                         (cons _%specializer-impl184937%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp186282 _%stx182069%_))))
                 (_%generate-specializer-def182074%_
                  (lambda (_%id184929%_
                           _%specializer-id184930%_
                           _%specializer-impl184931%_)
                    (let ((__tmp186283
                           (cons '%#begin
                                 (cons _%stx182069%_
                                       (cons (let ((__tmp186284
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id184930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl184931%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp186284
                                                _%stx182069%_))
                                             (cons (let ((__tmp186285
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id184929%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id184930%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp186285
                                                      _%stx182069%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp186283 _%stx182069%_)))))
          (let* ((_%__stx185151185152%_ _%stx182069%_)
                 (_%g182077182097%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx185151185152%_)))))
            (let ((_%__kont185153185154%_
                   (lambda (_%L182141%_ _%L182142%_)
                     (let ((_%method-calls182161%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs182162%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty182163%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?182165%_
                                 (lambda ()
                                   (if (let ((__tmp186286
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls182161%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp186286))
                                       (let ((__tmp186287
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs182162%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp186287))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L182141%_))
                             (let* ((_%__stx185065185066%_ _%L182141%_)
                                    (_%g182553182571%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx185065185066%_)))))
                               (let ((_%__kont185067185068%_
                                      (lambda (_%L182607%_
                                               _%L182608%_
                                               _%L182609%_)
                                        (let ((_%receiver182629%_
                                               (let ((_%$e182626%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L182607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e182626%_
                                                     _%$e182626%_
                                                     _%L182609%_))))
                                          (for-each
                                           (lambda (_%g182630182632%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver182629%_
                                              _%method-calls182161%_
                                              _%slot-refs182162%_
                                              _%g182630182632%_))
                                           _%L182607%_)
                                          (if (_%no-specializer?182165%_)
                                              _%stx182069%_
                                              (let* ((_%specializer-id182641%_
                                                      (let* ((_%id182635%_
                                                              (let ((__tmp186288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L182142%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp186288 '"::specialize")))
                     (_%specializer-id182638%_
                      (let ((__tmp186289
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx182069%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id182635%_ __tmp186289))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id182638%_))
                _%specializer-id182638%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass182643%_
                                                      (let ((__tmp186290
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp186290)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table182645%_
                                                      (let ((__tmp186291
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp186291)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods182647%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls182161%_)))
                                                     (_%$methods182651%_
                                                      (let ((__tmp186292
                                                             (lambda (_%id182649%_)
                                                               (let ((__tmp186293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id182649%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186293)))))
                (declare (not safe))
                (##map __tmp186292 _%methods182647%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_182660%_
                                                      (let ((__tmp186294
                                                             (lambda (_%g182652182655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g182653182657%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls182161%_
                          _%g182652182655%_
                          _%g182653182657%_)))))
                (declare (not safe))
                (##for-each __tmp186294 _%methods182647%_ _%$methods182651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind182670%_
                                                      (let ((__tmp186295
                                                             (lambda (_%g182662182665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g182663182667%_)
                       (_%generate-method-bind182071%_
                        _%$klass182643%_
                        _%$method-table182645%_
                        _%g182662182665%_
                        _%g182663182667%_))))
                (declare (not safe))
                (##map __tmp186295 _%methods182647%_ _%$methods182651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots182672%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs182162%_)))
                                                     (_%$slots182676%_
                                                      (let ((__tmp186296
                                                             (lambda (_%id182674%_)
                                                               (let ((__tmp186297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id182674%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186297)))))
                (declare (not safe))
                (##map __tmp186296 _%slots182672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_182685%_
                                                      (let ((__tmp186298
                                                             (lambda (_%g182677182680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g182678182682%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs182162%_
                          _%g182677182680%_
                          _%g182678182682%_)))))
                (declare (not safe))
                (##for-each __tmp186298 _%slots182672%_ _%$slots182676%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind182694%_
                                                      (let ((__tmp186299
                                                             (lambda (_%g182686182689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g182687182691%_)
                       (_%generate-slot-bind182072%_
                        _%$klass182643%_
                        _%g182686182689%_
                        _%g182687182691%_))))
                (declare (not safe))
                (##map __tmp186299 _%slots182672%_ _%$slots182676%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body182700%_
                                                      (map (lambda (_%g182695182697%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver182629%_
                                                              _%$klass182643%_
                                                              _%method-calls182161%_
                                                              _%slot-refs182162%_
                                                              _%g182695182697%_))
                                                           _%L182607%_))
                                                     (_%specializer-impl182702%_
                                                      (let ((__tmp186300
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L182609%_ _%L182608%_)
                                 _%specializer-body182700%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp186300 _%stx182069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl182704%_
                                                      (_%generate-specializer-impl182073%_
                                                       _%$klass182643%_
                                                       _%$method-table182645%_
                                                       _%methods-bind182670%_
                                                       _%slots-bind182694%_
                                                       _%specializer-impl182702%_)))
                                                (let ((__tmp186302
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182142%_)))
                                                      (__tmp186301
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id182641%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp186302
                                                   '" => "
                                                   __tmp186301))
                                                (_%generate-specializer-def182074%_
                                                 _%L182142%_
                                                 _%specializer-id182641%_
                                                 _%specializer-impl182704%_))))))
                                     (_%__kont185069185070%_
                                      (lambda () _%stx182069%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx185065185066%_))
                                     (let ((_%e182558182583%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx185065185066%_))))
                                       (let ((_%tl182560182588%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e182558182583%_)))
                                             (_%hd182559182586%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e182558182583%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl182560182588%_))
                                             (let ((_%e182561182591%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl182560182588%_))))
                                               (let ((_%tl182563182596%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e182561182591%_)))
                                                     (_%hd182562182594%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e182561182591%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd182562182594%_))
                                                     (let ((_%e182564182599%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd182562182594%_))))
                                                       (let ((_%tl182566182604%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e182564182599%_)))
                     (_%hd182565182602%_
                      (let () (declare (not safe)) (##car _%e182564182599%_))))
                 (_%__kont185067185068%_
                  _%tl182563182596%_
                  _%tl182566182604%_
                  _%hd182565182602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont185069185070%_))))
                                             (_%__kont185069185070%_))))
                                     (_%__kont185069185070%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L182141%_))
                                 (let* ((_%g182711182730%_
                                         (lambda (_%g182712182727%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g182712182727%_))))
                                        (_%g182710183028%_
                                         (lambda (_%g182712182733%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g182712182733%_))
                                               (let ((_%e182714182735%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g182712182733%_))))
                                                 (let ((_%hd182715182738%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e182714182735%_)))
                                                       (_%tl182716182740%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e182714182735%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl182716182740%_))
                                                       (let ((_g186303_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl182716182740%_ '0))))
                 (begin
                   (let ((_g186304_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g186303_)
                                (##values-length _g186303_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g186304_ 2)))
                         (error "Context expects 2 values" _g186304_)))
                   (let ((_%target182717182743%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g186303_ 0)))
                         (_%tl182719182745%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g186303_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl182719182745%_))
                         (letrec ((_%loop182720182748%_
                                   (lambda (_%hd182718182751%_
                                            _%clause182724182753%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd182718182751%_))
                                         (let ((_%e182721182756%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd182718182751%_))))
                                           (let ((_%lp-hd182722182759%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e182721182756%_)))
                                                 (_%lp-tl182723182761%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e182721182756%_))))
                                             (_%loop182720182748%_
                                              _%lp-tl182723182761%_
                                              (cons _%lp-hd182722182759%_
                                                    _%clause182724182753%_))))
                                         (let ((_%clause182725182764%_
                                                (reverse _%clause182724182753%_)))
                                           ((lambda (_%L182767%_)
                                              (for-each
                                               (lambda (_%clause182781%_)
                                                 (let* ((_%__stx185091185092%_
                                                         _%clause182781%_)
                                                        (_%g182784182799%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx185091185092%_)))))
                                                   (let ((_%__kont185093185094%_
                                                          (lambda (_%L182827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L182828%_
                           _%L182829%_)
                    (let ((_%receiver182848%_
                           (let ((_%$e182845%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L182827%_))))
                             (if _%$e182845%_ _%$e182845%_ _%L182829%_))))
                      (for-each
                       (lambda (_%g182849182851%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver182848%_
                          _%method-calls182161%_
                          _%slot-refs182162%_
                          _%g182849182851%_))
                       _%L182827%_))))
                 (_%__kont185095185096%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx185091185092%_))
                                                         (let ((_%e182789182811%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx185091185092%_))))
                   (let ((_%tl182791182816%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e182789182811%_)))
                         (_%hd182790182814%_
                          (let ()
                            (declare (not safe))
                            (##car _%e182789182811%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd182790182814%_))
                         (let ((_%e182792182819%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd182790182814%_))))
                           (let ((_%tl182794182824%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e182792182819%_)))
                                 (_%hd182793182822%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e182792182819%_))))
                             (_%__kont185093185094%_
                              _%tl182791182816%_
                              _%tl182794182824%_
                              _%hd182793182822%_)))
                         (_%__kont185095185096%_))))
                 (_%__kont185095185096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp186305
                                                      (lambda (_%g182856182859%_
                                                               _%g182857182861%_)
                                                        (cons _%g182856182859%_
                                                              _%g182857182861%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp186305
                                                  '()
                                                  _%L182767%_)))
                                              (if (_%no-specializer?182165%_)
                                                  _%stx182069%_
                                                  (let* ((_%specializer-id182870%_
                                                          (let* ((_%id182864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186306
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L182142%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp186306 '"::specialize")))
                         (_%specializer-id182867%_
                          (let ((__tmp186307
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx182069%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id182864%_
                             __tmp186307))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id182867%_))
                    _%specializer-id182867%_))
                 (_%$klass182872%_
                  (let ((__tmp186308
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186308)))
                 (_%$method-table182874%_
                  (let ((__tmp186309
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186309)))
                 (_%methods182876%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls182161%_)))
                 (_%$methods182880%_
                  (let ((__tmp186310
                         (lambda (_%id182878%_)
                           (let ((__tmp186311 (gensym _%id182878%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186311)))))
                    (declare (not safe))
                    (##map __tmp186310 _%methods182876%_)))
                 (_%_182889%_
                  (let ((__tmp186312
                         (lambda (_%g182881182884%_ _%g182882182886%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls182161%_
                              _%g182881182884%_
                              _%g182882182886%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp186312
                     _%methods182876%_
                     _%$methods182880%_)))
                 (_%methods-bind182899%_
                  (let ((__tmp186313
                         (lambda (_%g182891182894%_ _%g182892182896%_)
                           (_%generate-method-bind182071%_
                            _%$klass182872%_
                            _%$method-table182874%_
                            _%g182891182894%_
                            _%g182892182896%_))))
                    (declare (not safe))
                    (##map __tmp186313 _%methods182876%_ _%$methods182880%_)))
                 (_%slots182901%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs182162%_)))
                 (_%$slots182905%_
                  (let ((__tmp186314
                         (lambda (_%id182903%_)
                           (let ((__tmp186315 (gensym _%id182903%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186315)))))
                    (declare (not safe))
                    (##map __tmp186314 _%slots182901%_)))
                 (_%_182914%_
                  (let ((__tmp186316
                         (lambda (_%g182906182909%_ _%g182907182911%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs182162%_
                              _%g182906182909%_
                              _%g182907182911%_)))))
                    (declare (not safe))
                    (##for-each __tmp186316 _%slots182901%_ _%$slots182905%_)))
                 (_%slots-bind182923%_
                  (let ((__tmp186317
                         (lambda (_%g182915182918%_ _%g182916182920%_)
                           (_%generate-slot-bind182072%_
                            _%$klass182872%_
                            _%g182915182918%_
                            _%g182916182920%_))))
                    (declare (not safe))
                    (##map __tmp186317 _%slots182901%_ _%$slots182905%_)))
                 (_%specializer-clauses183021%_
                  (map (lambda (_%clause182925%_)
                         (let* ((_%__stx185111185112%_ _%clause182925%_)
                                (_%g182928182943%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx185111185112%_)))))
                           (let ((_%__kont185113185114%_
                                  (lambda (_%L182971%_ _%L182972%_ _%L182973%_)
                                    (let* ((_%receiver183002%_
                                            (let ((_%$e182999%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L182971%_))))
                                              (if _%$e182999%_
                                                  _%$e182999%_
                                                  _%L182973%_)))
                                           (_%body183008%_
                                            (map (lambda (_%g183003183005%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver183002%_
                                                    _%$klass182872%_
                                                    _%method-calls182161%_
                                                    _%slot-refs182162%_
                                                    _%g183003183005%_))
                                                 _%L182971%_)))
                                      (cons (cons _%L182973%_ _%L182972%_)
                                            _%body183008%_))))
                                 (_%__kont185115185116%_
                                  (lambda () _%clause182925%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx185111185112%_))
                                 (let ((_%e182933182955%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx185111185112%_))))
                                   (let ((_%tl182935182960%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e182933182955%_)))
                                         (_%hd182934182958%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e182933182955%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd182934182958%_))
                                         (let ((_%e182936182963%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd182934182958%_))))
                                           (let ((_%tl182938182968%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e182936182963%_)))
                                                 (_%hd182937182966%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e182936182963%_))))
                                             (_%__kont185113185114%_
                                              _%tl182935182960%_
                                              _%tl182938182968%_
                                              _%hd182937182966%_)))
                                         (_%__kont185115185116%_))))
                                 (_%__kont185115185116%_)))))
                       (let ((__tmp186318
                              (lambda (_%g183013183016%_ _%g183014183018%_)
                                (cons _%g183013183016%_ _%g183014183018%_))))
                         (declare (not safe))
                         (__foldr1 __tmp186318 '() _%L182767%_))))
                 (_%specializer-impl183023%_
                  (let ((__tmp186319
                         (cons '%#case-lambda _%specializer-clauses183021%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp186319 _%stx182069%_)))
                 (_%specializer-impl183025%_
                  (_%generate-specializer-impl182073%_
                   _%$klass182872%_
                   _%$method-table182874%_
                   _%methods-bind182899%_
                   _%slots-bind182923%_
                   _%specializer-impl183023%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186321
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L182142%_)))
                                                          (__tmp186320
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id182870%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp186321
                                                       '" => "
                                                       __tmp186320))
                                                    (_%generate-specializer-def182074%_
                                                     _%L182142%_
                                                     _%specializer-id182870%_
                                                     _%specializer-impl183025%_))))
                                            _%clause182725182764%_))))))
                           (_%loop182720182748%_ _%target182717182743%_ '()))
                         (_%g182711182730%_ _%g182712182733%_)))))
               (_%g182711182730%_ _%g182712182733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g182711182730%_
                                                _%g182712182733%_)))))
                                   (_%g182710183028%_ _%L182141%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L182141%_))
                                     (let* ((_%g183032183062%_
                                             (lambda (_%g183033183059%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g183033183059%_))))
                                            (_%g183031183693%_
                                             (lambda (_%g183033183065%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g183033183065%_))
                                                   (let ((_%e183037183067%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g183033183065%_))))
                                                     (let ((_%hd183038183070%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e183037183067%_)))
                                                           (_%tl183039183072%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e183037183067%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl183039183072%_))
                                                           (let ((_%e183040183075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl183039183072%_))))
                     (let ((_%hd183041183078%_
                            (let ()
                              (declare (not safe))
                              (##car _%e183040183075%_)))
                           (_%tl183042183080%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e183040183075%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd183041183078%_))
                           (let ((_%e183043183083%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd183041183078%_))))
                             (let ((_%hd183044183086%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e183043183083%_)))
                                   (_%tl183045183088%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e183043183083%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd183044183086%_))
                                   (let ((_%e183046183091%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd183044183086%_))))
                                     (let ((_%hd183047183094%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e183046183091%_)))
                                           (_%tl183048183096%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e183046183091%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd183047183094%_))
                                           (let ((_%e183049183099%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd183047183094%_))))
                                             (let ((_%hd183050183102%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e183049183099%_)))
                                                   (_%tl183051183104%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e183049183099%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl183051183104%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl183048183096%_))
                                                       (let ((_%e183052183107%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl183048183096%_))))
                 (let ((_%hd183053183110%_
                        (let ()
                          (declare (not safe))
                          (##car _%e183052183107%_)))
                       (_%tl183054183112%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e183052183107%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl183054183112%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl183045183088%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl183042183080%_))
                               (let ((_%e183055183115%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl183042183080%_))))
                                 (let ((_%hd183056183118%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e183055183115%_)))
                                       (_%tl183057183120%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e183055183115%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl183057183120%_))
                                       ((lambda (_%L183123%_
                                                 _%L183124%_
                                                 _%L183125%_)
                                          (let* ((_%g183149183167%_
                                                  (lambda (_%g183150183164%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g183150183164%_))))
                                                 (_%g183148183223%_
                                                  (lambda (_%g183150183170%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g183150183170%_))
                                                        (let ((_%e183154183172%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g183150183170%_))))
                  (let ((_%hd183155183175%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183154183172%_)))
                        (_%tl183156183177%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183154183172%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl183156183177%_))
                        (let ((_%e183157183180%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl183156183177%_))))
                          (let ((_%hd183158183183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183157183180%_)))
                                (_%tl183159183185%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183157183180%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd183158183183%_))
                                (let ((_%e183160183188%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd183158183183%_))))
                                  (let ((_%hd183161183191%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183160183188%_)))
                                        (_%tl183162183193%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183160183188%_))))
                                    ((lambda (_%L183196%_
                                              _%L183197%_
                                              _%L183198%_)
                                       (let ((_%receiver183217%_
                                              (let ((_%$e183214%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L183196%_))))
                                                (if _%$e183214%_
                                                    _%$e183214%_
                                                    _%L183198%_))))
                                         (for-each
                                          (lambda (_%g183218183220%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver183217%_
                                             _%method-calls182161%_
                                             _%slot-refs182162%_
                                             _%g183218183220%_))
                                          _%L183196%_)))
                                     _%tl183159183185%_
                                     _%tl183162183193%_
                                     _%hd183161183191%_)))
                                (_%g183149183167%_ _%g183150183170%_))))
                        (_%g183149183167%_ _%g183150183170%_))))
                (_%g183149183167%_ _%g183150183170%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g183148183223%_ _%L183124%_))
                                          (let* ((_%g183226183245%_
                                                  (lambda (_%g183227183242%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g183227183242%_))))
                                                 (_%g183225183369%_
                                                  (lambda (_%g183227183248%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g183227183248%_))
                                                        (let ((_%e183229183250%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g183227183248%_))))
                  (let ((_%hd183230183253%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183229183250%_)))
                        (_%tl183231183255%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183229183250%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl183231183255%_))
                        (let ((_g186322_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl183231183255%_
                                  '0))))
                          (begin
                            (let ((_g186323_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186322_)
                                         (##values-length _g186322_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186323_ 2)))
                                  (error "Context expects 2 values"
                                         _g186323_)))
                            (let ((_%target183232183258%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186322_ 0)))
                                  (_%tl183234183260%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186322_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl183234183260%_))
                                  (letrec ((_%loop183235183263%_
                                            (lambda (_%hd183233183266%_
                                                     _%clause183239183268%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd183233183266%_))
                                                  (let ((_%e183236183271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd183233183266%_))))
                                                    (let ((_%lp-hd183237183274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e183236183271%_)))
                                                          (_%lp-tl183238183276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e183236183271%_))))
                                                      (_%loop183235183263%_
                                                       _%lp-tl183238183276%_
                                                       (cons _%lp-hd183237183274%_
                                                             _%clause183239183268%_))))
                                                  (let ((_%clause183240183279%_
                                                         (reverse _%clause183239183268%_)))
                                                    ((lambda (_%L183282%_)
                                                       (for-each
                                                        (lambda (_%clause183295%_)
                                                          (let* ((_%g183297183312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g183298183309%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g183298183309%_))))
                         (_%g183296183359%_
                          (lambda (_%g183298183315%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g183298183315%_))
                                (let ((_%e183302183317%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g183298183315%_))))
                                  (let ((_%hd183303183320%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183302183317%_)))
                                        (_%tl183304183322%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183302183317%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183303183320%_))
                                        (let ((_%e183305183325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183303183320%_))))
                                          (let ((_%hd183306183328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183305183325%_)))
                                                (_%tl183307183330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183305183325%_))))
                                            ((lambda (_%L183333%_
                                                      _%L183334%_
                                                      _%L183335%_)
                                               (let ((_%receiver183353%_
                                                      (let ((_%$e183350%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L183333%_))))
                (if _%$e183350%_ _%$e183350%_ _%L183335%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g183354183356%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver183353%_
                                                     _%method-calls182161%_
                                                     _%slot-refs182162%_
                                                     _%g183354183356%_))
                                                  _%L183333%_)))
                                             _%tl183304183322%_
                                             _%tl183307183330%_
                                             _%hd183306183328%_)))
                                        (_%g183297183312%_
                                         _%g183298183315%_))))
                                (_%g183297183312%_ _%g183298183315%_)))))
                    (_%g183296183359%_ _%clause183295%_)))
                (let ((__tmp186324
                       (lambda (_%g183361183364%_ _%g183362183366%_)
                         (cons _%g183361183364%_ _%g183362183366%_))))
                  (declare (not safe))
                  (__foldr1 __tmp186324 '() _%L183282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause183240183279%_))))))
                                    (_%loop183235183263%_
                                     _%target183232183258%_
                                     '()))
                                  (_%g183226183245%_ _%g183227183248%_)))))
                        (_%g183226183245%_ _%g183227183248%_))))
                (_%g183226183245%_ _%g183227183248%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g183225183369%_ _%L183123%_))
                                          (if (_%no-specializer?182165%_)
                                              _%stx182069%_
                                              (let* ((_%specializer-id183378%_
                                                      (let* ((_%id183372%_
                                                              (let ((__tmp186325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L182142%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp186325 '"::specialize")))
                     (_%specializer-id183375%_
                      (let ((__tmp186326
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx182069%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id183372%_ __tmp186326))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id183375%_))
                _%specializer-id183375%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass183380%_
                                                      (let ((__tmp186327
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp186327)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table183382%_
                                                      (let ((__tmp186328
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp186328)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods183384%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls182161%_)))
                                                     (_%$methods183388%_
                                                      (let ((__tmp186329
                                                             (lambda (_%id183386%_)
                                                               (let ((__tmp186330
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183386%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186330)))))
                (declare (not safe))
                (##map __tmp186329 _%methods183384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183397%_
                                                      (let ((__tmp186331
                                                             (lambda (_%g183389183392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183390183394%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls182161%_
                          _%g183389183392%_
                          _%g183390183394%_)))))
                (declare (not safe))
                (##for-each __tmp186331 _%methods183384%_ _%$methods183388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind183407%_
                                                      (let ((__tmp186332
                                                             (lambda (_%g183399183402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183400183404%_)
                       (_%generate-method-bind182071%_
                        _%$klass183380%_
                        _%$method-table183382%_
                        _%g183399183402%_
                        _%g183400183404%_))))
                (declare (not safe))
                (##map __tmp186332 _%methods183384%_ _%$methods183388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots183409%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs182162%_)))
                                                     (_%$slots183413%_
                                                      (let ((__tmp186333
                                                             (lambda (_%id183411%_)
                                                               (let ((__tmp186334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183411%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186334)))))
                (declare (not safe))
                (##map __tmp186333 _%slots183409%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183422%_
                                                      (let ((__tmp186335
                                                             (lambda (_%g183414183417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183415183419%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs182162%_
                          _%g183414183417%_
                          _%g183415183419%_)))))
                (declare (not safe))
                (##for-each __tmp186335 _%slots183409%_ _%$slots183413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind183431%_
                                                      (let ((__tmp186336
                                                             (lambda (_%g183423183426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183424183428%_)
                       (_%generate-slot-bind182072%_
                        _%$klass183380%_
                        _%g183423183426%_
                        _%g183424183428%_))))
                (declare (not safe))
                (##map __tmp186336 _%slots183409%_ _%$slots183413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr183523%_
                                                      (let* ((_%g183433183451%_
                                                              (lambda (_%g183434183448%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g183434183448%_))))
                     (_%g183432183520%_
                      (lambda (_%g183434183454%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g183434183454%_))
                            (let ((_%e183438183456%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183434183454%_))))
                              (let ((_%hd183439183459%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183438183456%_)))
                                    (_%tl183440183461%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183438183456%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl183440183461%_))
                                    (let ((_%e183441183464%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl183440183461%_))))
                                      (let ((_%hd183442183467%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183441183464%_)))
                                            (_%tl183443183469%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183441183464%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd183442183467%_))
                                            (let ((_%e183444183472%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd183442183467%_))))
                                              (let ((_%hd183445183475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183444183472%_)))
                                                    (_%tl183446183477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183444183472%_))))
                                                ((lambda (_%L183480%_
                                                          _%L183481%_
                                                          _%L183482%_)
                                                   (let* ((_%receiver183511%_
                                                           (let ((_%$e183508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L183480%_))))
                     (if _%$e183508%_ _%$e183508%_ _%L183482%_)))
                  (_%body183517%_
                   (map (lambda (_%g183512183514%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver183511%_
                           _%$klass183380%_
                           _%method-calls182161%_
                           _%slot-refs182162%_
                           _%g183512183514%_))
                        _%L183480%_))
                  (__tmp186337
                   (cons '%#lambda
                         (cons (cons _%L183482%_ _%L183481%_)
                               _%body183517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp186337
                                                      _%L183124%_)))
                                                 _%tl183443183469%_
                                                 _%tl183446183477%_
                                                 _%hd183445183475%_)))
                                            (_%g183433183451%_
                                             _%g183434183454%_))))
                                    (_%g183433183451%_ _%g183434183454%_))))
                            (_%g183433183451%_ _%g183434183454%_)))))
                (_%g183432183520%_ _%L183124%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr183686%_
                                                      (let* ((_%g183525183544%_
                                                              (lambda (_%g183526183541%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g183526183541%_))))
                     (_%g183524183683%_
                      (lambda (_%g183526183547%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g183526183547%_))
                            (let ((_%e183528183549%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183526183547%_))))
                              (let ((_%hd183529183552%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183528183549%_)))
                                    (_%tl183530183554%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183528183549%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl183530183554%_))
                                    (let ((_g186338_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl183530183554%_
                                              '0))))
                                      (begin
                                        (let ((_g186339_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g186338_)
                                                     (##values-length
                                                      _g186338_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g186339_ 2)))
                                              (error "Context expects 2 values"
                                                     _g186339_)))
                                        (let ((_%target183531183557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g186338_ 0)))
                                              (_%tl183533183559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g186338_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183533183559%_))
                                              (letrec ((_%loop183534183562%_
                                                        (lambda (_%hd183532183565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause183538183567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd183532183565%_))
                      (let ((_%e183535183570%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd183532183565%_))))
                        (let ((_%lp-hd183536183573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183535183570%_)))
                              (_%lp-tl183537183575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183535183570%_))))
                          (_%loop183534183562%_
                           _%lp-tl183537183575%_
                           (cons _%lp-hd183536183573%_
                                 _%clause183538183567%_))))
                      (let ((_%clause183539183578%_
                             (reverse _%clause183538183567%_)))
                        ((lambda (_%L183581%_)
                           (let* ((_%clauses183681%_
                                   (map (lambda (_%clause183595%_)
                                          (let* ((_%__stx185131185132%_
                                                  _%clause183595%_)
                                                 (_%g183598183613%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx185131185132%_)))))
                                            (let ((_%__kont185133185134%_
                                                   (lambda (_%L183641%_
                                                            _%L183642%_
                                                            _%L183643%_)
                                                     (let* ((_%receiver183662%_
                                                             (let ((_%$e183659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L183641%_))))
                       (if _%$e183659%_ _%$e183659%_ _%L183643%_)))
                    (_%body183668%_
                     (map (lambda (_%g183663183665%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver183662%_
                             _%$klass183380%_
                             _%method-calls182161%_
                             _%slot-refs182162%_
                             _%g183663183665%_))
                          _%L183641%_)))
               (cons (cons _%L183643%_ _%L183642%_) _%body183668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185135185136%_
                                                   (lambda ()
                                                     _%clause183595%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx185131185132%_))
                                                  (let ((_%e183603183625%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx185131185132%_))))
                                                    (let ((_%tl183605183630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e183603183625%_)))
                                                          (_%hd183604183628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e183603183625%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd183604183628%_))
                                                          (let ((_%e183606183633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd183604183628%_))))
                    (let ((_%tl183608183638%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e183606183633%_)))
                          (_%hd183607183636%_
                           (let ()
                             (declare (not safe))
                             (##car _%e183606183633%_))))
                      (_%__kont185133185134%_
                       _%tl183605183630%_
                       _%tl183608183638%_
                       _%hd183607183636%_)))
                  (_%__kont185135185136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185135185136%_)))))
                                        (let ((__tmp186340
                                               (lambda (_%g183673183676%_
                                                        _%g183674183678%_)
                                                 (cons _%g183673183676%_
                                                       _%g183674183678%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp186340
                                           '()
                                           _%L183581%_))))
                                  (__tmp186341
                                   (cons '%#case-lambda _%clauses183681%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp186341 _%L183123%_)))
                         _%clause183539183578%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop183534183562%_
                                                 _%target183531183557%_
                                                 '()))
                                              (_%g183525183544%_
                                               _%g183526183547%_)))))
                                    (_%g183525183544%_ _%g183526183547%_))))
                            (_%g183525183544%_ _%g183526183547%_)))))
                (_%g183524183683%_ _%L183123%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl183688%_
                                                      (let ((__tmp186342
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L183125%_ '())
                                             (cons _%specializer-lambda-expr183523%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr183686%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp186342 _%stx182069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl183690%_
                                                      (_%generate-specializer-impl182073%_
                                                       _%$klass183380%_
                                                       _%$method-table183382%_
                                                       _%methods-bind183407%_
                                                       _%slots-bind183431%_
                                                       _%specializer-impl183688%_)))
                                                (let ((__tmp186344
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182142%_)))
                                                      (__tmp186343
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id183378%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp186344
                                                   '" => "
                                                   __tmp186343))
                                                (_%generate-specializer-def182074%_
                                                 _%L182142%_
                                                 _%specializer-id183378%_
                                                 _%specializer-impl183690%_))))
                                        _%hd183056183118%_
                                        _%hd183053183110%_
                                        _%hd183050183102%_)
                                       (_%g183032183062%_ _%g183033183065%_))))
                               (_%g183032183062%_ _%g183033183065%_))
                           (_%g183032183062%_ _%g183033183065%_))
                       (_%g183032183062%_ _%g183033183065%_))))
               (_%g183032183062%_ _%g183033183065%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183032183062%_
                                                    _%g183033183065%_))))
                                           (_%g183032183062%_
                                            _%g183033183065%_))))
                                   (_%g183032183062%_ _%g183033183065%_))))
                           (_%g183032183062%_ _%g183033183065%_))))
                   (_%g183032183062%_ _%g183033183065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183032183062%_
                                                    _%g183033183065%_)))))
                                       (_%g183031183693%_ _%L182141%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L182141%_))
                                         (let* ((_%g183697183750%_
                                                 (lambda (_%g183698183747%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g183698183747%_))))
                                                (_%g183696184921%_
                                                 (lambda (_%g183698183753%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g183698183753%_))
                                                       (let ((_%e183704183755%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g183698183753%_))))
                 (let ((_%hd183705183758%_
                        (let ()
                          (declare (not safe))
                          (##car _%e183704183755%_)))
                       (_%tl183706183760%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e183704183755%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd183705183758%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd183705183758%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl183706183760%_))
                               (let ((_%e183707183763%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl183706183760%_))))
                                 (let ((_%hd183708183766%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e183707183763%_)))
                                       (_%tl183709183768%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e183707183763%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd183708183766%_))
                                       (let ((_%e183710183771%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd183708183766%_))))
                                         (let ((_%hd183711183774%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e183710183771%_)))
                                               (_%tl183712183776%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e183710183771%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd183711183774%_))
                                               (let ((_%e183713183779%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd183711183774%_))))
                                                 (let ((_%hd183714183782%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e183713183779%_)))
                                                       (_%tl183715183784%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e183713183779%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd183714183782%_))
                                                       (let ((_%e183716183787%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd183714183782%_))))
                 (let ((_%hd183717183790%_
                        (let ()
                          (declare (not safe))
                          (##car _%e183716183787%_)))
                       (_%tl183718183792%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e183716183787%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl183718183792%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl183715183784%_))
                           (let ((_%e183719183795%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl183715183784%_))))
                             (let ((_%hd183720183798%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e183719183795%_)))
                                   (_%tl183721183800%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e183719183795%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd183720183798%_))
                                   (let ((_%e183722183803%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd183720183798%_))))
                                     (let ((_%hd183723183806%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e183722183803%_)))
                                           (_%tl183724183808%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e183722183803%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd183723183806%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd183723183806%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl183724183808%_))
                                                   (let ((_%e183725183811%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl183724183808%_))))
                                                     (let ((_%hd183726183814%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e183725183811%_)))
                                                           (_%tl183727183816%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e183725183811%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd183726183814%_))
                                                           (let ((_%e183728183819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd183726183814%_))))
                     (let ((_%hd183729183822%_
                            (let ()
                              (declare (not safe))
                              (##car _%e183728183819%_)))
                           (_%tl183730183824%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e183728183819%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd183729183822%_))
                           (let ((_%e183731183827%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd183729183822%_))))
                             (let ((_%hd183732183830%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e183731183827%_)))
                                   (_%tl183733183832%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e183731183827%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd183732183830%_))
                                   (let ((_%e183734183835%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd183732183830%_))))
                                     (let ((_%hd183735183838%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e183734183835%_)))
                                           (_%tl183736183840%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e183734183835%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl183736183840%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl183733183832%_))
                                               (let ((_%e183737183843%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl183733183832%_))))
                                                 (let ((_%hd183738183846%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e183737183843%_)))
                                                       (_%tl183739183848%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e183737183843%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl183739183848%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl183730183824%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl183727183816%_))
                       (let ((_%e183740183851%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl183727183816%_))))
                         (let ((_%hd183741183854%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e183740183851%_)))
                               (_%tl183742183856%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e183740183851%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl183742183856%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl183721183800%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl183712183776%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl183709183768%_))
                                           (let ((_%e183743183859%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl183709183768%_))))
                                             (let ((_%hd183744183862%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e183743183859%_)))
                                                   (_%tl183745183864%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e183743183859%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl183745183864%_))
                                                   ((lambda (_%L183867%_
                                                             _%L183868%_
                                                             _%L183869%_
                                                             _%L183870%_
                                                             _%L183871%_)
                                                      (let* ((_%g183911183973%_
                                                              (lambda (_%g183912183970%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g183912183970%_))))
                     (_%g183910184918%_
                      (lambda (_%g183912183976%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g183912183976%_))
                            (let ((_%e183918183978%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183912183976%_))))
                              (let ((_%hd183919183981%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183918183978%_)))
                                    (_%tl183920183983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183918183978%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd183919183981%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd183919183981%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183920183983%_))
                                            (let ((_%e183921183986%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183920183983%_))))
                                              (let ((_%hd183922183989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183921183986%_)))
                                                    (_%tl183923183991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183921183986%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl183923183991%_))
                                                    (let ((_%e183924183994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl183923183991%_))))
                                                      (let ((_%hd183925183997%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e183924183994%_)))
                    (_%tl183926183999%_
                     (let () (declare (not safe)) (##cdr _%e183924183994%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd183925183997%_))
                    (let ((_%e183927184002%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd183925183997%_))))
                      (let ((_%hd183928184005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183927184002%_)))
                            (_%tl183929184007%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183927184002%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd183928184005%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd183928184005%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl183929184007%_))
                                    (let ((_%e183930184010%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl183929184007%_))))
                                      (let ((_%hd183931184013%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183930184010%_)))
                                            (_%tl183932184015%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183930184010%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd183931184013%_))
                                            (let ((_%e183933184018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd183931184013%_))))
                                              (let ((_%hd183934184021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183933184018%_)))
                                                    (_%tl183935184023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183933184018%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd183934184021%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd183934184021%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl183935184023%_))
                                                            (let ((_%e183936184026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl183935184023%_))))
                      (let ((_%hd183937184029%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183936184026%_)))
                            (_%tl183938184031%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183936184026%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183938184031%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183932184015%_))
                                (let ((_%e183939184034%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183932184015%_))))
                                  (let ((_%hd183940184037%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183939184034%_)))
                                        (_%tl183941184039%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183939184034%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183940184037%_))
                                        (let ((_%e183942184042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183940184037%_))))
                                          (let ((_%hd183943184045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183942184042%_)))
                                                (_%tl183944184047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183942184042%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd183943184045%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd183943184045%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl183944184047%_))
                                                        (let ((_%e183945184050%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl183944184047%_))))
                  (let ((_%hd183946184053%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183945184050%_)))
                        (_%tl183947184055%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183945184050%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl183947184055%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183941184039%_))
                            (let ((_%e183948184058%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183941184039%_))))
                              (let ((_%hd183949184061%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183948184058%_)))
                                    (_%tl183950184063%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183948184058%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd183949184061%_))
                                    (let ((_%e183951184066%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd183949184061%_))))
                                      (let ((_%hd183952184069%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183951184066%_)))
                                            (_%tl183953184071%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183951184066%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd183952184069%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd183952184069%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl183953184071%_))
                                                    (let ((_%e183954184074%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl183953184071%_))))
                                                      (let ((_%hd183955184077%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e183954184074%_)))
                    (_%tl183956184079%_
                     (let () (declare (not safe)) (##cdr _%e183954184074%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl183956184079%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl183950184063%_))
                        (if (let ((__tmp186345
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl183950184063%_))))
                              (declare (not safe))
                              (##fx>= __tmp186345 '1))
                            (let ((_g186346_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl183950184063%_
                                      '1))))
                              (begin
                                (let ((_g186347_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g186346_)
                                             (##values-length _g186346_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g186347_ 2)))
                                      (error "Context expects 2 values"
                                             _g186347_)))
                                (let ((_%target183957184082%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186346_ 0)))
                                      (_%tl183959184084%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186346_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl183959184084%_))
                                      (let ((_%e183966184087%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl183959184084%_))))
                                        (let ((_%hd183967184090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e183966184087%_)))
                                              (_%tl183968184092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e183966184087%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183968184092%_))
                                              (letrec ((_%loop183960184095%_
                                                        (lambda (_%hd183958184098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref183964184100%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd183958184098%_))
                      (let ((_%e183961184103%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd183958184098%_))))
                        (let ((_%lp-hd183962184106%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183961184103%_)))
                              (_%lp-tl183963184108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183961184103%_))))
                          (_%loop183960184095%_
                           _%lp-tl183963184108%_
                           (cons _%lp-hd183962184106%_
                                 _%kw-ref183964184100%_))))
                      (let ((_%kw-ref183965184111%_
                             (reverse _%kw-ref183964184100%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183926183999%_))
                            ((lambda (_%L184114%_
                                      _%L184115%_
                                      _%L184116%_
                                      _%L184117%_
                                      _%L184118%_)
                               (let* ((_%kw-count184169%_
                                       (length (let ((__tmp186348
                                                      (lambda (_%g184161184164%_
                                                               _%g184162184166%_)
                                                        (cons _%g184161184164%_
                                                              _%g184162184166%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp186348
                                                  '()
                                                  _%L184115%_))))
                                      (_%self-index184171%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count184169%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L183869%_))
                                     (let* ((_%g184175184189%_
                                             (lambda (_%g184176184186%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g184176184186%_))))
                                            (_%g184174184312%_
                                             (lambda (_%g184176184192%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g184176184192%_))
                                                   (let ((_%e184179184194%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g184176184192%_))))
                                                     (let ((_%hd184180184197%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e184179184194%_)))
                                                           (_%tl184181184199%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e184179184194%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl184181184199%_))
                                                           (let ((_%e184182184202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl184181184199%_))))
                     (let ((_%hd184183184205%_
                            (let ()
                              (declare (not safe))
                              (##car _%e184182184202%_)))
                           (_%tl184184184207%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e184182184202%_))))
                       ((lambda (_%L184210%_ _%L184211%_)
                          (let* ((_%self184228%_
                                  (list-ref _%L184211%_ _%self-index184171%_))
                                 (_%receiver184233%_
                                  (let ((_%$e184230%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L184210%_))))
                                    (if _%$e184230%_
                                        _%$e184230%_
                                        _%self184228%_))))
                            (for-each
                             (lambda (_%g184235184237%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver184233%_
                                _%method-calls182161%_
                                _%slot-refs182162%_
                                _%g184235184237%_))
                             _%L184210%_)
                            (if (_%no-specializer?182165%_)
                                _%stx182069%_
                                (let* ((_%specializer-id184246%_
                                        (let* ((_%id184240%_
                                                (let ((__tmp186349
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182142%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp186349
                                                   '"::specialize")))
                                               (_%specializer-id184243%_
                                                (let ((__tmp186350
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx182069%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id184240%_
                                                   __tmp186350))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id184243%_))
                                          _%specializer-id184243%_))
                                       (_%$klass184248%_
                                        (let ((__tmp186351
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp186351)))
                                       (_%$method-table184250%_
                                        (let ((__tmp186352
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp186352)))
                                       (_%methods184252%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls182161%_)))
                                       (_%$methods184256%_
                                        (let ((__tmp186353
                                               (lambda (_%id184254%_)
                                                 (let ((__tmp186354
                                                        (gensym _%id184254%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp186354)))))
                                          (declare (not safe))
                                          (##map __tmp186353
                                                 _%methods184252%_)))
                                       (_%_184265%_
                                        (let ((__tmp186355
                                               (lambda (_%g184257184260%_
                                                        _%g184258184262%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls182161%_
                                                    _%g184257184260%_
                                                    _%g184258184262%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp186355
                                           _%methods184252%_
                                           _%$methods184256%_)))
                                       (_%methods-bind184275%_
                                        (let ((__tmp186356
                                               (lambda (_%g184267184270%_
                                                        _%g184268184272%_)
                                                 (_%generate-method-bind182071%_
                                                  _%$klass184248%_
                                                  _%$method-table184250%_
                                                  _%g184267184270%_
                                                  _%g184268184272%_))))
                                          (declare (not safe))
                                          (##map __tmp186356
                                                 _%methods184252%_
                                                 _%$methods184256%_)))
                                       (_%slots184277%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs182162%_)))
                                       (_%$slots184281%_
                                        (let ((__tmp186357
                                               (lambda (_%id184279%_)
                                                 (let ((__tmp186358
                                                        (gensym _%id184279%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp186358)))))
                                          (declare (not safe))
                                          (##map __tmp186357 _%slots184277%_)))
                                       (_%_184290%_
                                        (let ((__tmp186359
                                               (lambda (_%g184282184285%_
                                                        _%g184283184287%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs182162%_
                                                    _%g184282184285%_
                                                    _%g184283184287%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp186359
                                           _%slots184277%_
                                           _%$slots184281%_)))
                                       (_%slots-bind184299%_
                                        (let ((__tmp186360
                                               (lambda (_%g184291184294%_
                                                        _%g184292184296%_)
                                                 (_%generate-slot-bind182072%_
                                                  _%$klass184248%_
                                                  _%g184291184294%_
                                                  _%g184292184296%_))))
                                          (declare (not safe))
                                          (##map __tmp186360
                                                 _%slots184277%_
                                                 _%$slots184281%_)))
                                       (_%specializer-impl184307%_
                                        (let* ((_%specializer-body184305%_
                                                (map (lambda (_%g184300184302%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver184233%_
                                                        _%$klass184248%_
                                                        _%method-calls182161%_
                                                        _%slot-refs182162%_
                                                        _%g184300184302%_))
                                                     _%L184210%_))
                                               (__tmp186361
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L183871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L183870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp186362
                                   (cons '%#lambda
                                         (cons _%L184211%_
                                               _%specializer-body184305%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp186362 _%L183869%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L183868%_ '())))
                                      '()))
                          '())
                    (cons _%L183867%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp186361
                                           _%stx182069%_)))
                                       (_%specializer-impl184309%_
                                        (_%generate-specializer-impl182073%_
                                         _%$klass184248%_
                                         _%$method-table184250%_
                                         _%methods-bind184275%_
                                         _%slots-bind184299%_
                                         _%specializer-impl184307%_)))
                                  (let ((__tmp186364
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L182142%_)))
                                        (__tmp186363
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id184246%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp186364
                                     '" => "
                                     __tmp186363))
                                  (_%generate-specializer-def182074%_
                                   _%L182142%_
                                   _%specializer-id184246%_
                                   _%specializer-impl184309%_)))))
                        _%tl184184184207%_
                        _%hd184183184205%_)))
                   (_%g184175184189%_ _%g184176184192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g184175184189%_
                                                    _%g184176184192%_)))))
                                       (_%g184174184312%_ _%L183869%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L183869%_))
                                         (let* ((_%g184316184346%_
                                                 (lambda (_%g184317184343%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g184317184343%_))))
                                                (_%g184315184914%_
                                                 (lambda (_%g184317184349%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g184317184349%_))
                                                       (let ((_%e184321184351%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g184317184349%_))))
                 (let ((_%hd184322184354%_
                        (let ()
                          (declare (not safe))
                          (##car _%e184321184351%_)))
                       (_%tl184323184356%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e184321184351%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl184323184356%_))
                       (let ((_%e184324184359%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl184323184356%_))))
                         (let ((_%hd184325184362%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e184324184359%_)))
                               (_%tl184326184364%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e184324184359%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd184325184362%_))
                               (let ((_%e184327184367%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd184325184362%_))))
                                 (let ((_%hd184328184370%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e184327184367%_)))
                                       (_%tl184329184372%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e184327184367%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd184328184370%_))
                                       (let ((_%e184330184375%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd184328184370%_))))
                                         (let ((_%hd184331184378%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e184330184375%_)))
                                               (_%tl184332184380%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e184330184375%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd184331184378%_))
                                               (let ((_%e184333184383%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd184331184378%_))))
                                                 (let ((_%hd184334184386%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e184333184383%_)))
                                                       (_%tl184335184388%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e184333184383%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl184335184388%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl184332184380%_))
                                                           (let ((_%e184336184391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl184332184380%_))))
                     (let ((_%hd184337184394%_
                            (let ()
                              (declare (not safe))
                              (##car _%e184336184391%_)))
                           (_%tl184338184396%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e184336184391%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl184338184396%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl184329184372%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl184326184364%_))
                                   (let ((_%e184339184399%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl184326184364%_))))
                                     (let ((_%hd184340184402%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e184339184399%_)))
                                           (_%tl184341184404%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e184339184399%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl184341184404%_))
                                           ((lambda (_%L184407%_
                                                     _%L184408%_
                                                     _%L184409%_)
                                              (let* ((_%g184433184447%_
                                                      (lambda (_%g184434184444%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g184434184444%_))))
                                                     (_%g184432184494%_
                                                      (lambda (_%g184434184450%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g184434184450%_))
                                                            (let ((_%e184437184452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g184434184450%_))))
                      (let ((_%hd184438184455%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184437184452%_)))
                            (_%tl184439184457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184437184452%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl184439184457%_))
                            (let ((_%e184440184460%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl184439184457%_))))
                              (let ((_%hd184441184463%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e184440184460%_)))
                                    (_%tl184442184465%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e184440184460%_))))
                                ((lambda (_%L184468%_ _%L184469%_)
                                   (let* ((_%self184482%_
                                           (list-ref
                                            _%L184469%_
                                            _%self-index184171%_))
                                          (_%receiver184487%_
                                           (let ((_%$e184484%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L184468%_))))
                                             (if _%$e184484%_
                                                 _%$e184484%_
                                                 _%self184482%_))))
                                     (for-each
                                      (lambda (_%g184489184491%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver184487%_
                                         _%method-calls182161%_
                                         _%slot-refs182162%_
                                         _%g184489184491%_))
                                      _%L184468%_)))
                                 _%tl184442184465%_
                                 _%hd184441184463%_)))
                            (_%g184433184447%_ _%g184434184450%_))))
                    (_%g184433184447%_ _%g184434184450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g184432184494%_
                                                 _%L184408%_))
                                              (let* ((_%g184497184516%_
                                                      (lambda (_%g184498184513%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g184498184513%_))))
                                                     (_%g184496184627%_
                                                      (lambda (_%g184498184519%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g184498184519%_))
                                                            (let ((_%e184500184521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g184498184519%_))))
                      (let ((_%hd184501184524%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184500184521%_)))
                            (_%tl184502184526%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184500184521%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl184502184526%_))
                            (let ((_g186365_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl184502184526%_
                                      '0))))
                              (begin
                                (let ((_g186366_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g186365_)
                                             (##values-length _g186365_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g186366_ 2)))
                                      (error "Context expects 2 values"
                                             _g186366_)))
                                (let ((_%target184503184529%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186365_ 0)))
                                      (_%tl184505184531%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186365_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184505184531%_))
                                      (letrec ((_%loop184506184534%_
                                                (lambda (_%hd184504184537%_
                                                         _%clause184510184539%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd184504184537%_))
                                                      (let ((_%e184507184542%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd184504184537%_))))
                (let ((_%lp-hd184508184545%_
                       (let () (declare (not safe)) (##car _%e184507184542%_)))
                      (_%lp-tl184509184547%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e184507184542%_))))
                  (_%loop184506184534%_
                   _%lp-tl184509184547%_
                   (cons _%lp-hd184508184545%_ _%clause184510184539%_))))
              (let ((_%clause184511184550%_ (reverse _%clause184510184539%_)))
                ((lambda (_%L184553%_)
                   (for-each
                    (lambda (_%clause184566%_)
                      (let* ((_%g184568184579%_
                              (lambda (_%g184569184576%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g184569184576%_))))
                             (_%g184567184617%_
                              (lambda (_%g184569184582%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g184569184582%_))
                                    (let ((_%e184572184584%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g184569184582%_))))
                                      (let ((_%hd184573184587%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e184572184584%_)))
                                            (_%tl184574184589%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e184572184584%_))))
                                        ((lambda (_%L184592%_ _%L184593%_)
                                           (let* ((_%self184605%_
                                                   (list-ref
                                                    _%L184593%_
                                                    _%self-index184171%_))
                                                  (_%receiver184610%_
                                                   (let ((_%$e184607%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L184592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e184607%_
                                                         _%$e184607%_
                                                         _%self184605%_))))
                                             (for-each
                                              (lambda (_%g184612184614%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver184610%_
                                                 _%method-calls182161%_
                                                 _%slot-refs182162%_
                                                 _%g184612184614%_))
                                              _%L184592%_)))
                                         _%tl184574184589%_
                                         _%hd184573184587%_)))
                                    (_%g184568184579%_ _%g184569184582%_)))))
                        (_%g184567184617%_ _%clause184566%_)))
                    (let ((__tmp186367
                           (lambda (_%g184619184622%_ _%g184620184624%_)
                             (cons _%g184619184622%_ _%g184620184624%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186367 '() _%L184553%_))))
                 _%clause184511184550%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop184506184534%_
                                         _%target184503184529%_
                                         '()))
                                      (_%g184497184516%_ _%g184498184519%_)))))
                            (_%g184497184516%_ _%g184498184519%_))))
                    (_%g184497184516%_ _%g184498184519%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g184496184627%_
                                                 _%L184407%_))
                                              (if (_%no-specializer?182165%_)
                                                  _%stx182069%_
                                                  (let* ((_%specializer-id184636%_
                                                          (let* ((_%id184630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186368
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L182142%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp186368 '"::specialize")))
                         (_%specializer-id184633%_
                          (let ((__tmp186369
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx182069%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id184630%_
                             __tmp186369))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id184633%_))
                    _%specializer-id184633%_))
                 (_%$klass184638%_
                  (let ((__tmp186370
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186370)))
                 (_%$method-table184640%_
                  (let ((__tmp186371
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186371)))
                 (_%methods184642%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls182161%_)))
                 (_%$methods184646%_
                  (let ((__tmp186372
                         (lambda (_%id184644%_)
                           (let ((__tmp186373 (gensym _%id184644%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186373)))))
                    (declare (not safe))
                    (##map __tmp186372 _%methods184642%_)))
                 (_%_184655%_
                  (let ((__tmp186374
                         (lambda (_%g184647184650%_ _%g184648184652%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls182161%_
                              _%g184647184650%_
                              _%g184648184652%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp186374
                     _%methods184642%_
                     _%$methods184646%_)))
                 (_%methods-bind184665%_
                  (let ((__tmp186375
                         (lambda (_%g184657184660%_ _%g184658184662%_)
                           (_%generate-method-bind182071%_
                            _%$klass184638%_
                            _%$method-table184640%_
                            _%g184657184660%_
                            _%g184658184662%_))))
                    (declare (not safe))
                    (##map __tmp186375 _%methods184642%_ _%$methods184646%_)))
                 (_%slots184667%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs182162%_)))
                 (_%$slots184671%_
                  (let ((__tmp186376
                         (lambda (_%id184669%_)
                           (let ((__tmp186377 (gensym _%id184669%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186377)))))
                    (declare (not safe))
                    (##map __tmp186376 _%slots184667%_)))
                 (_%_184680%_
                  (let ((__tmp186378
                         (lambda (_%g184672184675%_ _%g184673184677%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs182162%_
                              _%g184672184675%_
                              _%g184673184677%_)))))
                    (declare (not safe))
                    (##for-each __tmp186378 _%slots184667%_ _%$slots184671%_)))
                 (_%slots-bind184689%_
                  (let ((__tmp186379
                         (lambda (_%g184681184684%_ _%g184682184686%_)
                           (_%generate-slot-bind182072%_
                            _%$klass184638%_
                            _%g184681184684%_
                            _%g184682184686%_))))
                    (declare (not safe))
                    (##map __tmp186379 _%slots184667%_ _%$slots184671%_)))
                 (_%specializer-lambda-expr184767%_
                  (let* ((_%g184691184705%_
                          (lambda (_%g184692184702%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g184692184702%_))))
                         (_%g184690184764%_
                          (lambda (_%g184692184708%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g184692184708%_))
                                (let ((_%e184695184710%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g184692184708%_))))
                                  (let ((_%hd184696184713%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e184695184710%_)))
                                        (_%tl184697184715%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e184695184710%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl184697184715%_))
                                        (let ((_%e184698184718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl184697184715%_))))
                                          (let ((_%hd184699184721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e184698184718%_)))
                                                (_%tl184700184723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e184698184718%_))))
                                            ((lambda (_%L184726%_ _%L184727%_)
                                               (let* ((_%self184750%_
                                                       (list-ref
                                                        _%L184727%_
                                                        _%self-index184171%_))
                                                      (_%receiver184755%_
                                                       (let ((_%$e184752%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L184726%_))))
                 (if _%$e184752%_ _%$e184752%_ _%self184750%_)))
              (_%body184761%_
               (map (lambda (_%g184756184758%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver184755%_
                       _%$klass184638%_
                       _%method-calls182161%_
                       _%slot-refs182162%_
                       _%g184756184758%_))
                    _%L184726%_))
              (__tmp186380 (cons '%#lambda (cons _%L184727%_ _%body184761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp186380
                                                  _%L184408%_)))
                                             _%tl184700184723%_
                                             _%hd184699184721%_)))
                                        (_%g184691184705%_
                                         _%g184692184708%_))))
                                (_%g184691184705%_ _%g184692184708%_)))))
                    (_%g184690184764%_ _%L184408%_)))
                 (_%specializer-case-lambda-expr184907%_
                  (let* ((_%g184769184788%_
                          (lambda (_%g184770184785%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g184770184785%_))))
                         (_%g184768184904%_
                          (lambda (_%g184770184791%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g184770184791%_))
                                (let ((_%e184772184793%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g184770184791%_))))
                                  (let ((_%hd184773184796%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e184772184793%_)))
                                        (_%tl184774184798%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e184772184793%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl184774184798%_))
                                        (let ((_g186381_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl184774184798%_
                                                  '0))))
                                          (begin
                                            (let ((_g186382_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g186381_)
                                                         (##values-length
                                                          _g186381_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g186382_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g186382_)))
                                            (let ((_%target184775184801%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g186381_
                                                      0)))
                                                  (_%tl184777184803%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g186381_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl184777184803%_))
                                                  (letrec ((_%loop184778184806%_
                                                            (lambda (_%hd184776184809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause184782184811%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd184776184809%_))
                          (let ((_%e184779184814%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd184776184809%_))))
                            (let ((_%lp-hd184780184817%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184779184814%_)))
                                  (_%lp-tl184781184819%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184779184814%_))))
                              (_%loop184778184806%_
                               _%lp-tl184781184819%_
                               (cons _%lp-hd184780184817%_
                                     _%clause184782184811%_))))
                          (let ((_%clause184783184822%_
                                 (reverse _%clause184782184811%_)))
                            ((lambda (_%L184825%_)
                               (let* ((_%clauses184902%_
                                       (map (lambda (_%clause184839%_)
                                              (let* ((_%g184841184852%_
                                                      (lambda (_%g184842184849%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g184842184849%_))))
                                                     (_%g184840184892%_
                                                      (lambda (_%g184842184855%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g184842184855%_))
                                                            (let ((_%e184845184857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g184842184855%_))))
                      (let ((_%hd184846184860%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184845184857%_)))
                            (_%tl184847184862%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184845184857%_))))
                        ((lambda (_%L184865%_ _%L184866%_)
                           (let* ((_%self184878%_
                                   (list-ref _%L184866%_ _%self-index184171%_))
                                  (_%receiver184883%_
                                   (let ((_%$e184880%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L184865%_))))
                                     (if _%$e184880%_
                                         _%$e184880%_
                                         _%self184878%_)))
                                  (_%body184889%_
                                   (map (lambda (_%g184884184886%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver184883%_
                                           _%$klass184638%_
                                           _%method-calls182161%_
                                           _%slot-refs182162%_
                                           _%g184884184886%_))
                                        _%L184865%_)))
                             (cons _%L184866%_ _%body184889%_)))
                         _%tl184847184862%_
                         _%hd184846184860%_)))
                    (_%g184841184852%_ _%g184842184855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g184840184892%_
                                                 _%clause184839%_)))
                                            (let ((__tmp186383
                                                   (lambda (_%g184894184897%_
                                                            _%g184895184899%_)
                                                     (cons _%g184894184897%_
                                                           _%g184895184899%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp186383
                                               '()
                                               _%L184825%_))))
                                      (__tmp186384
                                       (cons '%#case-lambda
                                             _%clauses184902%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp186384
                                  _%L184407%_)))
                             _%clause184783184822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop184778184806%_
                                                     _%target184775184801%_
                                                     '()))
                                                  (_%g184769184788%_
                                                   _%g184770184791%_)))))
                                        (_%g184769184788%_
                                         _%g184770184791%_))))
                                (_%g184769184788%_ _%g184770184791%_)))))
                    (_%g184768184904%_ _%L184407%_)))
                 (_%specializer-impl184909%_
                  (let ((__tmp186385
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L183871%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L183870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp186386
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L184409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr184767%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr184907%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp186386
                                                _%stx182069%_))
                                             '()))
                                 '())
                           (cons _%L183868%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L183867%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp186385 _%stx182069%_)))
                 (_%specializer-impl184911%_
                  (_%generate-specializer-impl182073%_
                   _%$klass184638%_
                   _%$method-table184640%_
                   _%methods-bind184665%_
                   _%slots-bind184689%_
                   _%specializer-impl184909%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186388
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L182142%_)))
                                                          (__tmp186387
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id184636%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp186388
                                                       '" => "
                                                       __tmp186387))
                                                    (_%generate-specializer-def182074%_
                                                     _%L182142%_
                                                     _%specializer-id184636%_
                                                     _%specializer-impl184911%_))))
                                            _%hd184340184402%_
                                            _%hd184337184394%_
                                            _%hd184334184386%_)
                                           (_%g184316184346%_
                                            _%g184317184349%_))))
                                   (_%g184316184346%_ _%g184317184349%_))
                               (_%g184316184346%_ _%g184317184349%_))
                           (_%g184316184346%_ _%g184317184349%_))))
                   (_%g184316184346%_ _%g184317184349%_))
               (_%g184316184346%_ _%g184317184349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g184316184346%_
                                                _%g184317184349%_))))
                                       (_%g184316184346%_ _%g184317184349%_))))
                               (_%g184316184346%_ _%g184317184349%_))))
                       (_%g184316184346%_ _%g184317184349%_))))
               (_%g184316184346%_ _%g184317184349%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g184315184914%_ _%L183869%_))
                                         _%stx182069%_))))
                             _%hd183967184090%_
                             _%kw-ref183965184111%_
                             _%hd183955184077%_
                             _%hd183946184053%_
                             _%hd183937184029%_)
                            (_%g183911183973%_ _%g183912183976%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop183960184095%_
                                                 _%target183957184082%_
                                                 '()))
                                              (_%g183911183973%_
                                               _%g183912183976%_))))
                                      (_%g183911183973%_ _%g183912183976%_)))))
                            (_%g183911183973%_ _%g183912183976%_))
                        (_%g183911183973%_ _%g183912183976%_))
                    (_%g183911183973%_ _%g183912183976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g183911183973%_
                                                     _%g183912183976%_))
                                                (_%g183911183973%_
                                                 _%g183912183976%_))
                                            (_%g183911183973%_
                                             _%g183912183976%_))))
                                    (_%g183911183973%_ _%g183912183976%_))))
                            (_%g183911183973%_ _%g183912183976%_))
                        (_%g183911183973%_ _%g183912183976%_))))
                (_%g183911183973%_ _%g183912183976%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g183911183973%_
                                                     _%g183912183976%_))
                                                (_%g183911183973%_
                                                 _%g183912183976%_))))
                                        (_%g183911183973%_
                                         _%g183912183976%_))))
                                (_%g183911183973%_ _%g183912183976%_))
                            (_%g183911183973%_ _%g183912183976%_))))
                    (_%g183911183973%_ _%g183912183976%_))
                (_%g183911183973%_ _%g183912183976%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g183911183973%_
                                                     _%g183912183976%_))))
                                            (_%g183911183973%_
                                             _%g183912183976%_))))
                                    (_%g183911183973%_ _%g183912183976%_))
                                (_%g183911183973%_ _%g183912183976%_))
                            (_%g183911183973%_ _%g183912183976%_))))
                    (_%g183911183973%_ _%g183912183976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g183911183973%_
                                                     _%g183912183976%_))))
                                            (_%g183911183973%_
                                             _%g183912183976%_))
                                        (_%g183911183973%_ _%g183912183976%_))
                                    (_%g183911183973%_ _%g183912183976%_))))
                            (_%g183911183973%_ _%g183912183976%_)))))
                (_%g183910184918%_ _%L183868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd183744183862%_
                                                    _%hd183741183854%_
                                                    _%hd183738183846%_
                                                    _%hd183735183838%_
                                                    _%hd183717183790%_)
                                                   (_%g183697183750%_
                                                    _%g183698183753%_))))
                                           (_%g183697183750%_
                                            _%g183698183753%_))
                                       (_%g183697183750%_ _%g183698183753%_))
                                   (_%g183697183750%_ _%g183698183753%_))
                               (_%g183697183750%_ _%g183698183753%_))))
                       (_%g183697183750%_ _%g183698183753%_))
                   (_%g183697183750%_ _%g183698183753%_))
               (_%g183697183750%_ _%g183698183753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g183697183750%_
                                                _%g183698183753%_))
                                           (_%g183697183750%_
                                            _%g183698183753%_))))
                                   (_%g183697183750%_ _%g183698183753%_))))
                           (_%g183697183750%_ _%g183698183753%_))))
                   (_%g183697183750%_ _%g183698183753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183697183750%_
                                                    _%g183698183753%_))
                                               (_%g183697183750%_
                                                _%g183698183753%_))
                                           (_%g183697183750%_
                                            _%g183698183753%_))))
                                   (_%g183697183750%_ _%g183698183753%_))))
                           (_%g183697183750%_ _%g183698183753%_))
                       (_%g183697183750%_ _%g183698183753%_))))
               (_%g183697183750%_ _%g183698183753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g183697183750%_
                                                _%g183698183753%_))))
                                       (_%g183697183750%_ _%g183698183753%_))))
                               (_%g183697183750%_ _%g183698183753%_))
                           (_%g183697183750%_ _%g183698183753%_))
                       (_%g183697183750%_ _%g183698183753%_))))
               (_%g183697183750%_ _%g183698183753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g183696184921%_ _%L182141%_))
                                         _%stx182069%_))))))))
                  (_%__kont185155185156%_ (lambda () _%stx182069%_)))
              (let ((_%__match185184185185%_
                     (lambda (_%e182081182109%_
                              _%hd182082182112%_
                              _%tl182083182114%_
                              _%e182084182117%_
                              _%hd182085182120%_
                              _%tl182086182122%_
                              _%e182087182125%_
                              _%hd182088182128%_
                              _%tl182089182130%_
                              _%e182090182133%_
                              _%hd182091182136%_
                              _%tl182092182138%_)
                       (let ((_%L182141%_ _%hd182091182136%_)
                             (_%L182142%_ _%hd182088182128%_))
                         (if (let ((__tmp186389
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L182142%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp186389))
                             (_%__kont185153185154%_ _%L182141%_ _%L182142%_)
                             (_%__kont185155185156%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx185151185152%_))
                    (let ((_%e182081182109%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx185151185152%_))))
                      (let ((_%tl182083182114%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e182081182109%_)))
                            (_%hd182082182112%_
                             (let ()
                               (declare (not safe))
                               (##car _%e182081182109%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl182083182114%_))
                            (let ((_%e182084182117%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl182083182114%_))))
                              (let ((_%tl182086182122%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e182084182117%_)))
                                    (_%hd182085182120%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e182084182117%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd182085182120%_))
                                    (let ((_%e182087182125%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd182085182120%_))))
                                      (let ((_%tl182089182130%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e182087182125%_)))
                                            (_%hd182088182128%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e182087182125%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl182089182130%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl182086182122%_))
                                                (let ((_%e182090182133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl182086182122%_))))
                                                  (let ((_%tl182092182138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e182090182133%_)))
                                                        (_%hd182091182136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e182090182133%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl182092182138%_))
                                                        (_%__match185184185185%_
                                                         _%e182081182109%_
                                                         _%hd182082182112%_
                                                         _%tl182083182114%_
                                                         _%e182084182117%_
                                                         _%hd182085182120%_
                                                         _%tl182086182122%_
                                                         _%e182087182125%_
                                                         _%hd182088182128%_
                                                         _%tl182089182130%_
                                                         _%e182090182133%_
                                                         _%hd182091182136%_
                                                         _%tl182092182138%_)
                                                        (_%__kont185155185156%_))))
                                                (_%__kont185155185156%_))
                                            (_%__kont185155185156%_))))
                                    (_%__kont185155185156%_))))
                            (_%__kont185155185156%_))))
                    (_%__kont185155185156%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self181921%_ _%stx181922%_)
        (let* ((_%__stx185187185188%_ _%stx181922%_)
               (_%g181925181958%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx185187185188%_)))))
          (let ((_%__kont185189185190%_ (lambda (_%L182048%_) _%L182048%_))
                (_%__kont185191185192%_
                 (lambda (_%L181987%_ _%L181988%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self181921%_ _%L181987%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx185187185188%_))
                (let ((_%e181928182008%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx185187185188%_))))
                  (let ((_%tl181930182013%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e181928182008%_)))
                        (_%hd181929182011%_
                         (let ()
                           (declare (not safe))
                           (##car _%e181928182008%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl181930182013%_))
                        (let ((_%e181931182016%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl181930182013%_))))
                          (let ((_%tl181933182021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e181931182016%_)))
                                (_%hd181932182019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e181931182016%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd181932182019%_))
                                (let ((_%e181934182024%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd181932182019%_))))
                                  (let ((_%tl181936182029%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e181934182024%_)))
                                        (_%hd181935182027%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e181934182024%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd181935182027%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd181935182027%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl181936182029%_))
                                                (let ((_%e181937182032%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl181936182029%_))))
                                                  (let ((_%tl181939182037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e181937182032%_)))
                                                        (_%hd181938182035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e181937182032%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl181939182037%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl181933182021%_))
                                                            (let ((_%e181940182040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl181933182021%_))))
                      (let ((_%tl181942182045%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e181940182040%_)))
                            (_%hd181941182043%_
                             (let ()
                               (declare (not safe))
                               (##car _%e181940182040%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl181942182045%_))
                            (_%__kont185189185190%_ _%hd181938182035%_)
                            (let ()
                              (declare (not safe))
                              (_%g181925181958%_)))))
                    (let () (declare (not safe)) (_%g181925181958%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl181933182021%_))
                    (let ((_%e181951181979%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl181933182021%_))))
                      (let ((_%tl181953181984%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e181951181979%_)))
                            (_%hd181952181982%_
                             (let ()
                               (declare (not safe))
                               (##car _%e181951181979%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl181953181984%_))
                            (_%__kont185191185192%_
                             _%hd181952181982%_
                             _%hd181932182019%_)
                            (let ()
                              (declare (not safe))
                              (_%g181925181958%_)))))
                    (let () (declare (not safe)) (_%g181925181958%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl181933182021%_))
                                                    (let ((_%e181951181979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl181933182021%_))))
                                                      (let ((_%tl181953181984%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e181951181979%_)))
                    (_%hd181952181982%_
                     (let () (declare (not safe)) (##car _%e181951181979%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl181953181984%_))
                    (_%__kont185191185192%_
                     _%hd181952181982%_
                     _%hd181932182019%_)
                    (let () (declare (not safe)) (_%g181925181958%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g181925181958%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl181933182021%_))
                                                (let ((_%e181951181979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl181933182021%_))))
                                                  (let ((_%tl181953181984%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e181951181979%_)))
                                                        (_%hd181952181982%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e181951181979%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl181953181984%_))
                                                        (_%__kont185191185192%_
                                                         _%hd181952181982%_
                                                         _%hd181932182019%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g181925181958%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g181925181958%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl181933182021%_))
                                            (let ((_%e181951181979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl181933182021%_))))
                                              (let ((_%tl181953181984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e181951181979%_)))
                                                    (_%hd181952181982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e181951181979%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl181953181984%_))
                                                    (_%__kont185191185192%_
                                                     _%hd181952181982%_
                                                     _%hd181932182019%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g181925181958%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g181925181958%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl181933182021%_))
                                    (let ((_%e181951181979%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl181933182021%_))))
                                      (let ((_%tl181953181984%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e181951181979%_)))
                                            (_%hd181952181982%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e181951181979%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl181953181984%_))
                                            (_%__kont185191185192%_
                                             _%hd181952181982%_
                                             _%hd181932182019%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g181925181958%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g181925181958%_))))))
                        (let () (declare (not safe)) (_%g181925181958%_)))))
                (let () (declare (not safe)) (_%g181925181958%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self181837%_ _%stx181838%_)
        (let* ((_%g181840181861%_
                (lambda (_%g181841181858%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g181841181858%_))))
               (_%g181839181918%_
                (lambda (_%g181841181864%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g181841181864%_))
                      (let ((_%e181845181866%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g181841181864%_))))
                        (let ((_%hd181846181869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e181845181866%_)))
                              (_%tl181847181871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e181845181866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl181847181871%_))
                              (let ((_%e181848181874%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl181847181871%_))))
                                (let ((_%hd181849181877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e181848181874%_)))
                                      (_%tl181850181879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e181848181874%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl181850181879%_))
                                      (let ((_%e181851181882%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl181850181879%_))))
                                        (let ((_%hd181852181885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e181851181882%_)))
                                              (_%tl181853181887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e181851181882%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl181853181887%_))
                                              (let ((_%e181854181890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl181853181887%_))))
                                                (let ((_%hd181855181893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e181854181890%_)))
                                                      (_%tl181856181895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e181854181890%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl181856181895%_))
                                                      ((lambda (_%L181898%_
                                                                _%L181899%_
                                                                _%L181900%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self181837%_
                                                            _%L181899%_)))
                                                       _%hd181855181893%_
                                                       _%hd181852181885%_
                                                       _%hd181849181877%_)
                                                      (_%g181840181861%_
                                                       _%g181841181864%_))))
                                              (_%g181840181861%_
                                               _%g181841181864%_))))
                                      (_%g181840181861%_ _%g181841181864%_))))
                              (_%g181840181861%_ _%g181841181864%_))))
                      (_%g181840181861%_ _%g181841181864%_)))))
          (_%g181839181918%_ _%stx181838%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self180798%_ _%stx180799%_)
        (let* ((_%__stx185253185254%_ _%stx180799%_)
               (_%g180807181029%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx185253185254%_)))))
          (let ((_%__kont185255185256%_
                 (lambda (_%L181786%_ _%L181787%_ _%L181788%_ _%L181789%_)
                   (let ((__tmp186391
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self180798%_ 'methods)))
                         (__tmp186390
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181787%_))))
                     (declare (not safe))
                     (hash-put! __tmp186391 __tmp186390 '#t))
                   (for-each
                    (lambda (_%g181822181824%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self180798%_ _%g181822181824%_)))
                    (let ((__tmp186392
                           (lambda (_%g181826181829%_ _%g181827181831%_)
                             (cons _%g181826181829%_ _%g181827181831%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186392 '() _%L181786%_)))))
                (_%__kont185259185260%_
                 (lambda (_%L181621%_
                          _%L181622%_
                          _%L181623%_
                          _%L181624%_
                          _%L181625%_)
                   (let ((__tmp186394
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self180798%_ 'methods)))
                         (__tmp186393
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181622%_))))
                     (declare (not safe))
                     (hash-put! __tmp186394 __tmp186393 '#t))
                   (for-each
                    (lambda (_%g181665181667%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self180798%_ _%g181665181667%_)))
                    (let ((__tmp186395
                           (lambda (_%g181669181672%_ _%g181670181674%_)
                             (cons _%g181669181672%_ _%g181670181674%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186395 '() _%L181621%_)))))
                (_%__kont185263185264%_
                 (lambda (_%L181454%_ _%L181455%_ _%L181456%_)
                   (let ((__tmp186397
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self180798%_ 'slots)))
                         (__tmp186396
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181454%_))))
                     (declare (not safe))
                     (hash-put! __tmp186397 __tmp186396 '#t))))
                (_%__kont185265185266%_
                 (lambda (_%L181331%_ _%L181332%_ _%L181333%_ _%L181334%_)
                   (let ((__tmp186399
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self180798%_ 'slots)))
                         (__tmp186398
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181332%_))))
                     (declare (not safe))
                     (hash-put! __tmp186399 __tmp186398 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self180798%_ _%L181331%_))))
                (_%__kont185267185268%_
                 (lambda (_%L181205%_ _%L181206%_)
                   (let* ((_%accessor181228%_
                           (let ((__tmp186400
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L181206%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp186400)))
                          (_%klass181230%_
                           (let ((__tmp186401
                                  (##structure-ref
                                   _%accessor181228%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx180799%_
                              __tmp186401)))
                          (_%slot181232%_
                           (##structure-ref
                            _%accessor181228%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor181228%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass181230%_
                                    _%slot181232%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass181230%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp186403
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self180798%_ 'slots)))
                               (__tmp186402
                                (##structure-ref
                                 _%accessor181228%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp186403 __tmp186402 '#t))))))
                (_%__kont185269185270%_
                 (lambda (_%L181105%_ _%L181106%_ _%L181107%_)
                   (let* ((_%mutator181134%_
                           (let ((__tmp186404
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L181107%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp186404)))
                          (_%klass181136%_
                           (let ((__tmp186405
                                  (##structure-ref
                                   _%mutator181134%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx180799%_
                              __tmp186405)))
                          (_%slot181138%_
                           (##structure-ref
                            _%mutator181134%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator181134%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass181136%_
                                    _%slot181138%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass181136%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp186406
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self180798%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp186406 _%slot181138%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self180798%_ _%L181105%_)))))
                (_%__kont185271185272%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self180798%_ _%stx180799%_)))))
            (let* ((_%__match185752185753%_
                    (lambda (_%e181001181041%_
                             _%hd181002181044%_
                             _%tl181003181046%_
                             _%e181004181049%_
                             _%hd181005181052%_
                             _%tl181006181054%_
                             _%e181007181057%_
                             _%hd181008181060%_
                             _%tl181009181062%_
                             _%e181010181065%_
                             _%hd181011181068%_
                             _%tl181012181070%_
                             _%e181013181073%_
                             _%hd181014181076%_
                             _%tl181015181078%_
                             _%e181016181081%_
                             _%hd181017181084%_
                             _%tl181018181086%_
                             _%e181019181089%_
                             _%hd181020181092%_
                             _%tl181021181094%_
                             _%e181022181097%_
                             _%hd181023181100%_
                             _%tl181024181102%_)
                      (let ((_%L181105%_ _%hd181023181100%_)
                            (_%L181106%_ _%hd181020181092%_)
                            (_%L181107%_ _%hd181011181068%_))
                        (if (and (let ((__tmp186407
                                        (let ((__tmp186408
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L181107%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp186408))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp186407
                                    'gxc#!mutator::t))
                                 (let ((__tmp186409
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self180798%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181106%_
                                    __tmp186409)))
                            (_%__kont185269185270%_
                             _%L181105%_
                             _%L181106%_
                             _%L181107%_)
                            (_%__kont185271185272%_)))))
                   (_%__match185750185751%_
                    (lambda (_%e181001181041%_
                             _%hd181002181044%_
                             _%tl181003181046%_
                             _%e181004181049%_
                             _%hd181005181052%_
                             _%tl181006181054%_
                             _%e181007181057%_
                             _%hd181008181060%_
                             _%tl181009181062%_
                             _%e181010181065%_
                             _%hd181011181068%_
                             _%tl181012181070%_
                             _%e181013181073%_
                             _%hd181014181076%_
                             _%tl181015181078%_
                             _%e181016181081%_
                             _%hd181017181084%_
                             _%tl181018181086%_
                             _%e181019181089%_
                             _%hd181020181092%_
                             _%tl181021181094%_
                             _%e181022181097%_
                             _%hd181023181100%_
                             _%tl181024181102%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl181024181102%_))
                          (_%__match185752185753%_
                           _%e181001181041%_
                           _%hd181002181044%_
                           _%tl181003181046%_
                           _%e181004181049%_
                           _%hd181005181052%_
                           _%tl181006181054%_
                           _%e181007181057%_
                           _%hd181008181060%_
                           _%tl181009181062%_
                           _%e181010181065%_
                           _%hd181011181068%_
                           _%tl181012181070%_
                           _%e181013181073%_
                           _%hd181014181076%_
                           _%tl181015181078%_
                           _%e181016181081%_
                           _%hd181017181084%_
                           _%tl181018181086%_
                           _%e181019181089%_
                           _%hd181020181092%_
                           _%tl181021181094%_
                           _%e181022181097%_
                           _%hd181023181100%_
                           _%tl181024181102%_)
                          (_%__kont185271185272%_))))
                   (_%__match185744185745%_
                    (lambda (_%e181001181041%_
                             _%hd181002181044%_
                             _%tl181003181046%_
                             _%e181004181049%_
                             _%hd181005181052%_
                             _%tl181006181054%_
                             _%e181007181057%_
                             _%hd181008181060%_
                             _%tl181009181062%_
                             _%e181010181065%_
                             _%hd181011181068%_
                             _%tl181012181070%_
                             _%e181013181073%_
                             _%hd181014181076%_
                             _%tl181015181078%_
                             _%e181016181081%_
                             _%hd181017181084%_
                             _%tl181018181086%_
                             _%e181019181089%_
                             _%hd181020181092%_
                             _%tl181021181094%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl181015181078%_))
                          (let ((_%e181022181097%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl181015181078%_))))
                            (let ((_%tl181024181102%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181022181097%_)))
                                  (_%hd181023181100%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181022181097%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl181024181102%_))
                                  (_%__match185752185753%_
                                   _%e181001181041%_
                                   _%hd181002181044%_
                                   _%tl181003181046%_
                                   _%e181004181049%_
                                   _%hd181005181052%_
                                   _%tl181006181054%_
                                   _%e181007181057%_
                                   _%hd181008181060%_
                                   _%tl181009181062%_
                                   _%e181010181065%_
                                   _%hd181011181068%_
                                   _%tl181012181070%_
                                   _%e181013181073%_
                                   _%hd181014181076%_
                                   _%tl181015181078%_
                                   _%e181016181081%_
                                   _%hd181017181084%_
                                   _%tl181018181086%_
                                   _%e181019181089%_
                                   _%hd181020181092%_
                                   _%tl181021181094%_
                                   _%e181022181097%_
                                   _%hd181023181100%_
                                   _%tl181024181102%_)
                                  (_%__kont185271185272%_))))
                          (_%__kont185271185272%_))))
                   (_%__match185690185691%_
                    (lambda (_%e180977181149%_
                             _%hd180978181152%_
                             _%tl180979181154%_
                             _%e180980181157%_
                             _%hd180981181160%_
                             _%tl180982181162%_
                             _%e180983181165%_
                             _%hd180984181168%_
                             _%tl180985181170%_
                             _%e180986181173%_
                             _%hd180987181176%_
                             _%tl180988181178%_
                             _%e180989181181%_
                             _%hd180990181184%_
                             _%tl180991181186%_
                             _%e180992181189%_
                             _%hd180993181192%_
                             _%tl180994181194%_
                             _%e180995181197%_
                             _%hd180996181200%_
                             _%tl180997181202%_)
                      (let ((_%L181205%_ _%hd180996181200%_)
                            (_%L181206%_ _%hd180987181176%_))
                        (if (and (let ((__tmp186410
                                        (let ((__tmp186411
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L181206%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp186411))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp186410
                                    'gxc#!accessor::t))
                                 (let ((__tmp186412
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self180798%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181205%_
                                    __tmp186412)))
                            (_%__kont185267185268%_ _%L181205%_ _%L181206%_)
                            (_%__kont185271185272%_)))))
                   (_%__match185688185689%_
                    (lambda (_%e180977181149%_
                             _%hd180978181152%_
                             _%tl180979181154%_
                             _%e180980181157%_
                             _%hd180981181160%_
                             _%tl180982181162%_
                             _%e180983181165%_
                             _%hd180984181168%_
                             _%tl180985181170%_
                             _%e180986181173%_
                             _%hd180987181176%_
                             _%tl180988181178%_
                             _%e180989181181%_
                             _%hd180990181184%_
                             _%tl180991181186%_
                             _%e180992181189%_
                             _%hd180993181192%_
                             _%tl180994181194%_
                             _%e180995181197%_
                             _%hd180996181200%_
                             _%tl180997181202%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl180991181186%_))
                          (_%__match185690185691%_
                           _%e180977181149%_
                           _%hd180978181152%_
                           _%tl180979181154%_
                           _%e180980181157%_
                           _%hd180981181160%_
                           _%tl180982181162%_
                           _%e180983181165%_
                           _%hd180984181168%_
                           _%tl180985181170%_
                           _%e180986181173%_
                           _%hd180987181176%_
                           _%tl180988181178%_
                           _%e180989181181%_
                           _%hd180990181184%_
                           _%tl180991181186%_
                           _%e180992181189%_
                           _%hd180993181192%_
                           _%tl180994181194%_
                           _%e180995181197%_
                           _%hd180996181200%_
                           _%tl180997181202%_)
                          (_%__match185744185745%_
                           _%e180977181149%_
                           _%hd180978181152%_
                           _%tl180979181154%_
                           _%e180980181157%_
                           _%hd180981181160%_
                           _%tl180982181162%_
                           _%e180983181165%_
                           _%hd180984181168%_
                           _%tl180985181170%_
                           _%e180986181173%_
                           _%hd180987181176%_
                           _%tl180988181178%_
                           _%e180989181181%_
                           _%hd180990181184%_
                           _%tl180991181186%_
                           _%e180992181189%_
                           _%hd180993181192%_
                           _%tl180994181194%_
                           _%e180995181197%_
                           _%hd180996181200%_
                           _%tl180997181202%_))))
                   (_%__match185634185635%_
                    (lambda (_%e180942181243%_
                             _%hd180943181246%_
                             _%tl180944181248%_
                             _%e180945181251%_
                             _%hd180946181254%_
                             _%tl180947181256%_
                             _%e180948181259%_
                             _%hd180949181262%_
                             _%tl180950181264%_
                             _%e180951181267%_
                             _%hd180952181270%_
                             _%tl180953181272%_
                             _%e180954181275%_
                             _%hd180955181278%_
                             _%tl180956181280%_
                             _%e180957181283%_
                             _%hd180958181286%_
                             _%tl180959181288%_
                             _%e180960181291%_
                             _%hd180961181294%_
                             _%tl180962181296%_
                             _%e180963181299%_
                             _%hd180964181302%_
                             _%tl180965181304%_
                             _%e180966181307%_
                             _%hd180967181310%_
                             _%tl180968181312%_
                             _%e180969181315%_
                             _%hd180970181318%_
                             _%tl180971181320%_
                             _%e180972181323%_
                             _%hd180973181326%_
                             _%tl180974181328%_)
                      (let ((_%L181331%_ _%hd180973181326%_)
                            (_%L181332%_ _%hd180970181318%_)
                            (_%L181333%_ _%hd180961181294%_)
                            (_%L181334%_ _%hd180952181270%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181334%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181334%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp186413
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self180798%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181333%_
                                    __tmp186413)))
                            (_%__kont185265185266%_
                             _%L181331%_
                             _%L181332%_
                             _%L181333%_
                             _%L181334%_)
                            (_%__kont185271185272%_)))))
                   (_%__match185626185627%_
                    (lambda (_%e180942181243%_
                             _%hd180943181246%_
                             _%tl180944181248%_
                             _%e180945181251%_
                             _%hd180946181254%_
                             _%tl180947181256%_
                             _%e180948181259%_
                             _%hd180949181262%_
                             _%tl180950181264%_
                             _%e180951181267%_
                             _%hd180952181270%_
                             _%tl180953181272%_
                             _%e180954181275%_
                             _%hd180955181278%_
                             _%tl180956181280%_
                             _%e180957181283%_
                             _%hd180958181286%_
                             _%tl180959181288%_
                             _%e180960181291%_
                             _%hd180961181294%_
                             _%tl180962181296%_
                             _%e180963181299%_
                             _%hd180964181302%_
                             _%tl180965181304%_
                             _%e180966181307%_
                             _%hd180967181310%_
                             _%tl180968181312%_
                             _%e180969181315%_
                             _%hd180970181318%_
                             _%tl180971181320%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl180965181304%_))
                          (let ((_%e180972181323%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl180965181304%_))))
                            (let ((_%tl180974181328%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e180972181323%_)))
                                  (_%hd180973181326%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e180972181323%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl180974181328%_))
                                  (_%__match185634185635%_
                                   _%e180942181243%_
                                   _%hd180943181246%_
                                   _%tl180944181248%_
                                   _%e180945181251%_
                                   _%hd180946181254%_
                                   _%tl180947181256%_
                                   _%e180948181259%_
                                   _%hd180949181262%_
                                   _%tl180950181264%_
                                   _%e180951181267%_
                                   _%hd180952181270%_
                                   _%tl180953181272%_
                                   _%e180954181275%_
                                   _%hd180955181278%_
                                   _%tl180956181280%_
                                   _%e180957181283%_
                                   _%hd180958181286%_
                                   _%tl180959181288%_
                                   _%e180960181291%_
                                   _%hd180961181294%_
                                   _%tl180962181296%_
                                   _%e180963181299%_
                                   _%hd180964181302%_
                                   _%tl180965181304%_
                                   _%e180966181307%_
                                   _%hd180967181310%_
                                   _%tl180968181312%_
                                   _%e180969181315%_
                                   _%hd180970181318%_
                                   _%tl180971181320%_
                                   _%e180972181323%_
                                   _%hd180973181326%_
                                   _%tl180974181328%_)
                                  (_%__kont185271185272%_))))
                          (_%__match185750185751%_
                           _%e180942181243%_
                           _%hd180943181246%_
                           _%tl180944181248%_
                           _%e180945181251%_
                           _%hd180946181254%_
                           _%tl180947181256%_
                           _%e180948181259%_
                           _%hd180949181262%_
                           _%tl180950181264%_
                           _%e180951181267%_
                           _%hd180952181270%_
                           _%tl180953181272%_
                           _%e180954181275%_
                           _%hd180955181278%_
                           _%tl180956181280%_
                           _%e180957181283%_
                           _%hd180958181286%_
                           _%tl180959181288%_
                           _%e180960181291%_
                           _%hd180961181294%_
                           _%tl180962181296%_
                           _%e180963181299%_
                           _%hd180964181302%_
                           _%tl180965181304%_))))
                   (_%__match185548185549%_
                    (lambda (_%e180908181374%_
                             _%hd180909181377%_
                             _%tl180910181379%_
                             _%e180911181382%_
                             _%hd180912181385%_
                             _%tl180913181387%_
                             _%e180914181390%_
                             _%hd180915181393%_
                             _%tl180916181395%_
                             _%e180917181398%_
                             _%hd180918181401%_
                             _%tl180919181403%_
                             _%e180920181406%_
                             _%hd180921181409%_
                             _%tl180922181411%_
                             _%e180923181414%_
                             _%hd180924181417%_
                             _%tl180925181419%_
                             _%e180926181422%_
                             _%hd180927181425%_
                             _%tl180928181427%_
                             _%e180929181430%_
                             _%hd180930181433%_
                             _%tl180931181435%_
                             _%e180932181438%_
                             _%hd180933181441%_
                             _%tl180934181443%_
                             _%e180935181446%_
                             _%hd180936181449%_
                             _%tl180937181451%_)
                      (let ((_%L181454%_ _%hd180936181449%_)
                            (_%L181455%_ _%hd180927181425%_)
                            (_%L181456%_ _%hd180918181401%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181456%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181456%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp186414
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self180798%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181455%_
                                    __tmp186414)))
                            (_%__kont185263185264%_
                             _%L181454%_
                             _%L181455%_
                             _%L181456%_)
                            (_%__match185752185753%_
                             _%e180908181374%_
                             _%hd180909181377%_
                             _%tl180910181379%_
                             _%e180911181382%_
                             _%hd180912181385%_
                             _%tl180913181387%_
                             _%e180914181390%_
                             _%hd180915181393%_
                             _%tl180916181395%_
                             _%e180917181398%_
                             _%hd180918181401%_
                             _%tl180919181403%_
                             _%e180920181406%_
                             _%hd180921181409%_
                             _%tl180922181411%_
                             _%e180923181414%_
                             _%hd180924181417%_
                             _%tl180925181419%_
                             _%e180926181422%_
                             _%hd180927181425%_
                             _%tl180928181427%_
                             _%e180929181430%_
                             _%hd180930181433%_
                             _%tl180931181435%_)))))
                   (_%__match185546185547%_
                    (lambda (_%e180908181374%_
                             _%hd180909181377%_
                             _%tl180910181379%_
                             _%e180911181382%_
                             _%hd180912181385%_
                             _%tl180913181387%_
                             _%e180914181390%_
                             _%hd180915181393%_
                             _%tl180916181395%_
                             _%e180917181398%_
                             _%hd180918181401%_
                             _%tl180919181403%_
                             _%e180920181406%_
                             _%hd180921181409%_
                             _%tl180922181411%_
                             _%e180923181414%_
                             _%hd180924181417%_
                             _%tl180925181419%_
                             _%e180926181422%_
                             _%hd180927181425%_
                             _%tl180928181427%_
                             _%e180929181430%_
                             _%hd180930181433%_
                             _%tl180931181435%_
                             _%e180932181438%_
                             _%hd180933181441%_
                             _%tl180934181443%_
                             _%e180935181446%_
                             _%hd180936181449%_
                             _%tl180937181451%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl180931181435%_))
                          (_%__match185548185549%_
                           _%e180908181374%_
                           _%hd180909181377%_
                           _%tl180910181379%_
                           _%e180911181382%_
                           _%hd180912181385%_
                           _%tl180913181387%_
                           _%e180914181390%_
                           _%hd180915181393%_
                           _%tl180916181395%_
                           _%e180917181398%_
                           _%hd180918181401%_
                           _%tl180919181403%_
                           _%e180920181406%_
                           _%hd180921181409%_
                           _%tl180922181411%_
                           _%e180923181414%_
                           _%hd180924181417%_
                           _%tl180925181419%_
                           _%e180926181422%_
                           _%hd180927181425%_
                           _%tl180928181427%_
                           _%e180929181430%_
                           _%hd180930181433%_
                           _%tl180931181435%_
                           _%e180932181438%_
                           _%hd180933181441%_
                           _%tl180934181443%_
                           _%e180935181446%_
                           _%hd180936181449%_
                           _%tl180937181451%_)
                          (_%__match185626185627%_
                           _%e180908181374%_
                           _%hd180909181377%_
                           _%tl180910181379%_
                           _%e180911181382%_
                           _%hd180912181385%_
                           _%tl180913181387%_
                           _%e180914181390%_
                           _%hd180915181393%_
                           _%tl180916181395%_
                           _%e180917181398%_
                           _%hd180918181401%_
                           _%tl180919181403%_
                           _%e180920181406%_
                           _%hd180921181409%_
                           _%tl180922181411%_
                           _%e180923181414%_
                           _%hd180924181417%_
                           _%tl180925181419%_
                           _%e180926181422%_
                           _%hd180927181425%_
                           _%tl180928181427%_
                           _%e180929181430%_
                           _%hd180930181433%_
                           _%tl180931181435%_
                           _%e180932181438%_
                           _%hd180933181441%_
                           _%tl180934181443%_
                           _%e180935181446%_
                           _%hd180936181449%_
                           _%tl180937181451%_))))
                   (_%__match185536185537%_
                    (lambda (_%e180908181374%_
                             _%hd180909181377%_
                             _%tl180910181379%_
                             _%e180911181382%_
                             _%hd180912181385%_
                             _%tl180913181387%_
                             _%e180914181390%_
                             _%hd180915181393%_
                             _%tl180916181395%_
                             _%e180917181398%_
                             _%hd180918181401%_
                             _%tl180919181403%_
                             _%e180920181406%_
                             _%hd180921181409%_
                             _%tl180922181411%_
                             _%e180923181414%_
                             _%hd180924181417%_
                             _%tl180925181419%_
                             _%e180926181422%_
                             _%hd180927181425%_
                             _%tl180928181427%_
                             _%e180929181430%_
                             _%hd180930181433%_
                             _%tl180931181435%_
                             _%e180932181438%_
                             _%hd180933181441%_
                             _%tl180934181443%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd180933181441%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl180934181443%_))
                              (let ((_%e180935181446%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl180934181443%_))))
                                (let ((_%tl180937181451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e180935181446%_)))
                                      (_%hd180936181449%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e180935181446%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl180937181451%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl180931181435%_))
                                          (_%__match185548185549%_
                                           _%e180908181374%_
                                           _%hd180909181377%_
                                           _%tl180910181379%_
                                           _%e180911181382%_
                                           _%hd180912181385%_
                                           _%tl180913181387%_
                                           _%e180914181390%_
                                           _%hd180915181393%_
                                           _%tl180916181395%_
                                           _%e180917181398%_
                                           _%hd180918181401%_
                                           _%tl180919181403%_
                                           _%e180920181406%_
                                           _%hd180921181409%_
                                           _%tl180922181411%_
                                           _%e180923181414%_
                                           _%hd180924181417%_
                                           _%tl180925181419%_
                                           _%e180926181422%_
                                           _%hd180927181425%_
                                           _%tl180928181427%_
                                           _%e180929181430%_
                                           _%hd180930181433%_
                                           _%tl180931181435%_
                                           _%e180932181438%_
                                           _%hd180933181441%_
                                           _%tl180934181443%_
                                           _%e180935181446%_
                                           _%hd180936181449%_
                                           _%tl180937181451%_)
                                          (_%__match185626185627%_
                                           _%e180908181374%_
                                           _%hd180909181377%_
                                           _%tl180910181379%_
                                           _%e180911181382%_
                                           _%hd180912181385%_
                                           _%tl180913181387%_
                                           _%e180914181390%_
                                           _%hd180915181393%_
                                           _%tl180916181395%_
                                           _%e180917181398%_
                                           _%hd180918181401%_
                                           _%tl180919181403%_
                                           _%e180920181406%_
                                           _%hd180921181409%_
                                           _%tl180922181411%_
                                           _%e180923181414%_
                                           _%hd180924181417%_
                                           _%tl180925181419%_
                                           _%e180926181422%_
                                           _%hd180927181425%_
                                           _%tl180928181427%_
                                           _%e180929181430%_
                                           _%hd180930181433%_
                                           _%tl180931181435%_
                                           _%e180932181438%_
                                           _%hd180933181441%_
                                           _%tl180934181443%_
                                           _%e180935181446%_
                                           _%hd180936181449%_
                                           _%tl180937181451%_))
                                      (_%__match185750185751%_
                                       _%e180908181374%_
                                       _%hd180909181377%_
                                       _%tl180910181379%_
                                       _%e180911181382%_
                                       _%hd180912181385%_
                                       _%tl180913181387%_
                                       _%e180914181390%_
                                       _%hd180915181393%_
                                       _%tl180916181395%_
                                       _%e180917181398%_
                                       _%hd180918181401%_
                                       _%tl180919181403%_
                                       _%e180920181406%_
                                       _%hd180921181409%_
                                       _%tl180922181411%_
                                       _%e180923181414%_
                                       _%hd180924181417%_
                                       _%tl180925181419%_
                                       _%e180926181422%_
                                       _%hd180927181425%_
                                       _%tl180928181427%_
                                       _%e180929181430%_
                                       _%hd180930181433%_
                                       _%tl180931181435%_))))
                              (_%__match185750185751%_
                               _%e180908181374%_
                               _%hd180909181377%_
                               _%tl180910181379%_
                               _%e180911181382%_
                               _%hd180912181385%_
                               _%tl180913181387%_
                               _%e180914181390%_
                               _%hd180915181393%_
                               _%tl180916181395%_
                               _%e180917181398%_
                               _%hd180918181401%_
                               _%tl180919181403%_
                               _%e180920181406%_
                               _%hd180921181409%_
                               _%tl180922181411%_
                               _%e180923181414%_
                               _%hd180924181417%_
                               _%tl180925181419%_
                               _%e180926181422%_
                               _%hd180927181425%_
                               _%tl180928181427%_
                               _%e180929181430%_
                               _%hd180930181433%_
                               _%tl180931181435%_))
                          (_%__match185750185751%_
                           _%e180908181374%_
                           _%hd180909181377%_
                           _%tl180910181379%_
                           _%e180911181382%_
                           _%hd180912181385%_
                           _%tl180913181387%_
                           _%e180914181390%_
                           _%hd180915181393%_
                           _%tl180916181395%_
                           _%e180917181398%_
                           _%hd180918181401%_
                           _%tl180919181403%_
                           _%e180920181406%_
                           _%hd180921181409%_
                           _%tl180922181411%_
                           _%e180923181414%_
                           _%hd180924181417%_
                           _%tl180925181419%_
                           _%e180926181422%_
                           _%hd180927181425%_
                           _%tl180928181427%_
                           _%e180929181430%_
                           _%hd180930181433%_
                           _%tl180931181435%_))))
                   (_%__match185468185469%_
                    (lambda (_%e180857181493%_
                             _%hd180858181496%_
                             _%tl180859181498%_
                             _%e180860181501%_
                             _%hd180861181504%_
                             _%tl180862181506%_
                             _%e180863181509%_
                             _%hd180864181512%_
                             _%tl180865181514%_
                             _%e180866181517%_
                             _%hd180867181520%_
                             _%tl180868181522%_
                             _%e180869181525%_
                             _%hd180870181528%_
                             _%tl180871181530%_
                             _%e180872181533%_
                             _%hd180873181536%_
                             _%tl180874181538%_
                             _%e180875181541%_
                             _%hd180876181544%_
                             _%tl180877181546%_
                             _%e180878181549%_
                             _%hd180879181552%_
                             _%tl180880181554%_
                             _%e180881181557%_
                             _%hd180882181560%_
                             _%tl180883181562%_
                             _%e180884181565%_
                             _%hd180885181568%_
                             _%tl180886181570%_
                             _%e180887181573%_
                             _%hd180888181576%_
                             _%tl180889181578%_
                             _%e180890181581%_
                             _%hd180891181584%_
                             _%tl180892181586%_
                             _%e180893181589%_
                             _%hd180894181592%_
                             _%tl180895181594%_
                             _%__splice185261185262%_
                             _%target180896181597%_
                             _%tl180898181599%_)
                      (letrec ((_%loop180899181602%_
                                (lambda (_%hd180897181605%_
                                         _%args180903181607%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd180897181605%_))
                                      (let ((_%e180900181610%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd180897181605%_))))
                                        (let ((_%lp-tl180902181615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e180900181610%_)))
                                              (_%lp-hd180901181613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e180900181610%_))))
                                          (_%loop180899181602%_
                                           _%lp-tl180902181615%_
                                           (cons _%lp-hd180901181613%_
                                                 _%args180903181607%_))))
                                      (let ((_%args180904181618%_
                                             (reverse _%args180903181607%_)))
                                        (let ((_%L181621%_
                                               _%args180904181618%_)
                                              (_%L181622%_ _%hd180894181592%_)
                                              (_%L181623%_ _%hd180885181568%_)
                                              (_%L181624%_ _%hd180876181544%_)
                                              (_%L181625%_ _%hd180867181520%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L181625%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L181624%_
                                                      'call-method))
                                                   (let ((__tmp186415
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self180798%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L181623%_
                                                      __tmp186415)))
                                              (_%__kont185259185260%_
                                               _%L181621%_
                                               _%L181622%_
                                               _%L181623%_
                                               _%L181624%_
                                               _%L181625%_)
                                              (_%__kont185271185272%_))))))))
                        (_%loop180899181602%_ _%target180896181597%_ '()))))
                   (_%__match185426185427%_
                    (lambda (_%e180857181493%_
                             _%hd180858181496%_
                             _%tl180859181498%_
                             _%e180860181501%_
                             _%hd180861181504%_
                             _%tl180862181506%_
                             _%e180863181509%_
                             _%hd180864181512%_
                             _%tl180865181514%_
                             _%e180866181517%_
                             _%hd180867181520%_
                             _%tl180868181522%_
                             _%e180869181525%_
                             _%hd180870181528%_
                             _%tl180871181530%_
                             _%e180872181533%_
                             _%hd180873181536%_
                             _%tl180874181538%_
                             _%e180875181541%_
                             _%hd180876181544%_
                             _%tl180877181546%_
                             _%e180878181549%_
                             _%hd180879181552%_
                             _%tl180880181554%_
                             _%e180881181557%_
                             _%hd180882181560%_
                             _%tl180883181562%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd180882181560%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl180883181562%_))
                              (let ((_%e180884181565%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl180883181562%_))))
                                (let ((_%tl180886181570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e180884181565%_)))
                                      (_%hd180885181568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e180884181565%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl180886181570%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl180880181554%_))
                                          (let ((_%e180887181573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl180880181554%_))))
                                            (let ((_%tl180889181578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e180887181573%_)))
                                                  (_%hd180888181576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e180887181573%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd180888181576%_))
                                                  (let ((_%e180890181581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd180888181576%_))))
                                                    (let ((_%tl180892181586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e180890181581%_)))
                                                          (_%hd180891181584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e180890181581%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd180891181584%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd180891181584%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl180892181586%_))
                          (let ((_%e180893181589%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl180892181586%_))))
                            (let ((_%tl180895181594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e180893181589%_)))
                                  (_%hd180894181592%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e180893181589%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl180895181594%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl180889181578%_))
                                      (let ((_%__splice185261185262%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl180889181578%_
                                                '0))))
                                        (let ((_%tl180898181599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice185261185262%_
                                                  '1)))
                                              (_%target180896181597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice185261185262%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl180898181599%_))
                                              (_%__match185468185469%_
                                               _%e180857181493%_
                                               _%hd180858181496%_
                                               _%tl180859181498%_
                                               _%e180860181501%_
                                               _%hd180861181504%_
                                               _%tl180862181506%_
                                               _%e180863181509%_
                                               _%hd180864181512%_
                                               _%tl180865181514%_
                                               _%e180866181517%_
                                               _%hd180867181520%_
                                               _%tl180868181522%_
                                               _%e180869181525%_
                                               _%hd180870181528%_
                                               _%tl180871181530%_
                                               _%e180872181533%_
                                               _%hd180873181536%_
                                               _%tl180874181538%_
                                               _%e180875181541%_
                                               _%hd180876181544%_
                                               _%tl180877181546%_
                                               _%e180878181549%_
                                               _%hd180879181552%_
                                               _%tl180880181554%_
                                               _%e180881181557%_
                                               _%hd180882181560%_
                                               _%tl180883181562%_
                                               _%e180884181565%_
                                               _%hd180885181568%_
                                               _%tl180886181570%_
                                               _%e180887181573%_
                                               _%hd180888181576%_
                                               _%tl180889181578%_
                                               _%e180890181581%_
                                               _%hd180891181584%_
                                               _%tl180892181586%_
                                               _%e180893181589%_
                                               _%hd180894181592%_
                                               _%tl180895181594%_
                                               _%__splice185261185262%_
                                               _%target180896181597%_
                                               _%tl180898181599%_)
                                              (_%__kont185271185272%_))))
                                      (_%__kont185271185272%_))
                                  (_%__kont185271185272%_))))
                          (_%__kont185271185272%_))
                      (_%__kont185271185272%_))
                  (_%__kont185271185272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185271185272%_))))
                                          (_%__match185750185751%_
                                           _%e180857181493%_
                                           _%hd180858181496%_
                                           _%tl180859181498%_
                                           _%e180860181501%_
                                           _%hd180861181504%_
                                           _%tl180862181506%_
                                           _%e180863181509%_
                                           _%hd180864181512%_
                                           _%tl180865181514%_
                                           _%e180866181517%_
                                           _%hd180867181520%_
                                           _%tl180868181522%_
                                           _%e180869181525%_
                                           _%hd180870181528%_
                                           _%tl180871181530%_
                                           _%e180872181533%_
                                           _%hd180873181536%_
                                           _%tl180874181538%_
                                           _%e180875181541%_
                                           _%hd180876181544%_
                                           _%tl180877181546%_
                                           _%e180878181549%_
                                           _%hd180879181552%_
                                           _%tl180880181554%_))
                                      (_%__match185750185751%_
                                       _%e180857181493%_
                                       _%hd180858181496%_
                                       _%tl180859181498%_
                                       _%e180860181501%_
                                       _%hd180861181504%_
                                       _%tl180862181506%_
                                       _%e180863181509%_
                                       _%hd180864181512%_
                                       _%tl180865181514%_
                                       _%e180866181517%_
                                       _%hd180867181520%_
                                       _%tl180868181522%_
                                       _%e180869181525%_
                                       _%hd180870181528%_
                                       _%tl180871181530%_
                                       _%e180872181533%_
                                       _%hd180873181536%_
                                       _%tl180874181538%_
                                       _%e180875181541%_
                                       _%hd180876181544%_
                                       _%tl180877181546%_
                                       _%e180878181549%_
                                       _%hd180879181552%_
                                       _%tl180880181554%_))))
                              (_%__match185750185751%_
                               _%e180857181493%_
                               _%hd180858181496%_
                               _%tl180859181498%_
                               _%e180860181501%_
                               _%hd180861181504%_
                               _%tl180862181506%_
                               _%e180863181509%_
                               _%hd180864181512%_
                               _%tl180865181514%_
                               _%e180866181517%_
                               _%hd180867181520%_
                               _%tl180868181522%_
                               _%e180869181525%_
                               _%hd180870181528%_
                               _%tl180871181530%_
                               _%e180872181533%_
                               _%hd180873181536%_
                               _%tl180874181538%_
                               _%e180875181541%_
                               _%hd180876181544%_
                               _%tl180877181546%_
                               _%e180878181549%_
                               _%hd180879181552%_
                               _%tl180880181554%_))
                          (_%__match185536185537%_
                           _%e180857181493%_
                           _%hd180858181496%_
                           _%tl180859181498%_
                           _%e180860181501%_
                           _%hd180861181504%_
                           _%tl180862181506%_
                           _%e180863181509%_
                           _%hd180864181512%_
                           _%tl180865181514%_
                           _%e180866181517%_
                           _%hd180867181520%_
                           _%tl180868181522%_
                           _%e180869181525%_
                           _%hd180870181528%_
                           _%tl180871181530%_
                           _%e180872181533%_
                           _%hd180873181536%_
                           _%tl180874181538%_
                           _%e180875181541%_
                           _%hd180876181544%_
                           _%tl180877181546%_
                           _%e180878181549%_
                           _%hd180879181552%_
                           _%tl180880181554%_
                           _%e180881181557%_
                           _%hd180882181560%_
                           _%tl180883181562%_))))
                   (_%__match185358185359%_
                    (lambda (_%e180813181682%_
                             _%hd180814181685%_
                             _%tl180815181687%_
                             _%e180816181690%_
                             _%hd180817181693%_
                             _%tl180818181695%_
                             _%e180819181698%_
                             _%hd180820181701%_
                             _%tl180821181703%_
                             _%e180822181706%_
                             _%hd180823181709%_
                             _%tl180824181711%_
                             _%e180825181714%_
                             _%hd180826181717%_
                             _%tl180827181719%_
                             _%e180828181722%_
                             _%hd180829181725%_
                             _%tl180830181727%_
                             _%e180831181730%_
                             _%hd180832181733%_
                             _%tl180833181735%_
                             _%e180834181738%_
                             _%hd180835181741%_
                             _%tl180836181743%_
                             _%e180837181746%_
                             _%hd180838181749%_
                             _%tl180839181751%_
                             _%e180840181754%_
                             _%hd180841181757%_
                             _%tl180842181759%_
                             _%__splice185257185258%_
                             _%target180843181762%_
                             _%tl180845181764%_)
                      (letrec ((_%loop180846181767%_
                                (lambda (_%hd180844181770%_
                                         _%args180850181772%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd180844181770%_))
                                      (let ((_%e180847181775%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd180844181770%_))))
                                        (let ((_%lp-tl180849181780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e180847181775%_)))
                                              (_%lp-hd180848181778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e180847181775%_))))
                                          (_%loop180846181767%_
                                           _%lp-tl180849181780%_
                                           (cons _%lp-hd180848181778%_
                                                 _%args180850181772%_))))
                                      (let ((_%args180851181783%_
                                             (reverse _%args180850181772%_)))
                                        (let ((_%L181786%_
                                               _%args180851181783%_)
                                              (_%L181787%_ _%hd180841181757%_)
                                              (_%L181788%_ _%hd180832181733%_)
                                              (_%L181789%_ _%hd180823181709%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L181789%_
                                                      'call-method))
                                                   (let ((__tmp186416
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self180798%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L181788%_
                                                      __tmp186416)))
                                              (_%__kont185255185256%_
                                               _%L181786%_
                                               _%L181787%_
                                               _%L181788%_
                                               _%L181789%_)
                                              (_%__match185546185547%_
                                               _%e180813181682%_
                                               _%hd180814181685%_
                                               _%tl180815181687%_
                                               _%e180816181690%_
                                               _%hd180817181693%_
                                               _%tl180818181695%_
                                               _%e180819181698%_
                                               _%hd180820181701%_
                                               _%tl180821181703%_
                                               _%e180822181706%_
                                               _%hd180823181709%_
                                               _%tl180824181711%_
                                               _%e180825181714%_
                                               _%hd180826181717%_
                                               _%tl180827181719%_
                                               _%e180828181722%_
                                               _%hd180829181725%_
                                               _%tl180830181727%_
                                               _%e180831181730%_
                                               _%hd180832181733%_
                                               _%tl180833181735%_
                                               _%e180834181738%_
                                               _%hd180835181741%_
                                               _%tl180836181743%_
                                               _%e180837181746%_
                                               _%hd180838181749%_
                                               _%tl180839181751%_
                                               _%e180840181754%_
                                               _%hd180841181757%_
                                               _%tl180842181759%_))))))))
                        (_%loop180846181767%_ _%target180843181762%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx185253185254%_))
                  (let ((_%e180813181682%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx185253185254%_))))
                    (let ((_%tl180815181687%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e180813181682%_)))
                          (_%hd180814181685%_
                           (let ()
                             (declare (not safe))
                             (##car _%e180813181682%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl180815181687%_))
                          (let ((_%e180816181690%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl180815181687%_))))
                            (let ((_%tl180818181695%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e180816181690%_)))
                                  (_%hd180817181693%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e180816181690%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd180817181693%_))
                                  (let ((_%e180819181698%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd180817181693%_))))
                                    (let ((_%tl180821181703%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e180819181698%_)))
                                          (_%hd180820181701%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e180819181698%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd180820181701%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd180820181701%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl180821181703%_))
                                                  (let ((_%e180822181706%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl180821181703%_))))
                                                    (let ((_%tl180824181711%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e180822181706%_)))
                                                          (_%hd180823181709%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e180822181706%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl180824181711%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl180818181695%_))
                      (let ((_%e180825181714%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl180818181695%_))))
                        (let ((_%tl180827181719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e180825181714%_)))
                              (_%hd180826181717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e180825181714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd180826181717%_))
                              (let ((_%e180828181722%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd180826181717%_))))
                                (let ((_%tl180830181727%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e180828181722%_)))
                                      (_%hd180829181725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e180828181722%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd180829181725%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd180829181725%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl180830181727%_))
                                              (let ((_%e180831181730%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl180830181727%_))))
                                                (let ((_%tl180833181735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e180831181730%_)))
                                                      (_%hd180832181733%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e180831181730%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl180833181735%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl180827181719%_))
                                                          (let ((_%e180834181738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl180827181719%_))))
                    (let ((_%tl180836181743%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e180834181738%_)))
                          (_%hd180835181741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e180834181738%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd180835181741%_))
                          (let ((_%e180837181746%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd180835181741%_))))
                            (let ((_%tl180839181751%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e180837181746%_)))
                                  (_%hd180838181749%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e180837181746%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd180838181749%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd180838181749%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl180839181751%_))
                                          (let ((_%e180840181754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl180839181751%_))))
                                            (let ((_%tl180842181759%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e180840181754%_)))
                                                  (_%hd180841181757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e180840181754%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl180842181759%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl180836181743%_))
                                                      (let ((_%__splice185257185258%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl180836181743%_
                        '0))))
                (let ((_%tl180845181764%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice185257185258%_ '1)))
                      (_%target180843181762%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice185257185258%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl180845181764%_))
                      (_%__match185358185359%_
                       _%e180813181682%_
                       _%hd180814181685%_
                       _%tl180815181687%_
                       _%e180816181690%_
                       _%hd180817181693%_
                       _%tl180818181695%_
                       _%e180819181698%_
                       _%hd180820181701%_
                       _%tl180821181703%_
                       _%e180822181706%_
                       _%hd180823181709%_
                       _%tl180824181711%_
                       _%e180825181714%_
                       _%hd180826181717%_
                       _%tl180827181719%_
                       _%e180828181722%_
                       _%hd180829181725%_
                       _%tl180830181727%_
                       _%e180831181730%_
                       _%hd180832181733%_
                       _%tl180833181735%_
                       _%e180834181738%_
                       _%hd180835181741%_
                       _%tl180836181743%_
                       _%e180837181746%_
                       _%hd180838181749%_
                       _%tl180839181751%_
                       _%e180840181754%_
                       _%hd180841181757%_
                       _%tl180842181759%_
                       _%__splice185257185258%_
                       _%target180843181762%_
                       _%tl180845181764%_)
                      (_%__match185546185547%_
                       _%e180813181682%_
                       _%hd180814181685%_
                       _%tl180815181687%_
                       _%e180816181690%_
                       _%hd180817181693%_
                       _%tl180818181695%_
                       _%e180819181698%_
                       _%hd180820181701%_
                       _%tl180821181703%_
                       _%e180822181706%_
                       _%hd180823181709%_
                       _%tl180824181711%_
                       _%e180825181714%_
                       _%hd180826181717%_
                       _%tl180827181719%_
                       _%e180828181722%_
                       _%hd180829181725%_
                       _%tl180830181727%_
                       _%e180831181730%_
                       _%hd180832181733%_
                       _%tl180833181735%_
                       _%e180834181738%_
                       _%hd180835181741%_
                       _%tl180836181743%_
                       _%e180837181746%_
                       _%hd180838181749%_
                       _%tl180839181751%_
                       _%e180840181754%_
                       _%hd180841181757%_
                       _%tl180842181759%_))))
              (_%__match185546185547%_
               _%e180813181682%_
               _%hd180814181685%_
               _%tl180815181687%_
               _%e180816181690%_
               _%hd180817181693%_
               _%tl180818181695%_
               _%e180819181698%_
               _%hd180820181701%_
               _%tl180821181703%_
               _%e180822181706%_
               _%hd180823181709%_
               _%tl180824181711%_
               _%e180825181714%_
               _%hd180826181717%_
               _%tl180827181719%_
               _%e180828181722%_
               _%hd180829181725%_
               _%tl180830181727%_
               _%e180831181730%_
               _%hd180832181733%_
               _%tl180833181735%_
               _%e180834181738%_
               _%hd180835181741%_
               _%tl180836181743%_
               _%e180837181746%_
               _%hd180838181749%_
               _%tl180839181751%_
               _%e180840181754%_
               _%hd180841181757%_
               _%tl180842181759%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match185750185751%_
                                                   _%e180813181682%_
                                                   _%hd180814181685%_
                                                   _%tl180815181687%_
                                                   _%e180816181690%_
                                                   _%hd180817181693%_
                                                   _%tl180818181695%_
                                                   _%e180819181698%_
                                                   _%hd180820181701%_
                                                   _%tl180821181703%_
                                                   _%e180822181706%_
                                                   _%hd180823181709%_
                                                   _%tl180824181711%_
                                                   _%e180825181714%_
                                                   _%hd180826181717%_
                                                   _%tl180827181719%_
                                                   _%e180828181722%_
                                                   _%hd180829181725%_
                                                   _%tl180830181727%_
                                                   _%e180831181730%_
                                                   _%hd180832181733%_
                                                   _%tl180833181735%_
                                                   _%e180834181738%_
                                                   _%hd180835181741%_
                                                   _%tl180836181743%_))))
                                          (_%__match185750185751%_
                                           _%e180813181682%_
                                           _%hd180814181685%_
                                           _%tl180815181687%_
                                           _%e180816181690%_
                                           _%hd180817181693%_
                                           _%tl180818181695%_
                                           _%e180819181698%_
                                           _%hd180820181701%_
                                           _%tl180821181703%_
                                           _%e180822181706%_
                                           _%hd180823181709%_
                                           _%tl180824181711%_
                                           _%e180825181714%_
                                           _%hd180826181717%_
                                           _%tl180827181719%_
                                           _%e180828181722%_
                                           _%hd180829181725%_
                                           _%tl180830181727%_
                                           _%e180831181730%_
                                           _%hd180832181733%_
                                           _%tl180833181735%_
                                           _%e180834181738%_
                                           _%hd180835181741%_
                                           _%tl180836181743%_))
                                      (_%__match185426185427%_
                                       _%e180813181682%_
                                       _%hd180814181685%_
                                       _%tl180815181687%_
                                       _%e180816181690%_
                                       _%hd180817181693%_
                                       _%tl180818181695%_
                                       _%e180819181698%_
                                       _%hd180820181701%_
                                       _%tl180821181703%_
                                       _%e180822181706%_
                                       _%hd180823181709%_
                                       _%tl180824181711%_
                                       _%e180825181714%_
                                       _%hd180826181717%_
                                       _%tl180827181719%_
                                       _%e180828181722%_
                                       _%hd180829181725%_
                                       _%tl180830181727%_
                                       _%e180831181730%_
                                       _%hd180832181733%_
                                       _%tl180833181735%_
                                       _%e180834181738%_
                                       _%hd180835181741%_
                                       _%tl180836181743%_
                                       _%e180837181746%_
                                       _%hd180838181749%_
                                       _%tl180839181751%_))
                                  (_%__match185750185751%_
                                   _%e180813181682%_
                                   _%hd180814181685%_
                                   _%tl180815181687%_
                                   _%e180816181690%_
                                   _%hd180817181693%_
                                   _%tl180818181695%_
                                   _%e180819181698%_
                                   _%hd180820181701%_
                                   _%tl180821181703%_
                                   _%e180822181706%_
                                   _%hd180823181709%_
                                   _%tl180824181711%_
                                   _%e180825181714%_
                                   _%hd180826181717%_
                                   _%tl180827181719%_
                                   _%e180828181722%_
                                   _%hd180829181725%_
                                   _%tl180830181727%_
                                   _%e180831181730%_
                                   _%hd180832181733%_
                                   _%tl180833181735%_
                                   _%e180834181738%_
                                   _%hd180835181741%_
                                   _%tl180836181743%_))))
                          (_%__match185750185751%_
                           _%e180813181682%_
                           _%hd180814181685%_
                           _%tl180815181687%_
                           _%e180816181690%_
                           _%hd180817181693%_
                           _%tl180818181695%_
                           _%e180819181698%_
                           _%hd180820181701%_
                           _%tl180821181703%_
                           _%e180822181706%_
                           _%hd180823181709%_
                           _%tl180824181711%_
                           _%e180825181714%_
                           _%hd180826181717%_
                           _%tl180827181719%_
                           _%e180828181722%_
                           _%hd180829181725%_
                           _%tl180830181727%_
                           _%e180831181730%_
                           _%hd180832181733%_
                           _%tl180833181735%_
                           _%e180834181738%_
                           _%hd180835181741%_
                           _%tl180836181743%_))))
                  (_%__match185688185689%_
                   _%e180813181682%_
                   _%hd180814181685%_
                   _%tl180815181687%_
                   _%e180816181690%_
                   _%hd180817181693%_
                   _%tl180818181695%_
                   _%e180819181698%_
                   _%hd180820181701%_
                   _%tl180821181703%_
                   _%e180822181706%_
                   _%hd180823181709%_
                   _%tl180824181711%_
                   _%e180825181714%_
                   _%hd180826181717%_
                   _%tl180827181719%_
                   _%e180828181722%_
                   _%hd180829181725%_
                   _%tl180830181727%_
                   _%e180831181730%_
                   _%hd180832181733%_
                   _%tl180833181735%_))
              (_%__kont185271185272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont185271185272%_))
                                          (_%__kont185271185272%_))
                                      (_%__kont185271185272%_))))
                              (_%__kont185271185272%_))))
                      (_%__kont185271185272%_))
                  (_%__kont185271185272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185271185272%_))
                                              (_%__kont185271185272%_))
                                          (_%__kont185271185272%_))))
                                  (_%__kont185271185272%_))))
                          (_%__kont185271185272%_))))
                  (_%__kont185271185272%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self179737%_ _%stx179738%_)
        (letrec ((_%force-e179740%_
                  (lambda (_%target180796%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target180796%_ '()))
                                      '()))))))
          (let* ((_%__stx185755185756%_ _%stx179738%_)
                 (_%g179748179970%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx185755185756%_)))))
            (let ((_%__kont185757185758%_
                   (lambda (_%L180742%_ _%L180743%_ _%L180744%_ _%L180745%_)
                     (let ((_%$method180790%_
                            (let ((__tmp186418
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self179737%_ 'methods)))
                                  (__tmp186417
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L180743%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186418 __tmp186417)))
                           (_%args180791%_
                            (map (lambda (_%g180778180780%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self179737%_
                                      _%g180778180780%_)))
                                 (let ((__tmp186419
                                        (lambda (_%g180782180785%_
                                                 _%g180783180787%_)
                                          (cons _%g180782180785%_
                                                _%g180783180787%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp186419 '() _%L180742%_)))))
                       (let ((__tmp186420
                              (cons '%#call
                                    (cons (_%force-e179740%_ _%$method180790%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self179737%_
                                                               'receiver))
                                                            '()))
                                                _%args180791%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186420 _%stx179738%_)))))
                  (_%__kont185761185762%_
                   (lambda (_%L180574%_
                            _%L180575%_
                            _%L180576%_
                            _%L180577%_
                            _%L180578%_)
                     (let ((_%$method180630%_
                            (let ((__tmp186422
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self179737%_ 'methods)))
                                  (__tmp186421
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L180575%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186422 __tmp186421)))
                           (_%args180631%_
                            (map (lambda (_%g180618180620%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self179737%_
                                      _%g180618180620%_)))
                                 (let ((__tmp186423
                                        (lambda (_%g180622180625%_
                                                 _%g180623180627%_)
                                          (cons _%g180622180625%_
                                                _%g180623180627%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp186423 '() _%L180574%_)))))
                       (let ((__tmp186424
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e179740%_
                                                 _%$method180630%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self179737%_ 'receiver))
                          '()))
              _%args180631%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186424 _%stx179738%_)))))
                  (_%__kont185765185766%_
                   (lambda (_%L180405%_ _%L180406%_ _%L180407%_)
                     (let* ((_%$field180439%_
                             (let ((__tmp186426
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self179737%_ 'slots)))
                                   (__tmp186425
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L180405%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp186426 __tmp186425)))
                            (__tmp186427
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self179737%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field180439%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self179737%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp186427 _%stx179738%_))))
                  (_%__kont185767185768%_
                   (lambda (_%L180279%_ _%L180280%_ _%L180281%_ _%L180282%_)
                     (let ((_%$field180317%_
                            (let ((__tmp186429
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self179737%_ 'slots)))
                                  (__tmp186428
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L180280%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186429 __tmp186428)))
                           (_%expr180318%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self179737%_ _%L180279%_))))
                       (let ((__tmp186430
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self179737%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field180317%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self179737%_ 'receiver))
                          '()))
              (cons _%expr180318%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186430 _%stx179738%_)))))
                  (_%__kont185769185770%_
                   (lambda (_%L180151%_ _%L180152%_)
                     (let* ((_%accessor180174%_
                             (let ((__tmp186431
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L180152%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp186431)))
                            (_%klass180176%_
                             (let ((__tmp186432
                                    (##structure-ref
                                     _%accessor180174%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx179738%_
                                __tmp186432)))
                            (_%slot180178%_
                             (##structure-ref
                              _%accessor180174%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor180174%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass180176%_
                                      _%slot180178%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass180176%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx179738%_
                           (let* ((_%$field180184%_
                                   (let ((__tmp186433
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179737%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp186433 _%slot180178%_)))
                                  (__tmp186434
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self179737%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field180184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self179737%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp186434
                              _%stx179738%_))))))
                  (_%__kont185771185772%_
                   (lambda (_%L180046%_ _%L180047%_ _%L180048%_)
                     (let* ((_%mutator180076%_
                             (let ((__tmp186435
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L180048%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp186435)))
                            (_%klass180078%_
                             (let ((__tmp186436
                                    (##structure-ref
                                     _%mutator180076%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx179738%_
                                __tmp186436)))
                            (_%slot180080%_
                             (##structure-ref
                              _%mutator180076%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr180082%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self179737%_ _%L180046%_))))
                       (if (if (##structure-ref
                                _%mutator180076%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass180078%_
                                      _%slot180080%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass180078%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp186437
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L180048%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L180047%_
                                                                '()))
                                                    (cons _%expr180082%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp186437 _%stx179738%_))
                           (let* ((_%$field180088%_
                                   (let ((__tmp186438
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179737%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp186438 _%slot180080%_)))
                                  (__tmp186439
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self179737%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field180088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self179737%_ 'receiver))
                               '()))
                   (cons _%expr180082%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp186439
                              _%stx179738%_))))))
                  (_%__kont185773185774%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self179737%_ _%stx179738%_)))))
              (let* ((_%__match186254186255%_
                      (lambda (_%e179942179982%_
                               _%hd179943179985%_
                               _%tl179944179987%_
                               _%e179945179990%_
                               _%hd179946179993%_
                               _%tl179947179995%_
                               _%e179948179998%_
                               _%hd179949180001%_
                               _%tl179950180003%_
                               _%e179951180006%_
                               _%hd179952180009%_
                               _%tl179953180011%_
                               _%e179954180014%_
                               _%hd179955180017%_
                               _%tl179956180019%_
                               _%e179957180022%_
                               _%hd179958180025%_
                               _%tl179959180027%_
                               _%e179960180030%_
                               _%hd179961180033%_
                               _%tl179962180035%_
                               _%e179963180038%_
                               _%hd179964180041%_
                               _%tl179965180043%_)
                        (let ((_%L180046%_ _%hd179964180041%_)
                              (_%L180047%_ _%hd179961180033%_)
                              (_%L180048%_ _%hd179952180009%_))
                          (if (and (let ((__tmp186440
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179737%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180047%_
                                      __tmp186440))
                                   (let ((__tmp186441
                                          (let ((__tmp186442
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L180048%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp186442))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp186441
                                      'gxc#!mutator::t)))
                              (_%__kont185771185772%_
                               _%L180046%_
                               _%L180047%_
                               _%L180048%_)
                              (_%__kont185773185774%_)))))
                     (_%__match186252186253%_
                      (lambda (_%e179942179982%_
                               _%hd179943179985%_
                               _%tl179944179987%_
                               _%e179945179990%_
                               _%hd179946179993%_
                               _%tl179947179995%_
                               _%e179948179998%_
                               _%hd179949180001%_
                               _%tl179950180003%_
                               _%e179951180006%_
                               _%hd179952180009%_
                               _%tl179953180011%_
                               _%e179954180014%_
                               _%hd179955180017%_
                               _%tl179956180019%_
                               _%e179957180022%_
                               _%hd179958180025%_
                               _%tl179959180027%_
                               _%e179960180030%_
                               _%hd179961180033%_
                               _%tl179962180035%_
                               _%e179963180038%_
                               _%hd179964180041%_
                               _%tl179965180043%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl179965180043%_))
                            (_%__match186254186255%_
                             _%e179942179982%_
                             _%hd179943179985%_
                             _%tl179944179987%_
                             _%e179945179990%_
                             _%hd179946179993%_
                             _%tl179947179995%_
                             _%e179948179998%_
                             _%hd179949180001%_
                             _%tl179950180003%_
                             _%e179951180006%_
                             _%hd179952180009%_
                             _%tl179953180011%_
                             _%e179954180014%_
                             _%hd179955180017%_
                             _%tl179956180019%_
                             _%e179957180022%_
                             _%hd179958180025%_
                             _%tl179959180027%_
                             _%e179960180030%_
                             _%hd179961180033%_
                             _%tl179962180035%_
                             _%e179963180038%_
                             _%hd179964180041%_
                             _%tl179965180043%_)
                            (_%__kont185773185774%_))))
                     (_%__match186246186247%_
                      (lambda (_%e179942179982%_
                               _%hd179943179985%_
                               _%tl179944179987%_
                               _%e179945179990%_
                               _%hd179946179993%_
                               _%tl179947179995%_
                               _%e179948179998%_
                               _%hd179949180001%_
                               _%tl179950180003%_
                               _%e179951180006%_
                               _%hd179952180009%_
                               _%tl179953180011%_
                               _%e179954180014%_
                               _%hd179955180017%_
                               _%tl179956180019%_
                               _%e179957180022%_
                               _%hd179958180025%_
                               _%tl179959180027%_
                               _%e179960180030%_
                               _%hd179961180033%_
                               _%tl179962180035%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl179956180019%_))
                            (let ((_%e179963180038%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl179956180019%_))))
                              (let ((_%tl179965180043%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179963180038%_)))
                                    (_%hd179964180041%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179963180038%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl179965180043%_))
                                    (_%__match186254186255%_
                                     _%e179942179982%_
                                     _%hd179943179985%_
                                     _%tl179944179987%_
                                     _%e179945179990%_
                                     _%hd179946179993%_
                                     _%tl179947179995%_
                                     _%e179948179998%_
                                     _%hd179949180001%_
                                     _%tl179950180003%_
                                     _%e179951180006%_
                                     _%hd179952180009%_
                                     _%tl179953180011%_
                                     _%e179954180014%_
                                     _%hd179955180017%_
                                     _%tl179956180019%_
                                     _%e179957180022%_
                                     _%hd179958180025%_
                                     _%tl179959180027%_
                                     _%e179960180030%_
                                     _%hd179961180033%_
                                     _%tl179962180035%_
                                     _%e179963180038%_
                                     _%hd179964180041%_
                                     _%tl179965180043%_)
                                    (_%__kont185773185774%_))))
                            (_%__kont185773185774%_))))
                     (_%__match186192186193%_
                      (lambda (_%e179918180095%_
                               _%hd179919180098%_
                               _%tl179920180100%_
                               _%e179921180103%_
                               _%hd179922180106%_
                               _%tl179923180108%_
                               _%e179924180111%_
                               _%hd179925180114%_
                               _%tl179926180116%_
                               _%e179927180119%_
                               _%hd179928180122%_
                               _%tl179929180124%_
                               _%e179930180127%_
                               _%hd179931180130%_
                               _%tl179932180132%_
                               _%e179933180135%_
                               _%hd179934180138%_
                               _%tl179935180140%_
                               _%e179936180143%_
                               _%hd179937180146%_
                               _%tl179938180148%_)
                        (let ((_%L180151%_ _%hd179937180146%_)
                              (_%L180152%_ _%hd179928180122%_))
                          (if (and (let ((__tmp186443
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179737%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180151%_
                                      __tmp186443))
                                   (let ((__tmp186444
                                          (let ((__tmp186445
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L180152%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp186445))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp186444
                                      'gxc#!accessor::t)))
                              (_%__kont185769185770%_ _%L180151%_ _%L180152%_)
                              (_%__kont185773185774%_)))))
                     (_%__match186190186191%_
                      (lambda (_%e179918180095%_
                               _%hd179919180098%_
                               _%tl179920180100%_
                               _%e179921180103%_
                               _%hd179922180106%_
                               _%tl179923180108%_
                               _%e179924180111%_
                               _%hd179925180114%_
                               _%tl179926180116%_
                               _%e179927180119%_
                               _%hd179928180122%_
                               _%tl179929180124%_
                               _%e179930180127%_
                               _%hd179931180130%_
                               _%tl179932180132%_
                               _%e179933180135%_
                               _%hd179934180138%_
                               _%tl179935180140%_
                               _%e179936180143%_
                               _%hd179937180146%_
                               _%tl179938180148%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl179932180132%_))
                            (_%__match186192186193%_
                             _%e179918180095%_
                             _%hd179919180098%_
                             _%tl179920180100%_
                             _%e179921180103%_
                             _%hd179922180106%_
                             _%tl179923180108%_
                             _%e179924180111%_
                             _%hd179925180114%_
                             _%tl179926180116%_
                             _%e179927180119%_
                             _%hd179928180122%_
                             _%tl179929180124%_
                             _%e179930180127%_
                             _%hd179931180130%_
                             _%tl179932180132%_
                             _%e179933180135%_
                             _%hd179934180138%_
                             _%tl179935180140%_
                             _%e179936180143%_
                             _%hd179937180146%_
                             _%tl179938180148%_)
                            (_%__match186246186247%_
                             _%e179918180095%_
                             _%hd179919180098%_
                             _%tl179920180100%_
                             _%e179921180103%_
                             _%hd179922180106%_
                             _%tl179923180108%_
                             _%e179924180111%_
                             _%hd179925180114%_
                             _%tl179926180116%_
                             _%e179927180119%_
                             _%hd179928180122%_
                             _%tl179929180124%_
                             _%e179930180127%_
                             _%hd179931180130%_
                             _%tl179932180132%_
                             _%e179933180135%_
                             _%hd179934180138%_
                             _%tl179935180140%_
                             _%e179936180143%_
                             _%hd179937180146%_
                             _%tl179938180148%_))))
                     (_%__match186136186137%_
                      (lambda (_%e179883180191%_
                               _%hd179884180194%_
                               _%tl179885180196%_
                               _%e179886180199%_
                               _%hd179887180202%_
                               _%tl179888180204%_
                               _%e179889180207%_
                               _%hd179890180210%_
                               _%tl179891180212%_
                               _%e179892180215%_
                               _%hd179893180218%_
                               _%tl179894180220%_
                               _%e179895180223%_
                               _%hd179896180226%_
                               _%tl179897180228%_
                               _%e179898180231%_
                               _%hd179899180234%_
                               _%tl179900180236%_
                               _%e179901180239%_
                               _%hd179902180242%_
                               _%tl179903180244%_
                               _%e179904180247%_
                               _%hd179905180250%_
                               _%tl179906180252%_
                               _%e179907180255%_
                               _%hd179908180258%_
                               _%tl179909180260%_
                               _%e179910180263%_
                               _%hd179911180266%_
                               _%tl179912180268%_
                               _%e179913180271%_
                               _%hd179914180274%_
                               _%tl179915180276%_)
                        (let ((_%L180279%_ _%hd179914180274%_)
                              (_%L180280%_ _%hd179911180266%_)
                              (_%L180281%_ _%hd179902180242%_)
                              (_%L180282%_ _%hd179893180218%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180282%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180282%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp186446
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179737%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180281%_
                                      __tmp186446)))
                              (_%__kont185767185768%_
                               _%L180279%_
                               _%L180280%_
                               _%L180281%_
                               _%L180282%_)
                              (_%__kont185773185774%_)))))
                     (_%__match186128186129%_
                      (lambda (_%e179883180191%_
                               _%hd179884180194%_
                               _%tl179885180196%_
                               _%e179886180199%_
                               _%hd179887180202%_
                               _%tl179888180204%_
                               _%e179889180207%_
                               _%hd179890180210%_
                               _%tl179891180212%_
                               _%e179892180215%_
                               _%hd179893180218%_
                               _%tl179894180220%_
                               _%e179895180223%_
                               _%hd179896180226%_
                               _%tl179897180228%_
                               _%e179898180231%_
                               _%hd179899180234%_
                               _%tl179900180236%_
                               _%e179901180239%_
                               _%hd179902180242%_
                               _%tl179903180244%_
                               _%e179904180247%_
                               _%hd179905180250%_
                               _%tl179906180252%_
                               _%e179907180255%_
                               _%hd179908180258%_
                               _%tl179909180260%_
                               _%e179910180263%_
                               _%hd179911180266%_
                               _%tl179912180268%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl179906180252%_))
                            (let ((_%e179913180271%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl179906180252%_))))
                              (let ((_%tl179915180276%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179913180271%_)))
                                    (_%hd179914180274%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179913180271%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl179915180276%_))
                                    (_%__match186136186137%_
                                     _%e179883180191%_
                                     _%hd179884180194%_
                                     _%tl179885180196%_
                                     _%e179886180199%_
                                     _%hd179887180202%_
                                     _%tl179888180204%_
                                     _%e179889180207%_
                                     _%hd179890180210%_
                                     _%tl179891180212%_
                                     _%e179892180215%_
                                     _%hd179893180218%_
                                     _%tl179894180220%_
                                     _%e179895180223%_
                                     _%hd179896180226%_
                                     _%tl179897180228%_
                                     _%e179898180231%_
                                     _%hd179899180234%_
                                     _%tl179900180236%_
                                     _%e179901180239%_
                                     _%hd179902180242%_
                                     _%tl179903180244%_
                                     _%e179904180247%_
                                     _%hd179905180250%_
                                     _%tl179906180252%_
                                     _%e179907180255%_
                                     _%hd179908180258%_
                                     _%tl179909180260%_
                                     _%e179910180263%_
                                     _%hd179911180266%_
                                     _%tl179912180268%_
                                     _%e179913180271%_
                                     _%hd179914180274%_
                                     _%tl179915180276%_)
                                    (_%__kont185773185774%_))))
                            (_%__match186252186253%_
                             _%e179883180191%_
                             _%hd179884180194%_
                             _%tl179885180196%_
                             _%e179886180199%_
                             _%hd179887180202%_
                             _%tl179888180204%_
                             _%e179889180207%_
                             _%hd179890180210%_
                             _%tl179891180212%_
                             _%e179892180215%_
                             _%hd179893180218%_
                             _%tl179894180220%_
                             _%e179895180223%_
                             _%hd179896180226%_
                             _%tl179897180228%_
                             _%e179898180231%_
                             _%hd179899180234%_
                             _%tl179900180236%_
                             _%e179901180239%_
                             _%hd179902180242%_
                             _%tl179903180244%_
                             _%e179904180247%_
                             _%hd179905180250%_
                             _%tl179906180252%_))))
                     (_%__match186050186051%_
                      (lambda (_%e179849180325%_
                               _%hd179850180328%_
                               _%tl179851180330%_
                               _%e179852180333%_
                               _%hd179853180336%_
                               _%tl179854180338%_
                               _%e179855180341%_
                               _%hd179856180344%_
                               _%tl179857180346%_
                               _%e179858180349%_
                               _%hd179859180352%_
                               _%tl179860180354%_
                               _%e179861180357%_
                               _%hd179862180360%_
                               _%tl179863180362%_
                               _%e179864180365%_
                               _%hd179865180368%_
                               _%tl179866180370%_
                               _%e179867180373%_
                               _%hd179868180376%_
                               _%tl179869180378%_
                               _%e179870180381%_
                               _%hd179871180384%_
                               _%tl179872180386%_
                               _%e179873180389%_
                               _%hd179874180392%_
                               _%tl179875180394%_
                               _%e179876180397%_
                               _%hd179877180400%_
                               _%tl179878180402%_)
                        (let ((_%L180405%_ _%hd179877180400%_)
                              (_%L180406%_ _%hd179868180376%_)
                              (_%L180407%_ _%hd179859180352%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180407%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180407%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp186447
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179737%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180406%_
                                      __tmp186447)))
                              (_%__kont185765185766%_
                               _%L180405%_
                               _%L180406%_
                               _%L180407%_)
                              (_%__match186254186255%_
                               _%e179849180325%_
                               _%hd179850180328%_
                               _%tl179851180330%_
                               _%e179852180333%_
                               _%hd179853180336%_
                               _%tl179854180338%_
                               _%e179855180341%_
                               _%hd179856180344%_
                               _%tl179857180346%_
                               _%e179858180349%_
                               _%hd179859180352%_
                               _%tl179860180354%_
                               _%e179861180357%_
                               _%hd179862180360%_
                               _%tl179863180362%_
                               _%e179864180365%_
                               _%hd179865180368%_
                               _%tl179866180370%_
                               _%e179867180373%_
                               _%hd179868180376%_
                               _%tl179869180378%_
                               _%e179870180381%_
                               _%hd179871180384%_
                               _%tl179872180386%_)))))
                     (_%__match186048186049%_
                      (lambda (_%e179849180325%_
                               _%hd179850180328%_
                               _%tl179851180330%_
                               _%e179852180333%_
                               _%hd179853180336%_
                               _%tl179854180338%_
                               _%e179855180341%_
                               _%hd179856180344%_
                               _%tl179857180346%_
                               _%e179858180349%_
                               _%hd179859180352%_
                               _%tl179860180354%_
                               _%e179861180357%_
                               _%hd179862180360%_
                               _%tl179863180362%_
                               _%e179864180365%_
                               _%hd179865180368%_
                               _%tl179866180370%_
                               _%e179867180373%_
                               _%hd179868180376%_
                               _%tl179869180378%_
                               _%e179870180381%_
                               _%hd179871180384%_
                               _%tl179872180386%_
                               _%e179873180389%_
                               _%hd179874180392%_
                               _%tl179875180394%_
                               _%e179876180397%_
                               _%hd179877180400%_
                               _%tl179878180402%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl179872180386%_))
                            (_%__match186050186051%_
                             _%e179849180325%_
                             _%hd179850180328%_
                             _%tl179851180330%_
                             _%e179852180333%_
                             _%hd179853180336%_
                             _%tl179854180338%_
                             _%e179855180341%_
                             _%hd179856180344%_
                             _%tl179857180346%_
                             _%e179858180349%_
                             _%hd179859180352%_
                             _%tl179860180354%_
                             _%e179861180357%_
                             _%hd179862180360%_
                             _%tl179863180362%_
                             _%e179864180365%_
                             _%hd179865180368%_
                             _%tl179866180370%_
                             _%e179867180373%_
                             _%hd179868180376%_
                             _%tl179869180378%_
                             _%e179870180381%_
                             _%hd179871180384%_
                             _%tl179872180386%_
                             _%e179873180389%_
                             _%hd179874180392%_
                             _%tl179875180394%_
                             _%e179876180397%_
                             _%hd179877180400%_
                             _%tl179878180402%_)
                            (_%__match186128186129%_
                             _%e179849180325%_
                             _%hd179850180328%_
                             _%tl179851180330%_
                             _%e179852180333%_
                             _%hd179853180336%_
                             _%tl179854180338%_
                             _%e179855180341%_
                             _%hd179856180344%_
                             _%tl179857180346%_
                             _%e179858180349%_
                             _%hd179859180352%_
                             _%tl179860180354%_
                             _%e179861180357%_
                             _%hd179862180360%_
                             _%tl179863180362%_
                             _%e179864180365%_
                             _%hd179865180368%_
                             _%tl179866180370%_
                             _%e179867180373%_
                             _%hd179868180376%_
                             _%tl179869180378%_
                             _%e179870180381%_
                             _%hd179871180384%_
                             _%tl179872180386%_
                             _%e179873180389%_
                             _%hd179874180392%_
                             _%tl179875180394%_
                             _%e179876180397%_
                             _%hd179877180400%_
                             _%tl179878180402%_))))
                     (_%__match186038186039%_
                      (lambda (_%e179849180325%_
                               _%hd179850180328%_
                               _%tl179851180330%_
                               _%e179852180333%_
                               _%hd179853180336%_
                               _%tl179854180338%_
                               _%e179855180341%_
                               _%hd179856180344%_
                               _%tl179857180346%_
                               _%e179858180349%_
                               _%hd179859180352%_
                               _%tl179860180354%_
                               _%e179861180357%_
                               _%hd179862180360%_
                               _%tl179863180362%_
                               _%e179864180365%_
                               _%hd179865180368%_
                               _%tl179866180370%_
                               _%e179867180373%_
                               _%hd179868180376%_
                               _%tl179869180378%_
                               _%e179870180381%_
                               _%hd179871180384%_
                               _%tl179872180386%_
                               _%e179873180389%_
                               _%hd179874180392%_
                               _%tl179875180394%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd179874180392%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl179875180394%_))
                                (let ((_%e179876180397%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl179875180394%_))))
                                  (let ((_%tl179878180402%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e179876180397%_)))
                                        (_%hd179877180400%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e179876180397%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl179878180402%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl179872180386%_))
                                            (_%__match186050186051%_
                                             _%e179849180325%_
                                             _%hd179850180328%_
                                             _%tl179851180330%_
                                             _%e179852180333%_
                                             _%hd179853180336%_
                                             _%tl179854180338%_
                                             _%e179855180341%_
                                             _%hd179856180344%_
                                             _%tl179857180346%_
                                             _%e179858180349%_
                                             _%hd179859180352%_
                                             _%tl179860180354%_
                                             _%e179861180357%_
                                             _%hd179862180360%_
                                             _%tl179863180362%_
                                             _%e179864180365%_
                                             _%hd179865180368%_
                                             _%tl179866180370%_
                                             _%e179867180373%_
                                             _%hd179868180376%_
                                             _%tl179869180378%_
                                             _%e179870180381%_
                                             _%hd179871180384%_
                                             _%tl179872180386%_
                                             _%e179873180389%_
                                             _%hd179874180392%_
                                             _%tl179875180394%_
                                             _%e179876180397%_
                                             _%hd179877180400%_
                                             _%tl179878180402%_)
                                            (_%__match186128186129%_
                                             _%e179849180325%_
                                             _%hd179850180328%_
                                             _%tl179851180330%_
                                             _%e179852180333%_
                                             _%hd179853180336%_
                                             _%tl179854180338%_
                                             _%e179855180341%_
                                             _%hd179856180344%_
                                             _%tl179857180346%_
                                             _%e179858180349%_
                                             _%hd179859180352%_
                                             _%tl179860180354%_
                                             _%e179861180357%_
                                             _%hd179862180360%_
                                             _%tl179863180362%_
                                             _%e179864180365%_
                                             _%hd179865180368%_
                                             _%tl179866180370%_
                                             _%e179867180373%_
                                             _%hd179868180376%_
                                             _%tl179869180378%_
                                             _%e179870180381%_
                                             _%hd179871180384%_
                                             _%tl179872180386%_
                                             _%e179873180389%_
                                             _%hd179874180392%_
                                             _%tl179875180394%_
                                             _%e179876180397%_
                                             _%hd179877180400%_
                                             _%tl179878180402%_))
                                        (_%__match186252186253%_
                                         _%e179849180325%_
                                         _%hd179850180328%_
                                         _%tl179851180330%_
                                         _%e179852180333%_
                                         _%hd179853180336%_
                                         _%tl179854180338%_
                                         _%e179855180341%_
                                         _%hd179856180344%_
                                         _%tl179857180346%_
                                         _%e179858180349%_
                                         _%hd179859180352%_
                                         _%tl179860180354%_
                                         _%e179861180357%_
                                         _%hd179862180360%_
                                         _%tl179863180362%_
                                         _%e179864180365%_
                                         _%hd179865180368%_
                                         _%tl179866180370%_
                                         _%e179867180373%_
                                         _%hd179868180376%_
                                         _%tl179869180378%_
                                         _%e179870180381%_
                                         _%hd179871180384%_
                                         _%tl179872180386%_))))
                                (_%__match186252186253%_
                                 _%e179849180325%_
                                 _%hd179850180328%_
                                 _%tl179851180330%_
                                 _%e179852180333%_
                                 _%hd179853180336%_
                                 _%tl179854180338%_
                                 _%e179855180341%_
                                 _%hd179856180344%_
                                 _%tl179857180346%_
                                 _%e179858180349%_
                                 _%hd179859180352%_
                                 _%tl179860180354%_
                                 _%e179861180357%_
                                 _%hd179862180360%_
                                 _%tl179863180362%_
                                 _%e179864180365%_
                                 _%hd179865180368%_
                                 _%tl179866180370%_
                                 _%e179867180373%_
                                 _%hd179868180376%_
                                 _%tl179869180378%_
                                 _%e179870180381%_
                                 _%hd179871180384%_
                                 _%tl179872180386%_))
                            (_%__match186252186253%_
                             _%e179849180325%_
                             _%hd179850180328%_
                             _%tl179851180330%_
                             _%e179852180333%_
                             _%hd179853180336%_
                             _%tl179854180338%_
                             _%e179855180341%_
                             _%hd179856180344%_
                             _%tl179857180346%_
                             _%e179858180349%_
                             _%hd179859180352%_
                             _%tl179860180354%_
                             _%e179861180357%_
                             _%hd179862180360%_
                             _%tl179863180362%_
                             _%e179864180365%_
                             _%hd179865180368%_
                             _%tl179866180370%_
                             _%e179867180373%_
                             _%hd179868180376%_
                             _%tl179869180378%_
                             _%e179870180381%_
                             _%hd179871180384%_
                             _%tl179872180386%_))))
                     (_%__match185970185971%_
                      (lambda (_%e179798180446%_
                               _%hd179799180449%_
                               _%tl179800180451%_
                               _%e179801180454%_
                               _%hd179802180457%_
                               _%tl179803180459%_
                               _%e179804180462%_
                               _%hd179805180465%_
                               _%tl179806180467%_
                               _%e179807180470%_
                               _%hd179808180473%_
                               _%tl179809180475%_
                               _%e179810180478%_
                               _%hd179811180481%_
                               _%tl179812180483%_
                               _%e179813180486%_
                               _%hd179814180489%_
                               _%tl179815180491%_
                               _%e179816180494%_
                               _%hd179817180497%_
                               _%tl179818180499%_
                               _%e179819180502%_
                               _%hd179820180505%_
                               _%tl179821180507%_
                               _%e179822180510%_
                               _%hd179823180513%_
                               _%tl179824180515%_
                               _%e179825180518%_
                               _%hd179826180521%_
                               _%tl179827180523%_
                               _%e179828180526%_
                               _%hd179829180529%_
                               _%tl179830180531%_
                               _%e179831180534%_
                               _%hd179832180537%_
                               _%tl179833180539%_
                               _%e179834180542%_
                               _%hd179835180545%_
                               _%tl179836180547%_
                               _%__splice185763185764%_
                               _%target179837180550%_
                               _%tl179839180552%_)
                        (letrec ((_%loop179840180555%_
                                  (lambda (_%hd179838180558%_
                                           _%args179844180560%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd179838180558%_))
                                        (let ((_%e179841180563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd179838180558%_))))
                                          (let ((_%lp-tl179843180568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e179841180563%_)))
                                                (_%lp-hd179842180566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e179841180563%_))))
                                            (_%loop179840180555%_
                                             _%lp-tl179843180568%_
                                             (cons _%lp-hd179842180566%_
                                                   _%args179844180560%_))))
                                        (let ((_%args179845180571%_
                                               (reverse _%args179844180560%_)))
                                          (let ((_%L180574%_
                                                 _%args179845180571%_)
                                                (_%L180575%_
                                                 _%hd179835180545%_)
                                                (_%L180576%_
                                                 _%hd179826180521%_)
                                                (_%L180577%_
                                                 _%hd179817180497%_)
                                                (_%L180578%_
                                                 _%hd179808180473%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L180578%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L180577%_
                                                        'call-method))
                                                     (let ((__tmp186448
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self179737%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L180576%_
                                                        __tmp186448)))
                                                (_%__kont185761185762%_
                                                 _%L180574%_
                                                 _%L180575%_
                                                 _%L180576%_
                                                 _%L180577%_
                                                 _%L180578%_)
                                                (_%__kont185773185774%_))))))))
                          (_%loop179840180555%_ _%target179837180550%_ '()))))
                     (_%__match185928185929%_
                      (lambda (_%e179798180446%_
                               _%hd179799180449%_
                               _%tl179800180451%_
                               _%e179801180454%_
                               _%hd179802180457%_
                               _%tl179803180459%_
                               _%e179804180462%_
                               _%hd179805180465%_
                               _%tl179806180467%_
                               _%e179807180470%_
                               _%hd179808180473%_
                               _%tl179809180475%_
                               _%e179810180478%_
                               _%hd179811180481%_
                               _%tl179812180483%_
                               _%e179813180486%_
                               _%hd179814180489%_
                               _%tl179815180491%_
                               _%e179816180494%_
                               _%hd179817180497%_
                               _%tl179818180499%_
                               _%e179819180502%_
                               _%hd179820180505%_
                               _%tl179821180507%_
                               _%e179822180510%_
                               _%hd179823180513%_
                               _%tl179824180515%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd179823180513%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl179824180515%_))
                                (let ((_%e179825180518%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl179824180515%_))))
                                  (let ((_%tl179827180523%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e179825180518%_)))
                                        (_%hd179826180521%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e179825180518%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl179827180523%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl179821180507%_))
                                            (let ((_%e179828180526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl179821180507%_))))
                                              (let ((_%tl179830180531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e179828180526%_)))
                                                    (_%hd179829180529%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e179828180526%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd179829180529%_))
                                                    (let ((_%e179831180534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd179829180529%_))))
                                                      (let ((_%tl179833180539%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e179831180534%_)))
                    (_%hd179832180537%_
                     (let () (declare (not safe)) (##car _%e179831180534%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd179832180537%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd179832180537%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl179833180539%_))
                            (let ((_%e179834180542%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl179833180539%_))))
                              (let ((_%tl179836180547%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179834180542%_)))
                                    (_%hd179835180545%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179834180542%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl179836180547%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl179830180531%_))
                                        (let ((_%__splice185763185764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl179830180531%_
                                                  '0))))
                                          (let ((_%tl179839180552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice185763185764%_
                                                    '1)))
                                                (_%target179837180550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice185763185764%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl179839180552%_))
                                                (_%__match185970185971%_
                                                 _%e179798180446%_
                                                 _%hd179799180449%_
                                                 _%tl179800180451%_
                                                 _%e179801180454%_
                                                 _%hd179802180457%_
                                                 _%tl179803180459%_
                                                 _%e179804180462%_
                                                 _%hd179805180465%_
                                                 _%tl179806180467%_
                                                 _%e179807180470%_
                                                 _%hd179808180473%_
                                                 _%tl179809180475%_
                                                 _%e179810180478%_
                                                 _%hd179811180481%_
                                                 _%tl179812180483%_
                                                 _%e179813180486%_
                                                 _%hd179814180489%_
                                                 _%tl179815180491%_
                                                 _%e179816180494%_
                                                 _%hd179817180497%_
                                                 _%tl179818180499%_
                                                 _%e179819180502%_
                                                 _%hd179820180505%_
                                                 _%tl179821180507%_
                                                 _%e179822180510%_
                                                 _%hd179823180513%_
                                                 _%tl179824180515%_
                                                 _%e179825180518%_
                                                 _%hd179826180521%_
                                                 _%tl179827180523%_
                                                 _%e179828180526%_
                                                 _%hd179829180529%_
                                                 _%tl179830180531%_
                                                 _%e179831180534%_
                                                 _%hd179832180537%_
                                                 _%tl179833180539%_
                                                 _%e179834180542%_
                                                 _%hd179835180545%_
                                                 _%tl179836180547%_
                                                 _%__splice185763185764%_
                                                 _%target179837180550%_
                                                 _%tl179839180552%_)
                                                (_%__kont185773185774%_))))
                                        (_%__kont185773185774%_))
                                    (_%__kont185773185774%_))))
                            (_%__kont185773185774%_))
                        (_%__kont185773185774%_))
                    (_%__kont185773185774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont185773185774%_))))
                                            (_%__match186252186253%_
                                             _%e179798180446%_
                                             _%hd179799180449%_
                                             _%tl179800180451%_
                                             _%e179801180454%_
                                             _%hd179802180457%_
                                             _%tl179803180459%_
                                             _%e179804180462%_
                                             _%hd179805180465%_
                                             _%tl179806180467%_
                                             _%e179807180470%_
                                             _%hd179808180473%_
                                             _%tl179809180475%_
                                             _%e179810180478%_
                                             _%hd179811180481%_
                                             _%tl179812180483%_
                                             _%e179813180486%_
                                             _%hd179814180489%_
                                             _%tl179815180491%_
                                             _%e179816180494%_
                                             _%hd179817180497%_
                                             _%tl179818180499%_
                                             _%e179819180502%_
                                             _%hd179820180505%_
                                             _%tl179821180507%_))
                                        (_%__match186252186253%_
                                         _%e179798180446%_
                                         _%hd179799180449%_
                                         _%tl179800180451%_
                                         _%e179801180454%_
                                         _%hd179802180457%_
                                         _%tl179803180459%_
                                         _%e179804180462%_
                                         _%hd179805180465%_
                                         _%tl179806180467%_
                                         _%e179807180470%_
                                         _%hd179808180473%_
                                         _%tl179809180475%_
                                         _%e179810180478%_
                                         _%hd179811180481%_
                                         _%tl179812180483%_
                                         _%e179813180486%_
                                         _%hd179814180489%_
                                         _%tl179815180491%_
                                         _%e179816180494%_
                                         _%hd179817180497%_
                                         _%tl179818180499%_
                                         _%e179819180502%_
                                         _%hd179820180505%_
                                         _%tl179821180507%_))))
                                (_%__match186252186253%_
                                 _%e179798180446%_
                                 _%hd179799180449%_
                                 _%tl179800180451%_
                                 _%e179801180454%_
                                 _%hd179802180457%_
                                 _%tl179803180459%_
                                 _%e179804180462%_
                                 _%hd179805180465%_
                                 _%tl179806180467%_
                                 _%e179807180470%_
                                 _%hd179808180473%_
                                 _%tl179809180475%_
                                 _%e179810180478%_
                                 _%hd179811180481%_
                                 _%tl179812180483%_
                                 _%e179813180486%_
                                 _%hd179814180489%_
                                 _%tl179815180491%_
                                 _%e179816180494%_
                                 _%hd179817180497%_
                                 _%tl179818180499%_
                                 _%e179819180502%_
                                 _%hd179820180505%_
                                 _%tl179821180507%_))
                            (_%__match186038186039%_
                             _%e179798180446%_
                             _%hd179799180449%_
                             _%tl179800180451%_
                             _%e179801180454%_
                             _%hd179802180457%_
                             _%tl179803180459%_
                             _%e179804180462%_
                             _%hd179805180465%_
                             _%tl179806180467%_
                             _%e179807180470%_
                             _%hd179808180473%_
                             _%tl179809180475%_
                             _%e179810180478%_
                             _%hd179811180481%_
                             _%tl179812180483%_
                             _%e179813180486%_
                             _%hd179814180489%_
                             _%tl179815180491%_
                             _%e179816180494%_
                             _%hd179817180497%_
                             _%tl179818180499%_
                             _%e179819180502%_
                             _%hd179820180505%_
                             _%tl179821180507%_
                             _%e179822180510%_
                             _%hd179823180513%_
                             _%tl179824180515%_))))
                     (_%__match185860185861%_
                      (lambda (_%e179754180638%_
                               _%hd179755180641%_
                               _%tl179756180643%_
                               _%e179757180646%_
                               _%hd179758180649%_
                               _%tl179759180651%_
                               _%e179760180654%_
                               _%hd179761180657%_
                               _%tl179762180659%_
                               _%e179763180662%_
                               _%hd179764180665%_
                               _%tl179765180667%_
                               _%e179766180670%_
                               _%hd179767180673%_
                               _%tl179768180675%_
                               _%e179769180678%_
                               _%hd179770180681%_
                               _%tl179771180683%_
                               _%e179772180686%_
                               _%hd179773180689%_
                               _%tl179774180691%_
                               _%e179775180694%_
                               _%hd179776180697%_
                               _%tl179777180699%_
                               _%e179778180702%_
                               _%hd179779180705%_
                               _%tl179780180707%_
                               _%e179781180710%_
                               _%hd179782180713%_
                               _%tl179783180715%_
                               _%__splice185759185760%_
                               _%target179784180718%_
                               _%tl179786180720%_)
                        (letrec ((_%loop179787180723%_
                                  (lambda (_%hd179785180726%_
                                           _%args179791180728%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd179785180726%_))
                                        (let ((_%e179788180731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd179785180726%_))))
                                          (let ((_%lp-tl179790180736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e179788180731%_)))
                                                (_%lp-hd179789180734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e179788180731%_))))
                                            (_%loop179787180723%_
                                             _%lp-tl179790180736%_
                                             (cons _%lp-hd179789180734%_
                                                   _%args179791180728%_))))
                                        (let ((_%args179792180739%_
                                               (reverse _%args179791180728%_)))
                                          (let ((_%L180742%_
                                                 _%args179792180739%_)
                                                (_%L180743%_
                                                 _%hd179782180713%_)
                                                (_%L180744%_
                                                 _%hd179773180689%_)
                                                (_%L180745%_
                                                 _%hd179764180665%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L180745%_
                                                        'call-method))
                                                     (let ((__tmp186449
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self179737%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L180744%_
                                                        __tmp186449)))
                                                (_%__kont185757185758%_
                                                 _%L180742%_
                                                 _%L180743%_
                                                 _%L180744%_
                                                 _%L180745%_)
                                                (_%__match186048186049%_
                                                 _%e179754180638%_
                                                 _%hd179755180641%_
                                                 _%tl179756180643%_
                                                 _%e179757180646%_
                                                 _%hd179758180649%_
                                                 _%tl179759180651%_
                                                 _%e179760180654%_
                                                 _%hd179761180657%_
                                                 _%tl179762180659%_
                                                 _%e179763180662%_
                                                 _%hd179764180665%_
                                                 _%tl179765180667%_
                                                 _%e179766180670%_
                                                 _%hd179767180673%_
                                                 _%tl179768180675%_
                                                 _%e179769180678%_
                                                 _%hd179770180681%_
                                                 _%tl179771180683%_
                                                 _%e179772180686%_
                                                 _%hd179773180689%_
                                                 _%tl179774180691%_
                                                 _%e179775180694%_
                                                 _%hd179776180697%_
                                                 _%tl179777180699%_
                                                 _%e179778180702%_
                                                 _%hd179779180705%_
                                                 _%tl179780180707%_
                                                 _%e179781180710%_
                                                 _%hd179782180713%_
                                                 _%tl179783180715%_))))))))
                          (_%loop179787180723%_ _%target179784180718%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx185755185756%_))
                    (let ((_%e179754180638%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx185755185756%_))))
                      (let ((_%tl179756180643%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e179754180638%_)))
                            (_%hd179755180641%_
                             (let ()
                               (declare (not safe))
                               (##car _%e179754180638%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl179756180643%_))
                            (let ((_%e179757180646%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl179756180643%_))))
                              (let ((_%tl179759180651%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179757180646%_)))
                                    (_%hd179758180649%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179757180646%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd179758180649%_))
                                    (let ((_%e179760180654%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd179758180649%_))))
                                      (let ((_%tl179762180659%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e179760180654%_)))
                                            (_%hd179761180657%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e179760180654%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd179761180657%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd179761180657%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl179762180659%_))
                                                    (let ((_%e179763180662%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl179762180659%_))))
                                                      (let ((_%tl179765180667%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e179763180662%_)))
                    (_%hd179764180665%_
                     (let () (declare (not safe)) (##car _%e179763180662%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl179765180667%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl179759180651%_))
                        (let ((_%e179766180670%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl179759180651%_))))
                          (let ((_%tl179768180675%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e179766180670%_)))
                                (_%hd179767180673%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e179766180670%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd179767180673%_))
                                (let ((_%e179769180678%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd179767180673%_))))
                                  (let ((_%tl179771180683%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e179769180678%_)))
                                        (_%hd179770180681%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e179769180678%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd179770180681%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd179770180681%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl179771180683%_))
                                                (let ((_%e179772180686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl179771180683%_))))
                                                  (let ((_%tl179774180691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e179772180686%_)))
                                                        (_%hd179773180689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e179772180686%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl179774180691%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl179768180675%_))
                                                            (let ((_%e179775180694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl179768180675%_))))
                      (let ((_%tl179777180699%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e179775180694%_)))
                            (_%hd179776180697%_
                             (let ()
                               (declare (not safe))
                               (##car _%e179775180694%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd179776180697%_))
                            (let ((_%e179778180702%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd179776180697%_))))
                              (let ((_%tl179780180707%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179778180702%_)))
                                    (_%hd179779180705%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179778180702%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd179779180705%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd179779180705%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl179780180707%_))
                                            (let ((_%e179781180710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl179780180707%_))))
                                              (let ((_%tl179783180715%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e179781180710%_)))
                                                    (_%hd179782180713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e179781180710%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl179783180715%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl179777180699%_))
                                                        (let ((_%__splice185759185760%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl179777180699%_
                          '0))))
                  (let ((_%tl179786180720%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice185759185760%_ '1)))
                        (_%target179784180718%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice185759185760%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl179786180720%_))
                        (_%__match185860185861%_
                         _%e179754180638%_
                         _%hd179755180641%_
                         _%tl179756180643%_
                         _%e179757180646%_
                         _%hd179758180649%_
                         _%tl179759180651%_
                         _%e179760180654%_
                         _%hd179761180657%_
                         _%tl179762180659%_
                         _%e179763180662%_
                         _%hd179764180665%_
                         _%tl179765180667%_
                         _%e179766180670%_
                         _%hd179767180673%_
                         _%tl179768180675%_
                         _%e179769180678%_
                         _%hd179770180681%_
                         _%tl179771180683%_
                         _%e179772180686%_
                         _%hd179773180689%_
                         _%tl179774180691%_
                         _%e179775180694%_
                         _%hd179776180697%_
                         _%tl179777180699%_
                         _%e179778180702%_
                         _%hd179779180705%_
                         _%tl179780180707%_
                         _%e179781180710%_
                         _%hd179782180713%_
                         _%tl179783180715%_
                         _%__splice185759185760%_
                         _%target179784180718%_
                         _%tl179786180720%_)
                        (_%__match186048186049%_
                         _%e179754180638%_
                         _%hd179755180641%_
                         _%tl179756180643%_
                         _%e179757180646%_
                         _%hd179758180649%_
                         _%tl179759180651%_
                         _%e179760180654%_
                         _%hd179761180657%_
                         _%tl179762180659%_
                         _%e179763180662%_
                         _%hd179764180665%_
                         _%tl179765180667%_
                         _%e179766180670%_
                         _%hd179767180673%_
                         _%tl179768180675%_
                         _%e179769180678%_
                         _%hd179770180681%_
                         _%tl179771180683%_
                         _%e179772180686%_
                         _%hd179773180689%_
                         _%tl179774180691%_
                         _%e179775180694%_
                         _%hd179776180697%_
                         _%tl179777180699%_
                         _%e179778180702%_
                         _%hd179779180705%_
                         _%tl179780180707%_
                         _%e179781180710%_
                         _%hd179782180713%_
                         _%tl179783180715%_))))
                (_%__match186048186049%_
                 _%e179754180638%_
                 _%hd179755180641%_
                 _%tl179756180643%_
                 _%e179757180646%_
                 _%hd179758180649%_
                 _%tl179759180651%_
                 _%e179760180654%_
                 _%hd179761180657%_
                 _%tl179762180659%_
                 _%e179763180662%_
                 _%hd179764180665%_
                 _%tl179765180667%_
                 _%e179766180670%_
                 _%hd179767180673%_
                 _%tl179768180675%_
                 _%e179769180678%_
                 _%hd179770180681%_
                 _%tl179771180683%_
                 _%e179772180686%_
                 _%hd179773180689%_
                 _%tl179774180691%_
                 _%e179775180694%_
                 _%hd179776180697%_
                 _%tl179777180699%_
                 _%e179778180702%_
                 _%hd179779180705%_
                 _%tl179780180707%_
                 _%e179781180710%_
                 _%hd179782180713%_
                 _%tl179783180715%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match186252186253%_
                                                     _%e179754180638%_
                                                     _%hd179755180641%_
                                                     _%tl179756180643%_
                                                     _%e179757180646%_
                                                     _%hd179758180649%_
                                                     _%tl179759180651%_
                                                     _%e179760180654%_
                                                     _%hd179761180657%_
                                                     _%tl179762180659%_
                                                     _%e179763180662%_
                                                     _%hd179764180665%_
                                                     _%tl179765180667%_
                                                     _%e179766180670%_
                                                     _%hd179767180673%_
                                                     _%tl179768180675%_
                                                     _%e179769180678%_
                                                     _%hd179770180681%_
                                                     _%tl179771180683%_
                                                     _%e179772180686%_
                                                     _%hd179773180689%_
                                                     _%tl179774180691%_
                                                     _%e179775180694%_
                                                     _%hd179776180697%_
                                                     _%tl179777180699%_))))
                                            (_%__match186252186253%_
                                             _%e179754180638%_
                                             _%hd179755180641%_
                                             _%tl179756180643%_
                                             _%e179757180646%_
                                             _%hd179758180649%_
                                             _%tl179759180651%_
                                             _%e179760180654%_
                                             _%hd179761180657%_
                                             _%tl179762180659%_
                                             _%e179763180662%_
                                             _%hd179764180665%_
                                             _%tl179765180667%_
                                             _%e179766180670%_
                                             _%hd179767180673%_
                                             _%tl179768180675%_
                                             _%e179769180678%_
                                             _%hd179770180681%_
                                             _%tl179771180683%_
                                             _%e179772180686%_
                                             _%hd179773180689%_
                                             _%tl179774180691%_
                                             _%e179775180694%_
                                             _%hd179776180697%_
                                             _%tl179777180699%_))
                                        (_%__match185928185929%_
                                         _%e179754180638%_
                                         _%hd179755180641%_
                                         _%tl179756180643%_
                                         _%e179757180646%_
                                         _%hd179758180649%_
                                         _%tl179759180651%_
                                         _%e179760180654%_
                                         _%hd179761180657%_
                                         _%tl179762180659%_
                                         _%e179763180662%_
                                         _%hd179764180665%_
                                         _%tl179765180667%_
                                         _%e179766180670%_
                                         _%hd179767180673%_
                                         _%tl179768180675%_
                                         _%e179769180678%_
                                         _%hd179770180681%_
                                         _%tl179771180683%_
                                         _%e179772180686%_
                                         _%hd179773180689%_
                                         _%tl179774180691%_
                                         _%e179775180694%_
                                         _%hd179776180697%_
                                         _%tl179777180699%_
                                         _%e179778180702%_
                                         _%hd179779180705%_
                                         _%tl179780180707%_))
                                    (_%__match186252186253%_
                                     _%e179754180638%_
                                     _%hd179755180641%_
                                     _%tl179756180643%_
                                     _%e179757180646%_
                                     _%hd179758180649%_
                                     _%tl179759180651%_
                                     _%e179760180654%_
                                     _%hd179761180657%_
                                     _%tl179762180659%_
                                     _%e179763180662%_
                                     _%hd179764180665%_
                                     _%tl179765180667%_
                                     _%e179766180670%_
                                     _%hd179767180673%_
                                     _%tl179768180675%_
                                     _%e179769180678%_
                                     _%hd179770180681%_
                                     _%tl179771180683%_
                                     _%e179772180686%_
                                     _%hd179773180689%_
                                     _%tl179774180691%_
                                     _%e179775180694%_
                                     _%hd179776180697%_
                                     _%tl179777180699%_))))
                            (_%__match186252186253%_
                             _%e179754180638%_
                             _%hd179755180641%_
                             _%tl179756180643%_
                             _%e179757180646%_
                             _%hd179758180649%_
                             _%tl179759180651%_
                             _%e179760180654%_
                             _%hd179761180657%_
                             _%tl179762180659%_
                             _%e179763180662%_
                             _%hd179764180665%_
                             _%tl179765180667%_
                             _%e179766180670%_
                             _%hd179767180673%_
                             _%tl179768180675%_
                             _%e179769180678%_
                             _%hd179770180681%_
                             _%tl179771180683%_
                             _%e179772180686%_
                             _%hd179773180689%_
                             _%tl179774180691%_
                             _%e179775180694%_
                             _%hd179776180697%_
                             _%tl179777180699%_))))
                    (_%__match186190186191%_
                     _%e179754180638%_
                     _%hd179755180641%_
                     _%tl179756180643%_
                     _%e179757180646%_
                     _%hd179758180649%_
                     _%tl179759180651%_
                     _%e179760180654%_
                     _%hd179761180657%_
                     _%tl179762180659%_
                     _%e179763180662%_
                     _%hd179764180665%_
                     _%tl179765180667%_
                     _%e179766180670%_
                     _%hd179767180673%_
                     _%tl179768180675%_
                     _%e179769180678%_
                     _%hd179770180681%_
                     _%tl179771180683%_
                     _%e179772180686%_
                     _%hd179773180689%_
                     _%tl179774180691%_))
                (_%__kont185773185774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont185773185774%_))
                                            (_%__kont185773185774%_))
                                        (_%__kont185773185774%_))))
                                (_%__kont185773185774%_))))
                        (_%__kont185773185774%_))
                    (_%__kont185773185774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont185773185774%_))
                                                (_%__kont185773185774%_))
                                            (_%__kont185773185774%_))))
                                    (_%__kont185773185774%_))))
                            (_%__kont185773185774%_))))
                    (_%__kont185773185774%_))))))))))
