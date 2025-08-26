(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1756224519)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp186268 (list gxc#::identity::t))
            (__tmp186267 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp186268
         '()
         __tmp186267
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args185065%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args185065%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp186269
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
        (__make-promise __tmp186269)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx185057%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self185060%_
                (let ((__obj186260
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj186260))
               (__tmp186270
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self185060%_ _%stx185057%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp186270
           gxc#current-compile-method
           _%self185060%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp186272 (list gxc#::false::t))
            (__tmp186271 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp186272
         '()
         __tmp186271
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args185054%_
        (apply make-instance gxc#::extract-receiver::t _%$args185054%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp186273
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
        (__make-promise __tmp186273)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx185046%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self185049%_
                (let ((__obj186262
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj186262))
               (__tmp186274
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self185049%_ _%stx185046%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp186274
           gxc#current-compile-method
           _%self185049%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp186276 (list gxc#::void::t))
            (__tmp186275 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp186276
         '(receiver methods slots)
         __tmp186275
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args185043%_
        (apply make-instance gxc#::collect-object-refs::t _%$args185043%_)))
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
      (let ((__tmp186277
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
        (__make-promise __tmp186277)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords185009%_
               _%receiver185004185010%_
               _%methods185005185012%_
               _%slots185006185014%_
               _%stx185016%_)
        (let* ((_%receiver185019%_
                (if (eq? _%receiver185004185010%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver185004185010%_))
               (_%methods185021%_
                (if (eq? _%methods185005185012%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods185005185012%_))
               (_%slots185023%_
                (if (eq? _%slots185006185014%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots185006185014%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self185025%_
                  (let ((__obj186264
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
                       __obj186264
                       _%receiver185019%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186264
                       _%methods185021%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186264
                       _%slots185023%_
                       '3
                       '#f
                       '#f))
                    __obj186264))
                 (__tmp186278
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self185025%_ _%stx185016%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp186278
             gxc#current-compile-method
             _%self185025%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords185032%_ . _%args185033%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords185032%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185032%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185032%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185032%_
                  'slots:
                  absent-value))
               _%args185033%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args185007185039%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args185007185039%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp186280 (list gxc#::basic-xform-expression::t))
            (__tmp186279 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp186280
         '(receiver klass methods slots)
         __tmp186279
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args185000%_
        (apply make-instance gxc#::subst-object-refs::t _%$args185000%_)))
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
      (let ((__tmp186281
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
        (__make-promise __tmp186281)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords184962%_
               _%receiver184956184963%_
               _%klass184957184965%_
               _%methods184958184967%_
               _%slots184959184969%_
               _%stx184971%_)
        (let* ((_%receiver184974%_
                (if (eq? _%receiver184956184963%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver184956184963%_))
               (_%klass184976%_
                (if (eq? _%klass184957184965%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass184957184965%_))
               (_%methods184978%_
                (if (eq? _%methods184958184967%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods184958184967%_))
               (_%slots184980%_
                (if (eq? _%slots184959184969%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots184959184969%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self184982%_
                  (let ((__obj186266
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
                       __obj186266
                       _%receiver184974%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186266
                       _%klass184976%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186266
                       _%methods184978%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186266
                       _%slots184980%_
                       '4
                       '#f
                       '#f))
                    __obj186266))
                 (__tmp186282
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self184982%_ _%stx184971%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp186282
             gxc#current-compile-method
             _%self184982%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords184989%_ . _%args184990%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords184989%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords184989%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords184989%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords184989%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords184989%_
                  'slots:
                  absent-value))
               _%args184990%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args184960184996%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args184960184996%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self182071%_ _%stx182072%_)
        (letrec ((_%generate-method-bind182074%_
                  (lambda (_%$klass184948%_
                           _%$method-table184949%_
                           _%id184950%_
                           _%$id184951%_)
                    (let ((_%$tmp184953%_
                           (let ((__tmp186283
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp186283))))
                      (cons (cons _%$id184951%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp184953%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table184949%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id184950%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp184953%_ '()))
                    (cons (cons '%#ref (cons _%$tmp184953%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id184950%_
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
                 (_%generate-slot-bind182075%_
                  (lambda (_%$klass184942%_ _%id184943%_ _%$id184944%_)
                    (let ((_%$tmp184946%_
                           (let ((__tmp186284
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp186284))))
                      (cons (cons _%$id184944%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp184946%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass184942%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id184943%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp184946%_ '()))
                        (cons (cons '%#ref (cons _%$tmp184946%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id184943%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl182076%_
                  (lambda (_%$klass184936%_
                           _%$method-table184937%_
                           _%methods-bind184938%_
                           _%slots-bind184939%_
                           _%specializer-impl184940%_)
                    (let ((__tmp186285
                           (cons '%#lambda
                                 (cons (cons _%$klass184936%_
                                             (cons _%$method-table184937%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind184939%_
                                                            _%methods-bind184938%_))
                                                         (cons _%specializer-impl184940%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp186285 _%stx182072%_))))
                 (_%generate-specializer-def182077%_
                  (lambda (_%id184932%_
                           _%specializer-id184933%_
                           _%specializer-impl184934%_)
                    (let ((__tmp186286
                           (cons '%#begin
                                 (cons _%stx182072%_
                                       (cons (let ((__tmp186287
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id184933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl184934%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp186287
                                                _%stx182072%_))
                                             (cons (let ((__tmp186288
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id184932%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id184933%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp186288
                                                      _%stx182072%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp186286 _%stx182072%_)))))
          (let* ((_%__stx185154185155%_ _%stx182072%_)
                 (_%g182080182100%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx185154185155%_)))))
            (let ((_%__kont185156185157%_
                   (lambda (_%L182144%_ _%L182145%_)
                     (let ((_%method-calls182164%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs182165%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty182166%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?182168%_
                                 (lambda ()
                                   (if (let ((__tmp186289
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls182164%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp186289))
                                       (let ((__tmp186290
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs182165%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp186290))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L182144%_))
                             (let* ((_%__stx185068185069%_ _%L182144%_)
                                    (_%g182556182574%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx185068185069%_)))))
                               (let ((_%__kont185070185071%_
                                      (lambda (_%L182610%_
                                               _%L182611%_
                                               _%L182612%_)
                                        (let ((_%receiver182632%_
                                               (let ((_%$e182629%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L182610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e182629%_
                                                     _%$e182629%_
                                                     _%L182612%_))))
                                          (for-each
                                           (lambda (_%g182633182635%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver182632%_
                                              _%method-calls182164%_
                                              _%slot-refs182165%_
                                              _%g182633182635%_))
                                           _%L182610%_)
                                          (if (_%no-specializer?182168%_)
                                              _%stx182072%_
                                              (let* ((_%specializer-id182644%_
                                                      (let* ((_%id182638%_
                                                              (let ((__tmp186291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L182145%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp186291 '"::specialize")))
                     (_%specializer-id182641%_
                      (let ((__tmp186292
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx182072%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id182638%_ __tmp186292))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id182641%_))
                _%specializer-id182641%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass182646%_
                                                      (let ((__tmp186293
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp186293)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table182648%_
                                                      (let ((__tmp186294
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp186294)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods182650%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls182164%_)))
                                                     (_%$methods182654%_
                                                      (let ((__tmp186295
                                                             (lambda (_%id182652%_)
                                                               (let ((__tmp186296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id182652%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186296)))))
                (declare (not safe))
                (##map __tmp186295 _%methods182650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_182663%_
                                                      (let ((__tmp186297
                                                             (lambda (_%g182655182658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g182656182660%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls182164%_
                          _%g182655182658%_
                          _%g182656182660%_)))))
                (declare (not safe))
                (##for-each __tmp186297 _%methods182650%_ _%$methods182654%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind182673%_
                                                      (let ((__tmp186298
                                                             (lambda (_%g182665182668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g182666182670%_)
                       (_%generate-method-bind182074%_
                        _%$klass182646%_
                        _%$method-table182648%_
                        _%g182665182668%_
                        _%g182666182670%_))))
                (declare (not safe))
                (##map __tmp186298 _%methods182650%_ _%$methods182654%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots182675%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs182165%_)))
                                                     (_%$slots182679%_
                                                      (let ((__tmp186299
                                                             (lambda (_%id182677%_)
                                                               (let ((__tmp186300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id182677%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186300)))))
                (declare (not safe))
                (##map __tmp186299 _%slots182675%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_182688%_
                                                      (let ((__tmp186301
                                                             (lambda (_%g182680182683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g182681182685%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs182165%_
                          _%g182680182683%_
                          _%g182681182685%_)))))
                (declare (not safe))
                (##for-each __tmp186301 _%slots182675%_ _%$slots182679%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind182697%_
                                                      (let ((__tmp186302
                                                             (lambda (_%g182689182692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g182690182694%_)
                       (_%generate-slot-bind182075%_
                        _%$klass182646%_
                        _%g182689182692%_
                        _%g182690182694%_))))
                (declare (not safe))
                (##map __tmp186302 _%slots182675%_ _%$slots182679%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body182703%_
                                                      (map (lambda (_%g182698182700%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver182632%_
                                                              _%$klass182646%_
                                                              _%method-calls182164%_
                                                              _%slot-refs182165%_
                                                              _%g182698182700%_))
                                                           _%L182610%_))
                                                     (_%specializer-impl182705%_
                                                      (let ((__tmp186303
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L182612%_ _%L182611%_)
                                 _%specializer-body182703%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp186303 _%stx182072%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl182707%_
                                                      (_%generate-specializer-impl182076%_
                                                       _%$klass182646%_
                                                       _%$method-table182648%_
                                                       _%methods-bind182673%_
                                                       _%slots-bind182697%_
                                                       _%specializer-impl182705%_)))
                                                (let ((__tmp186305
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182145%_)))
                                                      (__tmp186304
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id182644%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp186305
                                                   '" => "
                                                   __tmp186304))
                                                (_%generate-specializer-def182077%_
                                                 _%L182145%_
                                                 _%specializer-id182644%_
                                                 _%specializer-impl182707%_))))))
                                     (_%__kont185072185073%_
                                      (lambda () _%stx182072%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx185068185069%_))
                                     (let ((_%e182561182586%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx185068185069%_))))
                                       (let ((_%tl182563182591%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e182561182586%_)))
                                             (_%hd182562182589%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e182561182586%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl182563182591%_))
                                             (let ((_%e182564182594%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl182563182591%_))))
                                               (let ((_%tl182566182599%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e182564182594%_)))
                                                     (_%hd182565182597%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e182564182594%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd182565182597%_))
                                                     (let ((_%e182567182602%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd182565182597%_))))
                                                       (let ((_%tl182569182607%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e182567182602%_)))
                     (_%hd182568182605%_
                      (let () (declare (not safe)) (##car _%e182567182602%_))))
                 (_%__kont185070185071%_
                  _%tl182566182599%_
                  _%tl182569182607%_
                  _%hd182568182605%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont185072185073%_))))
                                             (_%__kont185072185073%_))))
                                     (_%__kont185072185073%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L182144%_))
                                 (let* ((_%g182714182733%_
                                         (lambda (_%g182715182730%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g182715182730%_))))
                                        (_%g182713183031%_
                                         (lambda (_%g182715182736%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g182715182736%_))
                                               (let ((_%e182717182738%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g182715182736%_))))
                                                 (let ((_%hd182718182741%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e182717182738%_)))
                                                       (_%tl182719182743%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e182717182738%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl182719182743%_))
                                                       (let ((_g186306_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl182719182743%_ '0))))
                 (begin
                   (let ((_g186307_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g186306_)
                                (##values-length _g186306_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g186307_ 2)))
                         (error "Context expects 2 values" _g186307_)))
                   (let ((_%target182720182746%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g186306_ 0)))
                         (_%tl182722182748%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g186306_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl182722182748%_))
                         (letrec ((_%loop182723182751%_
                                   (lambda (_%hd182721182754%_
                                            _%clause182727182756%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd182721182754%_))
                                         (let ((_%e182724182759%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd182721182754%_))))
                                           (let ((_%lp-hd182725182762%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e182724182759%_)))
                                                 (_%lp-tl182726182764%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e182724182759%_))))
                                             (_%loop182723182751%_
                                              _%lp-tl182726182764%_
                                              (cons _%lp-hd182725182762%_
                                                    _%clause182727182756%_))))
                                         (let ((_%clause182728182767%_
                                                (reverse _%clause182727182756%_)))
                                           ((lambda (_%L182770%_)
                                              (for-each
                                               (lambda (_%clause182784%_)
                                                 (let* ((_%__stx185094185095%_
                                                         _%clause182784%_)
                                                        (_%g182787182802%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx185094185095%_)))))
                                                   (let ((_%__kont185096185097%_
                                                          (lambda (_%L182830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L182831%_
                           _%L182832%_)
                    (let ((_%receiver182851%_
                           (let ((_%$e182848%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L182830%_))))
                             (if _%$e182848%_ _%$e182848%_ _%L182832%_))))
                      (for-each
                       (lambda (_%g182852182854%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver182851%_
                          _%method-calls182164%_
                          _%slot-refs182165%_
                          _%g182852182854%_))
                       _%L182830%_))))
                 (_%__kont185098185099%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx185094185095%_))
                                                         (let ((_%e182792182814%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx185094185095%_))))
                   (let ((_%tl182794182819%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e182792182814%_)))
                         (_%hd182793182817%_
                          (let ()
                            (declare (not safe))
                            (##car _%e182792182814%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd182793182817%_))
                         (let ((_%e182795182822%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd182793182817%_))))
                           (let ((_%tl182797182827%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e182795182822%_)))
                                 (_%hd182796182825%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e182795182822%_))))
                             (_%__kont185096185097%_
                              _%tl182794182819%_
                              _%tl182797182827%_
                              _%hd182796182825%_)))
                         (_%__kont185098185099%_))))
                 (_%__kont185098185099%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp186308
                                                      (lambda (_%g182859182862%_
                                                               _%g182860182864%_)
                                                        (cons _%g182859182862%_
                                                              _%g182860182864%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp186308
                                                  '()
                                                  _%L182770%_)))
                                              (if (_%no-specializer?182168%_)
                                                  _%stx182072%_
                                                  (let* ((_%specializer-id182873%_
                                                          (let* ((_%id182867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186309
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L182145%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp186309 '"::specialize")))
                         (_%specializer-id182870%_
                          (let ((__tmp186310
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx182072%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id182867%_
                             __tmp186310))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id182870%_))
                    _%specializer-id182870%_))
                 (_%$klass182875%_
                  (let ((__tmp186311
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186311)))
                 (_%$method-table182877%_
                  (let ((__tmp186312
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186312)))
                 (_%methods182879%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls182164%_)))
                 (_%$methods182883%_
                  (let ((__tmp186313
                         (lambda (_%id182881%_)
                           (let ((__tmp186314 (gensym _%id182881%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186314)))))
                    (declare (not safe))
                    (##map __tmp186313 _%methods182879%_)))
                 (_%_182892%_
                  (let ((__tmp186315
                         (lambda (_%g182884182887%_ _%g182885182889%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls182164%_
                              _%g182884182887%_
                              _%g182885182889%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp186315
                     _%methods182879%_
                     _%$methods182883%_)))
                 (_%methods-bind182902%_
                  (let ((__tmp186316
                         (lambda (_%g182894182897%_ _%g182895182899%_)
                           (_%generate-method-bind182074%_
                            _%$klass182875%_
                            _%$method-table182877%_
                            _%g182894182897%_
                            _%g182895182899%_))))
                    (declare (not safe))
                    (##map __tmp186316 _%methods182879%_ _%$methods182883%_)))
                 (_%slots182904%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs182165%_)))
                 (_%$slots182908%_
                  (let ((__tmp186317
                         (lambda (_%id182906%_)
                           (let ((__tmp186318 (gensym _%id182906%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186318)))))
                    (declare (not safe))
                    (##map __tmp186317 _%slots182904%_)))
                 (_%_182917%_
                  (let ((__tmp186319
                         (lambda (_%g182909182912%_ _%g182910182914%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs182165%_
                              _%g182909182912%_
                              _%g182910182914%_)))))
                    (declare (not safe))
                    (##for-each __tmp186319 _%slots182904%_ _%$slots182908%_)))
                 (_%slots-bind182926%_
                  (let ((__tmp186320
                         (lambda (_%g182918182921%_ _%g182919182923%_)
                           (_%generate-slot-bind182075%_
                            _%$klass182875%_
                            _%g182918182921%_
                            _%g182919182923%_))))
                    (declare (not safe))
                    (##map __tmp186320 _%slots182904%_ _%$slots182908%_)))
                 (_%specializer-clauses183024%_
                  (map (lambda (_%clause182928%_)
                         (let* ((_%__stx185114185115%_ _%clause182928%_)
                                (_%g182931182946%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx185114185115%_)))))
                           (let ((_%__kont185116185117%_
                                  (lambda (_%L182974%_ _%L182975%_ _%L182976%_)
                                    (let* ((_%receiver183005%_
                                            (let ((_%$e183002%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L182974%_))))
                                              (if _%$e183002%_
                                                  _%$e183002%_
                                                  _%L182976%_)))
                                           (_%body183011%_
                                            (map (lambda (_%g183006183008%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver183005%_
                                                    _%$klass182875%_
                                                    _%method-calls182164%_
                                                    _%slot-refs182165%_
                                                    _%g183006183008%_))
                                                 _%L182974%_)))
                                      (cons (cons _%L182976%_ _%L182975%_)
                                            _%body183011%_))))
                                 (_%__kont185118185119%_
                                  (lambda () _%clause182928%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx185114185115%_))
                                 (let ((_%e182936182958%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx185114185115%_))))
                                   (let ((_%tl182938182963%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e182936182958%_)))
                                         (_%hd182937182961%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e182936182958%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd182937182961%_))
                                         (let ((_%e182939182966%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd182937182961%_))))
                                           (let ((_%tl182941182971%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e182939182966%_)))
                                                 (_%hd182940182969%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e182939182966%_))))
                                             (_%__kont185116185117%_
                                              _%tl182938182963%_
                                              _%tl182941182971%_
                                              _%hd182940182969%_)))
                                         (_%__kont185118185119%_))))
                                 (_%__kont185118185119%_)))))
                       (let ((__tmp186321
                              (lambda (_%g183016183019%_ _%g183017183021%_)
                                (cons _%g183016183019%_ _%g183017183021%_))))
                         (declare (not safe))
                         (__foldr1 __tmp186321 '() _%L182770%_))))
                 (_%specializer-impl183026%_
                  (let ((__tmp186322
                         (cons '%#case-lambda _%specializer-clauses183024%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp186322 _%stx182072%_)))
                 (_%specializer-impl183028%_
                  (_%generate-specializer-impl182076%_
                   _%$klass182875%_
                   _%$method-table182877%_
                   _%methods-bind182902%_
                   _%slots-bind182926%_
                   _%specializer-impl183026%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186324
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L182145%_)))
                                                          (__tmp186323
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id182873%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp186324
                                                       '" => "
                                                       __tmp186323))
                                                    (_%generate-specializer-def182077%_
                                                     _%L182145%_
                                                     _%specializer-id182873%_
                                                     _%specializer-impl183028%_))))
                                            _%clause182728182767%_))))))
                           (_%loop182723182751%_ _%target182720182746%_ '()))
                         (_%g182714182733%_ _%g182715182736%_)))))
               (_%g182714182733%_ _%g182715182736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g182714182733%_
                                                _%g182715182736%_)))))
                                   (_%g182713183031%_ _%L182144%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L182144%_))
                                     (let* ((_%g183035183065%_
                                             (lambda (_%g183036183062%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g183036183062%_))))
                                            (_%g183034183696%_
                                             (lambda (_%g183036183068%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g183036183068%_))
                                                   (let ((_%e183040183070%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g183036183068%_))))
                                                     (let ((_%hd183041183073%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e183040183070%_)))
                                                           (_%tl183042183075%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e183040183070%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl183042183075%_))
                                                           (let ((_%e183043183078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl183042183075%_))))
                     (let ((_%hd183044183081%_
                            (let ()
                              (declare (not safe))
                              (##car _%e183043183078%_)))
                           (_%tl183045183083%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e183043183078%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd183044183081%_))
                           (let ((_%e183046183086%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd183044183081%_))))
                             (let ((_%hd183047183089%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e183046183086%_)))
                                   (_%tl183048183091%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e183046183086%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd183047183089%_))
                                   (let ((_%e183049183094%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd183047183089%_))))
                                     (let ((_%hd183050183097%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e183049183094%_)))
                                           (_%tl183051183099%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e183049183094%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd183050183097%_))
                                           (let ((_%e183052183102%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd183050183097%_))))
                                             (let ((_%hd183053183105%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e183052183102%_)))
                                                   (_%tl183054183107%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e183052183102%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl183054183107%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl183051183099%_))
                                                       (let ((_%e183055183110%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl183051183099%_))))
                 (let ((_%hd183056183113%_
                        (let ()
                          (declare (not safe))
                          (##car _%e183055183110%_)))
                       (_%tl183057183115%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e183055183110%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl183057183115%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl183048183091%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl183045183083%_))
                               (let ((_%e183058183118%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl183045183083%_))))
                                 (let ((_%hd183059183121%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e183058183118%_)))
                                       (_%tl183060183123%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e183058183118%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl183060183123%_))
                                       ((lambda (_%L183126%_
                                                 _%L183127%_
                                                 _%L183128%_)
                                          (let* ((_%g183152183170%_
                                                  (lambda (_%g183153183167%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g183153183167%_))))
                                                 (_%g183151183226%_
                                                  (lambda (_%g183153183173%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g183153183173%_))
                                                        (let ((_%e183157183175%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g183153183173%_))))
                  (let ((_%hd183158183178%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183157183175%_)))
                        (_%tl183159183180%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183157183175%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl183159183180%_))
                        (let ((_%e183160183183%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl183159183180%_))))
                          (let ((_%hd183161183186%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183160183183%_)))
                                (_%tl183162183188%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183160183183%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd183161183186%_))
                                (let ((_%e183163183191%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd183161183186%_))))
                                  (let ((_%hd183164183194%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183163183191%_)))
                                        (_%tl183165183196%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183163183191%_))))
                                    ((lambda (_%L183199%_
                                              _%L183200%_
                                              _%L183201%_)
                                       (let ((_%receiver183220%_
                                              (let ((_%$e183217%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L183199%_))))
                                                (if _%$e183217%_
                                                    _%$e183217%_
                                                    _%L183201%_))))
                                         (for-each
                                          (lambda (_%g183221183223%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver183220%_
                                             _%method-calls182164%_
                                             _%slot-refs182165%_
                                             _%g183221183223%_))
                                          _%L183199%_)))
                                     _%tl183162183188%_
                                     _%tl183165183196%_
                                     _%hd183164183194%_)))
                                (_%g183152183170%_ _%g183153183173%_))))
                        (_%g183152183170%_ _%g183153183173%_))))
                (_%g183152183170%_ _%g183153183173%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g183151183226%_ _%L183127%_))
                                          (let* ((_%g183229183248%_
                                                  (lambda (_%g183230183245%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g183230183245%_))))
                                                 (_%g183228183372%_
                                                  (lambda (_%g183230183251%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g183230183251%_))
                                                        (let ((_%e183232183253%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g183230183251%_))))
                  (let ((_%hd183233183256%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183232183253%_)))
                        (_%tl183234183258%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183232183253%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl183234183258%_))
                        (let ((_g186325_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl183234183258%_
                                  '0))))
                          (begin
                            (let ((_g186326_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186325_)
                                         (##values-length _g186325_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186326_ 2)))
                                  (error "Context expects 2 values"
                                         _g186326_)))
                            (let ((_%target183235183261%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186325_ 0)))
                                  (_%tl183237183263%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186325_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl183237183263%_))
                                  (letrec ((_%loop183238183266%_
                                            (lambda (_%hd183236183269%_
                                                     _%clause183242183271%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd183236183269%_))
                                                  (let ((_%e183239183274%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd183236183269%_))))
                                                    (let ((_%lp-hd183240183277%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e183239183274%_)))
                                                          (_%lp-tl183241183279%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e183239183274%_))))
                                                      (_%loop183238183266%_
                                                       _%lp-tl183241183279%_
                                                       (cons _%lp-hd183240183277%_
                                                             _%clause183242183271%_))))
                                                  (let ((_%clause183243183282%_
                                                         (reverse _%clause183242183271%_)))
                                                    ((lambda (_%L183285%_)
                                                       (for-each
                                                        (lambda (_%clause183298%_)
                                                          (let* ((_%g183300183315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g183301183312%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g183301183312%_))))
                         (_%g183299183362%_
                          (lambda (_%g183301183318%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g183301183318%_))
                                (let ((_%e183305183320%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g183301183318%_))))
                                  (let ((_%hd183306183323%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183305183320%_)))
                                        (_%tl183307183325%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183305183320%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183306183323%_))
                                        (let ((_%e183308183328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183306183323%_))))
                                          (let ((_%hd183309183331%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183308183328%_)))
                                                (_%tl183310183333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183308183328%_))))
                                            ((lambda (_%L183336%_
                                                      _%L183337%_
                                                      _%L183338%_)
                                               (let ((_%receiver183356%_
                                                      (let ((_%$e183353%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L183336%_))))
                (if _%$e183353%_ _%$e183353%_ _%L183338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g183357183359%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver183356%_
                                                     _%method-calls182164%_
                                                     _%slot-refs182165%_
                                                     _%g183357183359%_))
                                                  _%L183336%_)))
                                             _%tl183307183325%_
                                             _%tl183310183333%_
                                             _%hd183309183331%_)))
                                        (_%g183300183315%_
                                         _%g183301183318%_))))
                                (_%g183300183315%_ _%g183301183318%_)))))
                    (_%g183299183362%_ _%clause183298%_)))
                (let ((__tmp186327
                       (lambda (_%g183364183367%_ _%g183365183369%_)
                         (cons _%g183364183367%_ _%g183365183369%_))))
                  (declare (not safe))
                  (__foldr1 __tmp186327 '() _%L183285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause183243183282%_))))))
                                    (_%loop183238183266%_
                                     _%target183235183261%_
                                     '()))
                                  (_%g183229183248%_ _%g183230183251%_)))))
                        (_%g183229183248%_ _%g183230183251%_))))
                (_%g183229183248%_ _%g183230183251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g183228183372%_ _%L183126%_))
                                          (if (_%no-specializer?182168%_)
                                              _%stx182072%_
                                              (let* ((_%specializer-id183381%_
                                                      (let* ((_%id183375%_
                                                              (let ((__tmp186328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L182145%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp186328 '"::specialize")))
                     (_%specializer-id183378%_
                      (let ((__tmp186329
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx182072%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id183375%_ __tmp186329))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id183378%_))
                _%specializer-id183378%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass183383%_
                                                      (let ((__tmp186330
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp186330)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table183385%_
                                                      (let ((__tmp186331
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp186331)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods183387%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls182164%_)))
                                                     (_%$methods183391%_
                                                      (let ((__tmp186332
                                                             (lambda (_%id183389%_)
                                                               (let ((__tmp186333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183389%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186333)))))
                (declare (not safe))
                (##map __tmp186332 _%methods183387%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183400%_
                                                      (let ((__tmp186334
                                                             (lambda (_%g183392183395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183393183397%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls182164%_
                          _%g183392183395%_
                          _%g183393183397%_)))))
                (declare (not safe))
                (##for-each __tmp186334 _%methods183387%_ _%$methods183391%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind183410%_
                                                      (let ((__tmp186335
                                                             (lambda (_%g183402183405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183403183407%_)
                       (_%generate-method-bind182074%_
                        _%$klass183383%_
                        _%$method-table183385%_
                        _%g183402183405%_
                        _%g183403183407%_))))
                (declare (not safe))
                (##map __tmp186335 _%methods183387%_ _%$methods183391%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots183412%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs182165%_)))
                                                     (_%$slots183416%_
                                                      (let ((__tmp186336
                                                             (lambda (_%id183414%_)
                                                               (let ((__tmp186337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183414%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186337)))))
                (declare (not safe))
                (##map __tmp186336 _%slots183412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183425%_
                                                      (let ((__tmp186338
                                                             (lambda (_%g183417183420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183418183422%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs182165%_
                          _%g183417183420%_
                          _%g183418183422%_)))))
                (declare (not safe))
                (##for-each __tmp186338 _%slots183412%_ _%$slots183416%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind183434%_
                                                      (let ((__tmp186339
                                                             (lambda (_%g183426183429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183427183431%_)
                       (_%generate-slot-bind182075%_
                        _%$klass183383%_
                        _%g183426183429%_
                        _%g183427183431%_))))
                (declare (not safe))
                (##map __tmp186339 _%slots183412%_ _%$slots183416%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr183526%_
                                                      (let* ((_%g183436183454%_
                                                              (lambda (_%g183437183451%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g183437183451%_))))
                     (_%g183435183523%_
                      (lambda (_%g183437183457%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g183437183457%_))
                            (let ((_%e183441183459%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183437183457%_))))
                              (let ((_%hd183442183462%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183441183459%_)))
                                    (_%tl183443183464%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183441183459%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl183443183464%_))
                                    (let ((_%e183444183467%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl183443183464%_))))
                                      (let ((_%hd183445183470%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183444183467%_)))
                                            (_%tl183446183472%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183444183467%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd183445183470%_))
                                            (let ((_%e183447183475%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd183445183470%_))))
                                              (let ((_%hd183448183478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183447183475%_)))
                                                    (_%tl183449183480%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183447183475%_))))
                                                ((lambda (_%L183483%_
                                                          _%L183484%_
                                                          _%L183485%_)
                                                   (let* ((_%receiver183514%_
                                                           (let ((_%$e183511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L183483%_))))
                     (if _%$e183511%_ _%$e183511%_ _%L183485%_)))
                  (_%body183520%_
                   (map (lambda (_%g183515183517%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver183514%_
                           _%$klass183383%_
                           _%method-calls182164%_
                           _%slot-refs182165%_
                           _%g183515183517%_))
                        _%L183483%_))
                  (__tmp186340
                   (cons '%#lambda
                         (cons (cons _%L183485%_ _%L183484%_)
                               _%body183520%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp186340
                                                      _%L183127%_)))
                                                 _%tl183446183472%_
                                                 _%tl183449183480%_
                                                 _%hd183448183478%_)))
                                            (_%g183436183454%_
                                             _%g183437183457%_))))
                                    (_%g183436183454%_ _%g183437183457%_))))
                            (_%g183436183454%_ _%g183437183457%_)))))
                (_%g183435183523%_ _%L183127%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr183689%_
                                                      (let* ((_%g183528183547%_
                                                              (lambda (_%g183529183544%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g183529183544%_))))
                     (_%g183527183686%_
                      (lambda (_%g183529183550%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g183529183550%_))
                            (let ((_%e183531183552%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183529183550%_))))
                              (let ((_%hd183532183555%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183531183552%_)))
                                    (_%tl183533183557%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183531183552%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl183533183557%_))
                                    (let ((_g186341_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl183533183557%_
                                              '0))))
                                      (begin
                                        (let ((_g186342_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g186341_)
                                                     (##values-length
                                                      _g186341_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g186342_ 2)))
                                              (error "Context expects 2 values"
                                                     _g186342_)))
                                        (let ((_%target183534183560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g186341_ 0)))
                                              (_%tl183536183562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g186341_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183536183562%_))
                                              (letrec ((_%loop183537183565%_
                                                        (lambda (_%hd183535183568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause183541183570%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd183535183568%_))
                      (let ((_%e183538183573%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd183535183568%_))))
                        (let ((_%lp-hd183539183576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183538183573%_)))
                              (_%lp-tl183540183578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183538183573%_))))
                          (_%loop183537183565%_
                           _%lp-tl183540183578%_
                           (cons _%lp-hd183539183576%_
                                 _%clause183541183570%_))))
                      (let ((_%clause183542183581%_
                             (reverse _%clause183541183570%_)))
                        ((lambda (_%L183584%_)
                           (let* ((_%clauses183684%_
                                   (map (lambda (_%clause183598%_)
                                          (let* ((_%__stx185134185135%_
                                                  _%clause183598%_)
                                                 (_%g183601183616%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx185134185135%_)))))
                                            (let ((_%__kont185136185137%_
                                                   (lambda (_%L183644%_
                                                            _%L183645%_
                                                            _%L183646%_)
                                                     (let* ((_%receiver183665%_
                                                             (let ((_%$e183662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L183644%_))))
                       (if _%$e183662%_ _%$e183662%_ _%L183646%_)))
                    (_%body183671%_
                     (map (lambda (_%g183666183668%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver183665%_
                             _%$klass183383%_
                             _%method-calls182164%_
                             _%slot-refs182165%_
                             _%g183666183668%_))
                          _%L183644%_)))
               (cons (cons _%L183646%_ _%L183645%_) _%body183671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185138185139%_
                                                   (lambda ()
                                                     _%clause183598%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx185134185135%_))
                                                  (let ((_%e183606183628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx185134185135%_))))
                                                    (let ((_%tl183608183633%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e183606183628%_)))
                                                          (_%hd183607183631%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e183606183628%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd183607183631%_))
                                                          (let ((_%e183609183636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd183607183631%_))))
                    (let ((_%tl183611183641%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e183609183636%_)))
                          (_%hd183610183639%_
                           (let ()
                             (declare (not safe))
                             (##car _%e183609183636%_))))
                      (_%__kont185136185137%_
                       _%tl183608183633%_
                       _%tl183611183641%_
                       _%hd183610183639%_)))
                  (_%__kont185138185139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185138185139%_)))))
                                        (let ((__tmp186343
                                               (lambda (_%g183676183679%_
                                                        _%g183677183681%_)
                                                 (cons _%g183676183679%_
                                                       _%g183677183681%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp186343
                                           '()
                                           _%L183584%_))))
                                  (__tmp186344
                                   (cons '%#case-lambda _%clauses183684%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp186344 _%L183126%_)))
                         _%clause183542183581%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop183537183565%_
                                                 _%target183534183560%_
                                                 '()))
                                              (_%g183528183547%_
                                               _%g183529183550%_)))))
                                    (_%g183528183547%_ _%g183529183550%_))))
                            (_%g183528183547%_ _%g183529183550%_)))))
                (_%g183527183686%_ _%L183126%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl183691%_
                                                      (let ((__tmp186345
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L183128%_ '())
                                             (cons _%specializer-lambda-expr183526%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr183689%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp186345 _%stx182072%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl183693%_
                                                      (_%generate-specializer-impl182076%_
                                                       _%$klass183383%_
                                                       _%$method-table183385%_
                                                       _%methods-bind183410%_
                                                       _%slots-bind183434%_
                                                       _%specializer-impl183691%_)))
                                                (let ((__tmp186347
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182145%_)))
                                                      (__tmp186346
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id183381%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp186347
                                                   '" => "
                                                   __tmp186346))
                                                (_%generate-specializer-def182077%_
                                                 _%L182145%_
                                                 _%specializer-id183381%_
                                                 _%specializer-impl183693%_))))
                                        _%hd183059183121%_
                                        _%hd183056183113%_
                                        _%hd183053183105%_)
                                       (_%g183035183065%_ _%g183036183068%_))))
                               (_%g183035183065%_ _%g183036183068%_))
                           (_%g183035183065%_ _%g183036183068%_))
                       (_%g183035183065%_ _%g183036183068%_))))
               (_%g183035183065%_ _%g183036183068%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183035183065%_
                                                    _%g183036183068%_))))
                                           (_%g183035183065%_
                                            _%g183036183068%_))))
                                   (_%g183035183065%_ _%g183036183068%_))))
                           (_%g183035183065%_ _%g183036183068%_))))
                   (_%g183035183065%_ _%g183036183068%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183035183065%_
                                                    _%g183036183068%_)))))
                                       (_%g183034183696%_ _%L182144%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L182144%_))
                                         (let* ((_%g183700183753%_
                                                 (lambda (_%g183701183750%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g183701183750%_))))
                                                (_%g183699184924%_
                                                 (lambda (_%g183701183756%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g183701183756%_))
                                                       (let ((_%e183707183758%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g183701183756%_))))
                 (let ((_%hd183708183761%_
                        (let ()
                          (declare (not safe))
                          (##car _%e183707183758%_)))
                       (_%tl183709183763%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e183707183758%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd183708183761%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd183708183761%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl183709183763%_))
                               (let ((_%e183710183766%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl183709183763%_))))
                                 (let ((_%hd183711183769%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e183710183766%_)))
                                       (_%tl183712183771%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e183710183766%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd183711183769%_))
                                       (let ((_%e183713183774%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd183711183769%_))))
                                         (let ((_%hd183714183777%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e183713183774%_)))
                                               (_%tl183715183779%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e183713183774%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd183714183777%_))
                                               (let ((_%e183716183782%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd183714183777%_))))
                                                 (let ((_%hd183717183785%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e183716183782%_)))
                                                       (_%tl183718183787%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e183716183782%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd183717183785%_))
                                                       (let ((_%e183719183790%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd183717183785%_))))
                 (let ((_%hd183720183793%_
                        (let ()
                          (declare (not safe))
                          (##car _%e183719183790%_)))
                       (_%tl183721183795%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e183719183790%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl183721183795%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl183718183787%_))
                           (let ((_%e183722183798%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl183718183787%_))))
                             (let ((_%hd183723183801%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e183722183798%_)))
                                   (_%tl183724183803%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e183722183798%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd183723183801%_))
                                   (let ((_%e183725183806%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd183723183801%_))))
                                     (let ((_%hd183726183809%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e183725183806%_)))
                                           (_%tl183727183811%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e183725183806%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd183726183809%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd183726183809%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl183727183811%_))
                                                   (let ((_%e183728183814%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl183727183811%_))))
                                                     (let ((_%hd183729183817%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e183728183814%_)))
                                                           (_%tl183730183819%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e183728183814%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd183729183817%_))
                                                           (let ((_%e183731183822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd183729183817%_))))
                     (let ((_%hd183732183825%_
                            (let ()
                              (declare (not safe))
                              (##car _%e183731183822%_)))
                           (_%tl183733183827%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e183731183822%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd183732183825%_))
                           (let ((_%e183734183830%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd183732183825%_))))
                             (let ((_%hd183735183833%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e183734183830%_)))
                                   (_%tl183736183835%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e183734183830%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd183735183833%_))
                                   (let ((_%e183737183838%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd183735183833%_))))
                                     (let ((_%hd183738183841%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e183737183838%_)))
                                           (_%tl183739183843%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e183737183838%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl183739183843%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl183736183835%_))
                                               (let ((_%e183740183846%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl183736183835%_))))
                                                 (let ((_%hd183741183849%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e183740183846%_)))
                                                       (_%tl183742183851%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e183740183846%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl183742183851%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl183733183827%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl183730183819%_))
                       (let ((_%e183743183854%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl183730183819%_))))
                         (let ((_%hd183744183857%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e183743183854%_)))
                               (_%tl183745183859%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e183743183854%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl183745183859%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl183724183803%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl183715183779%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl183712183771%_))
                                           (let ((_%e183746183862%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl183712183771%_))))
                                             (let ((_%hd183747183865%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e183746183862%_)))
                                                   (_%tl183748183867%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e183746183862%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl183748183867%_))
                                                   ((lambda (_%L183870%_
                                                             _%L183871%_
                                                             _%L183872%_
                                                             _%L183873%_
                                                             _%L183874%_)
                                                      (let* ((_%g183914183976%_
                                                              (lambda (_%g183915183973%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g183915183973%_))))
                     (_%g183913184921%_
                      (lambda (_%g183915183979%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g183915183979%_))
                            (let ((_%e183921183981%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183915183979%_))))
                              (let ((_%hd183922183984%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183921183981%_)))
                                    (_%tl183923183986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183921183981%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd183922183984%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd183922183984%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl183923183986%_))
                                            (let ((_%e183924183989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl183923183986%_))))
                                              (let ((_%hd183925183992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183924183989%_)))
                                                    (_%tl183926183994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183924183989%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl183926183994%_))
                                                    (let ((_%e183927183997%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl183926183994%_))))
                                                      (let ((_%hd183928184000%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e183927183997%_)))
                    (_%tl183929184002%_
                     (let () (declare (not safe)) (##cdr _%e183927183997%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd183928184000%_))
                    (let ((_%e183930184005%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd183928184000%_))))
                      (let ((_%hd183931184008%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183930184005%_)))
                            (_%tl183932184010%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183930184005%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd183931184008%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd183931184008%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl183932184010%_))
                                    (let ((_%e183933184013%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl183932184010%_))))
                                      (let ((_%hd183934184016%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183933184013%_)))
                                            (_%tl183935184018%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183933184013%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd183934184016%_))
                                            (let ((_%e183936184021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd183934184016%_))))
                                              (let ((_%hd183937184024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183936184021%_)))
                                                    (_%tl183938184026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183936184021%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd183937184024%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd183937184024%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl183938184026%_))
                                                            (let ((_%e183939184029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl183938184026%_))))
                      (let ((_%hd183940184032%_
                             (let ()
                               (declare (not safe))
                               (##car _%e183939184029%_)))
                            (_%tl183941184034%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e183939184029%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183941184034%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl183935184018%_))
                                (let ((_%e183942184037%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl183935184018%_))))
                                  (let ((_%hd183943184040%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183942184037%_)))
                                        (_%tl183944184042%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183942184037%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183943184040%_))
                                        (let ((_%e183945184045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183943184040%_))))
                                          (let ((_%hd183946184048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183945184045%_)))
                                                (_%tl183947184050%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183945184045%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd183946184048%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd183946184048%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl183947184050%_))
                                                        (let ((_%e183948184053%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl183947184050%_))))
                  (let ((_%hd183949184056%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183948184053%_)))
                        (_%tl183950184058%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183948184053%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl183950184058%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl183944184042%_))
                            (let ((_%e183951184061%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl183944184042%_))))
                              (let ((_%hd183952184064%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183951184061%_)))
                                    (_%tl183953184066%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183951184061%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd183952184064%_))
                                    (let ((_%e183954184069%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd183952184064%_))))
                                      (let ((_%hd183955184072%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183954184069%_)))
                                            (_%tl183956184074%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183954184069%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd183955184072%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd183955184072%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl183956184074%_))
                                                    (let ((_%e183957184077%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl183956184074%_))))
                                                      (let ((_%hd183958184080%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e183957184077%_)))
                    (_%tl183959184082%_
                     (let () (declare (not safe)) (##cdr _%e183957184077%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl183959184082%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl183953184066%_))
                        (if (let ((__tmp186348
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl183953184066%_))))
                              (declare (not safe))
                              (##fx>= __tmp186348 '1))
                            (let ((_g186349_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl183953184066%_
                                      '1))))
                              (begin
                                (let ((_g186350_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g186349_)
                                             (##values-length _g186349_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g186350_ 2)))
                                      (error "Context expects 2 values"
                                             _g186350_)))
                                (let ((_%target183960184085%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186349_ 0)))
                                      (_%tl183962184087%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186349_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl183962184087%_))
                                      (let ((_%e183969184090%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl183962184087%_))))
                                        (let ((_%hd183970184093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e183969184090%_)))
                                              (_%tl183971184095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e183969184090%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183971184095%_))
                                              (letrec ((_%loop183963184098%_
                                                        (lambda (_%hd183961184101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref183967184103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd183961184101%_))
                      (let ((_%e183964184106%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd183961184101%_))))
                        (let ((_%lp-hd183965184109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183964184106%_)))
                              (_%lp-tl183966184111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183964184106%_))))
                          (_%loop183963184098%_
                           _%lp-tl183966184111%_
                           (cons _%lp-hd183965184109%_
                                 _%kw-ref183967184103%_))))
                      (let ((_%kw-ref183968184114%_
                             (reverse _%kw-ref183967184103%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl183929184002%_))
                            ((lambda (_%L184117%_
                                      _%L184118%_
                                      _%L184119%_
                                      _%L184120%_
                                      _%L184121%_)
                               (let* ((_%kw-count184172%_
                                       (length (let ((__tmp186351
                                                      (lambda (_%g184164184167%_
                                                               _%g184165184169%_)
                                                        (cons _%g184164184167%_
                                                              _%g184165184169%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp186351
                                                  '()
                                                  _%L184118%_))))
                                      (_%self-index184174%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count184172%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L183872%_))
                                     (let* ((_%g184178184192%_
                                             (lambda (_%g184179184189%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g184179184189%_))))
                                            (_%g184177184315%_
                                             (lambda (_%g184179184195%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g184179184195%_))
                                                   (let ((_%e184182184197%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g184179184195%_))))
                                                     (let ((_%hd184183184200%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e184182184197%_)))
                                                           (_%tl184184184202%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e184182184197%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl184184184202%_))
                                                           (let ((_%e184185184205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl184184184202%_))))
                     (let ((_%hd184186184208%_
                            (let ()
                              (declare (not safe))
                              (##car _%e184185184205%_)))
                           (_%tl184187184210%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e184185184205%_))))
                       ((lambda (_%L184213%_ _%L184214%_)
                          (let* ((_%self184231%_
                                  (list-ref _%L184214%_ _%self-index184174%_))
                                 (_%receiver184236%_
                                  (let ((_%$e184233%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L184213%_))))
                                    (if _%$e184233%_
                                        _%$e184233%_
                                        _%self184231%_))))
                            (for-each
                             (lambda (_%g184238184240%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver184236%_
                                _%method-calls182164%_
                                _%slot-refs182165%_
                                _%g184238184240%_))
                             _%L184213%_)
                            (if (_%no-specializer?182168%_)
                                _%stx182072%_
                                (let* ((_%specializer-id184249%_
                                        (let* ((_%id184243%_
                                                (let ((__tmp186352
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182145%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp186352
                                                   '"::specialize")))
                                               (_%specializer-id184246%_
                                                (let ((__tmp186353
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx182072%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id184243%_
                                                   __tmp186353))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id184246%_))
                                          _%specializer-id184246%_))
                                       (_%$klass184251%_
                                        (let ((__tmp186354
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp186354)))
                                       (_%$method-table184253%_
                                        (let ((__tmp186355
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp186355)))
                                       (_%methods184255%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls182164%_)))
                                       (_%$methods184259%_
                                        (let ((__tmp186356
                                               (lambda (_%id184257%_)
                                                 (let ((__tmp186357
                                                        (gensym _%id184257%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp186357)))))
                                          (declare (not safe))
                                          (##map __tmp186356
                                                 _%methods184255%_)))
                                       (_%_184268%_
                                        (let ((__tmp186358
                                               (lambda (_%g184260184263%_
                                                        _%g184261184265%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls182164%_
                                                    _%g184260184263%_
                                                    _%g184261184265%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp186358
                                           _%methods184255%_
                                           _%$methods184259%_)))
                                       (_%methods-bind184278%_
                                        (let ((__tmp186359
                                               (lambda (_%g184270184273%_
                                                        _%g184271184275%_)
                                                 (_%generate-method-bind182074%_
                                                  _%$klass184251%_
                                                  _%$method-table184253%_
                                                  _%g184270184273%_
                                                  _%g184271184275%_))))
                                          (declare (not safe))
                                          (##map __tmp186359
                                                 _%methods184255%_
                                                 _%$methods184259%_)))
                                       (_%slots184280%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs182165%_)))
                                       (_%$slots184284%_
                                        (let ((__tmp186360
                                               (lambda (_%id184282%_)
                                                 (let ((__tmp186361
                                                        (gensym _%id184282%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp186361)))))
                                          (declare (not safe))
                                          (##map __tmp186360 _%slots184280%_)))
                                       (_%_184293%_
                                        (let ((__tmp186362
                                               (lambda (_%g184285184288%_
                                                        _%g184286184290%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs182165%_
                                                    _%g184285184288%_
                                                    _%g184286184290%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp186362
                                           _%slots184280%_
                                           _%$slots184284%_)))
                                       (_%slots-bind184302%_
                                        (let ((__tmp186363
                                               (lambda (_%g184294184297%_
                                                        _%g184295184299%_)
                                                 (_%generate-slot-bind182075%_
                                                  _%$klass184251%_
                                                  _%g184294184297%_
                                                  _%g184295184299%_))))
                                          (declare (not safe))
                                          (##map __tmp186363
                                                 _%slots184280%_
                                                 _%$slots184284%_)))
                                       (_%specializer-impl184310%_
                                        (let* ((_%specializer-body184308%_
                                                (map (lambda (_%g184303184305%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver184236%_
                                                        _%$klass184251%_
                                                        _%method-calls182164%_
                                                        _%slot-refs182165%_
                                                        _%g184303184305%_))
                                                     _%L184213%_))
                                               (__tmp186364
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L183874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L183873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp186365
                                   (cons '%#lambda
                                         (cons _%L184214%_
                                               _%specializer-body184308%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp186365 _%L183872%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L183871%_ '())))
                                      '()))
                          '())
                    (cons _%L183870%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp186364
                                           _%stx182072%_)))
                                       (_%specializer-impl184312%_
                                        (_%generate-specializer-impl182076%_
                                         _%$klass184251%_
                                         _%$method-table184253%_
                                         _%methods-bind184278%_
                                         _%slots-bind184302%_
                                         _%specializer-impl184310%_)))
                                  (let ((__tmp186367
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L182145%_)))
                                        (__tmp186366
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id184249%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp186367
                                     '" => "
                                     __tmp186366))
                                  (_%generate-specializer-def182077%_
                                   _%L182145%_
                                   _%specializer-id184249%_
                                   _%specializer-impl184312%_)))))
                        _%tl184187184210%_
                        _%hd184186184208%_)))
                   (_%g184178184192%_ _%g184179184195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g184178184192%_
                                                    _%g184179184195%_)))))
                                       (_%g184177184315%_ _%L183872%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L183872%_))
                                         (let* ((_%g184319184349%_
                                                 (lambda (_%g184320184346%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g184320184346%_))))
                                                (_%g184318184917%_
                                                 (lambda (_%g184320184352%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g184320184352%_))
                                                       (let ((_%e184324184354%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g184320184352%_))))
                 (let ((_%hd184325184357%_
                        (let ()
                          (declare (not safe))
                          (##car _%e184324184354%_)))
                       (_%tl184326184359%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e184324184354%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl184326184359%_))
                       (let ((_%e184327184362%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl184326184359%_))))
                         (let ((_%hd184328184365%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e184327184362%_)))
                               (_%tl184329184367%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e184327184362%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd184328184365%_))
                               (let ((_%e184330184370%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd184328184365%_))))
                                 (let ((_%hd184331184373%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e184330184370%_)))
                                       (_%tl184332184375%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e184330184370%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd184331184373%_))
                                       (let ((_%e184333184378%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd184331184373%_))))
                                         (let ((_%hd184334184381%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e184333184378%_)))
                                               (_%tl184335184383%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e184333184378%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd184334184381%_))
                                               (let ((_%e184336184386%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd184334184381%_))))
                                                 (let ((_%hd184337184389%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e184336184386%_)))
                                                       (_%tl184338184391%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e184336184386%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl184338184391%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl184335184383%_))
                                                           (let ((_%e184339184394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl184335184383%_))))
                     (let ((_%hd184340184397%_
                            (let ()
                              (declare (not safe))
                              (##car _%e184339184394%_)))
                           (_%tl184341184399%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e184339184394%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl184341184399%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl184332184375%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl184329184367%_))
                                   (let ((_%e184342184402%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl184329184367%_))))
                                     (let ((_%hd184343184405%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e184342184402%_)))
                                           (_%tl184344184407%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e184342184402%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl184344184407%_))
                                           ((lambda (_%L184410%_
                                                     _%L184411%_
                                                     _%L184412%_)
                                              (let* ((_%g184436184450%_
                                                      (lambda (_%g184437184447%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g184437184447%_))))
                                                     (_%g184435184497%_
                                                      (lambda (_%g184437184453%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g184437184453%_))
                                                            (let ((_%e184440184455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g184437184453%_))))
                      (let ((_%hd184441184458%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184440184455%_)))
                            (_%tl184442184460%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184440184455%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl184442184460%_))
                            (let ((_%e184443184463%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl184442184460%_))))
                              (let ((_%hd184444184466%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e184443184463%_)))
                                    (_%tl184445184468%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e184443184463%_))))
                                ((lambda (_%L184471%_ _%L184472%_)
                                   (let* ((_%self184485%_
                                           (list-ref
                                            _%L184472%_
                                            _%self-index184174%_))
                                          (_%receiver184490%_
                                           (let ((_%$e184487%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L184471%_))))
                                             (if _%$e184487%_
                                                 _%$e184487%_
                                                 _%self184485%_))))
                                     (for-each
                                      (lambda (_%g184492184494%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver184490%_
                                         _%method-calls182164%_
                                         _%slot-refs182165%_
                                         _%g184492184494%_))
                                      _%L184471%_)))
                                 _%tl184445184468%_
                                 _%hd184444184466%_)))
                            (_%g184436184450%_ _%g184437184453%_))))
                    (_%g184436184450%_ _%g184437184453%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g184435184497%_
                                                 _%L184411%_))
                                              (let* ((_%g184500184519%_
                                                      (lambda (_%g184501184516%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g184501184516%_))))
                                                     (_%g184499184630%_
                                                      (lambda (_%g184501184522%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g184501184522%_))
                                                            (let ((_%e184503184524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g184501184522%_))))
                      (let ((_%hd184504184527%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184503184524%_)))
                            (_%tl184505184529%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184503184524%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl184505184529%_))
                            (let ((_g186368_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl184505184529%_
                                      '0))))
                              (begin
                                (let ((_g186369_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g186368_)
                                             (##values-length _g186368_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g186369_ 2)))
                                      (error "Context expects 2 values"
                                             _g186369_)))
                                (let ((_%target184506184532%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186368_ 0)))
                                      (_%tl184508184534%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186368_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184508184534%_))
                                      (letrec ((_%loop184509184537%_
                                                (lambda (_%hd184507184540%_
                                                         _%clause184513184542%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd184507184540%_))
                                                      (let ((_%e184510184545%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd184507184540%_))))
                (let ((_%lp-hd184511184548%_
                       (let () (declare (not safe)) (##car _%e184510184545%_)))
                      (_%lp-tl184512184550%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e184510184545%_))))
                  (_%loop184509184537%_
                   _%lp-tl184512184550%_
                   (cons _%lp-hd184511184548%_ _%clause184513184542%_))))
              (let ((_%clause184514184553%_ (reverse _%clause184513184542%_)))
                ((lambda (_%L184556%_)
                   (for-each
                    (lambda (_%clause184569%_)
                      (let* ((_%g184571184582%_
                              (lambda (_%g184572184579%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g184572184579%_))))
                             (_%g184570184620%_
                              (lambda (_%g184572184585%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g184572184585%_))
                                    (let ((_%e184575184587%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g184572184585%_))))
                                      (let ((_%hd184576184590%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e184575184587%_)))
                                            (_%tl184577184592%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e184575184587%_))))
                                        ((lambda (_%L184595%_ _%L184596%_)
                                           (let* ((_%self184608%_
                                                   (list-ref
                                                    _%L184596%_
                                                    _%self-index184174%_))
                                                  (_%receiver184613%_
                                                   (let ((_%$e184610%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L184595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e184610%_
                                                         _%$e184610%_
                                                         _%self184608%_))))
                                             (for-each
                                              (lambda (_%g184615184617%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver184613%_
                                                 _%method-calls182164%_
                                                 _%slot-refs182165%_
                                                 _%g184615184617%_))
                                              _%L184595%_)))
                                         _%tl184577184592%_
                                         _%hd184576184590%_)))
                                    (_%g184571184582%_ _%g184572184585%_)))))
                        (_%g184570184620%_ _%clause184569%_)))
                    (let ((__tmp186370
                           (lambda (_%g184622184625%_ _%g184623184627%_)
                             (cons _%g184622184625%_ _%g184623184627%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186370 '() _%L184556%_))))
                 _%clause184514184553%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop184509184537%_
                                         _%target184506184532%_
                                         '()))
                                      (_%g184500184519%_ _%g184501184522%_)))))
                            (_%g184500184519%_ _%g184501184522%_))))
                    (_%g184500184519%_ _%g184501184522%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g184499184630%_
                                                 _%L184410%_))
                                              (if (_%no-specializer?182168%_)
                                                  _%stx182072%_
                                                  (let* ((_%specializer-id184639%_
                                                          (let* ((_%id184633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186371
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L182145%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp186371 '"::specialize")))
                         (_%specializer-id184636%_
                          (let ((__tmp186372
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx182072%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id184633%_
                             __tmp186372))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id184636%_))
                    _%specializer-id184636%_))
                 (_%$klass184641%_
                  (let ((__tmp186373
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186373)))
                 (_%$method-table184643%_
                  (let ((__tmp186374
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186374)))
                 (_%methods184645%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls182164%_)))
                 (_%$methods184649%_
                  (let ((__tmp186375
                         (lambda (_%id184647%_)
                           (let ((__tmp186376 (gensym _%id184647%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186376)))))
                    (declare (not safe))
                    (##map __tmp186375 _%methods184645%_)))
                 (_%_184658%_
                  (let ((__tmp186377
                         (lambda (_%g184650184653%_ _%g184651184655%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls182164%_
                              _%g184650184653%_
                              _%g184651184655%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp186377
                     _%methods184645%_
                     _%$methods184649%_)))
                 (_%methods-bind184668%_
                  (let ((__tmp186378
                         (lambda (_%g184660184663%_ _%g184661184665%_)
                           (_%generate-method-bind182074%_
                            _%$klass184641%_
                            _%$method-table184643%_
                            _%g184660184663%_
                            _%g184661184665%_))))
                    (declare (not safe))
                    (##map __tmp186378 _%methods184645%_ _%$methods184649%_)))
                 (_%slots184670%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs182165%_)))
                 (_%$slots184674%_
                  (let ((__tmp186379
                         (lambda (_%id184672%_)
                           (let ((__tmp186380 (gensym _%id184672%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186380)))))
                    (declare (not safe))
                    (##map __tmp186379 _%slots184670%_)))
                 (_%_184683%_
                  (let ((__tmp186381
                         (lambda (_%g184675184678%_ _%g184676184680%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs182165%_
                              _%g184675184678%_
                              _%g184676184680%_)))))
                    (declare (not safe))
                    (##for-each __tmp186381 _%slots184670%_ _%$slots184674%_)))
                 (_%slots-bind184692%_
                  (let ((__tmp186382
                         (lambda (_%g184684184687%_ _%g184685184689%_)
                           (_%generate-slot-bind182075%_
                            _%$klass184641%_
                            _%g184684184687%_
                            _%g184685184689%_))))
                    (declare (not safe))
                    (##map __tmp186382 _%slots184670%_ _%$slots184674%_)))
                 (_%specializer-lambda-expr184770%_
                  (let* ((_%g184694184708%_
                          (lambda (_%g184695184705%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g184695184705%_))))
                         (_%g184693184767%_
                          (lambda (_%g184695184711%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g184695184711%_))
                                (let ((_%e184698184713%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g184695184711%_))))
                                  (let ((_%hd184699184716%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e184698184713%_)))
                                        (_%tl184700184718%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e184698184713%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl184700184718%_))
                                        (let ((_%e184701184721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl184700184718%_))))
                                          (let ((_%hd184702184724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e184701184721%_)))
                                                (_%tl184703184726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e184701184721%_))))
                                            ((lambda (_%L184729%_ _%L184730%_)
                                               (let* ((_%self184753%_
                                                       (list-ref
                                                        _%L184730%_
                                                        _%self-index184174%_))
                                                      (_%receiver184758%_
                                                       (let ((_%$e184755%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L184729%_))))
                 (if _%$e184755%_ _%$e184755%_ _%self184753%_)))
              (_%body184764%_
               (map (lambda (_%g184759184761%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver184758%_
                       _%$klass184641%_
                       _%method-calls182164%_
                       _%slot-refs182165%_
                       _%g184759184761%_))
                    _%L184729%_))
              (__tmp186383 (cons '%#lambda (cons _%L184730%_ _%body184764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp186383
                                                  _%L184411%_)))
                                             _%tl184703184726%_
                                             _%hd184702184724%_)))
                                        (_%g184694184708%_
                                         _%g184695184711%_))))
                                (_%g184694184708%_ _%g184695184711%_)))))
                    (_%g184693184767%_ _%L184411%_)))
                 (_%specializer-case-lambda-expr184910%_
                  (let* ((_%g184772184791%_
                          (lambda (_%g184773184788%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g184773184788%_))))
                         (_%g184771184907%_
                          (lambda (_%g184773184794%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g184773184794%_))
                                (let ((_%e184775184796%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g184773184794%_))))
                                  (let ((_%hd184776184799%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e184775184796%_)))
                                        (_%tl184777184801%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e184775184796%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl184777184801%_))
                                        (let ((_g186384_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl184777184801%_
                                                  '0))))
                                          (begin
                                            (let ((_g186385_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g186384_)
                                                         (##values-length
                                                          _g186384_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g186385_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g186385_)))
                                            (let ((_%target184778184804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g186384_
                                                      0)))
                                                  (_%tl184780184806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g186384_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl184780184806%_))
                                                  (letrec ((_%loop184781184809%_
                                                            (lambda (_%hd184779184812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause184785184814%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd184779184812%_))
                          (let ((_%e184782184817%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd184779184812%_))))
                            (let ((_%lp-hd184783184820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e184782184817%_)))
                                  (_%lp-tl184784184822%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e184782184817%_))))
                              (_%loop184781184809%_
                               _%lp-tl184784184822%_
                               (cons _%lp-hd184783184820%_
                                     _%clause184785184814%_))))
                          (let ((_%clause184786184825%_
                                 (reverse _%clause184785184814%_)))
                            ((lambda (_%L184828%_)
                               (let* ((_%clauses184905%_
                                       (map (lambda (_%clause184842%_)
                                              (let* ((_%g184844184855%_
                                                      (lambda (_%g184845184852%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g184845184852%_))))
                                                     (_%g184843184895%_
                                                      (lambda (_%g184845184858%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g184845184858%_))
                                                            (let ((_%e184848184860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g184845184858%_))))
                      (let ((_%hd184849184863%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184848184860%_)))
                            (_%tl184850184865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184848184860%_))))
                        ((lambda (_%L184868%_ _%L184869%_)
                           (let* ((_%self184881%_
                                   (list-ref _%L184869%_ _%self-index184174%_))
                                  (_%receiver184886%_
                                   (let ((_%$e184883%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L184868%_))))
                                     (if _%$e184883%_
                                         _%$e184883%_
                                         _%self184881%_)))
                                  (_%body184892%_
                                   (map (lambda (_%g184887184889%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver184886%_
                                           _%$klass184641%_
                                           _%method-calls182164%_
                                           _%slot-refs182165%_
                                           _%g184887184889%_))
                                        _%L184868%_)))
                             (cons _%L184869%_ _%body184892%_)))
                         _%tl184850184865%_
                         _%hd184849184863%_)))
                    (_%g184844184855%_ _%g184845184858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g184843184895%_
                                                 _%clause184842%_)))
                                            (let ((__tmp186386
                                                   (lambda (_%g184897184900%_
                                                            _%g184898184902%_)
                                                     (cons _%g184897184900%_
                                                           _%g184898184902%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp186386
                                               '()
                                               _%L184828%_))))
                                      (__tmp186387
                                       (cons '%#case-lambda
                                             _%clauses184905%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp186387
                                  _%L184410%_)))
                             _%clause184786184825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop184781184809%_
                                                     _%target184778184804%_
                                                     '()))
                                                  (_%g184772184791%_
                                                   _%g184773184794%_)))))
                                        (_%g184772184791%_
                                         _%g184773184794%_))))
                                (_%g184772184791%_ _%g184773184794%_)))))
                    (_%g184771184907%_ _%L184410%_)))
                 (_%specializer-impl184912%_
                  (let ((__tmp186388
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L183874%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L183873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp186389
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L184412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr184770%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr184910%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp186389
                                                _%stx182072%_))
                                             '()))
                                 '())
                           (cons _%L183871%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L183870%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp186388 _%stx182072%_)))
                 (_%specializer-impl184914%_
                  (_%generate-specializer-impl182076%_
                   _%$klass184641%_
                   _%$method-table184643%_
                   _%methods-bind184668%_
                   _%slots-bind184692%_
                   _%specializer-impl184912%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186391
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L182145%_)))
                                                          (__tmp186390
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id184639%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp186391
                                                       '" => "
                                                       __tmp186390))
                                                    (_%generate-specializer-def182077%_
                                                     _%L182145%_
                                                     _%specializer-id184639%_
                                                     _%specializer-impl184914%_))))
                                            _%hd184343184405%_
                                            _%hd184340184397%_
                                            _%hd184337184389%_)
                                           (_%g184319184349%_
                                            _%g184320184352%_))))
                                   (_%g184319184349%_ _%g184320184352%_))
                               (_%g184319184349%_ _%g184320184352%_))
                           (_%g184319184349%_ _%g184320184352%_))))
                   (_%g184319184349%_ _%g184320184352%_))
               (_%g184319184349%_ _%g184320184352%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g184319184349%_
                                                _%g184320184352%_))))
                                       (_%g184319184349%_ _%g184320184352%_))))
                               (_%g184319184349%_ _%g184320184352%_))))
                       (_%g184319184349%_ _%g184320184352%_))))
               (_%g184319184349%_ _%g184320184352%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g184318184917%_ _%L183872%_))
                                         _%stx182072%_))))
                             _%hd183970184093%_
                             _%kw-ref183968184114%_
                             _%hd183958184080%_
                             _%hd183949184056%_
                             _%hd183940184032%_)
                            (_%g183914183976%_ _%g183915183979%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop183963184098%_
                                                 _%target183960184085%_
                                                 '()))
                                              (_%g183914183976%_
                                               _%g183915183979%_))))
                                      (_%g183914183976%_ _%g183915183979%_)))))
                            (_%g183914183976%_ _%g183915183979%_))
                        (_%g183914183976%_ _%g183915183979%_))
                    (_%g183914183976%_ _%g183915183979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g183914183976%_
                                                     _%g183915183979%_))
                                                (_%g183914183976%_
                                                 _%g183915183979%_))
                                            (_%g183914183976%_
                                             _%g183915183979%_))))
                                    (_%g183914183976%_ _%g183915183979%_))))
                            (_%g183914183976%_ _%g183915183979%_))
                        (_%g183914183976%_ _%g183915183979%_))))
                (_%g183914183976%_ _%g183915183979%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g183914183976%_
                                                     _%g183915183979%_))
                                                (_%g183914183976%_
                                                 _%g183915183979%_))))
                                        (_%g183914183976%_
                                         _%g183915183979%_))))
                                (_%g183914183976%_ _%g183915183979%_))
                            (_%g183914183976%_ _%g183915183979%_))))
                    (_%g183914183976%_ _%g183915183979%_))
                (_%g183914183976%_ _%g183915183979%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g183914183976%_
                                                     _%g183915183979%_))))
                                            (_%g183914183976%_
                                             _%g183915183979%_))))
                                    (_%g183914183976%_ _%g183915183979%_))
                                (_%g183914183976%_ _%g183915183979%_))
                            (_%g183914183976%_ _%g183915183979%_))))
                    (_%g183914183976%_ _%g183915183979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g183914183976%_
                                                     _%g183915183979%_))))
                                            (_%g183914183976%_
                                             _%g183915183979%_))
                                        (_%g183914183976%_ _%g183915183979%_))
                                    (_%g183914183976%_ _%g183915183979%_))))
                            (_%g183914183976%_ _%g183915183979%_)))))
                (_%g183913184921%_ _%L183871%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd183747183865%_
                                                    _%hd183744183857%_
                                                    _%hd183741183849%_
                                                    _%hd183738183841%_
                                                    _%hd183720183793%_)
                                                   (_%g183700183753%_
                                                    _%g183701183756%_))))
                                           (_%g183700183753%_
                                            _%g183701183756%_))
                                       (_%g183700183753%_ _%g183701183756%_))
                                   (_%g183700183753%_ _%g183701183756%_))
                               (_%g183700183753%_ _%g183701183756%_))))
                       (_%g183700183753%_ _%g183701183756%_))
                   (_%g183700183753%_ _%g183701183756%_))
               (_%g183700183753%_ _%g183701183756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g183700183753%_
                                                _%g183701183756%_))
                                           (_%g183700183753%_
                                            _%g183701183756%_))))
                                   (_%g183700183753%_ _%g183701183756%_))))
                           (_%g183700183753%_ _%g183701183756%_))))
                   (_%g183700183753%_ _%g183701183756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183700183753%_
                                                    _%g183701183756%_))
                                               (_%g183700183753%_
                                                _%g183701183756%_))
                                           (_%g183700183753%_
                                            _%g183701183756%_))))
                                   (_%g183700183753%_ _%g183701183756%_))))
                           (_%g183700183753%_ _%g183701183756%_))
                       (_%g183700183753%_ _%g183701183756%_))))
               (_%g183700183753%_ _%g183701183756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g183700183753%_
                                                _%g183701183756%_))))
                                       (_%g183700183753%_ _%g183701183756%_))))
                               (_%g183700183753%_ _%g183701183756%_))
                           (_%g183700183753%_ _%g183701183756%_))
                       (_%g183700183753%_ _%g183701183756%_))))
               (_%g183700183753%_ _%g183701183756%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g183699184924%_ _%L182144%_))
                                         _%stx182072%_))))))))
                  (_%__kont185158185159%_ (lambda () _%stx182072%_)))
              (let ((_%__match185187185188%_
                     (lambda (_%e182084182112%_
                              _%hd182085182115%_
                              _%tl182086182117%_
                              _%e182087182120%_
                              _%hd182088182123%_
                              _%tl182089182125%_
                              _%e182090182128%_
                              _%hd182091182131%_
                              _%tl182092182133%_
                              _%e182093182136%_
                              _%hd182094182139%_
                              _%tl182095182141%_)
                       (let ((_%L182144%_ _%hd182094182139%_)
                             (_%L182145%_ _%hd182091182131%_))
                         (if (let ((__tmp186392
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L182145%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp186392))
                             (_%__kont185156185157%_ _%L182144%_ _%L182145%_)
                             (_%__kont185158185159%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx185154185155%_))
                    (let ((_%e182084182112%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx185154185155%_))))
                      (let ((_%tl182086182117%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e182084182112%_)))
                            (_%hd182085182115%_
                             (let ()
                               (declare (not safe))
                               (##car _%e182084182112%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl182086182117%_))
                            (let ((_%e182087182120%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl182086182117%_))))
                              (let ((_%tl182089182125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e182087182120%_)))
                                    (_%hd182088182123%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e182087182120%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd182088182123%_))
                                    (let ((_%e182090182128%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd182088182123%_))))
                                      (let ((_%tl182092182133%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e182090182128%_)))
                                            (_%hd182091182131%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e182090182128%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl182092182133%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl182089182125%_))
                                                (let ((_%e182093182136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl182089182125%_))))
                                                  (let ((_%tl182095182141%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e182093182136%_)))
                                                        (_%hd182094182139%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e182093182136%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl182095182141%_))
                                                        (_%__match185187185188%_
                                                         _%e182084182112%_
                                                         _%hd182085182115%_
                                                         _%tl182086182117%_
                                                         _%e182087182120%_
                                                         _%hd182088182123%_
                                                         _%tl182089182125%_
                                                         _%e182090182128%_
                                                         _%hd182091182131%_
                                                         _%tl182092182133%_
                                                         _%e182093182136%_
                                                         _%hd182094182139%_
                                                         _%tl182095182141%_)
                                                        (_%__kont185158185159%_))))
                                                (_%__kont185158185159%_))
                                            (_%__kont185158185159%_))))
                                    (_%__kont185158185159%_))))
                            (_%__kont185158185159%_))))
                    (_%__kont185158185159%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self181924%_ _%stx181925%_)
        (let* ((_%__stx185190185191%_ _%stx181925%_)
               (_%g181928181961%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx185190185191%_)))))
          (let ((_%__kont185192185193%_ (lambda (_%L182051%_) _%L182051%_))
                (_%__kont185194185195%_
                 (lambda (_%L181990%_ _%L181991%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self181924%_ _%L181990%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx185190185191%_))
                (let ((_%e181931182011%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx185190185191%_))))
                  (let ((_%tl181933182016%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e181931182011%_)))
                        (_%hd181932182014%_
                         (let ()
                           (declare (not safe))
                           (##car _%e181931182011%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl181933182016%_))
                        (let ((_%e181934182019%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl181933182016%_))))
                          (let ((_%tl181936182024%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e181934182019%_)))
                                (_%hd181935182022%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e181934182019%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd181935182022%_))
                                (let ((_%e181937182027%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd181935182022%_))))
                                  (let ((_%tl181939182032%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e181937182027%_)))
                                        (_%hd181938182030%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e181937182027%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd181938182030%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd181938182030%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl181939182032%_))
                                                (let ((_%e181940182035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl181939182032%_))))
                                                  (let ((_%tl181942182040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e181940182035%_)))
                                                        (_%hd181941182038%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e181940182035%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl181942182040%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl181936182024%_))
                                                            (let ((_%e181943182043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl181936182024%_))))
                      (let ((_%tl181945182048%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e181943182043%_)))
                            (_%hd181944182046%_
                             (let ()
                               (declare (not safe))
                               (##car _%e181943182043%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl181945182048%_))
                            (_%__kont185192185193%_ _%hd181941182038%_)
                            (let ()
                              (declare (not safe))
                              (_%g181928181961%_)))))
                    (let () (declare (not safe)) (_%g181928181961%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl181936182024%_))
                    (let ((_%e181954181982%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl181936182024%_))))
                      (let ((_%tl181956181987%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e181954181982%_)))
                            (_%hd181955181985%_
                             (let ()
                               (declare (not safe))
                               (##car _%e181954181982%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl181956181987%_))
                            (_%__kont185194185195%_
                             _%hd181955181985%_
                             _%hd181935182022%_)
                            (let ()
                              (declare (not safe))
                              (_%g181928181961%_)))))
                    (let () (declare (not safe)) (_%g181928181961%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl181936182024%_))
                                                    (let ((_%e181954181982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl181936182024%_))))
                                                      (let ((_%tl181956181987%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e181954181982%_)))
                    (_%hd181955181985%_
                     (let () (declare (not safe)) (##car _%e181954181982%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl181956181987%_))
                    (_%__kont185194185195%_
                     _%hd181955181985%_
                     _%hd181935182022%_)
                    (let () (declare (not safe)) (_%g181928181961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g181928181961%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl181936182024%_))
                                                (let ((_%e181954181982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl181936182024%_))))
                                                  (let ((_%tl181956181987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e181954181982%_)))
                                                        (_%hd181955181985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e181954181982%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl181956181987%_))
                                                        (_%__kont185194185195%_
                                                         _%hd181955181985%_
                                                         _%hd181935182022%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g181928181961%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g181928181961%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl181936182024%_))
                                            (let ((_%e181954181982%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl181936182024%_))))
                                              (let ((_%tl181956181987%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e181954181982%_)))
                                                    (_%hd181955181985%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e181954181982%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl181956181987%_))
                                                    (_%__kont185194185195%_
                                                     _%hd181955181985%_
                                                     _%hd181935182022%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g181928181961%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g181928181961%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl181936182024%_))
                                    (let ((_%e181954181982%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl181936182024%_))))
                                      (let ((_%tl181956181987%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e181954181982%_)))
                                            (_%hd181955181985%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e181954181982%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl181956181987%_))
                                            (_%__kont185194185195%_
                                             _%hd181955181985%_
                                             _%hd181935182022%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g181928181961%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g181928181961%_))))))
                        (let () (declare (not safe)) (_%g181928181961%_)))))
                (let () (declare (not safe)) (_%g181928181961%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self181840%_ _%stx181841%_)
        (let* ((_%g181843181864%_
                (lambda (_%g181844181861%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g181844181861%_))))
               (_%g181842181921%_
                (lambda (_%g181844181867%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g181844181867%_))
                      (let ((_%e181848181869%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g181844181867%_))))
                        (let ((_%hd181849181872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e181848181869%_)))
                              (_%tl181850181874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e181848181869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl181850181874%_))
                              (let ((_%e181851181877%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl181850181874%_))))
                                (let ((_%hd181852181880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e181851181877%_)))
                                      (_%tl181853181882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e181851181877%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl181853181882%_))
                                      (let ((_%e181854181885%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl181853181882%_))))
                                        (let ((_%hd181855181888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e181854181885%_)))
                                              (_%tl181856181890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e181854181885%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl181856181890%_))
                                              (let ((_%e181857181893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl181856181890%_))))
                                                (let ((_%hd181858181896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e181857181893%_)))
                                                      (_%tl181859181898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e181857181893%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl181859181898%_))
                                                      ((lambda (_%L181901%_
                                                                _%L181902%_
                                                                _%L181903%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self181840%_
                                                            _%L181902%_)))
                                                       _%hd181858181896%_
                                                       _%hd181855181888%_
                                                       _%hd181852181880%_)
                                                      (_%g181843181864%_
                                                       _%g181844181867%_))))
                                              (_%g181843181864%_
                                               _%g181844181867%_))))
                                      (_%g181843181864%_ _%g181844181867%_))))
                              (_%g181843181864%_ _%g181844181867%_))))
                      (_%g181843181864%_ _%g181844181867%_)))))
          (_%g181842181921%_ _%stx181841%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self180801%_ _%stx180802%_)
        (let* ((_%__stx185256185257%_ _%stx180802%_)
               (_%g180810181032%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx185256185257%_)))))
          (let ((_%__kont185258185259%_
                 (lambda (_%L181789%_ _%L181790%_ _%L181791%_ _%L181792%_)
                   (let ((__tmp186394
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self180801%_ 'methods)))
                         (__tmp186393
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181790%_))))
                     (declare (not safe))
                     (hash-put! __tmp186394 __tmp186393 '#t))
                   (for-each
                    (lambda (_%g181825181827%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self180801%_ _%g181825181827%_)))
                    (let ((__tmp186395
                           (lambda (_%g181829181832%_ _%g181830181834%_)
                             (cons _%g181829181832%_ _%g181830181834%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186395 '() _%L181789%_)))))
                (_%__kont185262185263%_
                 (lambda (_%L181624%_
                          _%L181625%_
                          _%L181626%_
                          _%L181627%_
                          _%L181628%_)
                   (let ((__tmp186397
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self180801%_ 'methods)))
                         (__tmp186396
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181625%_))))
                     (declare (not safe))
                     (hash-put! __tmp186397 __tmp186396 '#t))
                   (for-each
                    (lambda (_%g181668181670%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self180801%_ _%g181668181670%_)))
                    (let ((__tmp186398
                           (lambda (_%g181672181675%_ _%g181673181677%_)
                             (cons _%g181672181675%_ _%g181673181677%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186398 '() _%L181624%_)))))
                (_%__kont185266185267%_
                 (lambda (_%L181457%_ _%L181458%_ _%L181459%_)
                   (let ((__tmp186400
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self180801%_ 'slots)))
                         (__tmp186399
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181457%_))))
                     (declare (not safe))
                     (hash-put! __tmp186400 __tmp186399 '#t))))
                (_%__kont185268185269%_
                 (lambda (_%L181334%_ _%L181335%_ _%L181336%_ _%L181337%_)
                   (let ((__tmp186402
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self180801%_ 'slots)))
                         (__tmp186401
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181335%_))))
                     (declare (not safe))
                     (hash-put! __tmp186402 __tmp186401 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self180801%_ _%L181334%_))))
                (_%__kont185270185271%_
                 (lambda (_%L181208%_ _%L181209%_)
                   (let* ((_%accessor181231%_
                           (let ((__tmp186403
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L181209%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp186403)))
                          (_%klass181233%_
                           (let ((__tmp186404
                                  (##structure-ref
                                   _%accessor181231%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx180802%_
                              __tmp186404)))
                          (_%slot181235%_
                           (##structure-ref
                            _%accessor181231%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor181231%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass181233%_
                                    _%slot181235%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass181233%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp186406
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self180801%_ 'slots)))
                               (__tmp186405
                                (##structure-ref
                                 _%accessor181231%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp186406 __tmp186405 '#t))))))
                (_%__kont185272185273%_
                 (lambda (_%L181108%_ _%L181109%_ _%L181110%_)
                   (let* ((_%mutator181137%_
                           (let ((__tmp186407
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L181110%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp186407)))
                          (_%klass181139%_
                           (let ((__tmp186408
                                  (##structure-ref
                                   _%mutator181137%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx180802%_
                              __tmp186408)))
                          (_%slot181141%_
                           (##structure-ref
                            _%mutator181137%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator181137%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass181139%_
                                    _%slot181141%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass181139%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp186409
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self180801%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp186409 _%slot181141%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self180801%_ _%L181108%_)))))
                (_%__kont185274185275%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self180801%_ _%stx180802%_)))))
            (let* ((_%__match185755185756%_
                    (lambda (_%e181004181044%_
                             _%hd181005181047%_
                             _%tl181006181049%_
                             _%e181007181052%_
                             _%hd181008181055%_
                             _%tl181009181057%_
                             _%e181010181060%_
                             _%hd181011181063%_
                             _%tl181012181065%_
                             _%e181013181068%_
                             _%hd181014181071%_
                             _%tl181015181073%_
                             _%e181016181076%_
                             _%hd181017181079%_
                             _%tl181018181081%_
                             _%e181019181084%_
                             _%hd181020181087%_
                             _%tl181021181089%_
                             _%e181022181092%_
                             _%hd181023181095%_
                             _%tl181024181097%_
                             _%e181025181100%_
                             _%hd181026181103%_
                             _%tl181027181105%_)
                      (let ((_%L181108%_ _%hd181026181103%_)
                            (_%L181109%_ _%hd181023181095%_)
                            (_%L181110%_ _%hd181014181071%_))
                        (if (and (let ((__tmp186410
                                        (let ((__tmp186411
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L181110%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp186411))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp186410
                                    'gxc#!mutator::t))
                                 (let ((__tmp186412
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self180801%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181109%_
                                    __tmp186412)))
                            (_%__kont185272185273%_
                             _%L181108%_
                             _%L181109%_
                             _%L181110%_)
                            (_%__kont185274185275%_)))))
                   (_%__match185753185754%_
                    (lambda (_%e181004181044%_
                             _%hd181005181047%_
                             _%tl181006181049%_
                             _%e181007181052%_
                             _%hd181008181055%_
                             _%tl181009181057%_
                             _%e181010181060%_
                             _%hd181011181063%_
                             _%tl181012181065%_
                             _%e181013181068%_
                             _%hd181014181071%_
                             _%tl181015181073%_
                             _%e181016181076%_
                             _%hd181017181079%_
                             _%tl181018181081%_
                             _%e181019181084%_
                             _%hd181020181087%_
                             _%tl181021181089%_
                             _%e181022181092%_
                             _%hd181023181095%_
                             _%tl181024181097%_
                             _%e181025181100%_
                             _%hd181026181103%_
                             _%tl181027181105%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl181027181105%_))
                          (_%__match185755185756%_
                           _%e181004181044%_
                           _%hd181005181047%_
                           _%tl181006181049%_
                           _%e181007181052%_
                           _%hd181008181055%_
                           _%tl181009181057%_
                           _%e181010181060%_
                           _%hd181011181063%_
                           _%tl181012181065%_
                           _%e181013181068%_
                           _%hd181014181071%_
                           _%tl181015181073%_
                           _%e181016181076%_
                           _%hd181017181079%_
                           _%tl181018181081%_
                           _%e181019181084%_
                           _%hd181020181087%_
                           _%tl181021181089%_
                           _%e181022181092%_
                           _%hd181023181095%_
                           _%tl181024181097%_
                           _%e181025181100%_
                           _%hd181026181103%_
                           _%tl181027181105%_)
                          (_%__kont185274185275%_))))
                   (_%__match185747185748%_
                    (lambda (_%e181004181044%_
                             _%hd181005181047%_
                             _%tl181006181049%_
                             _%e181007181052%_
                             _%hd181008181055%_
                             _%tl181009181057%_
                             _%e181010181060%_
                             _%hd181011181063%_
                             _%tl181012181065%_
                             _%e181013181068%_
                             _%hd181014181071%_
                             _%tl181015181073%_
                             _%e181016181076%_
                             _%hd181017181079%_
                             _%tl181018181081%_
                             _%e181019181084%_
                             _%hd181020181087%_
                             _%tl181021181089%_
                             _%e181022181092%_
                             _%hd181023181095%_
                             _%tl181024181097%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl181018181081%_))
                          (let ((_%e181025181100%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl181018181081%_))))
                            (let ((_%tl181027181105%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181025181100%_)))
                                  (_%hd181026181103%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181025181100%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl181027181105%_))
                                  (_%__match185755185756%_
                                   _%e181004181044%_
                                   _%hd181005181047%_
                                   _%tl181006181049%_
                                   _%e181007181052%_
                                   _%hd181008181055%_
                                   _%tl181009181057%_
                                   _%e181010181060%_
                                   _%hd181011181063%_
                                   _%tl181012181065%_
                                   _%e181013181068%_
                                   _%hd181014181071%_
                                   _%tl181015181073%_
                                   _%e181016181076%_
                                   _%hd181017181079%_
                                   _%tl181018181081%_
                                   _%e181019181084%_
                                   _%hd181020181087%_
                                   _%tl181021181089%_
                                   _%e181022181092%_
                                   _%hd181023181095%_
                                   _%tl181024181097%_
                                   _%e181025181100%_
                                   _%hd181026181103%_
                                   _%tl181027181105%_)
                                  (_%__kont185274185275%_))))
                          (_%__kont185274185275%_))))
                   (_%__match185693185694%_
                    (lambda (_%e180980181152%_
                             _%hd180981181155%_
                             _%tl180982181157%_
                             _%e180983181160%_
                             _%hd180984181163%_
                             _%tl180985181165%_
                             _%e180986181168%_
                             _%hd180987181171%_
                             _%tl180988181173%_
                             _%e180989181176%_
                             _%hd180990181179%_
                             _%tl180991181181%_
                             _%e180992181184%_
                             _%hd180993181187%_
                             _%tl180994181189%_
                             _%e180995181192%_
                             _%hd180996181195%_
                             _%tl180997181197%_
                             _%e180998181200%_
                             _%hd180999181203%_
                             _%tl181000181205%_)
                      (let ((_%L181208%_ _%hd180999181203%_)
                            (_%L181209%_ _%hd180990181179%_))
                        (if (and (let ((__tmp186413
                                        (let ((__tmp186414
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L181209%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp186414))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp186413
                                    'gxc#!accessor::t))
                                 (let ((__tmp186415
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self180801%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181208%_
                                    __tmp186415)))
                            (_%__kont185270185271%_ _%L181208%_ _%L181209%_)
                            (_%__kont185274185275%_)))))
                   (_%__match185691185692%_
                    (lambda (_%e180980181152%_
                             _%hd180981181155%_
                             _%tl180982181157%_
                             _%e180983181160%_
                             _%hd180984181163%_
                             _%tl180985181165%_
                             _%e180986181168%_
                             _%hd180987181171%_
                             _%tl180988181173%_
                             _%e180989181176%_
                             _%hd180990181179%_
                             _%tl180991181181%_
                             _%e180992181184%_
                             _%hd180993181187%_
                             _%tl180994181189%_
                             _%e180995181192%_
                             _%hd180996181195%_
                             _%tl180997181197%_
                             _%e180998181200%_
                             _%hd180999181203%_
                             _%tl181000181205%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl180994181189%_))
                          (_%__match185693185694%_
                           _%e180980181152%_
                           _%hd180981181155%_
                           _%tl180982181157%_
                           _%e180983181160%_
                           _%hd180984181163%_
                           _%tl180985181165%_
                           _%e180986181168%_
                           _%hd180987181171%_
                           _%tl180988181173%_
                           _%e180989181176%_
                           _%hd180990181179%_
                           _%tl180991181181%_
                           _%e180992181184%_
                           _%hd180993181187%_
                           _%tl180994181189%_
                           _%e180995181192%_
                           _%hd180996181195%_
                           _%tl180997181197%_
                           _%e180998181200%_
                           _%hd180999181203%_
                           _%tl181000181205%_)
                          (_%__match185747185748%_
                           _%e180980181152%_
                           _%hd180981181155%_
                           _%tl180982181157%_
                           _%e180983181160%_
                           _%hd180984181163%_
                           _%tl180985181165%_
                           _%e180986181168%_
                           _%hd180987181171%_
                           _%tl180988181173%_
                           _%e180989181176%_
                           _%hd180990181179%_
                           _%tl180991181181%_
                           _%e180992181184%_
                           _%hd180993181187%_
                           _%tl180994181189%_
                           _%e180995181192%_
                           _%hd180996181195%_
                           _%tl180997181197%_
                           _%e180998181200%_
                           _%hd180999181203%_
                           _%tl181000181205%_))))
                   (_%__match185637185638%_
                    (lambda (_%e180945181246%_
                             _%hd180946181249%_
                             _%tl180947181251%_
                             _%e180948181254%_
                             _%hd180949181257%_
                             _%tl180950181259%_
                             _%e180951181262%_
                             _%hd180952181265%_
                             _%tl180953181267%_
                             _%e180954181270%_
                             _%hd180955181273%_
                             _%tl180956181275%_
                             _%e180957181278%_
                             _%hd180958181281%_
                             _%tl180959181283%_
                             _%e180960181286%_
                             _%hd180961181289%_
                             _%tl180962181291%_
                             _%e180963181294%_
                             _%hd180964181297%_
                             _%tl180965181299%_
                             _%e180966181302%_
                             _%hd180967181305%_
                             _%tl180968181307%_
                             _%e180969181310%_
                             _%hd180970181313%_
                             _%tl180971181315%_
                             _%e180972181318%_
                             _%hd180973181321%_
                             _%tl180974181323%_
                             _%e180975181326%_
                             _%hd180976181329%_
                             _%tl180977181331%_)
                      (let ((_%L181334%_ _%hd180976181329%_)
                            (_%L181335%_ _%hd180973181321%_)
                            (_%L181336%_ _%hd180964181297%_)
                            (_%L181337%_ _%hd180955181273%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181337%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181337%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp186416
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self180801%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181336%_
                                    __tmp186416)))
                            (_%__kont185268185269%_
                             _%L181334%_
                             _%L181335%_
                             _%L181336%_
                             _%L181337%_)
                            (_%__kont185274185275%_)))))
                   (_%__match185629185630%_
                    (lambda (_%e180945181246%_
                             _%hd180946181249%_
                             _%tl180947181251%_
                             _%e180948181254%_
                             _%hd180949181257%_
                             _%tl180950181259%_
                             _%e180951181262%_
                             _%hd180952181265%_
                             _%tl180953181267%_
                             _%e180954181270%_
                             _%hd180955181273%_
                             _%tl180956181275%_
                             _%e180957181278%_
                             _%hd180958181281%_
                             _%tl180959181283%_
                             _%e180960181286%_
                             _%hd180961181289%_
                             _%tl180962181291%_
                             _%e180963181294%_
                             _%hd180964181297%_
                             _%tl180965181299%_
                             _%e180966181302%_
                             _%hd180967181305%_
                             _%tl180968181307%_
                             _%e180969181310%_
                             _%hd180970181313%_
                             _%tl180971181315%_
                             _%e180972181318%_
                             _%hd180973181321%_
                             _%tl180974181323%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl180968181307%_))
                          (let ((_%e180975181326%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl180968181307%_))))
                            (let ((_%tl180977181331%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e180975181326%_)))
                                  (_%hd180976181329%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e180975181326%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl180977181331%_))
                                  (_%__match185637185638%_
                                   _%e180945181246%_
                                   _%hd180946181249%_
                                   _%tl180947181251%_
                                   _%e180948181254%_
                                   _%hd180949181257%_
                                   _%tl180950181259%_
                                   _%e180951181262%_
                                   _%hd180952181265%_
                                   _%tl180953181267%_
                                   _%e180954181270%_
                                   _%hd180955181273%_
                                   _%tl180956181275%_
                                   _%e180957181278%_
                                   _%hd180958181281%_
                                   _%tl180959181283%_
                                   _%e180960181286%_
                                   _%hd180961181289%_
                                   _%tl180962181291%_
                                   _%e180963181294%_
                                   _%hd180964181297%_
                                   _%tl180965181299%_
                                   _%e180966181302%_
                                   _%hd180967181305%_
                                   _%tl180968181307%_
                                   _%e180969181310%_
                                   _%hd180970181313%_
                                   _%tl180971181315%_
                                   _%e180972181318%_
                                   _%hd180973181321%_
                                   _%tl180974181323%_
                                   _%e180975181326%_
                                   _%hd180976181329%_
                                   _%tl180977181331%_)
                                  (_%__kont185274185275%_))))
                          (_%__match185753185754%_
                           _%e180945181246%_
                           _%hd180946181249%_
                           _%tl180947181251%_
                           _%e180948181254%_
                           _%hd180949181257%_
                           _%tl180950181259%_
                           _%e180951181262%_
                           _%hd180952181265%_
                           _%tl180953181267%_
                           _%e180954181270%_
                           _%hd180955181273%_
                           _%tl180956181275%_
                           _%e180957181278%_
                           _%hd180958181281%_
                           _%tl180959181283%_
                           _%e180960181286%_
                           _%hd180961181289%_
                           _%tl180962181291%_
                           _%e180963181294%_
                           _%hd180964181297%_
                           _%tl180965181299%_
                           _%e180966181302%_
                           _%hd180967181305%_
                           _%tl180968181307%_))))
                   (_%__match185551185552%_
                    (lambda (_%e180911181377%_
                             _%hd180912181380%_
                             _%tl180913181382%_
                             _%e180914181385%_
                             _%hd180915181388%_
                             _%tl180916181390%_
                             _%e180917181393%_
                             _%hd180918181396%_
                             _%tl180919181398%_
                             _%e180920181401%_
                             _%hd180921181404%_
                             _%tl180922181406%_
                             _%e180923181409%_
                             _%hd180924181412%_
                             _%tl180925181414%_
                             _%e180926181417%_
                             _%hd180927181420%_
                             _%tl180928181422%_
                             _%e180929181425%_
                             _%hd180930181428%_
                             _%tl180931181430%_
                             _%e180932181433%_
                             _%hd180933181436%_
                             _%tl180934181438%_
                             _%e180935181441%_
                             _%hd180936181444%_
                             _%tl180937181446%_
                             _%e180938181449%_
                             _%hd180939181452%_
                             _%tl180940181454%_)
                      (let ((_%L181457%_ _%hd180939181452%_)
                            (_%L181458%_ _%hd180930181428%_)
                            (_%L181459%_ _%hd180921181404%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181459%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181459%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp186417
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self180801%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181458%_
                                    __tmp186417)))
                            (_%__kont185266185267%_
                             _%L181457%_
                             _%L181458%_
                             _%L181459%_)
                            (_%__match185755185756%_
                             _%e180911181377%_
                             _%hd180912181380%_
                             _%tl180913181382%_
                             _%e180914181385%_
                             _%hd180915181388%_
                             _%tl180916181390%_
                             _%e180917181393%_
                             _%hd180918181396%_
                             _%tl180919181398%_
                             _%e180920181401%_
                             _%hd180921181404%_
                             _%tl180922181406%_
                             _%e180923181409%_
                             _%hd180924181412%_
                             _%tl180925181414%_
                             _%e180926181417%_
                             _%hd180927181420%_
                             _%tl180928181422%_
                             _%e180929181425%_
                             _%hd180930181428%_
                             _%tl180931181430%_
                             _%e180932181433%_
                             _%hd180933181436%_
                             _%tl180934181438%_)))))
                   (_%__match185549185550%_
                    (lambda (_%e180911181377%_
                             _%hd180912181380%_
                             _%tl180913181382%_
                             _%e180914181385%_
                             _%hd180915181388%_
                             _%tl180916181390%_
                             _%e180917181393%_
                             _%hd180918181396%_
                             _%tl180919181398%_
                             _%e180920181401%_
                             _%hd180921181404%_
                             _%tl180922181406%_
                             _%e180923181409%_
                             _%hd180924181412%_
                             _%tl180925181414%_
                             _%e180926181417%_
                             _%hd180927181420%_
                             _%tl180928181422%_
                             _%e180929181425%_
                             _%hd180930181428%_
                             _%tl180931181430%_
                             _%e180932181433%_
                             _%hd180933181436%_
                             _%tl180934181438%_
                             _%e180935181441%_
                             _%hd180936181444%_
                             _%tl180937181446%_
                             _%e180938181449%_
                             _%hd180939181452%_
                             _%tl180940181454%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl180934181438%_))
                          (_%__match185551185552%_
                           _%e180911181377%_
                           _%hd180912181380%_
                           _%tl180913181382%_
                           _%e180914181385%_
                           _%hd180915181388%_
                           _%tl180916181390%_
                           _%e180917181393%_
                           _%hd180918181396%_
                           _%tl180919181398%_
                           _%e180920181401%_
                           _%hd180921181404%_
                           _%tl180922181406%_
                           _%e180923181409%_
                           _%hd180924181412%_
                           _%tl180925181414%_
                           _%e180926181417%_
                           _%hd180927181420%_
                           _%tl180928181422%_
                           _%e180929181425%_
                           _%hd180930181428%_
                           _%tl180931181430%_
                           _%e180932181433%_
                           _%hd180933181436%_
                           _%tl180934181438%_
                           _%e180935181441%_
                           _%hd180936181444%_
                           _%tl180937181446%_
                           _%e180938181449%_
                           _%hd180939181452%_
                           _%tl180940181454%_)
                          (_%__match185629185630%_
                           _%e180911181377%_
                           _%hd180912181380%_
                           _%tl180913181382%_
                           _%e180914181385%_
                           _%hd180915181388%_
                           _%tl180916181390%_
                           _%e180917181393%_
                           _%hd180918181396%_
                           _%tl180919181398%_
                           _%e180920181401%_
                           _%hd180921181404%_
                           _%tl180922181406%_
                           _%e180923181409%_
                           _%hd180924181412%_
                           _%tl180925181414%_
                           _%e180926181417%_
                           _%hd180927181420%_
                           _%tl180928181422%_
                           _%e180929181425%_
                           _%hd180930181428%_
                           _%tl180931181430%_
                           _%e180932181433%_
                           _%hd180933181436%_
                           _%tl180934181438%_
                           _%e180935181441%_
                           _%hd180936181444%_
                           _%tl180937181446%_
                           _%e180938181449%_
                           _%hd180939181452%_
                           _%tl180940181454%_))))
                   (_%__match185539185540%_
                    (lambda (_%e180911181377%_
                             _%hd180912181380%_
                             _%tl180913181382%_
                             _%e180914181385%_
                             _%hd180915181388%_
                             _%tl180916181390%_
                             _%e180917181393%_
                             _%hd180918181396%_
                             _%tl180919181398%_
                             _%e180920181401%_
                             _%hd180921181404%_
                             _%tl180922181406%_
                             _%e180923181409%_
                             _%hd180924181412%_
                             _%tl180925181414%_
                             _%e180926181417%_
                             _%hd180927181420%_
                             _%tl180928181422%_
                             _%e180929181425%_
                             _%hd180930181428%_
                             _%tl180931181430%_
                             _%e180932181433%_
                             _%hd180933181436%_
                             _%tl180934181438%_
                             _%e180935181441%_
                             _%hd180936181444%_
                             _%tl180937181446%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd180936181444%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl180937181446%_))
                              (let ((_%e180938181449%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl180937181446%_))))
                                (let ((_%tl180940181454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e180938181449%_)))
                                      (_%hd180939181452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e180938181449%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl180940181454%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl180934181438%_))
                                          (_%__match185551185552%_
                                           _%e180911181377%_
                                           _%hd180912181380%_
                                           _%tl180913181382%_
                                           _%e180914181385%_
                                           _%hd180915181388%_
                                           _%tl180916181390%_
                                           _%e180917181393%_
                                           _%hd180918181396%_
                                           _%tl180919181398%_
                                           _%e180920181401%_
                                           _%hd180921181404%_
                                           _%tl180922181406%_
                                           _%e180923181409%_
                                           _%hd180924181412%_
                                           _%tl180925181414%_
                                           _%e180926181417%_
                                           _%hd180927181420%_
                                           _%tl180928181422%_
                                           _%e180929181425%_
                                           _%hd180930181428%_
                                           _%tl180931181430%_
                                           _%e180932181433%_
                                           _%hd180933181436%_
                                           _%tl180934181438%_
                                           _%e180935181441%_
                                           _%hd180936181444%_
                                           _%tl180937181446%_
                                           _%e180938181449%_
                                           _%hd180939181452%_
                                           _%tl180940181454%_)
                                          (_%__match185629185630%_
                                           _%e180911181377%_
                                           _%hd180912181380%_
                                           _%tl180913181382%_
                                           _%e180914181385%_
                                           _%hd180915181388%_
                                           _%tl180916181390%_
                                           _%e180917181393%_
                                           _%hd180918181396%_
                                           _%tl180919181398%_
                                           _%e180920181401%_
                                           _%hd180921181404%_
                                           _%tl180922181406%_
                                           _%e180923181409%_
                                           _%hd180924181412%_
                                           _%tl180925181414%_
                                           _%e180926181417%_
                                           _%hd180927181420%_
                                           _%tl180928181422%_
                                           _%e180929181425%_
                                           _%hd180930181428%_
                                           _%tl180931181430%_
                                           _%e180932181433%_
                                           _%hd180933181436%_
                                           _%tl180934181438%_
                                           _%e180935181441%_
                                           _%hd180936181444%_
                                           _%tl180937181446%_
                                           _%e180938181449%_
                                           _%hd180939181452%_
                                           _%tl180940181454%_))
                                      (_%__match185753185754%_
                                       _%e180911181377%_
                                       _%hd180912181380%_
                                       _%tl180913181382%_
                                       _%e180914181385%_
                                       _%hd180915181388%_
                                       _%tl180916181390%_
                                       _%e180917181393%_
                                       _%hd180918181396%_
                                       _%tl180919181398%_
                                       _%e180920181401%_
                                       _%hd180921181404%_
                                       _%tl180922181406%_
                                       _%e180923181409%_
                                       _%hd180924181412%_
                                       _%tl180925181414%_
                                       _%e180926181417%_
                                       _%hd180927181420%_
                                       _%tl180928181422%_
                                       _%e180929181425%_
                                       _%hd180930181428%_
                                       _%tl180931181430%_
                                       _%e180932181433%_
                                       _%hd180933181436%_
                                       _%tl180934181438%_))))
                              (_%__match185753185754%_
                               _%e180911181377%_
                               _%hd180912181380%_
                               _%tl180913181382%_
                               _%e180914181385%_
                               _%hd180915181388%_
                               _%tl180916181390%_
                               _%e180917181393%_
                               _%hd180918181396%_
                               _%tl180919181398%_
                               _%e180920181401%_
                               _%hd180921181404%_
                               _%tl180922181406%_
                               _%e180923181409%_
                               _%hd180924181412%_
                               _%tl180925181414%_
                               _%e180926181417%_
                               _%hd180927181420%_
                               _%tl180928181422%_
                               _%e180929181425%_
                               _%hd180930181428%_
                               _%tl180931181430%_
                               _%e180932181433%_
                               _%hd180933181436%_
                               _%tl180934181438%_))
                          (_%__match185753185754%_
                           _%e180911181377%_
                           _%hd180912181380%_
                           _%tl180913181382%_
                           _%e180914181385%_
                           _%hd180915181388%_
                           _%tl180916181390%_
                           _%e180917181393%_
                           _%hd180918181396%_
                           _%tl180919181398%_
                           _%e180920181401%_
                           _%hd180921181404%_
                           _%tl180922181406%_
                           _%e180923181409%_
                           _%hd180924181412%_
                           _%tl180925181414%_
                           _%e180926181417%_
                           _%hd180927181420%_
                           _%tl180928181422%_
                           _%e180929181425%_
                           _%hd180930181428%_
                           _%tl180931181430%_
                           _%e180932181433%_
                           _%hd180933181436%_
                           _%tl180934181438%_))))
                   (_%__match185471185472%_
                    (lambda (_%e180860181496%_
                             _%hd180861181499%_
                             _%tl180862181501%_
                             _%e180863181504%_
                             _%hd180864181507%_
                             _%tl180865181509%_
                             _%e180866181512%_
                             _%hd180867181515%_
                             _%tl180868181517%_
                             _%e180869181520%_
                             _%hd180870181523%_
                             _%tl180871181525%_
                             _%e180872181528%_
                             _%hd180873181531%_
                             _%tl180874181533%_
                             _%e180875181536%_
                             _%hd180876181539%_
                             _%tl180877181541%_
                             _%e180878181544%_
                             _%hd180879181547%_
                             _%tl180880181549%_
                             _%e180881181552%_
                             _%hd180882181555%_
                             _%tl180883181557%_
                             _%e180884181560%_
                             _%hd180885181563%_
                             _%tl180886181565%_
                             _%e180887181568%_
                             _%hd180888181571%_
                             _%tl180889181573%_
                             _%e180890181576%_
                             _%hd180891181579%_
                             _%tl180892181581%_
                             _%e180893181584%_
                             _%hd180894181587%_
                             _%tl180895181589%_
                             _%e180896181592%_
                             _%hd180897181595%_
                             _%tl180898181597%_
                             _%__splice185264185265%_
                             _%target180899181600%_
                             _%tl180901181602%_)
                      (letrec ((_%loop180902181605%_
                                (lambda (_%hd180900181608%_
                                         _%args180906181610%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd180900181608%_))
                                      (let ((_%e180903181613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd180900181608%_))))
                                        (let ((_%lp-tl180905181618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e180903181613%_)))
                                              (_%lp-hd180904181616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e180903181613%_))))
                                          (_%loop180902181605%_
                                           _%lp-tl180905181618%_
                                           (cons _%lp-hd180904181616%_
                                                 _%args180906181610%_))))
                                      (let ((_%args180907181621%_
                                             (reverse _%args180906181610%_)))
                                        (let ((_%L181624%_
                                               _%args180907181621%_)
                                              (_%L181625%_ _%hd180897181595%_)
                                              (_%L181626%_ _%hd180888181571%_)
                                              (_%L181627%_ _%hd180879181547%_)
                                              (_%L181628%_ _%hd180870181523%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L181628%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L181627%_
                                                      'call-method))
                                                   (let ((__tmp186418
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self180801%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L181626%_
                                                      __tmp186418)))
                                              (_%__kont185262185263%_
                                               _%L181624%_
                                               _%L181625%_
                                               _%L181626%_
                                               _%L181627%_
                                               _%L181628%_)
                                              (_%__kont185274185275%_))))))))
                        (_%loop180902181605%_ _%target180899181600%_ '()))))
                   (_%__match185429185430%_
                    (lambda (_%e180860181496%_
                             _%hd180861181499%_
                             _%tl180862181501%_
                             _%e180863181504%_
                             _%hd180864181507%_
                             _%tl180865181509%_
                             _%e180866181512%_
                             _%hd180867181515%_
                             _%tl180868181517%_
                             _%e180869181520%_
                             _%hd180870181523%_
                             _%tl180871181525%_
                             _%e180872181528%_
                             _%hd180873181531%_
                             _%tl180874181533%_
                             _%e180875181536%_
                             _%hd180876181539%_
                             _%tl180877181541%_
                             _%e180878181544%_
                             _%hd180879181547%_
                             _%tl180880181549%_
                             _%e180881181552%_
                             _%hd180882181555%_
                             _%tl180883181557%_
                             _%e180884181560%_
                             _%hd180885181563%_
                             _%tl180886181565%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd180885181563%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl180886181565%_))
                              (let ((_%e180887181568%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl180886181565%_))))
                                (let ((_%tl180889181573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e180887181568%_)))
                                      (_%hd180888181571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e180887181568%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl180889181573%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl180883181557%_))
                                          (let ((_%e180890181576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl180883181557%_))))
                                            (let ((_%tl180892181581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e180890181576%_)))
                                                  (_%hd180891181579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e180890181576%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd180891181579%_))
                                                  (let ((_%e180893181584%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd180891181579%_))))
                                                    (let ((_%tl180895181589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e180893181584%_)))
                                                          (_%hd180894181587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e180893181584%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd180894181587%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd180894181587%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl180895181589%_))
                          (let ((_%e180896181592%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl180895181589%_))))
                            (let ((_%tl180898181597%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e180896181592%_)))
                                  (_%hd180897181595%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e180896181592%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl180898181597%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl180892181581%_))
                                      (let ((_%__splice185264185265%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl180892181581%_
                                                '0))))
                                        (let ((_%tl180901181602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice185264185265%_
                                                  '1)))
                                              (_%target180899181600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice185264185265%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl180901181602%_))
                                              (_%__match185471185472%_
                                               _%e180860181496%_
                                               _%hd180861181499%_
                                               _%tl180862181501%_
                                               _%e180863181504%_
                                               _%hd180864181507%_
                                               _%tl180865181509%_
                                               _%e180866181512%_
                                               _%hd180867181515%_
                                               _%tl180868181517%_
                                               _%e180869181520%_
                                               _%hd180870181523%_
                                               _%tl180871181525%_
                                               _%e180872181528%_
                                               _%hd180873181531%_
                                               _%tl180874181533%_
                                               _%e180875181536%_
                                               _%hd180876181539%_
                                               _%tl180877181541%_
                                               _%e180878181544%_
                                               _%hd180879181547%_
                                               _%tl180880181549%_
                                               _%e180881181552%_
                                               _%hd180882181555%_
                                               _%tl180883181557%_
                                               _%e180884181560%_
                                               _%hd180885181563%_
                                               _%tl180886181565%_
                                               _%e180887181568%_
                                               _%hd180888181571%_
                                               _%tl180889181573%_
                                               _%e180890181576%_
                                               _%hd180891181579%_
                                               _%tl180892181581%_
                                               _%e180893181584%_
                                               _%hd180894181587%_
                                               _%tl180895181589%_
                                               _%e180896181592%_
                                               _%hd180897181595%_
                                               _%tl180898181597%_
                                               _%__splice185264185265%_
                                               _%target180899181600%_
                                               _%tl180901181602%_)
                                              (_%__kont185274185275%_))))
                                      (_%__kont185274185275%_))
                                  (_%__kont185274185275%_))))
                          (_%__kont185274185275%_))
                      (_%__kont185274185275%_))
                  (_%__kont185274185275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185274185275%_))))
                                          (_%__match185753185754%_
                                           _%e180860181496%_
                                           _%hd180861181499%_
                                           _%tl180862181501%_
                                           _%e180863181504%_
                                           _%hd180864181507%_
                                           _%tl180865181509%_
                                           _%e180866181512%_
                                           _%hd180867181515%_
                                           _%tl180868181517%_
                                           _%e180869181520%_
                                           _%hd180870181523%_
                                           _%tl180871181525%_
                                           _%e180872181528%_
                                           _%hd180873181531%_
                                           _%tl180874181533%_
                                           _%e180875181536%_
                                           _%hd180876181539%_
                                           _%tl180877181541%_
                                           _%e180878181544%_
                                           _%hd180879181547%_
                                           _%tl180880181549%_
                                           _%e180881181552%_
                                           _%hd180882181555%_
                                           _%tl180883181557%_))
                                      (_%__match185753185754%_
                                       _%e180860181496%_
                                       _%hd180861181499%_
                                       _%tl180862181501%_
                                       _%e180863181504%_
                                       _%hd180864181507%_
                                       _%tl180865181509%_
                                       _%e180866181512%_
                                       _%hd180867181515%_
                                       _%tl180868181517%_
                                       _%e180869181520%_
                                       _%hd180870181523%_
                                       _%tl180871181525%_
                                       _%e180872181528%_
                                       _%hd180873181531%_
                                       _%tl180874181533%_
                                       _%e180875181536%_
                                       _%hd180876181539%_
                                       _%tl180877181541%_
                                       _%e180878181544%_
                                       _%hd180879181547%_
                                       _%tl180880181549%_
                                       _%e180881181552%_
                                       _%hd180882181555%_
                                       _%tl180883181557%_))))
                              (_%__match185753185754%_
                               _%e180860181496%_
                               _%hd180861181499%_
                               _%tl180862181501%_
                               _%e180863181504%_
                               _%hd180864181507%_
                               _%tl180865181509%_
                               _%e180866181512%_
                               _%hd180867181515%_
                               _%tl180868181517%_
                               _%e180869181520%_
                               _%hd180870181523%_
                               _%tl180871181525%_
                               _%e180872181528%_
                               _%hd180873181531%_
                               _%tl180874181533%_
                               _%e180875181536%_
                               _%hd180876181539%_
                               _%tl180877181541%_
                               _%e180878181544%_
                               _%hd180879181547%_
                               _%tl180880181549%_
                               _%e180881181552%_
                               _%hd180882181555%_
                               _%tl180883181557%_))
                          (_%__match185539185540%_
                           _%e180860181496%_
                           _%hd180861181499%_
                           _%tl180862181501%_
                           _%e180863181504%_
                           _%hd180864181507%_
                           _%tl180865181509%_
                           _%e180866181512%_
                           _%hd180867181515%_
                           _%tl180868181517%_
                           _%e180869181520%_
                           _%hd180870181523%_
                           _%tl180871181525%_
                           _%e180872181528%_
                           _%hd180873181531%_
                           _%tl180874181533%_
                           _%e180875181536%_
                           _%hd180876181539%_
                           _%tl180877181541%_
                           _%e180878181544%_
                           _%hd180879181547%_
                           _%tl180880181549%_
                           _%e180881181552%_
                           _%hd180882181555%_
                           _%tl180883181557%_
                           _%e180884181560%_
                           _%hd180885181563%_
                           _%tl180886181565%_))))
                   (_%__match185361185362%_
                    (lambda (_%e180816181685%_
                             _%hd180817181688%_
                             _%tl180818181690%_
                             _%e180819181693%_
                             _%hd180820181696%_
                             _%tl180821181698%_
                             _%e180822181701%_
                             _%hd180823181704%_
                             _%tl180824181706%_
                             _%e180825181709%_
                             _%hd180826181712%_
                             _%tl180827181714%_
                             _%e180828181717%_
                             _%hd180829181720%_
                             _%tl180830181722%_
                             _%e180831181725%_
                             _%hd180832181728%_
                             _%tl180833181730%_
                             _%e180834181733%_
                             _%hd180835181736%_
                             _%tl180836181738%_
                             _%e180837181741%_
                             _%hd180838181744%_
                             _%tl180839181746%_
                             _%e180840181749%_
                             _%hd180841181752%_
                             _%tl180842181754%_
                             _%e180843181757%_
                             _%hd180844181760%_
                             _%tl180845181762%_
                             _%__splice185260185261%_
                             _%target180846181765%_
                             _%tl180848181767%_)
                      (letrec ((_%loop180849181770%_
                                (lambda (_%hd180847181773%_
                                         _%args180853181775%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd180847181773%_))
                                      (let ((_%e180850181778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd180847181773%_))))
                                        (let ((_%lp-tl180852181783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e180850181778%_)))
                                              (_%lp-hd180851181781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e180850181778%_))))
                                          (_%loop180849181770%_
                                           _%lp-tl180852181783%_
                                           (cons _%lp-hd180851181781%_
                                                 _%args180853181775%_))))
                                      (let ((_%args180854181786%_
                                             (reverse _%args180853181775%_)))
                                        (let ((_%L181789%_
                                               _%args180854181786%_)
                                              (_%L181790%_ _%hd180844181760%_)
                                              (_%L181791%_ _%hd180835181736%_)
                                              (_%L181792%_ _%hd180826181712%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L181792%_
                                                      'call-method))
                                                   (let ((__tmp186419
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self180801%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L181791%_
                                                      __tmp186419)))
                                              (_%__kont185258185259%_
                                               _%L181789%_
                                               _%L181790%_
                                               _%L181791%_
                                               _%L181792%_)
                                              (_%__match185549185550%_
                                               _%e180816181685%_
                                               _%hd180817181688%_
                                               _%tl180818181690%_
                                               _%e180819181693%_
                                               _%hd180820181696%_
                                               _%tl180821181698%_
                                               _%e180822181701%_
                                               _%hd180823181704%_
                                               _%tl180824181706%_
                                               _%e180825181709%_
                                               _%hd180826181712%_
                                               _%tl180827181714%_
                                               _%e180828181717%_
                                               _%hd180829181720%_
                                               _%tl180830181722%_
                                               _%e180831181725%_
                                               _%hd180832181728%_
                                               _%tl180833181730%_
                                               _%e180834181733%_
                                               _%hd180835181736%_
                                               _%tl180836181738%_
                                               _%e180837181741%_
                                               _%hd180838181744%_
                                               _%tl180839181746%_
                                               _%e180840181749%_
                                               _%hd180841181752%_
                                               _%tl180842181754%_
                                               _%e180843181757%_
                                               _%hd180844181760%_
                                               _%tl180845181762%_))))))))
                        (_%loop180849181770%_ _%target180846181765%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx185256185257%_))
                  (let ((_%e180816181685%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx185256185257%_))))
                    (let ((_%tl180818181690%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e180816181685%_)))
                          (_%hd180817181688%_
                           (let ()
                             (declare (not safe))
                             (##car _%e180816181685%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl180818181690%_))
                          (let ((_%e180819181693%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl180818181690%_))))
                            (let ((_%tl180821181698%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e180819181693%_)))
                                  (_%hd180820181696%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e180819181693%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd180820181696%_))
                                  (let ((_%e180822181701%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd180820181696%_))))
                                    (let ((_%tl180824181706%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e180822181701%_)))
                                          (_%hd180823181704%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e180822181701%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd180823181704%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd180823181704%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl180824181706%_))
                                                  (let ((_%e180825181709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl180824181706%_))))
                                                    (let ((_%tl180827181714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e180825181709%_)))
                                                          (_%hd180826181712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e180825181709%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl180827181714%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl180821181698%_))
                      (let ((_%e180828181717%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl180821181698%_))))
                        (let ((_%tl180830181722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e180828181717%_)))
                              (_%hd180829181720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e180828181717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd180829181720%_))
                              (let ((_%e180831181725%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd180829181720%_))))
                                (let ((_%tl180833181730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e180831181725%_)))
                                      (_%hd180832181728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e180831181725%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd180832181728%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd180832181728%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl180833181730%_))
                                              (let ((_%e180834181733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl180833181730%_))))
                                                (let ((_%tl180836181738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e180834181733%_)))
                                                      (_%hd180835181736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e180834181733%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl180836181738%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl180830181722%_))
                                                          (let ((_%e180837181741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl180830181722%_))))
                    (let ((_%tl180839181746%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e180837181741%_)))
                          (_%hd180838181744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e180837181741%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd180838181744%_))
                          (let ((_%e180840181749%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd180838181744%_))))
                            (let ((_%tl180842181754%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e180840181749%_)))
                                  (_%hd180841181752%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e180840181749%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd180841181752%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd180841181752%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl180842181754%_))
                                          (let ((_%e180843181757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl180842181754%_))))
                                            (let ((_%tl180845181762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e180843181757%_)))
                                                  (_%hd180844181760%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e180843181757%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl180845181762%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl180839181746%_))
                                                      (let ((_%__splice185260185261%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl180839181746%_
                        '0))))
                (let ((_%tl180848181767%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice185260185261%_ '1)))
                      (_%target180846181765%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice185260185261%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl180848181767%_))
                      (_%__match185361185362%_
                       _%e180816181685%_
                       _%hd180817181688%_
                       _%tl180818181690%_
                       _%e180819181693%_
                       _%hd180820181696%_
                       _%tl180821181698%_
                       _%e180822181701%_
                       _%hd180823181704%_
                       _%tl180824181706%_
                       _%e180825181709%_
                       _%hd180826181712%_
                       _%tl180827181714%_
                       _%e180828181717%_
                       _%hd180829181720%_
                       _%tl180830181722%_
                       _%e180831181725%_
                       _%hd180832181728%_
                       _%tl180833181730%_
                       _%e180834181733%_
                       _%hd180835181736%_
                       _%tl180836181738%_
                       _%e180837181741%_
                       _%hd180838181744%_
                       _%tl180839181746%_
                       _%e180840181749%_
                       _%hd180841181752%_
                       _%tl180842181754%_
                       _%e180843181757%_
                       _%hd180844181760%_
                       _%tl180845181762%_
                       _%__splice185260185261%_
                       _%target180846181765%_
                       _%tl180848181767%_)
                      (_%__match185549185550%_
                       _%e180816181685%_
                       _%hd180817181688%_
                       _%tl180818181690%_
                       _%e180819181693%_
                       _%hd180820181696%_
                       _%tl180821181698%_
                       _%e180822181701%_
                       _%hd180823181704%_
                       _%tl180824181706%_
                       _%e180825181709%_
                       _%hd180826181712%_
                       _%tl180827181714%_
                       _%e180828181717%_
                       _%hd180829181720%_
                       _%tl180830181722%_
                       _%e180831181725%_
                       _%hd180832181728%_
                       _%tl180833181730%_
                       _%e180834181733%_
                       _%hd180835181736%_
                       _%tl180836181738%_
                       _%e180837181741%_
                       _%hd180838181744%_
                       _%tl180839181746%_
                       _%e180840181749%_
                       _%hd180841181752%_
                       _%tl180842181754%_
                       _%e180843181757%_
                       _%hd180844181760%_
                       _%tl180845181762%_))))
              (_%__match185549185550%_
               _%e180816181685%_
               _%hd180817181688%_
               _%tl180818181690%_
               _%e180819181693%_
               _%hd180820181696%_
               _%tl180821181698%_
               _%e180822181701%_
               _%hd180823181704%_
               _%tl180824181706%_
               _%e180825181709%_
               _%hd180826181712%_
               _%tl180827181714%_
               _%e180828181717%_
               _%hd180829181720%_
               _%tl180830181722%_
               _%e180831181725%_
               _%hd180832181728%_
               _%tl180833181730%_
               _%e180834181733%_
               _%hd180835181736%_
               _%tl180836181738%_
               _%e180837181741%_
               _%hd180838181744%_
               _%tl180839181746%_
               _%e180840181749%_
               _%hd180841181752%_
               _%tl180842181754%_
               _%e180843181757%_
               _%hd180844181760%_
               _%tl180845181762%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match185753185754%_
                                                   _%e180816181685%_
                                                   _%hd180817181688%_
                                                   _%tl180818181690%_
                                                   _%e180819181693%_
                                                   _%hd180820181696%_
                                                   _%tl180821181698%_
                                                   _%e180822181701%_
                                                   _%hd180823181704%_
                                                   _%tl180824181706%_
                                                   _%e180825181709%_
                                                   _%hd180826181712%_
                                                   _%tl180827181714%_
                                                   _%e180828181717%_
                                                   _%hd180829181720%_
                                                   _%tl180830181722%_
                                                   _%e180831181725%_
                                                   _%hd180832181728%_
                                                   _%tl180833181730%_
                                                   _%e180834181733%_
                                                   _%hd180835181736%_
                                                   _%tl180836181738%_
                                                   _%e180837181741%_
                                                   _%hd180838181744%_
                                                   _%tl180839181746%_))))
                                          (_%__match185753185754%_
                                           _%e180816181685%_
                                           _%hd180817181688%_
                                           _%tl180818181690%_
                                           _%e180819181693%_
                                           _%hd180820181696%_
                                           _%tl180821181698%_
                                           _%e180822181701%_
                                           _%hd180823181704%_
                                           _%tl180824181706%_
                                           _%e180825181709%_
                                           _%hd180826181712%_
                                           _%tl180827181714%_
                                           _%e180828181717%_
                                           _%hd180829181720%_
                                           _%tl180830181722%_
                                           _%e180831181725%_
                                           _%hd180832181728%_
                                           _%tl180833181730%_
                                           _%e180834181733%_
                                           _%hd180835181736%_
                                           _%tl180836181738%_
                                           _%e180837181741%_
                                           _%hd180838181744%_
                                           _%tl180839181746%_))
                                      (_%__match185429185430%_
                                       _%e180816181685%_
                                       _%hd180817181688%_
                                       _%tl180818181690%_
                                       _%e180819181693%_
                                       _%hd180820181696%_
                                       _%tl180821181698%_
                                       _%e180822181701%_
                                       _%hd180823181704%_
                                       _%tl180824181706%_
                                       _%e180825181709%_
                                       _%hd180826181712%_
                                       _%tl180827181714%_
                                       _%e180828181717%_
                                       _%hd180829181720%_
                                       _%tl180830181722%_
                                       _%e180831181725%_
                                       _%hd180832181728%_
                                       _%tl180833181730%_
                                       _%e180834181733%_
                                       _%hd180835181736%_
                                       _%tl180836181738%_
                                       _%e180837181741%_
                                       _%hd180838181744%_
                                       _%tl180839181746%_
                                       _%e180840181749%_
                                       _%hd180841181752%_
                                       _%tl180842181754%_))
                                  (_%__match185753185754%_
                                   _%e180816181685%_
                                   _%hd180817181688%_
                                   _%tl180818181690%_
                                   _%e180819181693%_
                                   _%hd180820181696%_
                                   _%tl180821181698%_
                                   _%e180822181701%_
                                   _%hd180823181704%_
                                   _%tl180824181706%_
                                   _%e180825181709%_
                                   _%hd180826181712%_
                                   _%tl180827181714%_
                                   _%e180828181717%_
                                   _%hd180829181720%_
                                   _%tl180830181722%_
                                   _%e180831181725%_
                                   _%hd180832181728%_
                                   _%tl180833181730%_
                                   _%e180834181733%_
                                   _%hd180835181736%_
                                   _%tl180836181738%_
                                   _%e180837181741%_
                                   _%hd180838181744%_
                                   _%tl180839181746%_))))
                          (_%__match185753185754%_
                           _%e180816181685%_
                           _%hd180817181688%_
                           _%tl180818181690%_
                           _%e180819181693%_
                           _%hd180820181696%_
                           _%tl180821181698%_
                           _%e180822181701%_
                           _%hd180823181704%_
                           _%tl180824181706%_
                           _%e180825181709%_
                           _%hd180826181712%_
                           _%tl180827181714%_
                           _%e180828181717%_
                           _%hd180829181720%_
                           _%tl180830181722%_
                           _%e180831181725%_
                           _%hd180832181728%_
                           _%tl180833181730%_
                           _%e180834181733%_
                           _%hd180835181736%_
                           _%tl180836181738%_
                           _%e180837181741%_
                           _%hd180838181744%_
                           _%tl180839181746%_))))
                  (_%__match185691185692%_
                   _%e180816181685%_
                   _%hd180817181688%_
                   _%tl180818181690%_
                   _%e180819181693%_
                   _%hd180820181696%_
                   _%tl180821181698%_
                   _%e180822181701%_
                   _%hd180823181704%_
                   _%tl180824181706%_
                   _%e180825181709%_
                   _%hd180826181712%_
                   _%tl180827181714%_
                   _%e180828181717%_
                   _%hd180829181720%_
                   _%tl180830181722%_
                   _%e180831181725%_
                   _%hd180832181728%_
                   _%tl180833181730%_
                   _%e180834181733%_
                   _%hd180835181736%_
                   _%tl180836181738%_))
              (_%__kont185274185275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont185274185275%_))
                                          (_%__kont185274185275%_))
                                      (_%__kont185274185275%_))))
                              (_%__kont185274185275%_))))
                      (_%__kont185274185275%_))
                  (_%__kont185274185275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185274185275%_))
                                              (_%__kont185274185275%_))
                                          (_%__kont185274185275%_))))
                                  (_%__kont185274185275%_))))
                          (_%__kont185274185275%_))))
                  (_%__kont185274185275%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self179740%_ _%stx179741%_)
        (letrec ((_%force-e179743%_
                  (lambda (_%target180799%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target180799%_ '()))
                                      '()))))))
          (let* ((_%__stx185758185759%_ _%stx179741%_)
                 (_%g179751179973%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx185758185759%_)))))
            (let ((_%__kont185760185761%_
                   (lambda (_%L180745%_ _%L180746%_ _%L180747%_ _%L180748%_)
                     (let ((_%$method180793%_
                            (let ((__tmp186421
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self179740%_ 'methods)))
                                  (__tmp186420
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L180746%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186421 __tmp186420)))
                           (_%args180794%_
                            (map (lambda (_%g180781180783%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self179740%_
                                      _%g180781180783%_)))
                                 (let ((__tmp186422
                                        (lambda (_%g180785180788%_
                                                 _%g180786180790%_)
                                          (cons _%g180785180788%_
                                                _%g180786180790%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp186422 '() _%L180745%_)))))
                       (let ((__tmp186423
                              (cons '%#call
                                    (cons (_%force-e179743%_ _%$method180793%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self179740%_
                                                               'receiver))
                                                            '()))
                                                _%args180794%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186423 _%stx179741%_)))))
                  (_%__kont185764185765%_
                   (lambda (_%L180577%_
                            _%L180578%_
                            _%L180579%_
                            _%L180580%_
                            _%L180581%_)
                     (let ((_%$method180633%_
                            (let ((__tmp186425
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self179740%_ 'methods)))
                                  (__tmp186424
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L180578%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186425 __tmp186424)))
                           (_%args180634%_
                            (map (lambda (_%g180621180623%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self179740%_
                                      _%g180621180623%_)))
                                 (let ((__tmp186426
                                        (lambda (_%g180625180628%_
                                                 _%g180626180630%_)
                                          (cons _%g180625180628%_
                                                _%g180626180630%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp186426 '() _%L180577%_)))))
                       (let ((__tmp186427
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e179743%_
                                                 _%$method180633%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self179740%_ 'receiver))
                          '()))
              _%args180634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186427 _%stx179741%_)))))
                  (_%__kont185768185769%_
                   (lambda (_%L180408%_ _%L180409%_ _%L180410%_)
                     (let* ((_%$field180442%_
                             (let ((__tmp186429
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self179740%_ 'slots)))
                                   (__tmp186428
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L180408%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp186429 __tmp186428)))
                            (__tmp186430
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self179740%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field180442%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self179740%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp186430 _%stx179741%_))))
                  (_%__kont185770185771%_
                   (lambda (_%L180282%_ _%L180283%_ _%L180284%_ _%L180285%_)
                     (let ((_%$field180320%_
                            (let ((__tmp186432
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self179740%_ 'slots)))
                                  (__tmp186431
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L180283%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186432 __tmp186431)))
                           (_%expr180321%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self179740%_ _%L180282%_))))
                       (let ((__tmp186433
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self179740%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field180320%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self179740%_ 'receiver))
                          '()))
              (cons _%expr180321%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186433 _%stx179741%_)))))
                  (_%__kont185772185773%_
                   (lambda (_%L180154%_ _%L180155%_)
                     (let* ((_%accessor180177%_
                             (let ((__tmp186434
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L180155%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp186434)))
                            (_%klass180179%_
                             (let ((__tmp186435
                                    (##structure-ref
                                     _%accessor180177%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx179741%_
                                __tmp186435)))
                            (_%slot180181%_
                             (##structure-ref
                              _%accessor180177%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor180177%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass180179%_
                                      _%slot180181%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass180179%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx179741%_
                           (let* ((_%$field180187%_
                                   (let ((__tmp186436
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179740%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp186436 _%slot180181%_)))
                                  (__tmp186437
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self179740%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field180187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self179740%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp186437
                              _%stx179741%_))))))
                  (_%__kont185774185775%_
                   (lambda (_%L180049%_ _%L180050%_ _%L180051%_)
                     (let* ((_%mutator180079%_
                             (let ((__tmp186438
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L180051%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp186438)))
                            (_%klass180081%_
                             (let ((__tmp186439
                                    (##structure-ref
                                     _%mutator180079%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx179741%_
                                __tmp186439)))
                            (_%slot180083%_
                             (##structure-ref
                              _%mutator180079%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr180085%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self179740%_ _%L180049%_))))
                       (if (if (##structure-ref
                                _%mutator180079%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass180081%_
                                      _%slot180083%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass180081%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp186440
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L180051%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L180050%_
                                                                '()))
                                                    (cons _%expr180085%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp186440 _%stx179741%_))
                           (let* ((_%$field180091%_
                                   (let ((__tmp186441
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179740%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp186441 _%slot180083%_)))
                                  (__tmp186442
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self179740%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field180091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self179740%_ 'receiver))
                               '()))
                   (cons _%expr180085%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp186442
                              _%stx179741%_))))))
                  (_%__kont185776185777%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self179740%_ _%stx179741%_)))))
              (let* ((_%__match186257186258%_
                      (lambda (_%e179945179985%_
                               _%hd179946179988%_
                               _%tl179947179990%_
                               _%e179948179993%_
                               _%hd179949179996%_
                               _%tl179950179998%_
                               _%e179951180001%_
                               _%hd179952180004%_
                               _%tl179953180006%_
                               _%e179954180009%_
                               _%hd179955180012%_
                               _%tl179956180014%_
                               _%e179957180017%_
                               _%hd179958180020%_
                               _%tl179959180022%_
                               _%e179960180025%_
                               _%hd179961180028%_
                               _%tl179962180030%_
                               _%e179963180033%_
                               _%hd179964180036%_
                               _%tl179965180038%_
                               _%e179966180041%_
                               _%hd179967180044%_
                               _%tl179968180046%_)
                        (let ((_%L180049%_ _%hd179967180044%_)
                              (_%L180050%_ _%hd179964180036%_)
                              (_%L180051%_ _%hd179955180012%_))
                          (if (and (let ((__tmp186443
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179740%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180050%_
                                      __tmp186443))
                                   (let ((__tmp186444
                                          (let ((__tmp186445
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L180051%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp186445))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp186444
                                      'gxc#!mutator::t)))
                              (_%__kont185774185775%_
                               _%L180049%_
                               _%L180050%_
                               _%L180051%_)
                              (_%__kont185776185777%_)))))
                     (_%__match186255186256%_
                      (lambda (_%e179945179985%_
                               _%hd179946179988%_
                               _%tl179947179990%_
                               _%e179948179993%_
                               _%hd179949179996%_
                               _%tl179950179998%_
                               _%e179951180001%_
                               _%hd179952180004%_
                               _%tl179953180006%_
                               _%e179954180009%_
                               _%hd179955180012%_
                               _%tl179956180014%_
                               _%e179957180017%_
                               _%hd179958180020%_
                               _%tl179959180022%_
                               _%e179960180025%_
                               _%hd179961180028%_
                               _%tl179962180030%_
                               _%e179963180033%_
                               _%hd179964180036%_
                               _%tl179965180038%_
                               _%e179966180041%_
                               _%hd179967180044%_
                               _%tl179968180046%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl179968180046%_))
                            (_%__match186257186258%_
                             _%e179945179985%_
                             _%hd179946179988%_
                             _%tl179947179990%_
                             _%e179948179993%_
                             _%hd179949179996%_
                             _%tl179950179998%_
                             _%e179951180001%_
                             _%hd179952180004%_
                             _%tl179953180006%_
                             _%e179954180009%_
                             _%hd179955180012%_
                             _%tl179956180014%_
                             _%e179957180017%_
                             _%hd179958180020%_
                             _%tl179959180022%_
                             _%e179960180025%_
                             _%hd179961180028%_
                             _%tl179962180030%_
                             _%e179963180033%_
                             _%hd179964180036%_
                             _%tl179965180038%_
                             _%e179966180041%_
                             _%hd179967180044%_
                             _%tl179968180046%_)
                            (_%__kont185776185777%_))))
                     (_%__match186249186250%_
                      (lambda (_%e179945179985%_
                               _%hd179946179988%_
                               _%tl179947179990%_
                               _%e179948179993%_
                               _%hd179949179996%_
                               _%tl179950179998%_
                               _%e179951180001%_
                               _%hd179952180004%_
                               _%tl179953180006%_
                               _%e179954180009%_
                               _%hd179955180012%_
                               _%tl179956180014%_
                               _%e179957180017%_
                               _%hd179958180020%_
                               _%tl179959180022%_
                               _%e179960180025%_
                               _%hd179961180028%_
                               _%tl179962180030%_
                               _%e179963180033%_
                               _%hd179964180036%_
                               _%tl179965180038%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl179959180022%_))
                            (let ((_%e179966180041%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl179959180022%_))))
                              (let ((_%tl179968180046%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179966180041%_)))
                                    (_%hd179967180044%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179966180041%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl179968180046%_))
                                    (_%__match186257186258%_
                                     _%e179945179985%_
                                     _%hd179946179988%_
                                     _%tl179947179990%_
                                     _%e179948179993%_
                                     _%hd179949179996%_
                                     _%tl179950179998%_
                                     _%e179951180001%_
                                     _%hd179952180004%_
                                     _%tl179953180006%_
                                     _%e179954180009%_
                                     _%hd179955180012%_
                                     _%tl179956180014%_
                                     _%e179957180017%_
                                     _%hd179958180020%_
                                     _%tl179959180022%_
                                     _%e179960180025%_
                                     _%hd179961180028%_
                                     _%tl179962180030%_
                                     _%e179963180033%_
                                     _%hd179964180036%_
                                     _%tl179965180038%_
                                     _%e179966180041%_
                                     _%hd179967180044%_
                                     _%tl179968180046%_)
                                    (_%__kont185776185777%_))))
                            (_%__kont185776185777%_))))
                     (_%__match186195186196%_
                      (lambda (_%e179921180098%_
                               _%hd179922180101%_
                               _%tl179923180103%_
                               _%e179924180106%_
                               _%hd179925180109%_
                               _%tl179926180111%_
                               _%e179927180114%_
                               _%hd179928180117%_
                               _%tl179929180119%_
                               _%e179930180122%_
                               _%hd179931180125%_
                               _%tl179932180127%_
                               _%e179933180130%_
                               _%hd179934180133%_
                               _%tl179935180135%_
                               _%e179936180138%_
                               _%hd179937180141%_
                               _%tl179938180143%_
                               _%e179939180146%_
                               _%hd179940180149%_
                               _%tl179941180151%_)
                        (let ((_%L180154%_ _%hd179940180149%_)
                              (_%L180155%_ _%hd179931180125%_))
                          (if (and (let ((__tmp186446
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179740%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180154%_
                                      __tmp186446))
                                   (let ((__tmp186447
                                          (let ((__tmp186448
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L180155%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp186448))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp186447
                                      'gxc#!accessor::t)))
                              (_%__kont185772185773%_ _%L180154%_ _%L180155%_)
                              (_%__kont185776185777%_)))))
                     (_%__match186193186194%_
                      (lambda (_%e179921180098%_
                               _%hd179922180101%_
                               _%tl179923180103%_
                               _%e179924180106%_
                               _%hd179925180109%_
                               _%tl179926180111%_
                               _%e179927180114%_
                               _%hd179928180117%_
                               _%tl179929180119%_
                               _%e179930180122%_
                               _%hd179931180125%_
                               _%tl179932180127%_
                               _%e179933180130%_
                               _%hd179934180133%_
                               _%tl179935180135%_
                               _%e179936180138%_
                               _%hd179937180141%_
                               _%tl179938180143%_
                               _%e179939180146%_
                               _%hd179940180149%_
                               _%tl179941180151%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl179935180135%_))
                            (_%__match186195186196%_
                             _%e179921180098%_
                             _%hd179922180101%_
                             _%tl179923180103%_
                             _%e179924180106%_
                             _%hd179925180109%_
                             _%tl179926180111%_
                             _%e179927180114%_
                             _%hd179928180117%_
                             _%tl179929180119%_
                             _%e179930180122%_
                             _%hd179931180125%_
                             _%tl179932180127%_
                             _%e179933180130%_
                             _%hd179934180133%_
                             _%tl179935180135%_
                             _%e179936180138%_
                             _%hd179937180141%_
                             _%tl179938180143%_
                             _%e179939180146%_
                             _%hd179940180149%_
                             _%tl179941180151%_)
                            (_%__match186249186250%_
                             _%e179921180098%_
                             _%hd179922180101%_
                             _%tl179923180103%_
                             _%e179924180106%_
                             _%hd179925180109%_
                             _%tl179926180111%_
                             _%e179927180114%_
                             _%hd179928180117%_
                             _%tl179929180119%_
                             _%e179930180122%_
                             _%hd179931180125%_
                             _%tl179932180127%_
                             _%e179933180130%_
                             _%hd179934180133%_
                             _%tl179935180135%_
                             _%e179936180138%_
                             _%hd179937180141%_
                             _%tl179938180143%_
                             _%e179939180146%_
                             _%hd179940180149%_
                             _%tl179941180151%_))))
                     (_%__match186139186140%_
                      (lambda (_%e179886180194%_
                               _%hd179887180197%_
                               _%tl179888180199%_
                               _%e179889180202%_
                               _%hd179890180205%_
                               _%tl179891180207%_
                               _%e179892180210%_
                               _%hd179893180213%_
                               _%tl179894180215%_
                               _%e179895180218%_
                               _%hd179896180221%_
                               _%tl179897180223%_
                               _%e179898180226%_
                               _%hd179899180229%_
                               _%tl179900180231%_
                               _%e179901180234%_
                               _%hd179902180237%_
                               _%tl179903180239%_
                               _%e179904180242%_
                               _%hd179905180245%_
                               _%tl179906180247%_
                               _%e179907180250%_
                               _%hd179908180253%_
                               _%tl179909180255%_
                               _%e179910180258%_
                               _%hd179911180261%_
                               _%tl179912180263%_
                               _%e179913180266%_
                               _%hd179914180269%_
                               _%tl179915180271%_
                               _%e179916180274%_
                               _%hd179917180277%_
                               _%tl179918180279%_)
                        (let ((_%L180282%_ _%hd179917180277%_)
                              (_%L180283%_ _%hd179914180269%_)
                              (_%L180284%_ _%hd179905180245%_)
                              (_%L180285%_ _%hd179896180221%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180285%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180285%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp186449
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179740%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180284%_
                                      __tmp186449)))
                              (_%__kont185770185771%_
                               _%L180282%_
                               _%L180283%_
                               _%L180284%_
                               _%L180285%_)
                              (_%__kont185776185777%_)))))
                     (_%__match186131186132%_
                      (lambda (_%e179886180194%_
                               _%hd179887180197%_
                               _%tl179888180199%_
                               _%e179889180202%_
                               _%hd179890180205%_
                               _%tl179891180207%_
                               _%e179892180210%_
                               _%hd179893180213%_
                               _%tl179894180215%_
                               _%e179895180218%_
                               _%hd179896180221%_
                               _%tl179897180223%_
                               _%e179898180226%_
                               _%hd179899180229%_
                               _%tl179900180231%_
                               _%e179901180234%_
                               _%hd179902180237%_
                               _%tl179903180239%_
                               _%e179904180242%_
                               _%hd179905180245%_
                               _%tl179906180247%_
                               _%e179907180250%_
                               _%hd179908180253%_
                               _%tl179909180255%_
                               _%e179910180258%_
                               _%hd179911180261%_
                               _%tl179912180263%_
                               _%e179913180266%_
                               _%hd179914180269%_
                               _%tl179915180271%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl179909180255%_))
                            (let ((_%e179916180274%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl179909180255%_))))
                              (let ((_%tl179918180279%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179916180274%_)))
                                    (_%hd179917180277%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179916180274%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl179918180279%_))
                                    (_%__match186139186140%_
                                     _%e179886180194%_
                                     _%hd179887180197%_
                                     _%tl179888180199%_
                                     _%e179889180202%_
                                     _%hd179890180205%_
                                     _%tl179891180207%_
                                     _%e179892180210%_
                                     _%hd179893180213%_
                                     _%tl179894180215%_
                                     _%e179895180218%_
                                     _%hd179896180221%_
                                     _%tl179897180223%_
                                     _%e179898180226%_
                                     _%hd179899180229%_
                                     _%tl179900180231%_
                                     _%e179901180234%_
                                     _%hd179902180237%_
                                     _%tl179903180239%_
                                     _%e179904180242%_
                                     _%hd179905180245%_
                                     _%tl179906180247%_
                                     _%e179907180250%_
                                     _%hd179908180253%_
                                     _%tl179909180255%_
                                     _%e179910180258%_
                                     _%hd179911180261%_
                                     _%tl179912180263%_
                                     _%e179913180266%_
                                     _%hd179914180269%_
                                     _%tl179915180271%_
                                     _%e179916180274%_
                                     _%hd179917180277%_
                                     _%tl179918180279%_)
                                    (_%__kont185776185777%_))))
                            (_%__match186255186256%_
                             _%e179886180194%_
                             _%hd179887180197%_
                             _%tl179888180199%_
                             _%e179889180202%_
                             _%hd179890180205%_
                             _%tl179891180207%_
                             _%e179892180210%_
                             _%hd179893180213%_
                             _%tl179894180215%_
                             _%e179895180218%_
                             _%hd179896180221%_
                             _%tl179897180223%_
                             _%e179898180226%_
                             _%hd179899180229%_
                             _%tl179900180231%_
                             _%e179901180234%_
                             _%hd179902180237%_
                             _%tl179903180239%_
                             _%e179904180242%_
                             _%hd179905180245%_
                             _%tl179906180247%_
                             _%e179907180250%_
                             _%hd179908180253%_
                             _%tl179909180255%_))))
                     (_%__match186053186054%_
                      (lambda (_%e179852180328%_
                               _%hd179853180331%_
                               _%tl179854180333%_
                               _%e179855180336%_
                               _%hd179856180339%_
                               _%tl179857180341%_
                               _%e179858180344%_
                               _%hd179859180347%_
                               _%tl179860180349%_
                               _%e179861180352%_
                               _%hd179862180355%_
                               _%tl179863180357%_
                               _%e179864180360%_
                               _%hd179865180363%_
                               _%tl179866180365%_
                               _%e179867180368%_
                               _%hd179868180371%_
                               _%tl179869180373%_
                               _%e179870180376%_
                               _%hd179871180379%_
                               _%tl179872180381%_
                               _%e179873180384%_
                               _%hd179874180387%_
                               _%tl179875180389%_
                               _%e179876180392%_
                               _%hd179877180395%_
                               _%tl179878180397%_
                               _%e179879180400%_
                               _%hd179880180403%_
                               _%tl179881180405%_)
                        (let ((_%L180408%_ _%hd179880180403%_)
                              (_%L180409%_ _%hd179871180379%_)
                              (_%L180410%_ _%hd179862180355%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180410%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180410%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp186450
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self179740%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180409%_
                                      __tmp186450)))
                              (_%__kont185768185769%_
                               _%L180408%_
                               _%L180409%_
                               _%L180410%_)
                              (_%__match186257186258%_
                               _%e179852180328%_
                               _%hd179853180331%_
                               _%tl179854180333%_
                               _%e179855180336%_
                               _%hd179856180339%_
                               _%tl179857180341%_
                               _%e179858180344%_
                               _%hd179859180347%_
                               _%tl179860180349%_
                               _%e179861180352%_
                               _%hd179862180355%_
                               _%tl179863180357%_
                               _%e179864180360%_
                               _%hd179865180363%_
                               _%tl179866180365%_
                               _%e179867180368%_
                               _%hd179868180371%_
                               _%tl179869180373%_
                               _%e179870180376%_
                               _%hd179871180379%_
                               _%tl179872180381%_
                               _%e179873180384%_
                               _%hd179874180387%_
                               _%tl179875180389%_)))))
                     (_%__match186051186052%_
                      (lambda (_%e179852180328%_
                               _%hd179853180331%_
                               _%tl179854180333%_
                               _%e179855180336%_
                               _%hd179856180339%_
                               _%tl179857180341%_
                               _%e179858180344%_
                               _%hd179859180347%_
                               _%tl179860180349%_
                               _%e179861180352%_
                               _%hd179862180355%_
                               _%tl179863180357%_
                               _%e179864180360%_
                               _%hd179865180363%_
                               _%tl179866180365%_
                               _%e179867180368%_
                               _%hd179868180371%_
                               _%tl179869180373%_
                               _%e179870180376%_
                               _%hd179871180379%_
                               _%tl179872180381%_
                               _%e179873180384%_
                               _%hd179874180387%_
                               _%tl179875180389%_
                               _%e179876180392%_
                               _%hd179877180395%_
                               _%tl179878180397%_
                               _%e179879180400%_
                               _%hd179880180403%_
                               _%tl179881180405%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl179875180389%_))
                            (_%__match186053186054%_
                             _%e179852180328%_
                             _%hd179853180331%_
                             _%tl179854180333%_
                             _%e179855180336%_
                             _%hd179856180339%_
                             _%tl179857180341%_
                             _%e179858180344%_
                             _%hd179859180347%_
                             _%tl179860180349%_
                             _%e179861180352%_
                             _%hd179862180355%_
                             _%tl179863180357%_
                             _%e179864180360%_
                             _%hd179865180363%_
                             _%tl179866180365%_
                             _%e179867180368%_
                             _%hd179868180371%_
                             _%tl179869180373%_
                             _%e179870180376%_
                             _%hd179871180379%_
                             _%tl179872180381%_
                             _%e179873180384%_
                             _%hd179874180387%_
                             _%tl179875180389%_
                             _%e179876180392%_
                             _%hd179877180395%_
                             _%tl179878180397%_
                             _%e179879180400%_
                             _%hd179880180403%_
                             _%tl179881180405%_)
                            (_%__match186131186132%_
                             _%e179852180328%_
                             _%hd179853180331%_
                             _%tl179854180333%_
                             _%e179855180336%_
                             _%hd179856180339%_
                             _%tl179857180341%_
                             _%e179858180344%_
                             _%hd179859180347%_
                             _%tl179860180349%_
                             _%e179861180352%_
                             _%hd179862180355%_
                             _%tl179863180357%_
                             _%e179864180360%_
                             _%hd179865180363%_
                             _%tl179866180365%_
                             _%e179867180368%_
                             _%hd179868180371%_
                             _%tl179869180373%_
                             _%e179870180376%_
                             _%hd179871180379%_
                             _%tl179872180381%_
                             _%e179873180384%_
                             _%hd179874180387%_
                             _%tl179875180389%_
                             _%e179876180392%_
                             _%hd179877180395%_
                             _%tl179878180397%_
                             _%e179879180400%_
                             _%hd179880180403%_
                             _%tl179881180405%_))))
                     (_%__match186041186042%_
                      (lambda (_%e179852180328%_
                               _%hd179853180331%_
                               _%tl179854180333%_
                               _%e179855180336%_
                               _%hd179856180339%_
                               _%tl179857180341%_
                               _%e179858180344%_
                               _%hd179859180347%_
                               _%tl179860180349%_
                               _%e179861180352%_
                               _%hd179862180355%_
                               _%tl179863180357%_
                               _%e179864180360%_
                               _%hd179865180363%_
                               _%tl179866180365%_
                               _%e179867180368%_
                               _%hd179868180371%_
                               _%tl179869180373%_
                               _%e179870180376%_
                               _%hd179871180379%_
                               _%tl179872180381%_
                               _%e179873180384%_
                               _%hd179874180387%_
                               _%tl179875180389%_
                               _%e179876180392%_
                               _%hd179877180395%_
                               _%tl179878180397%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd179877180395%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl179878180397%_))
                                (let ((_%e179879180400%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl179878180397%_))))
                                  (let ((_%tl179881180405%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e179879180400%_)))
                                        (_%hd179880180403%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e179879180400%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl179881180405%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl179875180389%_))
                                            (_%__match186053186054%_
                                             _%e179852180328%_
                                             _%hd179853180331%_
                                             _%tl179854180333%_
                                             _%e179855180336%_
                                             _%hd179856180339%_
                                             _%tl179857180341%_
                                             _%e179858180344%_
                                             _%hd179859180347%_
                                             _%tl179860180349%_
                                             _%e179861180352%_
                                             _%hd179862180355%_
                                             _%tl179863180357%_
                                             _%e179864180360%_
                                             _%hd179865180363%_
                                             _%tl179866180365%_
                                             _%e179867180368%_
                                             _%hd179868180371%_
                                             _%tl179869180373%_
                                             _%e179870180376%_
                                             _%hd179871180379%_
                                             _%tl179872180381%_
                                             _%e179873180384%_
                                             _%hd179874180387%_
                                             _%tl179875180389%_
                                             _%e179876180392%_
                                             _%hd179877180395%_
                                             _%tl179878180397%_
                                             _%e179879180400%_
                                             _%hd179880180403%_
                                             _%tl179881180405%_)
                                            (_%__match186131186132%_
                                             _%e179852180328%_
                                             _%hd179853180331%_
                                             _%tl179854180333%_
                                             _%e179855180336%_
                                             _%hd179856180339%_
                                             _%tl179857180341%_
                                             _%e179858180344%_
                                             _%hd179859180347%_
                                             _%tl179860180349%_
                                             _%e179861180352%_
                                             _%hd179862180355%_
                                             _%tl179863180357%_
                                             _%e179864180360%_
                                             _%hd179865180363%_
                                             _%tl179866180365%_
                                             _%e179867180368%_
                                             _%hd179868180371%_
                                             _%tl179869180373%_
                                             _%e179870180376%_
                                             _%hd179871180379%_
                                             _%tl179872180381%_
                                             _%e179873180384%_
                                             _%hd179874180387%_
                                             _%tl179875180389%_
                                             _%e179876180392%_
                                             _%hd179877180395%_
                                             _%tl179878180397%_
                                             _%e179879180400%_
                                             _%hd179880180403%_
                                             _%tl179881180405%_))
                                        (_%__match186255186256%_
                                         _%e179852180328%_
                                         _%hd179853180331%_
                                         _%tl179854180333%_
                                         _%e179855180336%_
                                         _%hd179856180339%_
                                         _%tl179857180341%_
                                         _%e179858180344%_
                                         _%hd179859180347%_
                                         _%tl179860180349%_
                                         _%e179861180352%_
                                         _%hd179862180355%_
                                         _%tl179863180357%_
                                         _%e179864180360%_
                                         _%hd179865180363%_
                                         _%tl179866180365%_
                                         _%e179867180368%_
                                         _%hd179868180371%_
                                         _%tl179869180373%_
                                         _%e179870180376%_
                                         _%hd179871180379%_
                                         _%tl179872180381%_
                                         _%e179873180384%_
                                         _%hd179874180387%_
                                         _%tl179875180389%_))))
                                (_%__match186255186256%_
                                 _%e179852180328%_
                                 _%hd179853180331%_
                                 _%tl179854180333%_
                                 _%e179855180336%_
                                 _%hd179856180339%_
                                 _%tl179857180341%_
                                 _%e179858180344%_
                                 _%hd179859180347%_
                                 _%tl179860180349%_
                                 _%e179861180352%_
                                 _%hd179862180355%_
                                 _%tl179863180357%_
                                 _%e179864180360%_
                                 _%hd179865180363%_
                                 _%tl179866180365%_
                                 _%e179867180368%_
                                 _%hd179868180371%_
                                 _%tl179869180373%_
                                 _%e179870180376%_
                                 _%hd179871180379%_
                                 _%tl179872180381%_
                                 _%e179873180384%_
                                 _%hd179874180387%_
                                 _%tl179875180389%_))
                            (_%__match186255186256%_
                             _%e179852180328%_
                             _%hd179853180331%_
                             _%tl179854180333%_
                             _%e179855180336%_
                             _%hd179856180339%_
                             _%tl179857180341%_
                             _%e179858180344%_
                             _%hd179859180347%_
                             _%tl179860180349%_
                             _%e179861180352%_
                             _%hd179862180355%_
                             _%tl179863180357%_
                             _%e179864180360%_
                             _%hd179865180363%_
                             _%tl179866180365%_
                             _%e179867180368%_
                             _%hd179868180371%_
                             _%tl179869180373%_
                             _%e179870180376%_
                             _%hd179871180379%_
                             _%tl179872180381%_
                             _%e179873180384%_
                             _%hd179874180387%_
                             _%tl179875180389%_))))
                     (_%__match185973185974%_
                      (lambda (_%e179801180449%_
                               _%hd179802180452%_
                               _%tl179803180454%_
                               _%e179804180457%_
                               _%hd179805180460%_
                               _%tl179806180462%_
                               _%e179807180465%_
                               _%hd179808180468%_
                               _%tl179809180470%_
                               _%e179810180473%_
                               _%hd179811180476%_
                               _%tl179812180478%_
                               _%e179813180481%_
                               _%hd179814180484%_
                               _%tl179815180486%_
                               _%e179816180489%_
                               _%hd179817180492%_
                               _%tl179818180494%_
                               _%e179819180497%_
                               _%hd179820180500%_
                               _%tl179821180502%_
                               _%e179822180505%_
                               _%hd179823180508%_
                               _%tl179824180510%_
                               _%e179825180513%_
                               _%hd179826180516%_
                               _%tl179827180518%_
                               _%e179828180521%_
                               _%hd179829180524%_
                               _%tl179830180526%_
                               _%e179831180529%_
                               _%hd179832180532%_
                               _%tl179833180534%_
                               _%e179834180537%_
                               _%hd179835180540%_
                               _%tl179836180542%_
                               _%e179837180545%_
                               _%hd179838180548%_
                               _%tl179839180550%_
                               _%__splice185766185767%_
                               _%target179840180553%_
                               _%tl179842180555%_)
                        (letrec ((_%loop179843180558%_
                                  (lambda (_%hd179841180561%_
                                           _%args179847180563%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd179841180561%_))
                                        (let ((_%e179844180566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd179841180561%_))))
                                          (let ((_%lp-tl179846180571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e179844180566%_)))
                                                (_%lp-hd179845180569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e179844180566%_))))
                                            (_%loop179843180558%_
                                             _%lp-tl179846180571%_
                                             (cons _%lp-hd179845180569%_
                                                   _%args179847180563%_))))
                                        (let ((_%args179848180574%_
                                               (reverse _%args179847180563%_)))
                                          (let ((_%L180577%_
                                                 _%args179848180574%_)
                                                (_%L180578%_
                                                 _%hd179838180548%_)
                                                (_%L180579%_
                                                 _%hd179829180524%_)
                                                (_%L180580%_
                                                 _%hd179820180500%_)
                                                (_%L180581%_
                                                 _%hd179811180476%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L180581%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L180580%_
                                                        'call-method))
                                                     (let ((__tmp186451
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self179740%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L180579%_
                                                        __tmp186451)))
                                                (_%__kont185764185765%_
                                                 _%L180577%_
                                                 _%L180578%_
                                                 _%L180579%_
                                                 _%L180580%_
                                                 _%L180581%_)
                                                (_%__kont185776185777%_))))))))
                          (_%loop179843180558%_ _%target179840180553%_ '()))))
                     (_%__match185931185932%_
                      (lambda (_%e179801180449%_
                               _%hd179802180452%_
                               _%tl179803180454%_
                               _%e179804180457%_
                               _%hd179805180460%_
                               _%tl179806180462%_
                               _%e179807180465%_
                               _%hd179808180468%_
                               _%tl179809180470%_
                               _%e179810180473%_
                               _%hd179811180476%_
                               _%tl179812180478%_
                               _%e179813180481%_
                               _%hd179814180484%_
                               _%tl179815180486%_
                               _%e179816180489%_
                               _%hd179817180492%_
                               _%tl179818180494%_
                               _%e179819180497%_
                               _%hd179820180500%_
                               _%tl179821180502%_
                               _%e179822180505%_
                               _%hd179823180508%_
                               _%tl179824180510%_
                               _%e179825180513%_
                               _%hd179826180516%_
                               _%tl179827180518%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd179826180516%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl179827180518%_))
                                (let ((_%e179828180521%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl179827180518%_))))
                                  (let ((_%tl179830180526%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e179828180521%_)))
                                        (_%hd179829180524%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e179828180521%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl179830180526%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl179824180510%_))
                                            (let ((_%e179831180529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl179824180510%_))))
                                              (let ((_%tl179833180534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e179831180529%_)))
                                                    (_%hd179832180532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e179831180529%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd179832180532%_))
                                                    (let ((_%e179834180537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd179832180532%_))))
                                                      (let ((_%tl179836180542%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e179834180537%_)))
                    (_%hd179835180540%_
                     (let () (declare (not safe)) (##car _%e179834180537%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd179835180540%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd179835180540%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl179836180542%_))
                            (let ((_%e179837180545%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl179836180542%_))))
                              (let ((_%tl179839180550%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179837180545%_)))
                                    (_%hd179838180548%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179837180545%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl179839180550%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl179833180534%_))
                                        (let ((_%__splice185766185767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl179833180534%_
                                                  '0))))
                                          (let ((_%tl179842180555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice185766185767%_
                                                    '1)))
                                                (_%target179840180553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice185766185767%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl179842180555%_))
                                                (_%__match185973185974%_
                                                 _%e179801180449%_
                                                 _%hd179802180452%_
                                                 _%tl179803180454%_
                                                 _%e179804180457%_
                                                 _%hd179805180460%_
                                                 _%tl179806180462%_
                                                 _%e179807180465%_
                                                 _%hd179808180468%_
                                                 _%tl179809180470%_
                                                 _%e179810180473%_
                                                 _%hd179811180476%_
                                                 _%tl179812180478%_
                                                 _%e179813180481%_
                                                 _%hd179814180484%_
                                                 _%tl179815180486%_
                                                 _%e179816180489%_
                                                 _%hd179817180492%_
                                                 _%tl179818180494%_
                                                 _%e179819180497%_
                                                 _%hd179820180500%_
                                                 _%tl179821180502%_
                                                 _%e179822180505%_
                                                 _%hd179823180508%_
                                                 _%tl179824180510%_
                                                 _%e179825180513%_
                                                 _%hd179826180516%_
                                                 _%tl179827180518%_
                                                 _%e179828180521%_
                                                 _%hd179829180524%_
                                                 _%tl179830180526%_
                                                 _%e179831180529%_
                                                 _%hd179832180532%_
                                                 _%tl179833180534%_
                                                 _%e179834180537%_
                                                 _%hd179835180540%_
                                                 _%tl179836180542%_
                                                 _%e179837180545%_
                                                 _%hd179838180548%_
                                                 _%tl179839180550%_
                                                 _%__splice185766185767%_
                                                 _%target179840180553%_
                                                 _%tl179842180555%_)
                                                (_%__kont185776185777%_))))
                                        (_%__kont185776185777%_))
                                    (_%__kont185776185777%_))))
                            (_%__kont185776185777%_))
                        (_%__kont185776185777%_))
                    (_%__kont185776185777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont185776185777%_))))
                                            (_%__match186255186256%_
                                             _%e179801180449%_
                                             _%hd179802180452%_
                                             _%tl179803180454%_
                                             _%e179804180457%_
                                             _%hd179805180460%_
                                             _%tl179806180462%_
                                             _%e179807180465%_
                                             _%hd179808180468%_
                                             _%tl179809180470%_
                                             _%e179810180473%_
                                             _%hd179811180476%_
                                             _%tl179812180478%_
                                             _%e179813180481%_
                                             _%hd179814180484%_
                                             _%tl179815180486%_
                                             _%e179816180489%_
                                             _%hd179817180492%_
                                             _%tl179818180494%_
                                             _%e179819180497%_
                                             _%hd179820180500%_
                                             _%tl179821180502%_
                                             _%e179822180505%_
                                             _%hd179823180508%_
                                             _%tl179824180510%_))
                                        (_%__match186255186256%_
                                         _%e179801180449%_
                                         _%hd179802180452%_
                                         _%tl179803180454%_
                                         _%e179804180457%_
                                         _%hd179805180460%_
                                         _%tl179806180462%_
                                         _%e179807180465%_
                                         _%hd179808180468%_
                                         _%tl179809180470%_
                                         _%e179810180473%_
                                         _%hd179811180476%_
                                         _%tl179812180478%_
                                         _%e179813180481%_
                                         _%hd179814180484%_
                                         _%tl179815180486%_
                                         _%e179816180489%_
                                         _%hd179817180492%_
                                         _%tl179818180494%_
                                         _%e179819180497%_
                                         _%hd179820180500%_
                                         _%tl179821180502%_
                                         _%e179822180505%_
                                         _%hd179823180508%_
                                         _%tl179824180510%_))))
                                (_%__match186255186256%_
                                 _%e179801180449%_
                                 _%hd179802180452%_
                                 _%tl179803180454%_
                                 _%e179804180457%_
                                 _%hd179805180460%_
                                 _%tl179806180462%_
                                 _%e179807180465%_
                                 _%hd179808180468%_
                                 _%tl179809180470%_
                                 _%e179810180473%_
                                 _%hd179811180476%_
                                 _%tl179812180478%_
                                 _%e179813180481%_
                                 _%hd179814180484%_
                                 _%tl179815180486%_
                                 _%e179816180489%_
                                 _%hd179817180492%_
                                 _%tl179818180494%_
                                 _%e179819180497%_
                                 _%hd179820180500%_
                                 _%tl179821180502%_
                                 _%e179822180505%_
                                 _%hd179823180508%_
                                 _%tl179824180510%_))
                            (_%__match186041186042%_
                             _%e179801180449%_
                             _%hd179802180452%_
                             _%tl179803180454%_
                             _%e179804180457%_
                             _%hd179805180460%_
                             _%tl179806180462%_
                             _%e179807180465%_
                             _%hd179808180468%_
                             _%tl179809180470%_
                             _%e179810180473%_
                             _%hd179811180476%_
                             _%tl179812180478%_
                             _%e179813180481%_
                             _%hd179814180484%_
                             _%tl179815180486%_
                             _%e179816180489%_
                             _%hd179817180492%_
                             _%tl179818180494%_
                             _%e179819180497%_
                             _%hd179820180500%_
                             _%tl179821180502%_
                             _%e179822180505%_
                             _%hd179823180508%_
                             _%tl179824180510%_
                             _%e179825180513%_
                             _%hd179826180516%_
                             _%tl179827180518%_))))
                     (_%__match185863185864%_
                      (lambda (_%e179757180641%_
                               _%hd179758180644%_
                               _%tl179759180646%_
                               _%e179760180649%_
                               _%hd179761180652%_
                               _%tl179762180654%_
                               _%e179763180657%_
                               _%hd179764180660%_
                               _%tl179765180662%_
                               _%e179766180665%_
                               _%hd179767180668%_
                               _%tl179768180670%_
                               _%e179769180673%_
                               _%hd179770180676%_
                               _%tl179771180678%_
                               _%e179772180681%_
                               _%hd179773180684%_
                               _%tl179774180686%_
                               _%e179775180689%_
                               _%hd179776180692%_
                               _%tl179777180694%_
                               _%e179778180697%_
                               _%hd179779180700%_
                               _%tl179780180702%_
                               _%e179781180705%_
                               _%hd179782180708%_
                               _%tl179783180710%_
                               _%e179784180713%_
                               _%hd179785180716%_
                               _%tl179786180718%_
                               _%__splice185762185763%_
                               _%target179787180721%_
                               _%tl179789180723%_)
                        (letrec ((_%loop179790180726%_
                                  (lambda (_%hd179788180729%_
                                           _%args179794180731%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd179788180729%_))
                                        (let ((_%e179791180734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd179788180729%_))))
                                          (let ((_%lp-tl179793180739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e179791180734%_)))
                                                (_%lp-hd179792180737%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e179791180734%_))))
                                            (_%loop179790180726%_
                                             _%lp-tl179793180739%_
                                             (cons _%lp-hd179792180737%_
                                                   _%args179794180731%_))))
                                        (let ((_%args179795180742%_
                                               (reverse _%args179794180731%_)))
                                          (let ((_%L180745%_
                                                 _%args179795180742%_)
                                                (_%L180746%_
                                                 _%hd179785180716%_)
                                                (_%L180747%_
                                                 _%hd179776180692%_)
                                                (_%L180748%_
                                                 _%hd179767180668%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L180748%_
                                                        'call-method))
                                                     (let ((__tmp186452
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self179740%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L180747%_
                                                        __tmp186452)))
                                                (_%__kont185760185761%_
                                                 _%L180745%_
                                                 _%L180746%_
                                                 _%L180747%_
                                                 _%L180748%_)
                                                (_%__match186051186052%_
                                                 _%e179757180641%_
                                                 _%hd179758180644%_
                                                 _%tl179759180646%_
                                                 _%e179760180649%_
                                                 _%hd179761180652%_
                                                 _%tl179762180654%_
                                                 _%e179763180657%_
                                                 _%hd179764180660%_
                                                 _%tl179765180662%_
                                                 _%e179766180665%_
                                                 _%hd179767180668%_
                                                 _%tl179768180670%_
                                                 _%e179769180673%_
                                                 _%hd179770180676%_
                                                 _%tl179771180678%_
                                                 _%e179772180681%_
                                                 _%hd179773180684%_
                                                 _%tl179774180686%_
                                                 _%e179775180689%_
                                                 _%hd179776180692%_
                                                 _%tl179777180694%_
                                                 _%e179778180697%_
                                                 _%hd179779180700%_
                                                 _%tl179780180702%_
                                                 _%e179781180705%_
                                                 _%hd179782180708%_
                                                 _%tl179783180710%_
                                                 _%e179784180713%_
                                                 _%hd179785180716%_
                                                 _%tl179786180718%_))))))))
                          (_%loop179790180726%_ _%target179787180721%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx185758185759%_))
                    (let ((_%e179757180641%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx185758185759%_))))
                      (let ((_%tl179759180646%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e179757180641%_)))
                            (_%hd179758180644%_
                             (let ()
                               (declare (not safe))
                               (##car _%e179757180641%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl179759180646%_))
                            (let ((_%e179760180649%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl179759180646%_))))
                              (let ((_%tl179762180654%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179760180649%_)))
                                    (_%hd179761180652%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179760180649%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd179761180652%_))
                                    (let ((_%e179763180657%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd179761180652%_))))
                                      (let ((_%tl179765180662%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e179763180657%_)))
                                            (_%hd179764180660%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e179763180657%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd179764180660%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd179764180660%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl179765180662%_))
                                                    (let ((_%e179766180665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl179765180662%_))))
                                                      (let ((_%tl179768180670%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e179766180665%_)))
                    (_%hd179767180668%_
                     (let () (declare (not safe)) (##car _%e179766180665%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl179768180670%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl179762180654%_))
                        (let ((_%e179769180673%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl179762180654%_))))
                          (let ((_%tl179771180678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e179769180673%_)))
                                (_%hd179770180676%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e179769180673%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd179770180676%_))
                                (let ((_%e179772180681%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd179770180676%_))))
                                  (let ((_%tl179774180686%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e179772180681%_)))
                                        (_%hd179773180684%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e179772180681%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd179773180684%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd179773180684%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl179774180686%_))
                                                (let ((_%e179775180689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl179774180686%_))))
                                                  (let ((_%tl179777180694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e179775180689%_)))
                                                        (_%hd179776180692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e179775180689%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl179777180694%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl179771180678%_))
                                                            (let ((_%e179778180697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl179771180678%_))))
                      (let ((_%tl179780180702%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e179778180697%_)))
                            (_%hd179779180700%_
                             (let ()
                               (declare (not safe))
                               (##car _%e179778180697%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd179779180700%_))
                            (let ((_%e179781180705%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd179779180700%_))))
                              (let ((_%tl179783180710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e179781180705%_)))
                                    (_%hd179782180708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e179781180705%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd179782180708%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd179782180708%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl179783180710%_))
                                            (let ((_%e179784180713%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl179783180710%_))))
                                              (let ((_%tl179786180718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e179784180713%_)))
                                                    (_%hd179785180716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e179784180713%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl179786180718%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl179780180702%_))
                                                        (let ((_%__splice185762185763%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl179780180702%_
                          '0))))
                  (let ((_%tl179789180723%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice185762185763%_ '1)))
                        (_%target179787180721%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice185762185763%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl179789180723%_))
                        (_%__match185863185864%_
                         _%e179757180641%_
                         _%hd179758180644%_
                         _%tl179759180646%_
                         _%e179760180649%_
                         _%hd179761180652%_
                         _%tl179762180654%_
                         _%e179763180657%_
                         _%hd179764180660%_
                         _%tl179765180662%_
                         _%e179766180665%_
                         _%hd179767180668%_
                         _%tl179768180670%_
                         _%e179769180673%_
                         _%hd179770180676%_
                         _%tl179771180678%_
                         _%e179772180681%_
                         _%hd179773180684%_
                         _%tl179774180686%_
                         _%e179775180689%_
                         _%hd179776180692%_
                         _%tl179777180694%_
                         _%e179778180697%_
                         _%hd179779180700%_
                         _%tl179780180702%_
                         _%e179781180705%_
                         _%hd179782180708%_
                         _%tl179783180710%_
                         _%e179784180713%_
                         _%hd179785180716%_
                         _%tl179786180718%_
                         _%__splice185762185763%_
                         _%target179787180721%_
                         _%tl179789180723%_)
                        (_%__match186051186052%_
                         _%e179757180641%_
                         _%hd179758180644%_
                         _%tl179759180646%_
                         _%e179760180649%_
                         _%hd179761180652%_
                         _%tl179762180654%_
                         _%e179763180657%_
                         _%hd179764180660%_
                         _%tl179765180662%_
                         _%e179766180665%_
                         _%hd179767180668%_
                         _%tl179768180670%_
                         _%e179769180673%_
                         _%hd179770180676%_
                         _%tl179771180678%_
                         _%e179772180681%_
                         _%hd179773180684%_
                         _%tl179774180686%_
                         _%e179775180689%_
                         _%hd179776180692%_
                         _%tl179777180694%_
                         _%e179778180697%_
                         _%hd179779180700%_
                         _%tl179780180702%_
                         _%e179781180705%_
                         _%hd179782180708%_
                         _%tl179783180710%_
                         _%e179784180713%_
                         _%hd179785180716%_
                         _%tl179786180718%_))))
                (_%__match186051186052%_
                 _%e179757180641%_
                 _%hd179758180644%_
                 _%tl179759180646%_
                 _%e179760180649%_
                 _%hd179761180652%_
                 _%tl179762180654%_
                 _%e179763180657%_
                 _%hd179764180660%_
                 _%tl179765180662%_
                 _%e179766180665%_
                 _%hd179767180668%_
                 _%tl179768180670%_
                 _%e179769180673%_
                 _%hd179770180676%_
                 _%tl179771180678%_
                 _%e179772180681%_
                 _%hd179773180684%_
                 _%tl179774180686%_
                 _%e179775180689%_
                 _%hd179776180692%_
                 _%tl179777180694%_
                 _%e179778180697%_
                 _%hd179779180700%_
                 _%tl179780180702%_
                 _%e179781180705%_
                 _%hd179782180708%_
                 _%tl179783180710%_
                 _%e179784180713%_
                 _%hd179785180716%_
                 _%tl179786180718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match186255186256%_
                                                     _%e179757180641%_
                                                     _%hd179758180644%_
                                                     _%tl179759180646%_
                                                     _%e179760180649%_
                                                     _%hd179761180652%_
                                                     _%tl179762180654%_
                                                     _%e179763180657%_
                                                     _%hd179764180660%_
                                                     _%tl179765180662%_
                                                     _%e179766180665%_
                                                     _%hd179767180668%_
                                                     _%tl179768180670%_
                                                     _%e179769180673%_
                                                     _%hd179770180676%_
                                                     _%tl179771180678%_
                                                     _%e179772180681%_
                                                     _%hd179773180684%_
                                                     _%tl179774180686%_
                                                     _%e179775180689%_
                                                     _%hd179776180692%_
                                                     _%tl179777180694%_
                                                     _%e179778180697%_
                                                     _%hd179779180700%_
                                                     _%tl179780180702%_))))
                                            (_%__match186255186256%_
                                             _%e179757180641%_
                                             _%hd179758180644%_
                                             _%tl179759180646%_
                                             _%e179760180649%_
                                             _%hd179761180652%_
                                             _%tl179762180654%_
                                             _%e179763180657%_
                                             _%hd179764180660%_
                                             _%tl179765180662%_
                                             _%e179766180665%_
                                             _%hd179767180668%_
                                             _%tl179768180670%_
                                             _%e179769180673%_
                                             _%hd179770180676%_
                                             _%tl179771180678%_
                                             _%e179772180681%_
                                             _%hd179773180684%_
                                             _%tl179774180686%_
                                             _%e179775180689%_
                                             _%hd179776180692%_
                                             _%tl179777180694%_
                                             _%e179778180697%_
                                             _%hd179779180700%_
                                             _%tl179780180702%_))
                                        (_%__match185931185932%_
                                         _%e179757180641%_
                                         _%hd179758180644%_
                                         _%tl179759180646%_
                                         _%e179760180649%_
                                         _%hd179761180652%_
                                         _%tl179762180654%_
                                         _%e179763180657%_
                                         _%hd179764180660%_
                                         _%tl179765180662%_
                                         _%e179766180665%_
                                         _%hd179767180668%_
                                         _%tl179768180670%_
                                         _%e179769180673%_
                                         _%hd179770180676%_
                                         _%tl179771180678%_
                                         _%e179772180681%_
                                         _%hd179773180684%_
                                         _%tl179774180686%_
                                         _%e179775180689%_
                                         _%hd179776180692%_
                                         _%tl179777180694%_
                                         _%e179778180697%_
                                         _%hd179779180700%_
                                         _%tl179780180702%_
                                         _%e179781180705%_
                                         _%hd179782180708%_
                                         _%tl179783180710%_))
                                    (_%__match186255186256%_
                                     _%e179757180641%_
                                     _%hd179758180644%_
                                     _%tl179759180646%_
                                     _%e179760180649%_
                                     _%hd179761180652%_
                                     _%tl179762180654%_
                                     _%e179763180657%_
                                     _%hd179764180660%_
                                     _%tl179765180662%_
                                     _%e179766180665%_
                                     _%hd179767180668%_
                                     _%tl179768180670%_
                                     _%e179769180673%_
                                     _%hd179770180676%_
                                     _%tl179771180678%_
                                     _%e179772180681%_
                                     _%hd179773180684%_
                                     _%tl179774180686%_
                                     _%e179775180689%_
                                     _%hd179776180692%_
                                     _%tl179777180694%_
                                     _%e179778180697%_
                                     _%hd179779180700%_
                                     _%tl179780180702%_))))
                            (_%__match186255186256%_
                             _%e179757180641%_
                             _%hd179758180644%_
                             _%tl179759180646%_
                             _%e179760180649%_
                             _%hd179761180652%_
                             _%tl179762180654%_
                             _%e179763180657%_
                             _%hd179764180660%_
                             _%tl179765180662%_
                             _%e179766180665%_
                             _%hd179767180668%_
                             _%tl179768180670%_
                             _%e179769180673%_
                             _%hd179770180676%_
                             _%tl179771180678%_
                             _%e179772180681%_
                             _%hd179773180684%_
                             _%tl179774180686%_
                             _%e179775180689%_
                             _%hd179776180692%_
                             _%tl179777180694%_
                             _%e179778180697%_
                             _%hd179779180700%_
                             _%tl179780180702%_))))
                    (_%__match186193186194%_
                     _%e179757180641%_
                     _%hd179758180644%_
                     _%tl179759180646%_
                     _%e179760180649%_
                     _%hd179761180652%_
                     _%tl179762180654%_
                     _%e179763180657%_
                     _%hd179764180660%_
                     _%tl179765180662%_
                     _%e179766180665%_
                     _%hd179767180668%_
                     _%tl179768180670%_
                     _%e179769180673%_
                     _%hd179770180676%_
                     _%tl179771180678%_
                     _%e179772180681%_
                     _%hd179773180684%_
                     _%tl179774180686%_
                     _%e179775180689%_
                     _%hd179776180692%_
                     _%tl179777180694%_))
                (_%__kont185776185777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont185776185777%_))
                                            (_%__kont185776185777%_))
                                        (_%__kont185776185777%_))))
                                (_%__kont185776185777%_))))
                        (_%__kont185776185777%_))
                    (_%__kont185776185777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont185776185777%_))
                                                (_%__kont185776185777%_))
                                            (_%__kont185776185777%_))))
                                    (_%__kont185776185777%_))))
                            (_%__kont185776185777%_))))
                    (_%__kont185776185777%_))))))))))
