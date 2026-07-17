(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1784471396)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp244921 (list gxc#::identity::t))
            (__tmp244920 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp244921
         '()
         __tmp244920
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args243718%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args243718%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp244922
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
        (__make-atomic-promise __tmp244922)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx243710%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self243713%_
                (let ((__obj244913
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj244913))
               (__tmp244923
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self243713%_ _%stx243710%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp244923
           gxc#current-compile-method
           _%self243713%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp244925 (list gxc#::false::t))
            (__tmp244924 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp244925
         '()
         __tmp244924
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args243707%_
        (apply make-instance gxc#::extract-receiver::t _%$args243707%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp244926
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
        (__make-atomic-promise __tmp244926)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx243699%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self243702%_
                (let ((__obj244915
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj244915))
               (__tmp244927
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self243702%_ _%stx243699%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp244927
           gxc#current-compile-method
           _%self243702%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp244929 (list gxc#::void::t))
            (__tmp244928 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp244929
         '(receiver methods slots)
         __tmp244928
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args243696%_
        (apply make-instance gxc#::collect-object-refs::t _%$args243696%_)))
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
      (let ((__tmp244930
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
        (__make-atomic-promise __tmp244930)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords243665%_
               _%$%receiver243660243666%_
               _%$%methods243661243667%_
               _%$%slots243662243668%_
               _%stx243669%_)
        (let* ((_%receiver243672%_
                (if (eq? _%$%receiver243660243666%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver243660243666%_))
               (_%methods243674%_
                (if (eq? _%$%methods243661243667%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods243661243667%_))
               (_%slots243676%_
                (if (eq? _%$%slots243662243668%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots243662243668%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self243678%_
                  (let ((__obj244917
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
                       __obj244917
                       _%receiver243672%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244917
                       _%methods243674%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244917
                       _%slots243676%_
                       '3
                       '#f
                       '#f))
                    __obj244917))
                 (__tmp244931
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self243678%_ _%stx243669%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp244931
             gxc#current-compile-method
             _%self243678%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords243685%_ . _%args243686%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords243685%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243685%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243685%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243685%_
                  'slots:
                  absent-value))
               _%args243686%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args243663243692%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args243663243692%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp244933 (list gxc#::basic-xform-expression::t))
            (__tmp244932 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp244933
         '(receiver klass methods slots)
         __tmp244932
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args243656%_
        (apply make-instance gxc#::subst-object-refs::t _%$args243656%_)))
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
      (let ((__tmp244934
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
        (__make-atomic-promise __tmp244934)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords243622%_
               _%$%receiver243616243623%_
               _%$%klass243617243624%_
               _%$%methods243618243625%_
               _%$%slots243619243626%_
               _%stx243627%_)
        (let* ((_%receiver243630%_
                (if (eq? _%$%receiver243616243623%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver243616243623%_))
               (_%klass243632%_
                (if (eq? _%$%klass243617243624%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass243617243624%_))
               (_%methods243634%_
                (if (eq? _%$%methods243618243625%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods243618243625%_))
               (_%slots243636%_
                (if (eq? _%$%slots243619243626%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots243619243626%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self243638%_
                  (let ((__obj244919
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
                       __obj244919
                       _%receiver243630%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244919
                       _%klass243632%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244919
                       _%methods243634%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj244919
                       _%slots243636%_
                       '4
                       '#f
                       '#f))
                    __obj244919))
                 (__tmp244935
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self243638%_ _%stx243627%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp244935
             gxc#current-compile-method
             _%self243638%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords243645%_ . _%args243646%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords243645%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243645%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243645%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243645%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords243645%_
                  'slots:
                  absent-value))
               _%args243646%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args243620243652%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args243620243652%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self240747%_ _%stx240748%_)
        (letrec ((_%generate-method-bind240750%_
                  (lambda (_%$klass243608%_
                           _%$method-table243609%_
                           _%id243610%_
                           _%$id243611%_)
                    (let ((_%$tmp243613%_
                           (let ((__tmp244936
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp244936))))
                      (cons (cons _%$id243611%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp243613%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table243609%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id243610%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp243613%_ '()))
                    (cons (cons '%#ref (cons _%$tmp243613%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id243610%_
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
                 (_%generate-slot-bind240751%_
                  (lambda (_%$klass243602%_ _%id243603%_ _%$id243604%_)
                    (let ((_%$tmp243606%_
                           (let ((__tmp244937
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp244937))))
                      (cons (cons _%$id243604%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp243606%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass243602%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id243603%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp243606%_ '()))
                        (cons (cons '%#ref (cons _%$tmp243606%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id243603%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl240752%_
                  (lambda (_%$klass243596%_
                           _%$method-table243597%_
                           _%methods-bind243598%_
                           _%slots-bind243599%_
                           _%specializer-impl243600%_)
                    (let ((__tmp244938
                           (cons '%#lambda
                                 (cons (cons _%$klass243596%_
                                             (cons _%$method-table243597%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (append _%methods-bind243598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%slots-bind243599%_)
                 (cons _%specializer-impl243600%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244938 _%stx240748%_))))
                 (_%generate-specializer-def240753%_
                  (lambda (_%id243592%_
                           _%specializer-id243593%_
                           _%specializer-impl243594%_)
                    (let ((__tmp244939
                           (cons '%#begin
                                 (cons _%stx240748%_
                                       (cons (let ((__tmp244940
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id243593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl243594%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp244940
                                                _%stx240748%_))
                                             (cons (let ((__tmp244941
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id243592%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id243593%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp244941
                                                      _%stx240748%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp244939 _%stx240748%_)))))
          (let* ((_%__stx243807243808%_ _%stx240748%_)
                 (_%$%g240756240776%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx243807243808%_)))))
            (let ((_%__kont243809243810%_
                   (lambda (_%$%g240758240820%_ _%$%g240759240821%_)
                     (let ((_%method-calls240840%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs240841%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty240842%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?240844%_
                                 (lambda ()
                                   (if (let ((__tmp244942
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls240840%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp244942))
                                       (let ((__tmp244943
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs240841%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp244943))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g240758240820%_))
                             (let* ((_%__stx243721243722%_ _%$%g240758240820%_)
                                    (_%$%g241228241246%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx243721243722%_)))))
                               (let ((_%__kont243723243724%_
                                      (lambda (_%$%g241230241282%_
                                               _%$%g241231241283%_
                                               _%$%g241232241284%_)
                                        (let ((_%receiver241304%_
                                               (let ((_%$e241301%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g241230241282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e241301%_
                                                     _%$e241301%_
                                                     _%$%g241232241284%_))))
                                          (for-each
                                           (lambda (_%$%g241305241307%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver241304%_
                                              _%method-calls240840%_
                                              _%slot-refs240841%_
                                              _%$%g241305241307%_))
                                           _%$%g241230241282%_)
                                          (if (_%no-specializer?240844%_)
                                              _%stx240748%_
                                              (let* ((_%specializer-id241316%_
                                                      (let* ((_%id241310%_
                                                              (let ((__tmp244944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g240759240821%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp244944 '"::specialize")))
                     (_%specializer-id241313%_
                      (let ((__tmp244945
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx240748%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id241310%_ __tmp244945))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id241313%_))
                _%specializer-id241313%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass241318%_
                                                      (let ((__tmp244946
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp244946)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table241320%_
                                                      (let ((__tmp244947
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp244947)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods241322%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls240840%_)))
                                                     (_%$methods241326%_
                                                      (let ((__tmp244948
                                                             (lambda (_%id241324%_)
                                                               (let ((__tmp244949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id241324%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp244949)))))
                (declare (not safe))
                (##map __tmp244948 _%methods241322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_241335%_
                                                      (let ((__tmp244950
                                                             (lambda (_%$%g241327241330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g241328241332%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls240840%_
                          _%$%g241327241330%_
                          _%$%g241328241332%_)))))
                (declare (not safe))
                (##for-each __tmp244950 _%methods241322%_ _%$methods241326%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind241345%_
                                                      (let ((__tmp244951
                                                             (lambda (_%$%g241337241340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g241338241342%_)
                       (_%generate-method-bind240750%_
                        _%$klass241318%_
                        _%$method-table241320%_
                        _%$%g241337241340%_
                        _%$%g241338241342%_))))
                (declare (not safe))
                (##map __tmp244951 _%methods241322%_ _%$methods241326%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots241347%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs240841%_)))
                                                     (_%$slots241351%_
                                                      (let ((__tmp244952
                                                             (lambda (_%id241349%_)
                                                               (let ((__tmp244953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id241349%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp244953)))))
                (declare (not safe))
                (##map __tmp244952 _%slots241347%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_241360%_
                                                      (let ((__tmp244954
                                                             (lambda (_%$%g241352241355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g241353241357%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs240841%_
                          _%$%g241352241355%_
                          _%$%g241353241357%_)))))
                (declare (not safe))
                (##for-each __tmp244954 _%slots241347%_ _%$slots241351%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind241369%_
                                                      (let ((__tmp244955
                                                             (lambda (_%$%g241361241364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g241362241366%_)
                       (_%generate-slot-bind240751%_
                        _%$klass241318%_
                        _%$%g241361241364%_
                        _%$%g241362241366%_))))
                (declare (not safe))
                (##map __tmp244955 _%slots241347%_ _%$slots241351%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body241375%_
                                                      (map (lambda (_%$%g241370241372%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver241304%_
                                                              _%$klass241318%_
                                                              _%method-calls240840%_
                                                              _%slot-refs240841%_
                                                              _%$%g241370241372%_))
                                                           _%$%g241230241282%_))
                                                     (_%specializer-impl241377%_
                                                      (let ((__tmp244956
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g241232241284%_ _%$%g241231241283%_)
                                 _%specializer-body241375%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp244956 _%stx240748%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl241379%_
                                                      (_%generate-specializer-impl240752%_
                                                       _%$klass241318%_
                                                       _%$method-table241320%_
                                                       _%methods-bind241345%_
                                                       _%slots-bind241369%_
                                                       _%specializer-impl241377%_)))
                                                (let ((__tmp244958
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g240759240821%_)))
                                                      (__tmp244957
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id241316%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp244958
                                                   '" => "
                                                   __tmp244957))
                                                (_%generate-specializer-def240753%_
                                                 _%$%g240759240821%_
                                                 _%specializer-id241316%_
                                                 _%specializer-impl241379%_))))))
                                     (_%__kont243725243726%_
                                      (lambda () _%stx240748%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx243721243722%_))
                                     (let ((_%$%e241233241258%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx243721243722%_))))
                                       (let ((_%$%tl241235241263%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e241233241258%_)))
                                             (_%$%hd241234241261%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e241233241258%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl241235241263%_))
                                             (let ((_%$%e241236241266%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl241235241263%_))))
                                               (let ((_%$%tl241238241271%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e241236241266%_)))
                                                     (_%$%hd241237241269%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e241236241266%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd241237241269%_))
                                                     (let ((_%$%e241239241274%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd241237241269%_))))
                                                       (let ((_%$%tl241241241279%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e241239241274%_)))
                     (_%$%hd241240241277%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e241239241274%_))))
                 (_%__kont243723243724%_
                  _%$%tl241238241271%_
                  _%$%tl241241241279%_
                  _%$%hd241240241277%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont243725243726%_))))
                                             (_%__kont243725243726%_))))
                                     (_%__kont243725243726%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g240758240820%_))
                                 (let* ((_%$%g241386241405%_
                                         (lambda (_%$%g241387241402%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g241387241402%_))))
                                        (_%$%g241385241701%_
                                         (lambda (_%$%g241387241408%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g241387241408%_))
                                               (let ((_%$%e241389241410%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g241387241408%_))))
                                                 (let ((_%$%hd241390241413%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e241389241410%_)))
                                                       (_%$%tl241391241415%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e241389241410%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl241391241415%_))
                                                       (let ((_g244959_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl241391241415%_ '0))))
                 (begin
                   (let ((_g244960_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g244959_)
                                (##values-length _g244959_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g244960_ 2)))
                         (error "Context expects 2 values" _g244960_)))
                   (let ((_%$%target241392241418%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g244959_ 0)))
                         (_%$%tl241394241420%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g244959_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl241394241420%_))
                         (letrec ((_%$%loop241395241423%_
                                   (lambda (_%$%hd241393241426%_
                                            _%$%clause241399241428%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd241393241426%_))
                                         (let ((_%$%e241396241430%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd241393241426%_))))
                                           (let ((_%$%lp-hd241397241433%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e241396241430%_)))
                                                 (_%$%lp-tl241398241435%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e241396241430%_))))
                                             (_%$%loop241395241423%_
                                              _%$%lp-tl241398241435%_
                                              (cons _%$%lp-hd241397241433%_
                                                    _%$%clause241399241428%_))))
                                         (let ((_%$%clause241400241438%_
                                                (reverse _%$%clause241399241428%_)))
                                           (for-each
                                            (lambda (_%clause241454%_)
                                              (let* ((_%__stx243747243748%_
                                                      _%clause241454%_)
                                                     (_%$%g241457241472%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx243747243748%_)))))
                                                (let ((_%__kont243749243750%_
                                                       (lambda (_%$%g241459241500%_
                                                                _%$%g241460241501%_
                                                                _%$%g241461241502%_)
                                                         (let ((_%receiver241521%_
                                                                (let ((_%$e241518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g241459241500%_))))
                          (if _%$e241518%_ _%$e241518%_ _%$%g241461241502%_))))
                   (for-each
                    (lambda (_%$%g241522241524%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver241521%_
                       _%method-calls240840%_
                       _%slot-refs240841%_
                       _%$%g241522241524%_))
                    _%$%g241459241500%_))))
              (_%__kont243751243752%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx243747243748%_))
                                                      (let ((_%$%e241462241484%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx243747243748%_))))
                (let ((_%$%tl241464241489%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e241462241484%_)))
                      (_%$%hd241463241487%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e241462241484%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd241463241487%_))
                      (let ((_%$%e241465241492%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd241463241487%_))))
                        (let ((_%$%tl241467241497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e241465241492%_)))
                              (_%$%hd241466241495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e241465241492%_))))
                          (_%__kont243749243750%_
                           _%$%tl241464241489%_
                           _%$%tl241467241497%_
                           _%$%hd241466241495%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp244961
                                                   (lambda (_%$%g241529241532%_
                                                            _%$%g241530241534%_)
                                                     (cons _%$%g241529241532%_
                                                           _%$%g241530241534%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp244961
                                               '()
                                               _%$%clause241400241438%_)))
                                           (if (_%no-specializer?240844%_)
                                               _%stx240748%_
                                               (let* ((_%specializer-id241543%_
                                                       (let* ((_%id241537%_
                                                               (let ((__tmp244962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g240759240821%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp244962 '"::specialize")))
                      (_%specializer-id241540%_
                       (let ((__tmp244963
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx240748%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id241537%_ __tmp244963))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id241540%_))
                 _%specializer-id241540%_))
              (_%$klass241545%_
               (let ((__tmp244964
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp244964)))
              (_%$method-table241547%_
               (let ((__tmp244965
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp244965)))
              (_%methods241549%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls240840%_)))
              (_%$methods241553%_
               (let ((__tmp244966
                      (lambda (_%id241551%_)
                        (let ((__tmp244967 (gensym _%id241551%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp244967)))))
                 (declare (not safe))
                 (##map __tmp244966 _%methods241549%_)))
              (_%_241562%_
               (let ((__tmp244968
                      (lambda (_%$%g241554241557%_ _%$%g241555241559%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls240840%_
                           _%$%g241554241557%_
                           _%$%g241555241559%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp244968
                  _%methods241549%_
                  _%$methods241553%_)))
              (_%methods-bind241572%_
               (let ((__tmp244969
                      (lambda (_%$%g241564241567%_ _%$%g241565241569%_)
                        (_%generate-method-bind240750%_
                         _%$klass241545%_
                         _%$method-table241547%_
                         _%$%g241564241567%_
                         _%$%g241565241569%_))))
                 (declare (not safe))
                 (##map __tmp244969 _%methods241549%_ _%$methods241553%_)))
              (_%slots241574%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs240841%_)))
              (_%$slots241578%_
               (let ((__tmp244970
                      (lambda (_%id241576%_)
                        (let ((__tmp244971 (gensym _%id241576%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp244971)))))
                 (declare (not safe))
                 (##map __tmp244970 _%slots241574%_)))
              (_%_241587%_
               (let ((__tmp244972
                      (lambda (_%$%g241579241582%_ _%$%g241580241584%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs240841%_
                           _%$%g241579241582%_
                           _%$%g241580241584%_)))))
                 (declare (not safe))
                 (##for-each __tmp244972 _%slots241574%_ _%$slots241578%_)))
              (_%slots-bind241596%_
               (let ((__tmp244973
                      (lambda (_%$%g241588241591%_ _%$%g241589241593%_)
                        (_%generate-slot-bind240751%_
                         _%$klass241545%_
                         _%$%g241588241591%_
                         _%$%g241589241593%_))))
                 (declare (not safe))
                 (##map __tmp244973 _%slots241574%_ _%$slots241578%_)))
              (_%specializer-clauses241694%_
               (map (lambda (_%clause241598%_)
                      (let* ((_%__stx243767243768%_ _%clause241598%_)
                             (_%$%g241601241616%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx243767243768%_)))))
                        (let ((_%__kont243769243770%_
                               (lambda (_%$%g241603241644%_
                                        _%$%g241604241645%_
                                        _%$%g241605241646%_)
                                 (let* ((_%receiver241675%_
                                         (let ((_%$e241672%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g241603241644%_))))
                                           (if _%$e241672%_
                                               _%$e241672%_
                                               _%$%g241605241646%_)))
                                        (_%body241681%_
                                         (map (lambda (_%$%g241676241678%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver241675%_
                                                 _%$klass241545%_
                                                 _%method-calls240840%_
                                                 _%slot-refs240841%_
                                                 _%$%g241676241678%_))
                                              _%$%g241603241644%_)))
                                   (cons (cons _%$%g241605241646%_
                                               _%$%g241604241645%_)
                                         _%body241681%_))))
                              (_%__kont243771243772%_
                               (lambda () _%clause241598%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx243767243768%_))
                              (let ((_%$%e241606241628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx243767243768%_))))
                                (let ((_%$%tl241608241633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e241606241628%_)))
                                      (_%$%hd241607241631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e241606241628%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd241607241631%_))
                                      (let ((_%$%e241609241636%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd241607241631%_))))
                                        (let ((_%$%tl241611241641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e241609241636%_)))
                                              (_%$%hd241610241639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e241609241636%_))))
                                          (_%__kont243769243770%_
                                           _%$%tl241608241633%_
                                           _%$%tl241611241641%_
                                           _%$%hd241610241639%_)))
                                      (_%__kont243771243772%_))))
                              (_%__kont243771243772%_)))))
                    (let ((__tmp244974
                           (lambda (_%$%g241686241689%_ _%$%g241687241691%_)
                             (cons _%$%g241686241689%_ _%$%g241687241691%_))))
                      (declare (not safe))
                      (foldr__0 __tmp244974 '() _%$%clause241400241438%_))))
              (_%specializer-impl241696%_
               (let ((__tmp244975
                      (cons '%#case-lambda _%specializer-clauses241694%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp244975 _%stx240748%_)))
              (_%specializer-impl241698%_
               (_%generate-specializer-impl240752%_
                _%$klass241545%_
                _%$method-table241547%_
                _%methods-bind241572%_
                _%slots-bind241596%_
                _%specializer-impl241696%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp244977
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g240759240821%_)))
                                                       (__tmp244976
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id241543%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp244977
                                                    '" => "
                                                    __tmp244976))
                                                 (_%generate-specializer-def240753%_
                                                  _%$%g240759240821%_
                                                  _%specializer-id241543%_
                                                  _%specializer-impl241698%_))))))))
                           (_%$%loop241395241423%_
                            _%$%target241392241418%_
                            '()))
                         (_%$%g241386241405%_ _%$%g241387241408%_)))))
               (_%$%g241386241405%_ _%$%g241387241408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g241386241405%_
                                                _%$%g241387241408%_)))))
                                   (_%$%g241385241701%_ _%$%g240758240820%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g240758240820%_))
                                     (let* ((_%$%g241705241735%_
                                             (lambda (_%$%g241706241732%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g241706241732%_))))
                                            (_%$%g241704242362%_
                                             (lambda (_%$%g241706241738%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g241706241738%_))
                                                   (let ((_%$%e241710241740%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g241706241738%_))))
                                                     (let ((_%$%hd241711241743%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e241710241740%_)))
                                                           (_%$%tl241712241745%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e241710241740%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl241712241745%_))
                                                           (let ((_%$%e241713241748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl241712241745%_))))
                     (let ((_%$%hd241714241751%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e241713241748%_)))
                           (_%$%tl241715241753%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e241713241748%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd241714241751%_))
                           (let ((_%$%e241716241756%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd241714241751%_))))
                             (let ((_%$%hd241717241759%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e241716241756%_)))
                                   (_%$%tl241718241761%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e241716241756%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd241717241759%_))
                                   (let ((_%$%e241719241764%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd241717241759%_))))
                                     (let ((_%$%hd241720241767%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e241719241764%_)))
                                           (_%$%tl241721241769%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e241719241764%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd241720241767%_))
                                           (let ((_%$%e241722241772%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd241720241767%_))))
                                             (let ((_%$%hd241723241775%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e241722241772%_)))
                                                   (_%$%tl241724241777%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e241722241772%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl241724241777%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl241721241769%_))
                                                       (let ((_%$%e241725241780%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl241721241769%_))))
                 (let ((_%$%hd241726241783%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e241725241780%_)))
                       (_%$%tl241727241785%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e241725241780%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl241727241785%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl241718241761%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl241715241753%_))
                               (let ((_%$%e241728241788%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl241715241753%_))))
                                 (let ((_%$%hd241729241791%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e241728241788%_)))
                                       (_%$%tl241730241793%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e241728241788%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl241730241793%_))
                                       (let ()
                                         (let* ((_%$%g241822241840%_
                                                 (lambda (_%$%g241823241837%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g241823241837%_))))
                                                (_%$%g241821241896%_
                                                 (lambda (_%$%g241823241843%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g241823241843%_))
                                                       (let ((_%$%e241827241845%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g241823241843%_))))
                 (let ((_%$%hd241828241848%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e241827241845%_)))
                       (_%$%tl241829241850%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e241827241845%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl241829241850%_))
                       (let ((_%$%e241830241853%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl241829241850%_))))
                         (let ((_%$%hd241831241856%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e241830241853%_)))
                               (_%$%tl241832241858%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e241830241853%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd241831241856%_))
                               (let ((_%$%e241833241861%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd241831241856%_))))
                                 (let ((_%$%hd241834241864%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e241833241861%_)))
                                       (_%$%tl241835241866%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e241833241861%_))))
                                   (let ((_%receiver241890%_
                                          (let ((_%$e241887%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl241832241858%_))))
                                            (if _%$e241887%_
                                                _%$e241887%_
                                                _%$%hd241834241864%_))))
                                     (for-each
                                      (lambda (_%$%g241891241893%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver241890%_
                                         _%method-calls240840%_
                                         _%slot-refs240841%_
                                         _%$%g241891241893%_))
                                      _%$%tl241832241858%_))))
                               (_%$%g241822241840%_ _%$%g241823241843%_))))
                       (_%$%g241822241840%_ _%$%g241823241843%_))))
               (_%$%g241822241840%_ _%$%g241823241843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g241821241896%_
                                            _%$%hd241726241783%_))
                                         (let* ((_%$%g241899241918%_
                                                 (lambda (_%$%g241900241915%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g241900241915%_))))
                                                (_%$%g241898242040%_
                                                 (lambda (_%$%g241900241921%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g241900241921%_))
                                                       (let ((_%$%e241902241923%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g241900241921%_))))
                 (let ((_%$%hd241903241926%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e241902241923%_)))
                       (_%$%tl241904241928%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e241902241923%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl241904241928%_))
                       (let ((_g244978_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl241904241928%_
                                 '0))))
                         (begin
                           (let ((_g244979_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g244978_)
                                        (##values-length _g244978_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g244979_ 2)))
                                 (error "Context expects 2 values" _g244979_)))
                           (let ((_%$%target241905241931%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g244978_ 0)))
                                 (_%$%tl241907241933%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g244978_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl241907241933%_))
                                 (letrec ((_%$%loop241908241936%_
                                           (lambda (_%$%hd241906241939%_
                                                    _%$%clause241912241941%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd241906241939%_))
                                                 (let ((_%$%e241909241943%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd241906241939%_))))
                                                   (let ((_%$%lp-hd241910241946%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e241909241943%_)))
                                                         (_%$%lp-tl241911241948%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e241909241943%_))))
                                                     (_%$%loop241908241936%_
                                                      _%$%lp-tl241911241948%_
                                                      (cons _%$%lp-hd241910241946%_
                                                            _%$%clause241912241941%_))))
                                                 (let ((_%$%clause241913241951%_
                                                        (reverse _%$%clause241912241941%_)))
                                                   (for-each
                                                    (lambda (_%clause241966%_)
                                                      (let* ((_%$%g241968241983%_
                                                              (lambda (_%$%g241969241980%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g241969241980%_))))
                     (_%$%g241967242030%_
                      (lambda (_%$%g241969241986%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g241969241986%_))
                            (let ((_%$%e241973241988%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241969241986%_))))
                              (let ((_%$%hd241974241991%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241973241988%_)))
                                    (_%$%tl241975241993%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241973241988%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd241974241991%_))
                                    (let ((_%$%e241976241996%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd241974241991%_))))
                                      (let ((_%$%hd241977241999%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e241976241996%_)))
                                            (_%$%tl241978242001%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e241976241996%_))))
                                        (let ((_%receiver242024%_
                                               (let ((_%$e242021%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl241975241993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e242021%_
                                                     _%$e242021%_
                                                     _%$%hd241977241999%_))))
                                          (for-each
                                           (lambda (_%$%g242025242027%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver242024%_
                                              _%method-calls240840%_
                                              _%slot-refs240841%_
                                              _%$%g242025242027%_))
                                           _%$%tl241975241993%_))))
                                    (_%$%g241968241983%_
                                     _%$%g241969241986%_))))
                            (_%$%g241968241983%_ _%$%g241969241986%_)))))
                (_%$%g241967242030%_ _%clause241966%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp244980
                                                           (lambda (_%$%g242032242035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g242033242037%_)
                     (cons _%$%g242032242035%_ _%$%g242033242037%_))))
              (declare (not safe))
              (foldr__0 __tmp244980 '() _%$%clause241913241951%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop241908241936%_
                                    _%$%target241905241931%_
                                    '()))
                                 (_%$%g241899241918%_ _%$%g241900241921%_)))))
                       (_%$%g241899241918%_ _%$%g241900241921%_))))
               (_%$%g241899241918%_ _%$%g241900241921%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g241898242040%_
                                            _%$%hd241729241791%_))
                                         (if (_%no-specializer?240844%_)
                                             _%stx240748%_
                                             (let* ((_%specializer-id242049%_
                                                     (let* ((_%id242043%_
                                                             (let ((__tmp244981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g240759240821%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp244981 '"::specialize")))
                    (_%specializer-id242046%_
                     (let ((__tmp244982
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx240748%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id242043%_ __tmp244982))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id242046%_))
               _%specializer-id242046%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass242051%_
                                                     (let ((__tmp244983
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp244983)))
                                                    (_%$method-table242053%_
                                                     (let ((__tmp244984
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp244984)))
                                                    (_%methods242055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls240840%_)))
                                                    (_%$methods242059%_
                                                     (let ((__tmp244985
                                                            (lambda (_%id242057%_)
                                                              (let ((__tmp244986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id242057%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp244986)))))
               (declare (not safe))
               (##map __tmp244985 _%methods242055%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_242068%_
                                                     (let ((__tmp244987
                                                            (lambda (_%$%g242060242063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g242061242065%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls240840%_
                         _%$%g242060242063%_
                         _%$%g242061242065%_)))))
               (declare (not safe))
               (##for-each __tmp244987 _%methods242055%_ _%$methods242059%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind242078%_
                                                     (let ((__tmp244988
                                                            (lambda (_%$%g242070242073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g242071242075%_)
                      (_%generate-method-bind240750%_
                       _%$klass242051%_
                       _%$method-table242053%_
                       _%$%g242070242073%_
                       _%$%g242071242075%_))))
               (declare (not safe))
               (##map __tmp244988 _%methods242055%_ _%$methods242059%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots242080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs240841%_)))
                                                    (_%$slots242084%_
                                                     (let ((__tmp244989
                                                            (lambda (_%id242082%_)
                                                              (let ((__tmp244990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id242082%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp244990)))))
               (declare (not safe))
               (##map __tmp244989 _%slots242080%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_242093%_
                                                     (let ((__tmp244991
                                                            (lambda (_%$%g242085242088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g242086242090%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs240841%_
                         _%$%g242085242088%_
                         _%$%g242086242090%_)))))
               (declare (not safe))
               (##for-each __tmp244991 _%slots242080%_ _%$slots242084%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind242102%_
                                                     (let ((__tmp244992
                                                            (lambda (_%$%g242094242097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g242095242099%_)
                      (_%generate-slot-bind240751%_
                       _%$klass242051%_
                       _%$%g242094242097%_
                       _%$%g242095242099%_))))
               (declare (not safe))
               (##map __tmp244992 _%slots242080%_ _%$slots242084%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr242194%_
                                                     (let* ((_%$%g242104242122%_
                                                             (lambda (_%$%g242105242119%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g242105242119%_))))
                    (_%$%g242103242191%_
                     (lambda (_%$%g242105242125%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g242105242125%_))
                           (let ((_%$%e242109242127%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g242105242125%_))))
                             (let ((_%$%hd242110242130%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e242109242127%_)))
                                   (_%$%tl242111242132%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e242109242127%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl242111242132%_))
                                   (let ((_%$%e242112242135%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl242111242132%_))))
                                     (let ((_%$%hd242113242138%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e242112242135%_)))
                                           (_%$%tl242114242140%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e242112242135%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd242113242138%_))
                                           (let ((_%$%e242115242143%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd242113242138%_))))
                                             (let ((_%$%hd242116242146%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e242115242143%_)))
                                                   (_%$%tl242117242148%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e242115242143%_))))
                                               (let* ((_%receiver242182%_
                                                       (let ((_%$e242179%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl242114242140%_))))
                 (if _%$e242179%_ _%$e242179%_ _%$%hd242116242146%_)))
              (_%body242188%_
               (map (lambda (_%$%g242183242185%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver242182%_
                       _%$klass242051%_
                       _%method-calls240840%_
                       _%slot-refs240841%_
                       _%$%g242183242185%_))
                    _%$%tl242114242140%_))
              (__tmp244993
               (cons '%#lambda
                     (cons (cons _%$%hd242116242146%_ _%$%tl242117242148%_)
                           _%body242188%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp244993
                                                  _%$%hd241726241783%_))))
                                           (_%$%g242104242122%_
                                            _%$%g242105242125%_))))
                                   (_%$%g242104242122%_ _%$%g242105242125%_))))
                           (_%$%g242104242122%_ _%$%g242105242125%_)))))
               (_%$%g242103242191%_ _%$%hd241726241783%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr242355%_
                                                     (let* ((_%$%g242196242215%_
                                                             (lambda (_%$%g242197242212%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g242197242212%_))))
                    (_%$%g242195242352%_
                     (lambda (_%$%g242197242218%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g242197242218%_))
                           (let ((_%$%e242199242220%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g242197242218%_))))
                             (let ((_%$%hd242200242223%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e242199242220%_)))
                                   (_%$%tl242201242225%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e242199242220%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl242201242225%_))
                                   (let ((_g244994_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl242201242225%_
                                             '0))))
                                     (begin
                                       (let ((_g244995_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g244994_)
                                                    (##values-length _g244994_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g244995_ 2)))
                                             (error "Context expects 2 values"
                                                    _g244995_)))
                                       (let ((_%$%target242202242228%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g244994_ 0)))
                                             (_%$%tl242204242230%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g244994_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl242204242230%_))
                                             (letrec ((_%$%loop242205242233%_
                                                       (lambda (_%$%hd242203242236%_
                                                                _%$%clause242209242238%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd242203242236%_))
                     (let ((_%$%e242206242240%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd242203242236%_))))
                       (let ((_%$%lp-hd242207242243%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e242206242240%_)))
                             (_%$%lp-tl242208242245%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e242206242240%_))))
                         (_%$%loop242205242233%_
                          _%$%lp-tl242208242245%_
                          (cons _%$%lp-hd242207242243%_
                                _%$%clause242209242238%_))))
                     (let* ((_%$%clause242210242248%_
                             (reverse _%$%clause242209242238%_))
                            (_%clauses242350%_
                             (map (lambda (_%clause242264%_)
                                    (let* ((_%__stx243787243788%_
                                            _%clause242264%_)
                                           (_%$%g242267242282%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx243787243788%_)))))
                                      (let ((_%__kont243789243790%_
                                             (lambda (_%$%g242269242310%_
                                                      _%$%g242270242311%_
                                                      _%$%g242271242312%_)
                                               (let* ((_%receiver242331%_
                                                       (let ((_%$e242328%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g242269242310%_))))
                 (if _%$e242328%_ _%$e242328%_ _%$%g242271242312%_)))
              (_%body242337%_
               (map (lambda (_%$%g242332242334%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver242331%_
                       _%$klass242051%_
                       _%method-calls240840%_
                       _%slot-refs240841%_
                       _%$%g242332242334%_))
                    _%$%g242269242310%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g242271242312%_
                                                             _%$%g242270242311%_)
                                                       _%body242337%_))))
                                            (_%__kont243791243792%_
                                             (lambda () _%clause242264%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx243787243788%_))
                                            (let ((_%$%e242272242294%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx243787243788%_))))
                                              (let ((_%$%tl242274242299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e242272242294%_)))
                                                    (_%$%hd242273242297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e242272242294%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd242273242297%_))
                                                    (let ((_%$%e242275242302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd242273242297%_))))
                                                      (let ((_%$%tl242277242307%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e242275242302%_)))
                    (_%$%hd242276242305%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e242275242302%_))))
                (_%__kont243789243790%_
                 _%$%tl242274242299%_
                 _%$%tl242277242307%_
                 _%$%hd242276242305%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont243791243792%_))))
                                            (_%__kont243791243792%_)))))
                                  (let ((__tmp244996
                                         (lambda (_%$%g242342242345%_
                                                  _%$%g242343242347%_)
                                           (cons _%$%g242342242345%_
                                                 _%$%g242343242347%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp244996
                                     '()
                                     _%$%clause242210242248%_))))
                            (__tmp244997
                             (cons '%#case-lambda _%clauses242350%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp244997
                        _%$%hd241729241791%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop242205242233%_
                                                _%$%target242202242228%_
                                                '()))
                                             (_%$%g242196242215%_
                                              _%$%g242197242218%_)))))
                                   (_%$%g242196242215%_ _%$%g242197242218%_))))
                           (_%$%g242196242215%_ _%$%g242197242218%_)))))
               (_%$%g242195242352%_ _%$%hd241729241791%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl242357%_
                                                     (let ((__tmp244998
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd241723241775%_ '())
                                            (cons _%specializer-lambda-expr242194%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr242355%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp244998 _%stx240748%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl242359%_
                                                     (_%generate-specializer-impl240752%_
                                                      _%$klass242051%_
                                                      _%$method-table242053%_
                                                      _%methods-bind242078%_
                                                      _%slots-bind242102%_
                                                      _%specializer-impl242357%_)))
                                               (let ((__tmp245000
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g240759240821%_)))
                                                     (__tmp244999
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id242049%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp245000
                                                  '" => "
                                                  __tmp244999))
                                               (_%generate-specializer-def240753%_
                                                _%$%g240759240821%_
                                                _%specializer-id242049%_
                                                _%specializer-impl242359%_))))
                                       (_%$%g241705241735%_
                                        _%$%g241706241738%_))))
                               (_%$%g241705241735%_ _%$%g241706241738%_))
                           (_%$%g241705241735%_ _%$%g241706241738%_))
                       (_%$%g241705241735%_ _%$%g241706241738%_))))
               (_%$%g241705241735%_ _%$%g241706241738%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g241705241735%_
                                                    _%$%g241706241738%_))))
                                           (_%$%g241705241735%_
                                            _%$%g241706241738%_))))
                                   (_%$%g241705241735%_ _%$%g241706241738%_))))
                           (_%$%g241705241735%_ _%$%g241706241738%_))))
                   (_%$%g241705241735%_ _%$%g241706241738%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g241705241735%_
                                                    _%$%g241706241738%_)))))
                                       (_%$%g241704242362%_
                                        _%$%g240758240820%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g240758240820%_))
                                         (let* ((_%$%g242366242419%_
                                                 (lambda (_%$%g242367242416%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g242367242416%_))))
                                                (_%$%g242365243584%_
                                                 (lambda (_%$%g242367242422%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g242367242422%_))
                                                       (let ((_%$%e242373242424%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g242367242422%_))))
                 (let ((_%$%hd242374242427%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e242373242424%_)))
                       (_%$%tl242375242429%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e242373242424%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd242374242427%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd242374242427%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl242375242429%_))
                               (let ((_%$%e242376242432%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl242375242429%_))))
                                 (let ((_%$%hd242377242435%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e242376242432%_)))
                                       (_%$%tl242378242437%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e242376242432%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd242377242435%_))
                                       (let ((_%$%e242379242440%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd242377242435%_))))
                                         (let ((_%$%hd242380242443%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e242379242440%_)))
                                               (_%$%tl242381242445%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e242379242440%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd242380242443%_))
                                               (let ((_%$%e242382242448%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd242380242443%_))))
                                                 (let ((_%$%hd242383242451%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e242382242448%_)))
                                                       (_%$%tl242384242453%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e242382242448%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd242383242451%_))
                                                       (let ((_%$%e242385242456%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd242383242451%_))))
                 (let ((_%$%hd242386242459%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e242385242456%_)))
                       (_%$%tl242387242461%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e242385242456%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl242387242461%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl242384242453%_))
                           (let ((_%$%e242388242464%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl242384242453%_))))
                             (let ((_%$%hd242389242467%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e242388242464%_)))
                                   (_%$%tl242390242469%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e242388242464%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd242389242467%_))
                                   (let ((_%$%e242391242472%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd242389242467%_))))
                                     (let ((_%$%hd242392242475%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e242391242472%_)))
                                           (_%$%tl242393242477%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e242391242472%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd242392242475%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd242392242475%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl242393242477%_))
                                                   (let ((_%$%e242394242480%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl242393242477%_))))
                                                     (let ((_%$%hd242395242483%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e242394242480%_)))
                                                           (_%$%tl242396242485%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e242394242480%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd242395242483%_))
                                                           (let ((_%$%e242397242488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd242395242483%_))))
                     (let ((_%$%hd242398242491%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e242397242488%_)))
                           (_%$%tl242399242493%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e242397242488%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd242398242491%_))
                           (let ((_%$%e242400242496%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd242398242491%_))))
                             (let ((_%$%hd242401242499%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e242400242496%_)))
                                   (_%$%tl242402242501%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e242400242496%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd242401242499%_))
                                   (let ((_%$%e242403242504%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd242401242499%_))))
                                     (let ((_%$%hd242404242507%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e242403242504%_)))
                                           (_%$%tl242405242509%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e242403242504%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl242405242509%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl242402242501%_))
                                               (let ((_%$%e242406242512%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl242402242501%_))))
                                                 (let ((_%$%hd242407242515%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e242406242512%_)))
                                                       (_%$%tl242408242517%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e242406242512%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl242408242517%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl242399242493%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl242396242485%_))
                       (let ((_%$%e242409242520%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl242396242485%_))))
                         (let ((_%$%hd242410242523%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e242409242520%_)))
                               (_%$%tl242411242525%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e242409242520%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl242411242525%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl242390242469%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl242381242445%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl242378242437%_))
                                           (let ((_%$%e242412242528%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl242378242437%_))))
                                             (let ((_%$%hd242413242531%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e242412242528%_)))
                                                   (_%$%tl242414242533%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e242412242528%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl242414242533%_))
                                                   (let* ((_%$%g242580242642%_
                                                           (lambda (_%$%g242581242639%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g242581242639%_))))
                  (_%$%g242579243581%_
                   (lambda (_%$%g242581242645%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g242581242645%_))
                         (let ((_%$%e242587242647%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g242581242645%_))))
                           (let ((_%$%hd242588242650%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e242587242647%_)))
                                 (_%$%tl242589242652%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e242587242647%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd242588242650%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd242588242650%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl242589242652%_))
                                         (let ((_%$%e242590242655%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl242589242652%_))))
                                           (let ((_%$%hd242591242658%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e242590242655%_)))
                                                 (_%$%tl242592242660%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e242590242655%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl242592242660%_))
                                                 (let ((_%$%e242593242663%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl242592242660%_))))
                                                   (let ((_%$%hd242594242666%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e242593242663%_)))
                                                         (_%$%tl242595242668%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e242593242663%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd242594242666%_))
                                                         (let ((_%$%e242596242671%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd242594242666%_))))
                   (let ((_%$%hd242597242674%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e242596242671%_)))
                         (_%$%tl242598242676%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e242596242671%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd242597242674%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd242597242674%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl242598242676%_))
                                 (let ((_%$%e242599242679%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl242598242676%_))))
                                   (let ((_%$%hd242600242682%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e242599242679%_)))
                                         (_%$%tl242601242684%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e242599242679%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd242600242682%_))
                                         (let ((_%$%e242602242687%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd242600242682%_))))
                                           (let ((_%$%hd242603242690%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e242602242687%_)))
                                                 (_%$%tl242604242692%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e242602242687%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd242603242690%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd242603242690%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl242604242692%_))
                                                         (let ((_%$%e242605242695%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl242604242692%_))))
                   (let ((_%$%hd242606242698%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e242605242695%_)))
                         (_%$%tl242607242700%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e242605242695%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl242607242700%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl242601242684%_))
                             (let ((_%$%e242608242703%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl242601242684%_))))
                               (let ((_%$%hd242609242706%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e242608242703%_)))
                                     (_%$%tl242610242708%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e242608242703%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd242609242706%_))
                                     (let ((_%$%e242611242711%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd242609242706%_))))
                                       (let ((_%$%hd242612242714%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e242611242711%_)))
                                             (_%$%tl242613242716%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e242611242711%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd242612242714%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd242612242714%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl242613242716%_))
                                                     (let ((_%$%e242614242719%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl242613242716%_))))
                                                       (let ((_%$%hd242615242722%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e242614242719%_)))
                     (_%$%tl242616242724%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e242614242719%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl242616242724%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl242610242708%_))
                         (let ((_%$%e242617242727%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl242610242708%_))))
                           (let ((_%$%hd242618242730%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e242617242727%_)))
                                 (_%$%tl242619242732%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e242617242727%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd242618242730%_))
                                 (let ((_%$%e242620242735%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd242618242730%_))))
                                   (let ((_%$%hd242621242738%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e242620242735%_)))
                                         (_%$%tl242622242740%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e242620242735%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd242621242738%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd242621242738%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl242622242740%_))
                                                 (let ((_%$%e242623242743%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl242622242740%_))))
                                                   (let ((_%$%hd242624242746%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e242623242743%_)))
                                                         (_%$%tl242625242748%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e242623242743%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl242625242748%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl242619242732%_))
                     (if (let ((__tmp245001
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl242619242732%_))))
                           (declare (not safe))
                           (##fx>= __tmp245001 '1))
                         (let ((_g245002_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl242619242732%_
                                   '1))))
                           (begin
                             (let ((_g245003_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g245002_)
                                          (##values-length _g245002_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g245003_ 2)))
                                   (error "Context expects 2 values"
                                          _g245003_)))
                             (let ((_%$%target242626242751%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g245002_ 0)))
                                   (_%$%tl242628242753%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g245002_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl242628242753%_))
                                   (let ((_%$%e242635242756%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl242628242753%_))))
                                     (let ((_%$%hd242636242759%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e242635242756%_)))
                                           (_%$%tl242637242761%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e242635242756%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl242637242761%_))
                                           (letrec ((_%$%loop242629242764%_
                                                     (lambda (_%$%hd242627242767%_
                                                              _%$%kw-ref242633242769%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd242627242767%_))
                                                           (let ((_%$%e242630242771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd242627242767%_))))
                     (let ((_%$%lp-hd242631242774%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e242630242771%_)))
                           (_%$%lp-tl242632242776%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e242630242771%_))))
                       (_%$%loop242629242764%_
                        _%$%lp-tl242632242776%_
                        (cons _%$%lp-hd242631242774%_
                              _%$%kw-ref242633242769%_))))
                   (let ((_%$%kw-ref242634242779%_
                          (reverse _%$%kw-ref242633242769%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl242595242668%_))
                         (let* ((_%kw-count242836%_
                                 (length (let ((__tmp245004
                                                (lambda (_%$%g242828242831%_
                                                         _%$%g242829242833%_)
                                                  (cons _%$%g242828242831%_
                                                        _%$%g242829242833%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp245004
                                            '()
                                            _%$%kw-ref242634242779%_))))
                                (_%self-index242838%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count242836%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd242407242515%_))
                               (let* ((_%$%g242842242856%_
                                       (lambda (_%$%g242843242853%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g242843242853%_))))
                                      (_%$%g242841242979%_
                                       (lambda (_%$%g242843242859%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g242843242859%_))
                                             (let ((_%$%e242846242861%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g242843242859%_))))
                                               (let ((_%$%hd242847242864%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e242846242861%_)))
                                                     (_%$%tl242848242866%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e242846242861%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl242848242866%_))
                                                     (let ((_%$%e242849242869%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl242848242866%_))))
                                                       (let ((_%$%hd242850242872%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e242849242869%_)))
                     (_%$%tl242851242874%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e242849242869%_))))
                 (let* ((_%self242895%_
                         (list-ref _%$%hd242850242872%_ _%self-index242838%_))
                        (_%receiver242900%_
                         (let ((_%$e242897%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl242851242874%_))))
                           (if _%$e242897%_ _%$e242897%_ _%self242895%_))))
                   (for-each
                    (lambda (_%$%g242902242904%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver242900%_
                       _%method-calls240840%_
                       _%slot-refs240841%_
                       _%$%g242902242904%_))
                    _%$%tl242851242874%_)
                   (if (_%no-specializer?240844%_)
                       _%stx240748%_
                       (let* ((_%specializer-id242913%_
                               (let* ((_%id242907%_
                                       (let ((__tmp245005
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g240759240821%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp245005
                                          '"::specialize")))
                                      (_%specializer-id242910%_
                                       (let ((__tmp245006
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx240748%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id242907%_
                                          __tmp245006))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id242910%_))
                                 _%specializer-id242910%_))
                              (_%$klass242915%_
                               (let ((__tmp245007
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp245007)))
                              (_%$method-table242917%_
                               (let ((__tmp245008
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp245008)))
                              (_%methods242919%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls240840%_)))
                              (_%$methods242923%_
                               (let ((__tmp245009
                                      (lambda (_%id242921%_)
                                        (let ((__tmp245010
                                               (gensym _%id242921%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp245010)))))
                                 (declare (not safe))
                                 (##map __tmp245009 _%methods242919%_)))
                              (_%_242932%_
                               (let ((__tmp245011
                                      (lambda (_%$%g242924242927%_
                                               _%$%g242925242929%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls240840%_
                                           _%$%g242924242927%_
                                           _%$%g242925242929%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp245011
                                  _%methods242919%_
                                  _%$methods242923%_)))
                              (_%methods-bind242942%_
                               (let ((__tmp245012
                                      (lambda (_%$%g242934242937%_
                                               _%$%g242935242939%_)
                                        (_%generate-method-bind240750%_
                                         _%$klass242915%_
                                         _%$method-table242917%_
                                         _%$%g242934242937%_
                                         _%$%g242935242939%_))))
                                 (declare (not safe))
                                 (##map __tmp245012
                                        _%methods242919%_
                                        _%$methods242923%_)))
                              (_%slots242944%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs240841%_)))
                              (_%$slots242948%_
                               (let ((__tmp245013
                                      (lambda (_%id242946%_)
                                        (let ((__tmp245014
                                               (gensym _%id242946%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp245014)))))
                                 (declare (not safe))
                                 (##map __tmp245013 _%slots242944%_)))
                              (_%_242957%_
                               (let ((__tmp245015
                                      (lambda (_%$%g242949242952%_
                                               _%$%g242950242954%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs240841%_
                                           _%$%g242949242952%_
                                           _%$%g242950242954%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp245015
                                  _%slots242944%_
                                  _%$slots242948%_)))
                              (_%slots-bind242966%_
                               (let ((__tmp245016
                                      (lambda (_%$%g242958242961%_
                                               _%$%g242959242963%_)
                                        (_%generate-slot-bind240751%_
                                         _%$klass242915%_
                                         _%$%g242958242961%_
                                         _%$%g242959242963%_))))
                                 (declare (not safe))
                                 (##map __tmp245016
                                        _%slots242944%_
                                        _%$slots242948%_)))
                              (_%specializer-impl242974%_
                               (let* ((_%specializer-body242972%_
                                       (map (lambda (_%$%g242967242969%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver242900%_
                                               _%$klass242915%_
                                               _%method-calls240840%_
                                               _%slot-refs240841%_
                                               _%$%g242967242969%_))
                                            _%$%tl242851242874%_))
                                      (__tmp245017
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd242386242459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd242404242507%_
                                                           '())
                                                     (cons (let ((__tmp245018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd242850242872%_
                                      _%specializer-body242972%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp245018 _%$%hd242407242515%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd242410242523%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd242413242531%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp245017
                                  _%stx240748%_)))
                              (_%specializer-impl242976%_
                               (_%generate-specializer-impl240752%_
                                _%$klass242915%_
                                _%$method-table242917%_
                                _%methods-bind242942%_
                                _%slots-bind242966%_
                                _%specializer-impl242974%_)))
                         (let ((__tmp245020
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g240759240821%_)))
                               (__tmp245019
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id242913%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp245020
                            '" => "
                            __tmp245019))
                         (_%generate-specializer-def240753%_
                          _%$%g240759240821%_
                          _%specializer-id242913%_
                          _%specializer-impl242976%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242842242856%_
                                                      _%$%g242843242859%_))))
                                             (_%$%g242842242856%_
                                              _%$%g242843242859%_)))))
                                 (_%$%g242841242979%_ _%$%hd242407242515%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd242407242515%_))
                                   (let* ((_%$%g242983243013%_
                                           (lambda (_%$%g242984243010%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g242984243010%_))))
                                          (_%$%g242982243577%_
                                           (lambda (_%$%g242984243016%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g242984243016%_))
                                                 (let ((_%$%e242988243018%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g242984243016%_))))
                                                   (let ((_%$%hd242989243021%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e242988243018%_)))
                                                         (_%$%tl242990243023%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e242988243018%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl242990243023%_))
                                                         (let ((_%$%e242991243026%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl242990243023%_))))
                   (let ((_%$%hd242992243029%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e242991243026%_)))
                         (_%$%tl242993243031%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e242991243026%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd242992243029%_))
                         (let ((_%$%e242994243034%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd242992243029%_))))
                           (let ((_%$%hd242995243037%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e242994243034%_)))
                                 (_%$%tl242996243039%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e242994243034%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd242995243037%_))
                                 (let ((_%$%e242997243042%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd242995243037%_))))
                                   (let ((_%$%hd242998243045%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e242997243042%_)))
                                         (_%$%tl242999243047%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e242997243042%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd242998243045%_))
                                         (let ((_%$%e243000243050%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd242998243045%_))))
                                           (let ((_%$%hd243001243053%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e243000243050%_)))
                                                 (_%$%tl243002243055%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e243000243050%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl243002243055%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl242999243047%_))
                                                     (let ((_%$%e243003243058%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl242999243047%_))))
                                                       (let ((_%$%hd243004243061%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e243003243058%_)))
                     (_%$%tl243005243063%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e243003243058%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl243005243063%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl242996243039%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl242993243031%_))
                             (let ((_%$%e243006243066%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl242993243031%_))))
                               (let ((_%$%hd243007243069%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e243006243066%_)))
                                     (_%$%tl243008243071%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e243006243066%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl243008243071%_))
                                     (let ()
                                       (let* ((_%$%g243100243114%_
                                               (lambda (_%$%g243101243111%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g243101243111%_))))
                                              (_%$%g243099243161%_
                                               (lambda (_%$%g243101243117%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g243101243117%_))
                                                     (let ((_%$%e243104243119%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g243101243117%_))))
                                                       (let ((_%$%hd243105243122%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e243104243119%_)))
                     (_%$%tl243106243124%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e243104243119%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl243106243124%_))
                     (let ((_%$%e243107243127%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl243106243124%_))))
                       (let ((_%$%hd243108243130%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e243107243127%_)))
                             (_%$%tl243109243132%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e243107243127%_))))
                         (let* ((_%self243149%_
                                 (list-ref
                                  _%$%hd243108243130%_
                                  _%self-index242838%_))
                                (_%receiver243154%_
                                 (let ((_%$e243151%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl243109243132%_))))
                                   (if _%$e243151%_
                                       _%$e243151%_
                                       _%self243149%_))))
                           (for-each
                            (lambda (_%$%g243156243158%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver243154%_
                               _%method-calls240840%_
                               _%slot-refs240841%_
                               _%$%g243156243158%_))
                            _%$%tl243109243132%_))))
                     (_%$%g243100243114%_ _%$%g243101243117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g243100243114%_
                                                      _%$%g243101243117%_)))))
                                         (_%$%g243099243161%_
                                          _%$%hd243004243061%_))
                                       (let* ((_%$%g243164243183%_
                                               (lambda (_%$%g243165243180%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g243165243180%_))))
                                              (_%$%g243163243292%_
                                               (lambda (_%$%g243165243186%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g243165243186%_))
                                                     (let ((_%$%e243167243188%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g243165243186%_))))
                                                       (let ((_%$%hd243168243191%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e243167243188%_)))
                     (_%$%tl243169243193%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e243167243188%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl243169243193%_))
                     (let ((_g245021_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl243169243193%_
                               '0))))
                       (begin
                         (let ((_g245022_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g245021_)
                                      (##values-length _g245021_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g245022_ 2)))
                               (error "Context expects 2 values" _g245022_)))
                         (let ((_%$%target243170243196%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g245021_ 0)))
                               (_%$%tl243172243198%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g245021_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl243172243198%_))
                               (letrec ((_%$%loop243173243201%_
                                         (lambda (_%$%hd243171243204%_
                                                  _%$%clause243177243206%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd243171243204%_))
                                               (let ((_%$%e243174243208%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd243171243204%_))))
                                                 (let ((_%$%lp-hd243175243211%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e243174243208%_)))
                                                       (_%$%lp-tl243176243213%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e243174243208%_))))
                                                   (_%$%loop243173243201%_
                                                    _%$%lp-tl243176243213%_
                                                    (cons _%$%lp-hd243175243211%_
                                                          _%$%clause243177243206%_))))
                                               (let ((_%$%clause243178243216%_
                                                      (reverse _%$%clause243177243206%_)))
                                                 (for-each
                                                  (lambda (_%clause243231%_)
                                                    (let* ((_%$%g243233243244%_
                                                            (lambda (_%$%g243234243241%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g243234243241%_))))
                   (_%$%g243232243282%_
                    (lambda (_%$%g243234243247%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g243234243247%_))
                          (let ((_%$%e243237243249%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g243234243247%_))))
                            (let ((_%$%hd243238243252%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e243237243249%_)))
                                  (_%$%tl243239243254%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e243237243249%_))))
                              (let* ((_%self243270%_
                                      (list-ref
                                       _%$%hd243238243252%_
                                       _%self-index242838%_))
                                     (_%receiver243275%_
                                      (let ((_%$e243272%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl243239243254%_))))
                                        (if _%$e243272%_
                                            _%$e243272%_
                                            _%self243270%_))))
                                (for-each
                                 (lambda (_%$%g243277243279%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver243275%_
                                    _%method-calls240840%_
                                    _%slot-refs240841%_
                                    _%$%g243277243279%_))
                                 _%$%tl243239243254%_))))
                          (_%$%g243233243244%_ _%$%g243234243247%_)))))
              (_%$%g243232243282%_ _%clause243231%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp245023
                                                         (lambda (_%$%g243284243287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g243285243289%_)
                   (cons _%$%g243284243287%_ _%$%g243285243289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp245023
                                                     '()
                                                     _%$%clause243178243216%_))))))))
                                 (_%$%loop243173243201%_
                                  _%$%target243170243196%_
                                  '()))
                               (_%$%g243164243183%_ _%$%g243165243186%_)))))
                     (_%$%g243164243183%_ _%$%g243165243186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g243164243183%_
                                                      _%$%g243165243186%_)))))
                                         (_%$%g243163243292%_
                                          _%$%hd243007243069%_))
                                       (if (_%no-specializer?240844%_)
                                           _%stx240748%_
                                           (let* ((_%specializer-id243301%_
                                                   (let* ((_%id243295%_
                                                           (let ((__tmp245024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g240759240821%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp245024 '"::specialize")))
                  (_%specializer-id243298%_
                   (let ((__tmp245025
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx240748%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id243295%_ __tmp245025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id243298%_))
                                                     _%specializer-id243298%_))
                                                  (_%$klass243303%_
                                                   (let ((__tmp245026
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp245026)))
                                                  (_%$method-table243305%_
                                                   (let ((__tmp245027
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp245027)))
                                                  (_%methods243307%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls240840%_)))
                                                  (_%$methods243311%_
                                                   (let ((__tmp245028
                                                          (lambda (_%id243309%_)
                                                            (let ((__tmp245029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id243309%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp245029)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp245028
                                                            _%methods243307%_)))
                                                  (_%_243320%_
                                                   (let ((__tmp245030
                                                          (lambda (_%$%g243312243315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g243313243317%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls240840%_
                       _%$%g243312243315%_
                       _%$%g243313243317%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp245030
                                                      _%methods243307%_
                                                      _%$methods243311%_)))
                                                  (_%methods-bind243330%_
                                                   (let ((__tmp245031
                                                          (lambda (_%$%g243322243325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g243323243327%_)
                    (_%generate-method-bind240750%_
                     _%$klass243303%_
                     _%$method-table243305%_
                     _%$%g243322243325%_
                     _%$%g243323243327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp245031
                                                            _%methods243307%_
                                                            _%$methods243311%_)))
                                                  (_%slots243332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs240841%_)))
                                                  (_%$slots243336%_
                                                   (let ((__tmp245032
                                                          (lambda (_%id243334%_)
                                                            (let ((__tmp245033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id243334%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp245033)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp245032
                                                            _%slots243332%_)))
                                                  (_%_243345%_
                                                   (let ((__tmp245034
                                                          (lambda (_%$%g243337243340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g243338243342%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs240841%_
                       _%$%g243337243340%_
                       _%$%g243338243342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp245034
                                                      _%slots243332%_
                                                      _%$slots243336%_)))
                                                  (_%slots-bind243354%_
                                                   (let ((__tmp245035
                                                          (lambda (_%$%g243346243349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g243347243351%_)
                    (_%generate-slot-bind240751%_
                     _%$klass243303%_
                     _%$%g243346243349%_
                     _%$%g243347243351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp245035
                                                            _%slots243332%_
                                                            _%$slots243336%_)))
                                                  (_%specializer-lambda-expr243432%_
                                                   (let* ((_%$%g243356243370%_
                                                           (lambda (_%$%g243357243367%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g243357243367%_))))
                  (_%$%g243355243429%_
                   (lambda (_%$%g243357243373%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g243357243373%_))
                         (let ((_%$%e243360243375%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g243357243373%_))))
                           (let ((_%$%hd243361243378%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e243360243375%_)))
                                 (_%$%tl243362243380%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e243360243375%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl243362243380%_))
                                 (let ((_%$%e243363243383%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl243362243380%_))))
                                   (let ((_%$%hd243364243386%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e243363243383%_)))
                                         (_%$%tl243365243388%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e243363243383%_))))
                                     (let* ((_%self243415%_
                                             (list-ref
                                              _%$%hd243364243386%_
                                              _%self-index242838%_))
                                            (_%receiver243420%_
                                             (let ((_%$e243417%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl243365243388%_))))
                                               (if _%$e243417%_
                                                   _%$e243417%_
                                                   _%self243415%_)))
                                            (_%body243426%_
                                             (map (lambda (_%$%g243421243423%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver243420%_
                                                     _%$klass243303%_
                                                     _%method-calls240840%_
                                                     _%slot-refs240841%_
                                                     _%$%g243421243423%_))
                                                  _%$%tl243365243388%_))
                                            (__tmp245036
                                             (cons '%#lambda
                                                   (cons _%$%hd243364243386%_
                                                         _%body243426%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp245036
                                        _%$%hd243004243061%_))))
                                 (_%$%g243356243370%_ _%$%g243357243373%_))))
                         (_%$%g243356243370%_ _%$%g243357243373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g243355243429%_
                                                      _%$%hd243004243061%_)))
                                                  (_%specializer-case-lambda-expr243570%_
                                                   (let* ((_%$%g243434243453%_
                                                           (lambda (_%$%g243435243450%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g243435243450%_))))
                  (_%$%g243433243567%_
                   (lambda (_%$%g243435243456%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g243435243456%_))
                         (let ((_%$%e243437243458%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g243435243456%_))))
                           (let ((_%$%hd243438243461%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e243437243458%_)))
                                 (_%$%tl243439243463%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e243437243458%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl243439243463%_))
                                 (let ((_g245037_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl243439243463%_
                                           '0))))
                                   (begin
                                     (let ((_g245038_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g245037_)
                                                  (##values-length _g245037_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g245038_ 2)))
                                           (error "Context expects 2 values"
                                                  _g245038_)))
                                     (let ((_%$%target243440243466%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g245037_ 0)))
                                           (_%$%tl243442243468%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g245037_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl243442243468%_))
                                           (letrec ((_%$%loop243443243471%_
                                                     (lambda (_%$%hd243441243474%_
                                                              _%$%clause243447243476%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd243441243474%_))
                                                           (let ((_%$%e243444243478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd243441243474%_))))
                     (let ((_%$%lp-hd243445243481%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e243444243478%_)))
                           (_%$%lp-tl243446243483%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e243444243478%_))))
                       (_%$%loop243443243471%_
                        _%$%lp-tl243446243483%_
                        (cons _%$%lp-hd243445243481%_
                              _%$%clause243447243476%_))))
                   (let* ((_%$%clause243448243486%_
                           (reverse _%$%clause243447243476%_))
                          (_%clauses243565%_
                           (map (lambda (_%clause243502%_)
                                  (let* ((_%$%g243504243515%_
                                          (lambda (_%$%g243505243512%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g243505243512%_))))
                                         (_%$%g243503243555%_
                                          (lambda (_%$%g243505243518%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g243505243518%_))
                                                (let ((_%$%e243508243520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g243505243518%_))))
                                                  (let ((_%$%hd243509243523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e243508243520%_)))
                                                        (_%$%tl243510243525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e243508243520%_))))
                                                    (let* ((_%self243541%_
                                                            (list-ref
                                                             _%$%hd243509243523%_
                                                             _%self-index242838%_))
                                                           (_%receiver243546%_
                                                            (let ((_%$e243543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl243510243525%_))))
                      (if _%$e243543%_ _%$e243543%_ _%self243541%_)))
                   (_%body243552%_
                    (map (lambda (_%$%g243547243549%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver243546%_
                            _%$klass243303%_
                            _%method-calls240840%_
                            _%slot-refs240841%_
                            _%$%g243547243549%_))
                         _%$%tl243510243525%_)))
              (cons _%$%hd243509243523%_ _%body243552%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g243504243515%_
                                                 _%$%g243505243518%_)))))
                                    (_%$%g243503243555%_ _%clause243502%_)))
                                (let ((__tmp245039
                                       (lambda (_%$%g243557243560%_
                                                _%$%g243558243562%_)
                                         (cons _%$%g243557243560%_
                                               _%$%g243558243562%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp245039
                                   '()
                                   _%$%clause243448243486%_))))
                          (__tmp245040
                           (cons '%#case-lambda _%clauses243565%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp245040
                      _%$%hd243007243069%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop243443243471%_
                                              _%$%target243440243466%_
                                              '()))
                                           (_%$%g243434243453%_
                                            _%$%g243435243456%_)))))
                                 (_%$%g243434243453%_ _%$%g243435243456%_))))
                         (_%$%g243434243453%_ _%$%g243435243456%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g243433243567%_
                                                      _%$%hd243007243069%_)))
                                                  (_%specializer-impl243572%_
                                                   (let ((__tmp245041
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd242386242459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd242404242507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp245042
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd243001243053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr243432%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr243570%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp245042
                                         _%stx240748%_))
                                      '()))
                          '())
                    (cons _%$%hd242410242523%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd242413242531%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp245041
                                                      _%stx240748%_)))
                                                  (_%specializer-impl243574%_
                                                   (_%generate-specializer-impl240752%_
                                                    _%$klass243303%_
                                                    _%$method-table243305%_
                                                    _%methods-bind243330%_
                                                    _%slots-bind243354%_
                                                    _%specializer-impl243572%_)))
                                             (let ((__tmp245044
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g240759240821%_)))
                                                   (__tmp245043
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id243301%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp245044
                                                '" => "
                                                __tmp245043))
                                             (_%generate-specializer-def240753%_
                                              _%$%g240759240821%_
                                              _%specializer-id243301%_
                                              _%specializer-impl243574%_))))
                                     (_%$%g242983243013%_
                                      _%$%g242984243016%_))))
                             (_%$%g242983243013%_ _%$%g242984243016%_))
                         (_%$%g242983243013%_ _%$%g242984243016%_))
                     (_%$%g242983243013%_ _%$%g242984243016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242983243013%_
                                                      _%$%g242984243016%_))
                                                 (_%$%g242983243013%_
                                                  _%$%g242984243016%_))))
                                         (_%$%g242983243013%_
                                          _%$%g242984243016%_))))
                                 (_%$%g242983243013%_ _%$%g242984243016%_))))
                         (_%$%g242983243013%_ _%$%g242984243016%_))))
                 (_%$%g242983243013%_ _%$%g242984243016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g242983243013%_
                                                  _%$%g242984243016%_)))))
                                     (_%$%g242982243577%_
                                      _%$%hd242407242515%_))
                                   _%stx240748%_)))
                         (_%$%g242580242642%_ _%$%g242581242645%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop242629242764%_
                                              _%$%target242626242751%_
                                              '()))
                                           (_%$%g242580242642%_
                                            _%$%g242581242645%_))))
                                   (_%$%g242580242642%_
                                    _%$%g242581242645%_)))))
                         (_%$%g242580242642%_ _%$%g242581242645%_))
                     (_%$%g242580242642%_ _%$%g242581242645%_))
                 (_%$%g242580242642%_ _%$%g242581242645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g242580242642%_
                                                  _%$%g242581242645%_))
                                             (_%$%g242580242642%_
                                              _%$%g242581242645%_))
                                         (_%$%g242580242642%_
                                          _%$%g242581242645%_))))
                                 (_%$%g242580242642%_ _%$%g242581242645%_))))
                         (_%$%g242580242642%_ _%$%g242581242645%_))
                     (_%$%g242580242642%_ _%$%g242581242645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242580242642%_
                                                      _%$%g242581242645%_))
                                                 (_%$%g242580242642%_
                                                  _%$%g242581242645%_))
                                             (_%$%g242580242642%_
                                              _%$%g242581242645%_))))
                                     (_%$%g242580242642%_
                                      _%$%g242581242645%_))))
                             (_%$%g242580242642%_ _%$%g242581242645%_))
                         (_%$%g242580242642%_ _%$%g242581242645%_))))
                 (_%$%g242580242642%_ _%$%g242581242645%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242580242642%_
                                                      _%$%g242581242645%_))
                                                 (_%$%g242580242642%_
                                                  _%$%g242581242645%_))))
                                         (_%$%g242580242642%_
                                          _%$%g242581242645%_))))
                                 (_%$%g242580242642%_ _%$%g242581242645%_))
                             (_%$%g242580242642%_ _%$%g242581242645%_))
                         (_%$%g242580242642%_ _%$%g242581242645%_))))
                 (_%$%g242580242642%_ _%$%g242581242645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g242580242642%_
                                                  _%$%g242581242645%_))))
                                         (_%$%g242580242642%_
                                          _%$%g242581242645%_))
                                     (_%$%g242580242642%_ _%$%g242581242645%_))
                                 (_%$%g242580242642%_ _%$%g242581242645%_))))
                         (_%$%g242580242642%_ _%$%g242581242645%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g242579243581%_
                                                      _%$%hd242410242523%_))
                                                   (_%$%g242366242419%_
                                                    _%$%g242367242422%_))))
                                           (_%$%g242366242419%_
                                            _%$%g242367242422%_))
                                       (_%$%g242366242419%_
                                        _%$%g242367242422%_))
                                   (_%$%g242366242419%_ _%$%g242367242422%_))
                               (_%$%g242366242419%_ _%$%g242367242422%_))))
                       (_%$%g242366242419%_ _%$%g242367242422%_))
                   (_%$%g242366242419%_ _%$%g242367242422%_))
               (_%$%g242366242419%_ _%$%g242367242422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g242366242419%_
                                                _%$%g242367242422%_))
                                           (_%$%g242366242419%_
                                            _%$%g242367242422%_))))
                                   (_%$%g242366242419%_ _%$%g242367242422%_))))
                           (_%$%g242366242419%_ _%$%g242367242422%_))))
                   (_%$%g242366242419%_ _%$%g242367242422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g242366242419%_
                                                    _%$%g242367242422%_))
                                               (_%$%g242366242419%_
                                                _%$%g242367242422%_))
                                           (_%$%g242366242419%_
                                            _%$%g242367242422%_))))
                                   (_%$%g242366242419%_ _%$%g242367242422%_))))
                           (_%$%g242366242419%_ _%$%g242367242422%_))
                       (_%$%g242366242419%_ _%$%g242367242422%_))))
               (_%$%g242366242419%_ _%$%g242367242422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g242366242419%_
                                                _%$%g242367242422%_))))
                                       (_%$%g242366242419%_
                                        _%$%g242367242422%_))))
                               (_%$%g242366242419%_ _%$%g242367242422%_))
                           (_%$%g242366242419%_ _%$%g242367242422%_))
                       (_%$%g242366242419%_ _%$%g242367242422%_))))
               (_%$%g242366242419%_ _%$%g242367242422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g242365243584%_
                                            _%$%g240758240820%_))
                                         _%stx240748%_))))))))
                  (_%__kont243811243812%_ (lambda () _%stx240748%_)))
              (let ((_%__match243840243841%_
                     (lambda (_%$%e240760240788%_
                              _%$%hd240761240791%_
                              _%$%tl240762240793%_
                              _%$%e240763240796%_
                              _%$%hd240764240799%_
                              _%$%tl240765240801%_
                              _%$%e240766240804%_
                              _%$%hd240767240807%_
                              _%$%tl240768240809%_
                              _%$%e240769240812%_
                              _%$%hd240770240815%_
                              _%$%tl240771240817%_)
                       (let ((_%$%g240758240820%_ _%$%hd240770240815%_)
                             (_%$%g240759240821%_ _%$%hd240767240807%_))
                         (if (let ((__tmp245045
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g240759240821%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp245045))
                             (_%__kont243809243810%_
                              _%$%g240758240820%_
                              _%$%g240759240821%_)
                             (_%__kont243811243812%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx243807243808%_))
                    (let ((_%$%e240760240788%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx243807243808%_))))
                      (let ((_%$%tl240762240793%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e240760240788%_)))
                            (_%$%hd240761240791%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e240760240788%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl240762240793%_))
                            (let ((_%$%e240763240796%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl240762240793%_))))
                              (let ((_%$%tl240765240801%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e240763240796%_)))
                                    (_%$%hd240764240799%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e240763240796%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd240764240799%_))
                                    (let ((_%$%e240766240804%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd240764240799%_))))
                                      (let ((_%$%tl240768240809%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e240766240804%_)))
                                            (_%$%hd240767240807%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e240766240804%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl240768240809%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl240765240801%_))
                                                (let ((_%$%e240769240812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl240765240801%_))))
                                                  (let ((_%$%tl240771240817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e240769240812%_)))
                                                        (_%$%hd240770240815%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e240769240812%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl240771240817%_))
                                                        (_%__match243840243841%_
                                                         _%$%e240760240788%_
                                                         _%$%hd240761240791%_
                                                         _%$%tl240762240793%_
                                                         _%$%e240763240796%_
                                                         _%$%hd240764240799%_
                                                         _%$%tl240765240801%_
                                                         _%$%e240766240804%_
                                                         _%$%hd240767240807%_
                                                         _%$%tl240768240809%_
                                                         _%$%e240769240812%_
                                                         _%$%hd240770240815%_
                                                         _%$%tl240771240817%_)
                                                        (_%__kont243811243812%_))))
                                                (_%__kont243811243812%_))
                                            (_%__kont243811243812%_))))
                                    (_%__kont243811243812%_))))
                            (_%__kont243811243812%_))))
                    (_%__kont243811243812%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self240600%_ _%stx240601%_)
        (let* ((_%__stx243843243844%_ _%stx240601%_)
               (_%$%g240604240637%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx243843243844%_)))))
          (let ((_%__kont243845243846%_
                 (lambda (_%$%g240606240727%_) _%$%g240606240727%_))
                (_%__kont243847243848%_
                 (lambda (_%$%g240622240666%_ _%$%g240623240667%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self240600%_ _%$%g240622240666%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx243843243844%_))
                (let ((_%$%e240607240687%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx243843243844%_))))
                  (let ((_%$%tl240609240692%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e240607240687%_)))
                        (_%$%hd240608240690%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e240607240687%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl240609240692%_))
                        (let ((_%$%e240610240695%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl240609240692%_))))
                          (let ((_%$%tl240612240700%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e240610240695%_)))
                                (_%$%hd240611240698%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e240610240695%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd240611240698%_))
                                (let ((_%$%e240613240703%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd240611240698%_))))
                                  (let ((_%$%tl240615240708%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e240613240703%_)))
                                        (_%$%hd240614240706%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e240613240703%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd240614240706%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd240614240706%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl240615240708%_))
                                                (let ((_%$%e240616240711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl240615240708%_))))
                                                  (let ((_%$%tl240618240716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e240616240711%_)))
                                                        (_%$%hd240617240714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e240616240711%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl240618240716%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl240612240700%_))
                                                            (let ((_%$%e240619240719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl240612240700%_))))
                      (let ((_%$%tl240621240724%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e240619240719%_)))
                            (_%$%hd240620240722%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e240619240719%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl240621240724%_))
                            (_%__kont243845243846%_ _%$%hd240617240714%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g240604240637%_)))))
                    (let () (declare (not safe)) (_%$%g240604240637%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl240612240700%_))
                    (let ((_%$%e240630240658%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl240612240700%_))))
                      (let ((_%$%tl240632240663%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e240630240658%_)))
                            (_%$%hd240631240661%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e240630240658%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl240632240663%_))
                            (_%__kont243847243848%_
                             _%$%hd240631240661%_
                             _%$%hd240611240698%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g240604240637%_)))))
                    (let () (declare (not safe)) (_%$%g240604240637%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl240612240700%_))
                                                    (let ((_%$%e240630240658%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl240612240700%_))))
                                                      (let ((_%$%tl240632240663%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e240630240658%_)))
                    (_%$%hd240631240661%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e240630240658%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl240632240663%_))
                    (_%__kont243847243848%_
                     _%$%hd240631240661%_
                     _%$%hd240611240698%_)
                    (let () (declare (not safe)) (_%$%g240604240637%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g240604240637%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl240612240700%_))
                                                (let ((_%$%e240630240658%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl240612240700%_))))
                                                  (let ((_%$%tl240632240663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e240630240658%_)))
                                                        (_%$%hd240631240661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e240630240658%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl240632240663%_))
                                                        (_%__kont243847243848%_
                                                         _%$%hd240631240661%_
                                                         _%$%hd240611240698%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g240604240637%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g240604240637%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl240612240700%_))
                                            (let ((_%$%e240630240658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl240612240700%_))))
                                              (let ((_%$%tl240632240663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e240630240658%_)))
                                                    (_%$%hd240631240661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e240630240658%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl240632240663%_))
                                                    (_%__kont243847243848%_
                                                     _%$%hd240631240661%_
                                                     _%$%hd240611240698%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g240604240637%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g240604240637%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl240612240700%_))
                                    (let ((_%$%e240630240658%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl240612240700%_))))
                                      (let ((_%$%tl240632240663%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e240630240658%_)))
                                            (_%$%hd240631240661%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e240630240658%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl240632240663%_))
                                            (_%__kont243847243848%_
                                             _%$%hd240631240661%_
                                             _%$%hd240611240698%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g240604240637%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g240604240637%_))))))
                        (let () (declare (not safe)) (_%$%g240604240637%_)))))
                (let () (declare (not safe)) (_%$%g240604240637%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self240516%_ _%stx240517%_)
        (let* ((_%$%g240519240540%_
                (lambda (_%$%g240520240537%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g240520240537%_))))
               (_%$%g240518240597%_
                (lambda (_%$%g240520240543%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g240520240543%_))
                      (let ((_%$%e240524240545%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g240520240543%_))))
                        (let ((_%$%hd240525240548%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e240524240545%_)))
                              (_%$%tl240526240550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e240524240545%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl240526240550%_))
                              (let ((_%$%e240527240553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl240526240550%_))))
                                (let ((_%$%hd240528240556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e240527240553%_)))
                                      (_%$%tl240529240558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e240527240553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl240529240558%_))
                                      (let ((_%$%e240530240561%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl240529240558%_))))
                                        (let ((_%$%hd240531240564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e240530240561%_)))
                                              (_%$%tl240532240566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e240530240561%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl240532240566%_))
                                              (let ((_%$%e240533240569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl240532240566%_))))
                                                (let ((_%$%hd240534240572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e240533240569%_)))
                                                      (_%$%tl240535240574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e240533240569%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl240535240574%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self240516%_
                                                         _%$%hd240531240564%_))
                                                      (_%$%g240519240540%_
                                                       _%$%g240520240543%_))))
                                              (_%$%g240519240540%_
                                               _%$%g240520240543%_))))
                                      (_%$%g240519240540%_
                                       _%$%g240520240543%_))))
                              (_%$%g240519240540%_ _%$%g240520240543%_))))
                      (_%$%g240519240540%_ _%$%g240520240543%_)))))
          (_%$%g240518240597%_ _%stx240517%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self239481%_ _%stx239482%_)
        (let* ((_%__stx243909243910%_ _%stx239482%_)
               (_%$%g239490239712%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx243909243910%_)))))
          (let ((_%__kont243911243912%_
                 (lambda (_%$%g239492240465%_
                          _%$%g239493240466%_
                          _%$%g239494240467%_
                          _%$%g239495240468%_)
                   (let ((__tmp245047
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self239481%_ 'methods)))
                         (__tmp245046
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g239493240466%_))))
                     (declare (not safe))
                     (hash-put! __tmp245047 __tmp245046 '#t))
                   (for-each
                    (lambda (_%$%g240501240503%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self239481%_ _%$%g240501240503%_)))
                    (let ((__tmp245048
                           (lambda (_%$%g240505240508%_ _%$%g240506240510%_)
                             (cons _%$%g240505240508%_ _%$%g240506240510%_))))
                      (declare (not safe))
                      (foldr__0 __tmp245048 '() _%$%g239492240465%_)))))
                (_%__kont243915243916%_
                 (lambda (_%$%g239535240302%_
                          _%$%g239536240303%_
                          _%$%g239537240304%_
                          _%$%g239538240305%_
                          _%$%g239539240306%_)
                   (let ((__tmp245050
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self239481%_ 'methods)))
                         (__tmp245049
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g239536240303%_))))
                     (declare (not safe))
                     (hash-put! __tmp245050 __tmp245049 '#t))
                   (for-each
                    (lambda (_%$%g240346240348%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self239481%_ _%$%g240346240348%_)))
                    (let ((__tmp245051
                           (lambda (_%$%g240350240353%_ _%$%g240351240355%_)
                             (cons _%$%g240350240353%_ _%$%g240351240355%_))))
                      (declare (not safe))
                      (foldr__0 __tmp245051 '() _%$%g239535240302%_)))))
                (_%__kont243919243920%_
                 (lambda (_%$%g239588240137%_
                          _%$%g239589240138%_
                          _%$%g239590240139%_)
                   (let ((__tmp245053
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self239481%_ 'slots)))
                         (__tmp245052
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g239588240137%_))))
                     (declare (not safe))
                     (hash-put! __tmp245053 __tmp245052 '#t))))
                (_%__kont243921243922%_
                 (lambda (_%$%g239621240014%_
                          _%$%g239622240015%_
                          _%$%g239623240016%_
                          _%$%g239624240017%_)
                   (let ((__tmp245055
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self239481%_ 'slots)))
                         (__tmp245054
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g239622240015%_))))
                     (declare (not safe))
                     (hash-put! __tmp245055 __tmp245054 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self239481%_ _%$%g239621240014%_))))
                (_%__kont243923243924%_
                 (lambda (_%$%g239658239888%_ _%$%g239659239889%_)
                   (let* ((_%accessor239911%_
                           (let ((__tmp245056
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g239659239889%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp245056)))
                          (_%klass239913%_
                           (let ((__tmp245057
                                  (##structure-ref
                                   _%accessor239911%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx239482%_
                              __tmp245057)))
                          (_%slot239915%_
                           (##structure-ref
                            _%accessor239911%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor239911%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass239913%_
                                    _%slot239915%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass239913%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp245059
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self239481%_ 'slots)))
                               (__tmp245058
                                (##structure-ref
                                 _%accessor239911%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp245059 __tmp245058 '#t))))))
                (_%__kont243925243926%_
                 (lambda (_%$%g239681239788%_
                          _%$%g239682239789%_
                          _%$%g239683239790%_)
                   (let* ((_%mutator239817%_
                           (let ((__tmp245060
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g239683239790%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp245060)))
                          (_%klass239819%_
                           (let ((__tmp245061
                                  (##structure-ref
                                   _%mutator239817%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx239482%_
                              __tmp245061)))
                          (_%slot239821%_
                           (##structure-ref
                            _%mutator239817%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator239817%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass239819%_
                                    _%slot239821%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass239819%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp245062
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self239481%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp245062 _%slot239821%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self239481%_
                        _%$%g239681239788%_)))))
                (_%__kont243927243928%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self239481%_ _%stx239482%_)))))
            (let* ((_%__match244408244409%_
                    (lambda (_%$%e239684239724%_
                             _%$%hd239685239727%_
                             _%$%tl239686239729%_
                             _%$%e239687239732%_
                             _%$%hd239688239735%_
                             _%$%tl239689239737%_
                             _%$%e239690239740%_
                             _%$%hd239691239743%_
                             _%$%tl239692239745%_
                             _%$%e239693239748%_
                             _%$%hd239694239751%_
                             _%$%tl239695239753%_
                             _%$%e239696239756%_
                             _%$%hd239697239759%_
                             _%$%tl239698239761%_
                             _%$%e239699239764%_
                             _%$%hd239700239767%_
                             _%$%tl239701239769%_
                             _%$%e239702239772%_
                             _%$%hd239703239775%_
                             _%$%tl239704239777%_
                             _%$%e239705239780%_
                             _%$%hd239706239783%_
                             _%$%tl239707239785%_)
                      (let ((_%$%g239681239788%_ _%$%hd239706239783%_)
                            (_%$%g239682239789%_ _%$%hd239703239775%_)
                            (_%$%g239683239790%_ _%$%hd239694239751%_))
                        (if (and (let ((__tmp245063
                                        (let ((__tmp245064
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g239683239790%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp245064))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp245063
                                    'gxc#!mutator::t))
                                 (let ((__tmp245065
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self239481%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g239682239789%_
                                    __tmp245065)))
                            (_%__kont243925243926%_
                             _%$%g239681239788%_
                             _%$%g239682239789%_
                             _%$%g239683239790%_)
                            (_%__kont243927243928%_)))))
                   (_%__match244406244407%_
                    (lambda (_%$%e239684239724%_
                             _%$%hd239685239727%_
                             _%$%tl239686239729%_
                             _%$%e239687239732%_
                             _%$%hd239688239735%_
                             _%$%tl239689239737%_
                             _%$%e239690239740%_
                             _%$%hd239691239743%_
                             _%$%tl239692239745%_
                             _%$%e239693239748%_
                             _%$%hd239694239751%_
                             _%$%tl239695239753%_
                             _%$%e239696239756%_
                             _%$%hd239697239759%_
                             _%$%tl239698239761%_
                             _%$%e239699239764%_
                             _%$%hd239700239767%_
                             _%$%tl239701239769%_
                             _%$%e239702239772%_
                             _%$%hd239703239775%_
                             _%$%tl239704239777%_
                             _%$%e239705239780%_
                             _%$%hd239706239783%_
                             _%$%tl239707239785%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl239707239785%_))
                          (_%__match244408244409%_
                           _%$%e239684239724%_
                           _%$%hd239685239727%_
                           _%$%tl239686239729%_
                           _%$%e239687239732%_
                           _%$%hd239688239735%_
                           _%$%tl239689239737%_
                           _%$%e239690239740%_
                           _%$%hd239691239743%_
                           _%$%tl239692239745%_
                           _%$%e239693239748%_
                           _%$%hd239694239751%_
                           _%$%tl239695239753%_
                           _%$%e239696239756%_
                           _%$%hd239697239759%_
                           _%$%tl239698239761%_
                           _%$%e239699239764%_
                           _%$%hd239700239767%_
                           _%$%tl239701239769%_
                           _%$%e239702239772%_
                           _%$%hd239703239775%_
                           _%$%tl239704239777%_
                           _%$%e239705239780%_
                           _%$%hd239706239783%_
                           _%$%tl239707239785%_)
                          (_%__kont243927243928%_))))
                   (_%__match244400244401%_
                    (lambda (_%$%e239684239724%_
                             _%$%hd239685239727%_
                             _%$%tl239686239729%_
                             _%$%e239687239732%_
                             _%$%hd239688239735%_
                             _%$%tl239689239737%_
                             _%$%e239690239740%_
                             _%$%hd239691239743%_
                             _%$%tl239692239745%_
                             _%$%e239693239748%_
                             _%$%hd239694239751%_
                             _%$%tl239695239753%_
                             _%$%e239696239756%_
                             _%$%hd239697239759%_
                             _%$%tl239698239761%_
                             _%$%e239699239764%_
                             _%$%hd239700239767%_
                             _%$%tl239701239769%_
                             _%$%e239702239772%_
                             _%$%hd239703239775%_
                             _%$%tl239704239777%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl239698239761%_))
                          (let ((_%$%e239705239780%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl239698239761%_))))
                            (let ((_%$%tl239707239785%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e239705239780%_)))
                                  (_%$%hd239706239783%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e239705239780%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl239707239785%_))
                                  (_%__match244408244409%_
                                   _%$%e239684239724%_
                                   _%$%hd239685239727%_
                                   _%$%tl239686239729%_
                                   _%$%e239687239732%_
                                   _%$%hd239688239735%_
                                   _%$%tl239689239737%_
                                   _%$%e239690239740%_
                                   _%$%hd239691239743%_
                                   _%$%tl239692239745%_
                                   _%$%e239693239748%_
                                   _%$%hd239694239751%_
                                   _%$%tl239695239753%_
                                   _%$%e239696239756%_
                                   _%$%hd239697239759%_
                                   _%$%tl239698239761%_
                                   _%$%e239699239764%_
                                   _%$%hd239700239767%_
                                   _%$%tl239701239769%_
                                   _%$%e239702239772%_
                                   _%$%hd239703239775%_
                                   _%$%tl239704239777%_
                                   _%$%e239705239780%_
                                   _%$%hd239706239783%_
                                   _%$%tl239707239785%_)
                                  (_%__kont243927243928%_))))
                          (_%__kont243927243928%_))))
                   (_%__match244346244347%_
                    (lambda (_%$%e239660239832%_
                             _%$%hd239661239835%_
                             _%$%tl239662239837%_
                             _%$%e239663239840%_
                             _%$%hd239664239843%_
                             _%$%tl239665239845%_
                             _%$%e239666239848%_
                             _%$%hd239667239851%_
                             _%$%tl239668239853%_
                             _%$%e239669239856%_
                             _%$%hd239670239859%_
                             _%$%tl239671239861%_
                             _%$%e239672239864%_
                             _%$%hd239673239867%_
                             _%$%tl239674239869%_
                             _%$%e239675239872%_
                             _%$%hd239676239875%_
                             _%$%tl239677239877%_
                             _%$%e239678239880%_
                             _%$%hd239679239883%_
                             _%$%tl239680239885%_)
                      (let ((_%$%g239658239888%_ _%$%hd239679239883%_)
                            (_%$%g239659239889%_ _%$%hd239670239859%_))
                        (if (and (let ((__tmp245066
                                        (let ((__tmp245067
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g239659239889%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp245067))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp245066
                                    'gxc#!accessor::t))
                                 (let ((__tmp245068
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self239481%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g239658239888%_
                                    __tmp245068)))
                            (_%__kont243923243924%_
                             _%$%g239658239888%_
                             _%$%g239659239889%_)
                            (_%__kont243927243928%_)))))
                   (_%__match244344244345%_
                    (lambda (_%$%e239660239832%_
                             _%$%hd239661239835%_
                             _%$%tl239662239837%_
                             _%$%e239663239840%_
                             _%$%hd239664239843%_
                             _%$%tl239665239845%_
                             _%$%e239666239848%_
                             _%$%hd239667239851%_
                             _%$%tl239668239853%_
                             _%$%e239669239856%_
                             _%$%hd239670239859%_
                             _%$%tl239671239861%_
                             _%$%e239672239864%_
                             _%$%hd239673239867%_
                             _%$%tl239674239869%_
                             _%$%e239675239872%_
                             _%$%hd239676239875%_
                             _%$%tl239677239877%_
                             _%$%e239678239880%_
                             _%$%hd239679239883%_
                             _%$%tl239680239885%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl239674239869%_))
                          (_%__match244346244347%_
                           _%$%e239660239832%_
                           _%$%hd239661239835%_
                           _%$%tl239662239837%_
                           _%$%e239663239840%_
                           _%$%hd239664239843%_
                           _%$%tl239665239845%_
                           _%$%e239666239848%_
                           _%$%hd239667239851%_
                           _%$%tl239668239853%_
                           _%$%e239669239856%_
                           _%$%hd239670239859%_
                           _%$%tl239671239861%_
                           _%$%e239672239864%_
                           _%$%hd239673239867%_
                           _%$%tl239674239869%_
                           _%$%e239675239872%_
                           _%$%hd239676239875%_
                           _%$%tl239677239877%_
                           _%$%e239678239880%_
                           _%$%hd239679239883%_
                           _%$%tl239680239885%_)
                          (_%__match244400244401%_
                           _%$%e239660239832%_
                           _%$%hd239661239835%_
                           _%$%tl239662239837%_
                           _%$%e239663239840%_
                           _%$%hd239664239843%_
                           _%$%tl239665239845%_
                           _%$%e239666239848%_
                           _%$%hd239667239851%_
                           _%$%tl239668239853%_
                           _%$%e239669239856%_
                           _%$%hd239670239859%_
                           _%$%tl239671239861%_
                           _%$%e239672239864%_
                           _%$%hd239673239867%_
                           _%$%tl239674239869%_
                           _%$%e239675239872%_
                           _%$%hd239676239875%_
                           _%$%tl239677239877%_
                           _%$%e239678239880%_
                           _%$%hd239679239883%_
                           _%$%tl239680239885%_))))
                   (_%__match244290244291%_
                    (lambda (_%$%e239625239926%_
                             _%$%hd239626239929%_
                             _%$%tl239627239931%_
                             _%$%e239628239934%_
                             _%$%hd239629239937%_
                             _%$%tl239630239939%_
                             _%$%e239631239942%_
                             _%$%hd239632239945%_
                             _%$%tl239633239947%_
                             _%$%e239634239950%_
                             _%$%hd239635239953%_
                             _%$%tl239636239955%_
                             _%$%e239637239958%_
                             _%$%hd239638239961%_
                             _%$%tl239639239963%_
                             _%$%e239640239966%_
                             _%$%hd239641239969%_
                             _%$%tl239642239971%_
                             _%$%e239643239974%_
                             _%$%hd239644239977%_
                             _%$%tl239645239979%_
                             _%$%e239646239982%_
                             _%$%hd239647239985%_
                             _%$%tl239648239987%_
                             _%$%e239649239990%_
                             _%$%hd239650239993%_
                             _%$%tl239651239995%_
                             _%$%e239652239998%_
                             _%$%hd239653240001%_
                             _%$%tl239654240003%_
                             _%$%e239655240006%_
                             _%$%hd239656240009%_
                             _%$%tl239657240011%_)
                      (let ((_%$%g239621240014%_ _%$%hd239656240009%_)
                            (_%$%g239622240015%_ _%$%hd239653240001%_)
                            (_%$%g239623240016%_ _%$%hd239644239977%_)
                            (_%$%g239624240017%_ _%$%hd239635239953%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g239624240017%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g239624240017%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp245069
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self239481%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g239623240016%_
                                    __tmp245069)))
                            (_%__kont243921243922%_
                             _%$%g239621240014%_
                             _%$%g239622240015%_
                             _%$%g239623240016%_
                             _%$%g239624240017%_)
                            (_%__kont243927243928%_)))))
                   (_%__match244282244283%_
                    (lambda (_%$%e239625239926%_
                             _%$%hd239626239929%_
                             _%$%tl239627239931%_
                             _%$%e239628239934%_
                             _%$%hd239629239937%_
                             _%$%tl239630239939%_
                             _%$%e239631239942%_
                             _%$%hd239632239945%_
                             _%$%tl239633239947%_
                             _%$%e239634239950%_
                             _%$%hd239635239953%_
                             _%$%tl239636239955%_
                             _%$%e239637239958%_
                             _%$%hd239638239961%_
                             _%$%tl239639239963%_
                             _%$%e239640239966%_
                             _%$%hd239641239969%_
                             _%$%tl239642239971%_
                             _%$%e239643239974%_
                             _%$%hd239644239977%_
                             _%$%tl239645239979%_
                             _%$%e239646239982%_
                             _%$%hd239647239985%_
                             _%$%tl239648239987%_
                             _%$%e239649239990%_
                             _%$%hd239650239993%_
                             _%$%tl239651239995%_
                             _%$%e239652239998%_
                             _%$%hd239653240001%_
                             _%$%tl239654240003%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl239648239987%_))
                          (let ((_%$%e239655240006%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl239648239987%_))))
                            (let ((_%$%tl239657240011%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e239655240006%_)))
                                  (_%$%hd239656240009%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e239655240006%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl239657240011%_))
                                  (_%__match244290244291%_
                                   _%$%e239625239926%_
                                   _%$%hd239626239929%_
                                   _%$%tl239627239931%_
                                   _%$%e239628239934%_
                                   _%$%hd239629239937%_
                                   _%$%tl239630239939%_
                                   _%$%e239631239942%_
                                   _%$%hd239632239945%_
                                   _%$%tl239633239947%_
                                   _%$%e239634239950%_
                                   _%$%hd239635239953%_
                                   _%$%tl239636239955%_
                                   _%$%e239637239958%_
                                   _%$%hd239638239961%_
                                   _%$%tl239639239963%_
                                   _%$%e239640239966%_
                                   _%$%hd239641239969%_
                                   _%$%tl239642239971%_
                                   _%$%e239643239974%_
                                   _%$%hd239644239977%_
                                   _%$%tl239645239979%_
                                   _%$%e239646239982%_
                                   _%$%hd239647239985%_
                                   _%$%tl239648239987%_
                                   _%$%e239649239990%_
                                   _%$%hd239650239993%_
                                   _%$%tl239651239995%_
                                   _%$%e239652239998%_
                                   _%$%hd239653240001%_
                                   _%$%tl239654240003%_
                                   _%$%e239655240006%_
                                   _%$%hd239656240009%_
                                   _%$%tl239657240011%_)
                                  (_%__kont243927243928%_))))
                          (_%__match244406244407%_
                           _%$%e239625239926%_
                           _%$%hd239626239929%_
                           _%$%tl239627239931%_
                           _%$%e239628239934%_
                           _%$%hd239629239937%_
                           _%$%tl239630239939%_
                           _%$%e239631239942%_
                           _%$%hd239632239945%_
                           _%$%tl239633239947%_
                           _%$%e239634239950%_
                           _%$%hd239635239953%_
                           _%$%tl239636239955%_
                           _%$%e239637239958%_
                           _%$%hd239638239961%_
                           _%$%tl239639239963%_
                           _%$%e239640239966%_
                           _%$%hd239641239969%_
                           _%$%tl239642239971%_
                           _%$%e239643239974%_
                           _%$%hd239644239977%_
                           _%$%tl239645239979%_
                           _%$%e239646239982%_
                           _%$%hd239647239985%_
                           _%$%tl239648239987%_))))
                   (_%__match244204244205%_
                    (lambda (_%$%e239591240057%_
                             _%$%hd239592240060%_
                             _%$%tl239593240062%_
                             _%$%e239594240065%_
                             _%$%hd239595240068%_
                             _%$%tl239596240070%_
                             _%$%e239597240073%_
                             _%$%hd239598240076%_
                             _%$%tl239599240078%_
                             _%$%e239600240081%_
                             _%$%hd239601240084%_
                             _%$%tl239602240086%_
                             _%$%e239603240089%_
                             _%$%hd239604240092%_
                             _%$%tl239605240094%_
                             _%$%e239606240097%_
                             _%$%hd239607240100%_
                             _%$%tl239608240102%_
                             _%$%e239609240105%_
                             _%$%hd239610240108%_
                             _%$%tl239611240110%_
                             _%$%e239612240113%_
                             _%$%hd239613240116%_
                             _%$%tl239614240118%_
                             _%$%e239615240121%_
                             _%$%hd239616240124%_
                             _%$%tl239617240126%_
                             _%$%e239618240129%_
                             _%$%hd239619240132%_
                             _%$%tl239620240134%_)
                      (let ((_%$%g239588240137%_ _%$%hd239619240132%_)
                            (_%$%g239589240138%_ _%$%hd239610240108%_)
                            (_%$%g239590240139%_ _%$%hd239601240084%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g239590240139%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g239590240139%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp245070
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self239481%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g239589240138%_
                                    __tmp245070)))
                            (_%__kont243919243920%_
                             _%$%g239588240137%_
                             _%$%g239589240138%_
                             _%$%g239590240139%_)
                            (_%__match244408244409%_
                             _%$%e239591240057%_
                             _%$%hd239592240060%_
                             _%$%tl239593240062%_
                             _%$%e239594240065%_
                             _%$%hd239595240068%_
                             _%$%tl239596240070%_
                             _%$%e239597240073%_
                             _%$%hd239598240076%_
                             _%$%tl239599240078%_
                             _%$%e239600240081%_
                             _%$%hd239601240084%_
                             _%$%tl239602240086%_
                             _%$%e239603240089%_
                             _%$%hd239604240092%_
                             _%$%tl239605240094%_
                             _%$%e239606240097%_
                             _%$%hd239607240100%_
                             _%$%tl239608240102%_
                             _%$%e239609240105%_
                             _%$%hd239610240108%_
                             _%$%tl239611240110%_
                             _%$%e239612240113%_
                             _%$%hd239613240116%_
                             _%$%tl239614240118%_)))))
                   (_%__match244202244203%_
                    (lambda (_%$%e239591240057%_
                             _%$%hd239592240060%_
                             _%$%tl239593240062%_
                             _%$%e239594240065%_
                             _%$%hd239595240068%_
                             _%$%tl239596240070%_
                             _%$%e239597240073%_
                             _%$%hd239598240076%_
                             _%$%tl239599240078%_
                             _%$%e239600240081%_
                             _%$%hd239601240084%_
                             _%$%tl239602240086%_
                             _%$%e239603240089%_
                             _%$%hd239604240092%_
                             _%$%tl239605240094%_
                             _%$%e239606240097%_
                             _%$%hd239607240100%_
                             _%$%tl239608240102%_
                             _%$%e239609240105%_
                             _%$%hd239610240108%_
                             _%$%tl239611240110%_
                             _%$%e239612240113%_
                             _%$%hd239613240116%_
                             _%$%tl239614240118%_
                             _%$%e239615240121%_
                             _%$%hd239616240124%_
                             _%$%tl239617240126%_
                             _%$%e239618240129%_
                             _%$%hd239619240132%_
                             _%$%tl239620240134%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl239614240118%_))
                          (_%__match244204244205%_
                           _%$%e239591240057%_
                           _%$%hd239592240060%_
                           _%$%tl239593240062%_
                           _%$%e239594240065%_
                           _%$%hd239595240068%_
                           _%$%tl239596240070%_
                           _%$%e239597240073%_
                           _%$%hd239598240076%_
                           _%$%tl239599240078%_
                           _%$%e239600240081%_
                           _%$%hd239601240084%_
                           _%$%tl239602240086%_
                           _%$%e239603240089%_
                           _%$%hd239604240092%_
                           _%$%tl239605240094%_
                           _%$%e239606240097%_
                           _%$%hd239607240100%_
                           _%$%tl239608240102%_
                           _%$%e239609240105%_
                           _%$%hd239610240108%_
                           _%$%tl239611240110%_
                           _%$%e239612240113%_
                           _%$%hd239613240116%_
                           _%$%tl239614240118%_
                           _%$%e239615240121%_
                           _%$%hd239616240124%_
                           _%$%tl239617240126%_
                           _%$%e239618240129%_
                           _%$%hd239619240132%_
                           _%$%tl239620240134%_)
                          (_%__match244282244283%_
                           _%$%e239591240057%_
                           _%$%hd239592240060%_
                           _%$%tl239593240062%_
                           _%$%e239594240065%_
                           _%$%hd239595240068%_
                           _%$%tl239596240070%_
                           _%$%e239597240073%_
                           _%$%hd239598240076%_
                           _%$%tl239599240078%_
                           _%$%e239600240081%_
                           _%$%hd239601240084%_
                           _%$%tl239602240086%_
                           _%$%e239603240089%_
                           _%$%hd239604240092%_
                           _%$%tl239605240094%_
                           _%$%e239606240097%_
                           _%$%hd239607240100%_
                           _%$%tl239608240102%_
                           _%$%e239609240105%_
                           _%$%hd239610240108%_
                           _%$%tl239611240110%_
                           _%$%e239612240113%_
                           _%$%hd239613240116%_
                           _%$%tl239614240118%_
                           _%$%e239615240121%_
                           _%$%hd239616240124%_
                           _%$%tl239617240126%_
                           _%$%e239618240129%_
                           _%$%hd239619240132%_
                           _%$%tl239620240134%_))))
                   (_%__match244192244193%_
                    (lambda (_%$%e239591240057%_
                             _%$%hd239592240060%_
                             _%$%tl239593240062%_
                             _%$%e239594240065%_
                             _%$%hd239595240068%_
                             _%$%tl239596240070%_
                             _%$%e239597240073%_
                             _%$%hd239598240076%_
                             _%$%tl239599240078%_
                             _%$%e239600240081%_
                             _%$%hd239601240084%_
                             _%$%tl239602240086%_
                             _%$%e239603240089%_
                             _%$%hd239604240092%_
                             _%$%tl239605240094%_
                             _%$%e239606240097%_
                             _%$%hd239607240100%_
                             _%$%tl239608240102%_
                             _%$%e239609240105%_
                             _%$%hd239610240108%_
                             _%$%tl239611240110%_
                             _%$%e239612240113%_
                             _%$%hd239613240116%_
                             _%$%tl239614240118%_
                             _%$%e239615240121%_
                             _%$%hd239616240124%_
                             _%$%tl239617240126%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd239616240124%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl239617240126%_))
                              (let ((_%$%e239618240129%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl239617240126%_))))
                                (let ((_%$%tl239620240134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e239618240129%_)))
                                      (_%$%hd239619240132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e239618240129%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl239620240134%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl239614240118%_))
                                          (_%__match244204244205%_
                                           _%$%e239591240057%_
                                           _%$%hd239592240060%_
                                           _%$%tl239593240062%_
                                           _%$%e239594240065%_
                                           _%$%hd239595240068%_
                                           _%$%tl239596240070%_
                                           _%$%e239597240073%_
                                           _%$%hd239598240076%_
                                           _%$%tl239599240078%_
                                           _%$%e239600240081%_
                                           _%$%hd239601240084%_
                                           _%$%tl239602240086%_
                                           _%$%e239603240089%_
                                           _%$%hd239604240092%_
                                           _%$%tl239605240094%_
                                           _%$%e239606240097%_
                                           _%$%hd239607240100%_
                                           _%$%tl239608240102%_
                                           _%$%e239609240105%_
                                           _%$%hd239610240108%_
                                           _%$%tl239611240110%_
                                           _%$%e239612240113%_
                                           _%$%hd239613240116%_
                                           _%$%tl239614240118%_
                                           _%$%e239615240121%_
                                           _%$%hd239616240124%_
                                           _%$%tl239617240126%_
                                           _%$%e239618240129%_
                                           _%$%hd239619240132%_
                                           _%$%tl239620240134%_)
                                          (_%__match244282244283%_
                                           _%$%e239591240057%_
                                           _%$%hd239592240060%_
                                           _%$%tl239593240062%_
                                           _%$%e239594240065%_
                                           _%$%hd239595240068%_
                                           _%$%tl239596240070%_
                                           _%$%e239597240073%_
                                           _%$%hd239598240076%_
                                           _%$%tl239599240078%_
                                           _%$%e239600240081%_
                                           _%$%hd239601240084%_
                                           _%$%tl239602240086%_
                                           _%$%e239603240089%_
                                           _%$%hd239604240092%_
                                           _%$%tl239605240094%_
                                           _%$%e239606240097%_
                                           _%$%hd239607240100%_
                                           _%$%tl239608240102%_
                                           _%$%e239609240105%_
                                           _%$%hd239610240108%_
                                           _%$%tl239611240110%_
                                           _%$%e239612240113%_
                                           _%$%hd239613240116%_
                                           _%$%tl239614240118%_
                                           _%$%e239615240121%_
                                           _%$%hd239616240124%_
                                           _%$%tl239617240126%_
                                           _%$%e239618240129%_
                                           _%$%hd239619240132%_
                                           _%$%tl239620240134%_))
                                      (_%__match244406244407%_
                                       _%$%e239591240057%_
                                       _%$%hd239592240060%_
                                       _%$%tl239593240062%_
                                       _%$%e239594240065%_
                                       _%$%hd239595240068%_
                                       _%$%tl239596240070%_
                                       _%$%e239597240073%_
                                       _%$%hd239598240076%_
                                       _%$%tl239599240078%_
                                       _%$%e239600240081%_
                                       _%$%hd239601240084%_
                                       _%$%tl239602240086%_
                                       _%$%e239603240089%_
                                       _%$%hd239604240092%_
                                       _%$%tl239605240094%_
                                       _%$%e239606240097%_
                                       _%$%hd239607240100%_
                                       _%$%tl239608240102%_
                                       _%$%e239609240105%_
                                       _%$%hd239610240108%_
                                       _%$%tl239611240110%_
                                       _%$%e239612240113%_
                                       _%$%hd239613240116%_
                                       _%$%tl239614240118%_))))
                              (_%__match244406244407%_
                               _%$%e239591240057%_
                               _%$%hd239592240060%_
                               _%$%tl239593240062%_
                               _%$%e239594240065%_
                               _%$%hd239595240068%_
                               _%$%tl239596240070%_
                               _%$%e239597240073%_
                               _%$%hd239598240076%_
                               _%$%tl239599240078%_
                               _%$%e239600240081%_
                               _%$%hd239601240084%_
                               _%$%tl239602240086%_
                               _%$%e239603240089%_
                               _%$%hd239604240092%_
                               _%$%tl239605240094%_
                               _%$%e239606240097%_
                               _%$%hd239607240100%_
                               _%$%tl239608240102%_
                               _%$%e239609240105%_
                               _%$%hd239610240108%_
                               _%$%tl239611240110%_
                               _%$%e239612240113%_
                               _%$%hd239613240116%_
                               _%$%tl239614240118%_))
                          (_%__match244406244407%_
                           _%$%e239591240057%_
                           _%$%hd239592240060%_
                           _%$%tl239593240062%_
                           _%$%e239594240065%_
                           _%$%hd239595240068%_
                           _%$%tl239596240070%_
                           _%$%e239597240073%_
                           _%$%hd239598240076%_
                           _%$%tl239599240078%_
                           _%$%e239600240081%_
                           _%$%hd239601240084%_
                           _%$%tl239602240086%_
                           _%$%e239603240089%_
                           _%$%hd239604240092%_
                           _%$%tl239605240094%_
                           _%$%e239606240097%_
                           _%$%hd239607240100%_
                           _%$%tl239608240102%_
                           _%$%e239609240105%_
                           _%$%hd239610240108%_
                           _%$%tl239611240110%_
                           _%$%e239612240113%_
                           _%$%hd239613240116%_
                           _%$%tl239614240118%_))))
                   (_%__match244124244125%_
                    (lambda (_%$%e239540240176%_
                             _%$%hd239541240179%_
                             _%$%tl239542240181%_
                             _%$%e239543240184%_
                             _%$%hd239544240187%_
                             _%$%tl239545240189%_
                             _%$%e239546240192%_
                             _%$%hd239547240195%_
                             _%$%tl239548240197%_
                             _%$%e239549240200%_
                             _%$%hd239550240203%_
                             _%$%tl239551240205%_
                             _%$%e239552240208%_
                             _%$%hd239553240211%_
                             _%$%tl239554240213%_
                             _%$%e239555240216%_
                             _%$%hd239556240219%_
                             _%$%tl239557240221%_
                             _%$%e239558240224%_
                             _%$%hd239559240227%_
                             _%$%tl239560240229%_
                             _%$%e239561240232%_
                             _%$%hd239562240235%_
                             _%$%tl239563240237%_
                             _%$%e239564240240%_
                             _%$%hd239565240243%_
                             _%$%tl239566240245%_
                             _%$%e239567240248%_
                             _%$%hd239568240251%_
                             _%$%tl239569240253%_
                             _%$%e239570240256%_
                             _%$%hd239571240259%_
                             _%$%tl239572240261%_
                             _%$%e239573240264%_
                             _%$%hd239574240267%_
                             _%$%tl239575240269%_
                             _%$%e239576240272%_
                             _%$%hd239577240275%_
                             _%$%tl239578240277%_
                             _%__splice243917243918%_
                             _%$%target239579240280%_
                             _%$%tl239581240282%_)
                      (letrec ((_%$%loop239582240285%_
                                (lambda (_%$%hd239580240288%_
                                         _%$%args239586240290%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd239580240288%_))
                                      (let ((_%$%e239583240292%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd239580240288%_))))
                                        (let ((_%$%lp-tl239585240297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e239583240292%_)))
                                              (_%$%lp-hd239584240295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e239583240292%_))))
                                          (_%$%loop239582240285%_
                                           _%$%lp-tl239585240297%_
                                           (cons _%$%lp-hd239584240295%_
                                                 _%$%args239586240290%_))))
                                      (let ((_%$%args239587240300%_
                                             (reverse _%$%args239586240290%_)))
                                        (let ((_%$%g239535240302%_
                                               _%$%args239587240300%_)
                                              (_%$%g239536240303%_
                                               _%$%hd239577240275%_)
                                              (_%$%g239537240304%_
                                               _%$%hd239568240251%_)
                                              (_%$%g239538240305%_
                                               _%$%hd239559240227%_)
                                              (_%$%g239539240306%_
                                               _%$%hd239550240203%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g239539240306%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g239538240305%_
                                                      'call-method))
                                                   (let ((__tmp245071
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self239481%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g239537240304%_
                                                      __tmp245071)))
                                              (_%__kont243915243916%_
                                               _%$%g239535240302%_
                                               _%$%g239536240303%_
                                               _%$%g239537240304%_
                                               _%$%g239538240305%_
                                               _%$%g239539240306%_)
                                              (_%__kont243927243928%_))))))))
                        (_%$%loop239582240285%_
                         _%$%target239579240280%_
                         '()))))
                   (_%__match244082244083%_
                    (lambda (_%$%e239540240176%_
                             _%$%hd239541240179%_
                             _%$%tl239542240181%_
                             _%$%e239543240184%_
                             _%$%hd239544240187%_
                             _%$%tl239545240189%_
                             _%$%e239546240192%_
                             _%$%hd239547240195%_
                             _%$%tl239548240197%_
                             _%$%e239549240200%_
                             _%$%hd239550240203%_
                             _%$%tl239551240205%_
                             _%$%e239552240208%_
                             _%$%hd239553240211%_
                             _%$%tl239554240213%_
                             _%$%e239555240216%_
                             _%$%hd239556240219%_
                             _%$%tl239557240221%_
                             _%$%e239558240224%_
                             _%$%hd239559240227%_
                             _%$%tl239560240229%_
                             _%$%e239561240232%_
                             _%$%hd239562240235%_
                             _%$%tl239563240237%_
                             _%$%e239564240240%_
                             _%$%hd239565240243%_
                             _%$%tl239566240245%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd239565240243%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl239566240245%_))
                              (let ((_%$%e239567240248%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl239566240245%_))))
                                (let ((_%$%tl239569240253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e239567240248%_)))
                                      (_%$%hd239568240251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e239567240248%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl239569240253%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl239563240237%_))
                                          (let ((_%$%e239570240256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl239563240237%_))))
                                            (let ((_%$%tl239572240261%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e239570240256%_)))
                                                  (_%$%hd239571240259%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e239570240256%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd239571240259%_))
                                                  (let ((_%$%e239573240264%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd239571240259%_))))
                                                    (let ((_%$%tl239575240269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e239573240264%_)))
                                                          (_%$%hd239574240267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e239573240264%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd239574240267%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd239574240267%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl239575240269%_))
                          (let ((_%$%e239576240272%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl239575240269%_))))
                            (let ((_%$%tl239578240277%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e239576240272%_)))
                                  (_%$%hd239577240275%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e239576240272%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl239578240277%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl239572240261%_))
                                      (let ((_%__splice243917243918%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl239572240261%_
                                                '0))))
                                        (let ((_%$%tl239581240282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice243917243918%_
                                                  '1)))
                                              (_%$%target239579240280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice243917243918%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl239581240282%_))
                                              (_%__match244124244125%_
                                               _%$%e239540240176%_
                                               _%$%hd239541240179%_
                                               _%$%tl239542240181%_
                                               _%$%e239543240184%_
                                               _%$%hd239544240187%_
                                               _%$%tl239545240189%_
                                               _%$%e239546240192%_
                                               _%$%hd239547240195%_
                                               _%$%tl239548240197%_
                                               _%$%e239549240200%_
                                               _%$%hd239550240203%_
                                               _%$%tl239551240205%_
                                               _%$%e239552240208%_
                                               _%$%hd239553240211%_
                                               _%$%tl239554240213%_
                                               _%$%e239555240216%_
                                               _%$%hd239556240219%_
                                               _%$%tl239557240221%_
                                               _%$%e239558240224%_
                                               _%$%hd239559240227%_
                                               _%$%tl239560240229%_
                                               _%$%e239561240232%_
                                               _%$%hd239562240235%_
                                               _%$%tl239563240237%_
                                               _%$%e239564240240%_
                                               _%$%hd239565240243%_
                                               _%$%tl239566240245%_
                                               _%$%e239567240248%_
                                               _%$%hd239568240251%_
                                               _%$%tl239569240253%_
                                               _%$%e239570240256%_
                                               _%$%hd239571240259%_
                                               _%$%tl239572240261%_
                                               _%$%e239573240264%_
                                               _%$%hd239574240267%_
                                               _%$%tl239575240269%_
                                               _%$%e239576240272%_
                                               _%$%hd239577240275%_
                                               _%$%tl239578240277%_
                                               _%__splice243917243918%_
                                               _%$%target239579240280%_
                                               _%$%tl239581240282%_)
                                              (_%__kont243927243928%_))))
                                      (_%__kont243927243928%_))
                                  (_%__kont243927243928%_))))
                          (_%__kont243927243928%_))
                      (_%__kont243927243928%_))
                  (_%__kont243927243928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont243927243928%_))))
                                          (_%__match244406244407%_
                                           _%$%e239540240176%_
                                           _%$%hd239541240179%_
                                           _%$%tl239542240181%_
                                           _%$%e239543240184%_
                                           _%$%hd239544240187%_
                                           _%$%tl239545240189%_
                                           _%$%e239546240192%_
                                           _%$%hd239547240195%_
                                           _%$%tl239548240197%_
                                           _%$%e239549240200%_
                                           _%$%hd239550240203%_
                                           _%$%tl239551240205%_
                                           _%$%e239552240208%_
                                           _%$%hd239553240211%_
                                           _%$%tl239554240213%_
                                           _%$%e239555240216%_
                                           _%$%hd239556240219%_
                                           _%$%tl239557240221%_
                                           _%$%e239558240224%_
                                           _%$%hd239559240227%_
                                           _%$%tl239560240229%_
                                           _%$%e239561240232%_
                                           _%$%hd239562240235%_
                                           _%$%tl239563240237%_))
                                      (_%__match244406244407%_
                                       _%$%e239540240176%_
                                       _%$%hd239541240179%_
                                       _%$%tl239542240181%_
                                       _%$%e239543240184%_
                                       _%$%hd239544240187%_
                                       _%$%tl239545240189%_
                                       _%$%e239546240192%_
                                       _%$%hd239547240195%_
                                       _%$%tl239548240197%_
                                       _%$%e239549240200%_
                                       _%$%hd239550240203%_
                                       _%$%tl239551240205%_
                                       _%$%e239552240208%_
                                       _%$%hd239553240211%_
                                       _%$%tl239554240213%_
                                       _%$%e239555240216%_
                                       _%$%hd239556240219%_
                                       _%$%tl239557240221%_
                                       _%$%e239558240224%_
                                       _%$%hd239559240227%_
                                       _%$%tl239560240229%_
                                       _%$%e239561240232%_
                                       _%$%hd239562240235%_
                                       _%$%tl239563240237%_))))
                              (_%__match244406244407%_
                               _%$%e239540240176%_
                               _%$%hd239541240179%_
                               _%$%tl239542240181%_
                               _%$%e239543240184%_
                               _%$%hd239544240187%_
                               _%$%tl239545240189%_
                               _%$%e239546240192%_
                               _%$%hd239547240195%_
                               _%$%tl239548240197%_
                               _%$%e239549240200%_
                               _%$%hd239550240203%_
                               _%$%tl239551240205%_
                               _%$%e239552240208%_
                               _%$%hd239553240211%_
                               _%$%tl239554240213%_
                               _%$%e239555240216%_
                               _%$%hd239556240219%_
                               _%$%tl239557240221%_
                               _%$%e239558240224%_
                               _%$%hd239559240227%_
                               _%$%tl239560240229%_
                               _%$%e239561240232%_
                               _%$%hd239562240235%_
                               _%$%tl239563240237%_))
                          (_%__match244192244193%_
                           _%$%e239540240176%_
                           _%$%hd239541240179%_
                           _%$%tl239542240181%_
                           _%$%e239543240184%_
                           _%$%hd239544240187%_
                           _%$%tl239545240189%_
                           _%$%e239546240192%_
                           _%$%hd239547240195%_
                           _%$%tl239548240197%_
                           _%$%e239549240200%_
                           _%$%hd239550240203%_
                           _%$%tl239551240205%_
                           _%$%e239552240208%_
                           _%$%hd239553240211%_
                           _%$%tl239554240213%_
                           _%$%e239555240216%_
                           _%$%hd239556240219%_
                           _%$%tl239557240221%_
                           _%$%e239558240224%_
                           _%$%hd239559240227%_
                           _%$%tl239560240229%_
                           _%$%e239561240232%_
                           _%$%hd239562240235%_
                           _%$%tl239563240237%_
                           _%$%e239564240240%_
                           _%$%hd239565240243%_
                           _%$%tl239566240245%_))))
                   (_%__match244014244015%_
                    (lambda (_%$%e239496240363%_
                             _%$%hd239497240366%_
                             _%$%tl239498240368%_
                             _%$%e239499240371%_
                             _%$%hd239500240374%_
                             _%$%tl239501240376%_
                             _%$%e239502240379%_
                             _%$%hd239503240382%_
                             _%$%tl239504240384%_
                             _%$%e239505240387%_
                             _%$%hd239506240390%_
                             _%$%tl239507240392%_
                             _%$%e239508240395%_
                             _%$%hd239509240398%_
                             _%$%tl239510240400%_
                             _%$%e239511240403%_
                             _%$%hd239512240406%_
                             _%$%tl239513240408%_
                             _%$%e239514240411%_
                             _%$%hd239515240414%_
                             _%$%tl239516240416%_
                             _%$%e239517240419%_
                             _%$%hd239518240422%_
                             _%$%tl239519240424%_
                             _%$%e239520240427%_
                             _%$%hd239521240430%_
                             _%$%tl239522240432%_
                             _%$%e239523240435%_
                             _%$%hd239524240438%_
                             _%$%tl239525240440%_
                             _%__splice243913243914%_
                             _%$%target239526240443%_
                             _%$%tl239528240445%_)
                      (letrec ((_%$%loop239529240448%_
                                (lambda (_%$%hd239527240451%_
                                         _%$%args239533240453%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd239527240451%_))
                                      (let ((_%$%e239530240455%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd239527240451%_))))
                                        (let ((_%$%lp-tl239532240460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e239530240455%_)))
                                              (_%$%lp-hd239531240458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e239530240455%_))))
                                          (_%$%loop239529240448%_
                                           _%$%lp-tl239532240460%_
                                           (cons _%$%lp-hd239531240458%_
                                                 _%$%args239533240453%_))))
                                      (let ((_%$%args239534240463%_
                                             (reverse _%$%args239533240453%_)))
                                        (let ((_%$%g239492240465%_
                                               _%$%args239534240463%_)
                                              (_%$%g239493240466%_
                                               _%$%hd239524240438%_)
                                              (_%$%g239494240467%_
                                               _%$%hd239515240414%_)
                                              (_%$%g239495240468%_
                                               _%$%hd239506240390%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g239495240468%_
                                                      'call-method))
                                                   (let ((__tmp245072
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self239481%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g239494240467%_
                                                      __tmp245072)))
                                              (_%__kont243911243912%_
                                               _%$%g239492240465%_
                                               _%$%g239493240466%_
                                               _%$%g239494240467%_
                                               _%$%g239495240468%_)
                                              (_%__match244202244203%_
                                               _%$%e239496240363%_
                                               _%$%hd239497240366%_
                                               _%$%tl239498240368%_
                                               _%$%e239499240371%_
                                               _%$%hd239500240374%_
                                               _%$%tl239501240376%_
                                               _%$%e239502240379%_
                                               _%$%hd239503240382%_
                                               _%$%tl239504240384%_
                                               _%$%e239505240387%_
                                               _%$%hd239506240390%_
                                               _%$%tl239507240392%_
                                               _%$%e239508240395%_
                                               _%$%hd239509240398%_
                                               _%$%tl239510240400%_
                                               _%$%e239511240403%_
                                               _%$%hd239512240406%_
                                               _%$%tl239513240408%_
                                               _%$%e239514240411%_
                                               _%$%hd239515240414%_
                                               _%$%tl239516240416%_
                                               _%$%e239517240419%_
                                               _%$%hd239518240422%_
                                               _%$%tl239519240424%_
                                               _%$%e239520240427%_
                                               _%$%hd239521240430%_
                                               _%$%tl239522240432%_
                                               _%$%e239523240435%_
                                               _%$%hd239524240438%_
                                               _%$%tl239525240440%_))))))))
                        (_%$%loop239529240448%_
                         _%$%target239526240443%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx243909243910%_))
                  (let ((_%$%e239496240363%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx243909243910%_))))
                    (let ((_%$%tl239498240368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e239496240363%_)))
                          (_%$%hd239497240366%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e239496240363%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl239498240368%_))
                          (let ((_%$%e239499240371%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl239498240368%_))))
                            (let ((_%$%tl239501240376%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e239499240371%_)))
                                  (_%$%hd239500240374%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e239499240371%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd239500240374%_))
                                  (let ((_%$%e239502240379%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd239500240374%_))))
                                    (let ((_%$%tl239504240384%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e239502240379%_)))
                                          (_%$%hd239503240382%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e239502240379%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd239503240382%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd239503240382%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl239504240384%_))
                                                  (let ((_%$%e239505240387%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl239504240384%_))))
                                                    (let ((_%$%tl239507240392%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e239505240387%_)))
                                                          (_%$%hd239506240390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e239505240387%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl239507240392%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl239501240376%_))
                      (let ((_%$%e239508240395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl239501240376%_))))
                        (let ((_%$%tl239510240400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e239508240395%_)))
                              (_%$%hd239509240398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e239508240395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd239509240398%_))
                              (let ((_%$%e239511240403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd239509240398%_))))
                                (let ((_%$%tl239513240408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e239511240403%_)))
                                      (_%$%hd239512240406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e239511240403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd239512240406%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd239512240406%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl239513240408%_))
                                              (let ((_%$%e239514240411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl239513240408%_))))
                                                (let ((_%$%tl239516240416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e239514240411%_)))
                                                      (_%$%hd239515240414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e239514240411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl239516240416%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl239510240400%_))
                                                          (let ((_%$%e239517240419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl239510240400%_))))
                    (let ((_%$%tl239519240424%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e239517240419%_)))
                          (_%$%hd239518240422%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e239517240419%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd239518240422%_))
                          (let ((_%$%e239520240427%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd239518240422%_))))
                            (let ((_%$%tl239522240432%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e239520240427%_)))
                                  (_%$%hd239521240430%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e239520240427%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd239521240430%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd239521240430%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl239522240432%_))
                                          (let ((_%$%e239523240435%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl239522240432%_))))
                                            (let ((_%$%tl239525240440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e239523240435%_)))
                                                  (_%$%hd239524240438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e239523240435%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl239525240440%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl239519240424%_))
                                                      (let ((_%__splice243913243914%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl239519240424%_
                        '0))))
                (let ((_%$%tl239528240445%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice243913243914%_ '1)))
                      (_%$%target239526240443%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice243913243914%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl239528240445%_))
                      (_%__match244014244015%_
                       _%$%e239496240363%_
                       _%$%hd239497240366%_
                       _%$%tl239498240368%_
                       _%$%e239499240371%_
                       _%$%hd239500240374%_
                       _%$%tl239501240376%_
                       _%$%e239502240379%_
                       _%$%hd239503240382%_
                       _%$%tl239504240384%_
                       _%$%e239505240387%_
                       _%$%hd239506240390%_
                       _%$%tl239507240392%_
                       _%$%e239508240395%_
                       _%$%hd239509240398%_
                       _%$%tl239510240400%_
                       _%$%e239511240403%_
                       _%$%hd239512240406%_
                       _%$%tl239513240408%_
                       _%$%e239514240411%_
                       _%$%hd239515240414%_
                       _%$%tl239516240416%_
                       _%$%e239517240419%_
                       _%$%hd239518240422%_
                       _%$%tl239519240424%_
                       _%$%e239520240427%_
                       _%$%hd239521240430%_
                       _%$%tl239522240432%_
                       _%$%e239523240435%_
                       _%$%hd239524240438%_
                       _%$%tl239525240440%_
                       _%__splice243913243914%_
                       _%$%target239526240443%_
                       _%$%tl239528240445%_)
                      (_%__match244202244203%_
                       _%$%e239496240363%_
                       _%$%hd239497240366%_
                       _%$%tl239498240368%_
                       _%$%e239499240371%_
                       _%$%hd239500240374%_
                       _%$%tl239501240376%_
                       _%$%e239502240379%_
                       _%$%hd239503240382%_
                       _%$%tl239504240384%_
                       _%$%e239505240387%_
                       _%$%hd239506240390%_
                       _%$%tl239507240392%_
                       _%$%e239508240395%_
                       _%$%hd239509240398%_
                       _%$%tl239510240400%_
                       _%$%e239511240403%_
                       _%$%hd239512240406%_
                       _%$%tl239513240408%_
                       _%$%e239514240411%_
                       _%$%hd239515240414%_
                       _%$%tl239516240416%_
                       _%$%e239517240419%_
                       _%$%hd239518240422%_
                       _%$%tl239519240424%_
                       _%$%e239520240427%_
                       _%$%hd239521240430%_
                       _%$%tl239522240432%_
                       _%$%e239523240435%_
                       _%$%hd239524240438%_
                       _%$%tl239525240440%_))))
              (_%__match244202244203%_
               _%$%e239496240363%_
               _%$%hd239497240366%_
               _%$%tl239498240368%_
               _%$%e239499240371%_
               _%$%hd239500240374%_
               _%$%tl239501240376%_
               _%$%e239502240379%_
               _%$%hd239503240382%_
               _%$%tl239504240384%_
               _%$%e239505240387%_
               _%$%hd239506240390%_
               _%$%tl239507240392%_
               _%$%e239508240395%_
               _%$%hd239509240398%_
               _%$%tl239510240400%_
               _%$%e239511240403%_
               _%$%hd239512240406%_
               _%$%tl239513240408%_
               _%$%e239514240411%_
               _%$%hd239515240414%_
               _%$%tl239516240416%_
               _%$%e239517240419%_
               _%$%hd239518240422%_
               _%$%tl239519240424%_
               _%$%e239520240427%_
               _%$%hd239521240430%_
               _%$%tl239522240432%_
               _%$%e239523240435%_
               _%$%hd239524240438%_
               _%$%tl239525240440%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match244406244407%_
                                                   _%$%e239496240363%_
                                                   _%$%hd239497240366%_
                                                   _%$%tl239498240368%_
                                                   _%$%e239499240371%_
                                                   _%$%hd239500240374%_
                                                   _%$%tl239501240376%_
                                                   _%$%e239502240379%_
                                                   _%$%hd239503240382%_
                                                   _%$%tl239504240384%_
                                                   _%$%e239505240387%_
                                                   _%$%hd239506240390%_
                                                   _%$%tl239507240392%_
                                                   _%$%e239508240395%_
                                                   _%$%hd239509240398%_
                                                   _%$%tl239510240400%_
                                                   _%$%e239511240403%_
                                                   _%$%hd239512240406%_
                                                   _%$%tl239513240408%_
                                                   _%$%e239514240411%_
                                                   _%$%hd239515240414%_
                                                   _%$%tl239516240416%_
                                                   _%$%e239517240419%_
                                                   _%$%hd239518240422%_
                                                   _%$%tl239519240424%_))))
                                          (_%__match244406244407%_
                                           _%$%e239496240363%_
                                           _%$%hd239497240366%_
                                           _%$%tl239498240368%_
                                           _%$%e239499240371%_
                                           _%$%hd239500240374%_
                                           _%$%tl239501240376%_
                                           _%$%e239502240379%_
                                           _%$%hd239503240382%_
                                           _%$%tl239504240384%_
                                           _%$%e239505240387%_
                                           _%$%hd239506240390%_
                                           _%$%tl239507240392%_
                                           _%$%e239508240395%_
                                           _%$%hd239509240398%_
                                           _%$%tl239510240400%_
                                           _%$%e239511240403%_
                                           _%$%hd239512240406%_
                                           _%$%tl239513240408%_
                                           _%$%e239514240411%_
                                           _%$%hd239515240414%_
                                           _%$%tl239516240416%_
                                           _%$%e239517240419%_
                                           _%$%hd239518240422%_
                                           _%$%tl239519240424%_))
                                      (_%__match244082244083%_
                                       _%$%e239496240363%_
                                       _%$%hd239497240366%_
                                       _%$%tl239498240368%_
                                       _%$%e239499240371%_
                                       _%$%hd239500240374%_
                                       _%$%tl239501240376%_
                                       _%$%e239502240379%_
                                       _%$%hd239503240382%_
                                       _%$%tl239504240384%_
                                       _%$%e239505240387%_
                                       _%$%hd239506240390%_
                                       _%$%tl239507240392%_
                                       _%$%e239508240395%_
                                       _%$%hd239509240398%_
                                       _%$%tl239510240400%_
                                       _%$%e239511240403%_
                                       _%$%hd239512240406%_
                                       _%$%tl239513240408%_
                                       _%$%e239514240411%_
                                       _%$%hd239515240414%_
                                       _%$%tl239516240416%_
                                       _%$%e239517240419%_
                                       _%$%hd239518240422%_
                                       _%$%tl239519240424%_
                                       _%$%e239520240427%_
                                       _%$%hd239521240430%_
                                       _%$%tl239522240432%_))
                                  (_%__match244406244407%_
                                   _%$%e239496240363%_
                                   _%$%hd239497240366%_
                                   _%$%tl239498240368%_
                                   _%$%e239499240371%_
                                   _%$%hd239500240374%_
                                   _%$%tl239501240376%_
                                   _%$%e239502240379%_
                                   _%$%hd239503240382%_
                                   _%$%tl239504240384%_
                                   _%$%e239505240387%_
                                   _%$%hd239506240390%_
                                   _%$%tl239507240392%_
                                   _%$%e239508240395%_
                                   _%$%hd239509240398%_
                                   _%$%tl239510240400%_
                                   _%$%e239511240403%_
                                   _%$%hd239512240406%_
                                   _%$%tl239513240408%_
                                   _%$%e239514240411%_
                                   _%$%hd239515240414%_
                                   _%$%tl239516240416%_
                                   _%$%e239517240419%_
                                   _%$%hd239518240422%_
                                   _%$%tl239519240424%_))))
                          (_%__match244406244407%_
                           _%$%e239496240363%_
                           _%$%hd239497240366%_
                           _%$%tl239498240368%_
                           _%$%e239499240371%_
                           _%$%hd239500240374%_
                           _%$%tl239501240376%_
                           _%$%e239502240379%_
                           _%$%hd239503240382%_
                           _%$%tl239504240384%_
                           _%$%e239505240387%_
                           _%$%hd239506240390%_
                           _%$%tl239507240392%_
                           _%$%e239508240395%_
                           _%$%hd239509240398%_
                           _%$%tl239510240400%_
                           _%$%e239511240403%_
                           _%$%hd239512240406%_
                           _%$%tl239513240408%_
                           _%$%e239514240411%_
                           _%$%hd239515240414%_
                           _%$%tl239516240416%_
                           _%$%e239517240419%_
                           _%$%hd239518240422%_
                           _%$%tl239519240424%_))))
                  (_%__match244344244345%_
                   _%$%e239496240363%_
                   _%$%hd239497240366%_
                   _%$%tl239498240368%_
                   _%$%e239499240371%_
                   _%$%hd239500240374%_
                   _%$%tl239501240376%_
                   _%$%e239502240379%_
                   _%$%hd239503240382%_
                   _%$%tl239504240384%_
                   _%$%e239505240387%_
                   _%$%hd239506240390%_
                   _%$%tl239507240392%_
                   _%$%e239508240395%_
                   _%$%hd239509240398%_
                   _%$%tl239510240400%_
                   _%$%e239511240403%_
                   _%$%hd239512240406%_
                   _%$%tl239513240408%_
                   _%$%e239514240411%_
                   _%$%hd239515240414%_
                   _%$%tl239516240416%_))
              (_%__kont243927243928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont243927243928%_))
                                          (_%__kont243927243928%_))
                                      (_%__kont243927243928%_))))
                              (_%__kont243927243928%_))))
                      (_%__kont243927243928%_))
                  (_%__kont243927243928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont243927243928%_))
                                              (_%__kont243927243928%_))
                                          (_%__kont243927243928%_))))
                                  (_%__kont243927243928%_))))
                          (_%__kont243927243928%_))))
                  (_%__kont243927243928%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self238424%_ _%stx238425%_)
        (letrec ((_%force-e238427%_
                  (lambda (_%target239479%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target239479%_ '()))
                                      '()))))))
          (let* ((_%__stx244411244412%_ _%stx238425%_)
                 (_%$%g238435238657%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx244411244412%_)))))
            (let ((_%__kont244413244414%_
                   (lambda (_%$%g238437239425%_
                            _%$%g238438239426%_
                            _%$%g238439239427%_
                            _%$%g238440239428%_)
                     (let ((_%$method239473%_
                            (let ((__tmp245074
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self238424%_ 'methods)))
                                  (__tmp245073
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g238438239426%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp245074 __tmp245073)))
                           (_%args239474%_
                            (map (lambda (_%$%g239461239463%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self238424%_
                                      _%$%g239461239463%_)))
                                 (let ((__tmp245075
                                        (lambda (_%$%g239465239468%_
                                                 _%$%g239466239470%_)
                                          (cons _%$%g239465239468%_
                                                _%$%g239466239470%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp245075
                                    '()
                                    _%$%g238437239425%_)))))
                       (let ((__tmp245076
                              (cons '%#call
                                    (cons (_%force-e238427%_ _%$method239473%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self238424%_
                                                               'receiver))
                                                            '()))
                                                _%args239474%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp245076 _%stx238425%_)))))
                  (_%__kont244417244418%_
                   (lambda (_%$%g238480239259%_
                            _%$%g238481239260%_
                            _%$%g238482239261%_
                            _%$%g238483239262%_
                            _%$%g238484239263%_)
                     (let ((_%$method239315%_
                            (let ((__tmp245078
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self238424%_ 'methods)))
                                  (__tmp245077
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g238481239260%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp245078 __tmp245077)))
                           (_%args239316%_
                            (map (lambda (_%$%g239303239305%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self238424%_
                                      _%$%g239303239305%_)))
                                 (let ((__tmp245079
                                        (lambda (_%$%g239307239310%_
                                                 _%$%g239308239312%_)
                                          (cons _%$%g239307239310%_
                                                _%$%g239308239312%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp245079
                                    '()
                                    _%$%g238480239259%_)))))
                       (let ((__tmp245080
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e238427%_
                                                 _%$method239315%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self238424%_ 'receiver))
                          '()))
              _%args239316%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp245080 _%stx238425%_)))))
                  (_%__kont244421244422%_
                   (lambda (_%$%g238533239092%_
                            _%$%g238534239093%_
                            _%$%g238535239094%_)
                     (let* ((_%$field239126%_
                             (let ((__tmp245082
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self238424%_ 'slots)))
                                   (__tmp245081
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g238533239092%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp245082 __tmp245081)))
                            (__tmp245083
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self238424%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field239126%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self238424%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp245083 _%stx238425%_))))
                  (_%__kont244423244424%_
                   (lambda (_%$%g238566238966%_
                            _%$%g238567238967%_
                            _%$%g238568238968%_
                            _%$%g238569238969%_)
                     (let ((_%$field239004%_
                            (let ((__tmp245085
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self238424%_ 'slots)))
                                  (__tmp245084
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g238567238967%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp245085 __tmp245084)))
                           (_%expr239005%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self238424%_
                               _%$%g238566238966%_))))
                       (let ((__tmp245086
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self238424%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field239004%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self238424%_ 'receiver))
                          '()))
              (cons _%expr239005%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp245086 _%stx238425%_)))))
                  (_%__kont244425244426%_
                   (lambda (_%$%g238603238838%_ _%$%g238604238839%_)
                     (let* ((_%accessor238861%_
                             (let ((__tmp245087
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g238604238839%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp245087)))
                            (_%klass238863%_
                             (let ((__tmp245088
                                    (##structure-ref
                                     _%accessor238861%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx238425%_
                                __tmp245088)))
                            (_%slot238865%_
                             (##structure-ref
                              _%accessor238861%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor238861%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass238863%_
                                      _%slot238865%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass238863%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx238425%_
                           (let* ((_%$field238871%_
                                   (let ((__tmp245089
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238424%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp245089 _%slot238865%_)))
                                  (__tmp245090
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self238424%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field238871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self238424%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp245090
                              _%stx238425%_))))))
                  (_%__kont244427244428%_
                   (lambda (_%$%g238626238733%_
                            _%$%g238627238734%_
                            _%$%g238628238735%_)
                     (let* ((_%mutator238763%_
                             (let ((__tmp245091
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g238628238735%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp245091)))
                            (_%klass238765%_
                             (let ((__tmp245092
                                    (##structure-ref
                                     _%mutator238763%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx238425%_
                                __tmp245092)))
                            (_%slot238767%_
                             (##structure-ref
                              _%mutator238763%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr238769%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self238424%_
                                _%$%g238626238733%_))))
                       (if (if (##structure-ref
                                _%mutator238763%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass238765%_
                                      _%slot238767%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass238765%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp245093
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g238628238735%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g238627238734%_
                                                                '()))
                                                    (cons _%expr238769%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp245093 _%stx238425%_))
                           (let* ((_%$field238775%_
                                   (let ((__tmp245094
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238424%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp245094 _%slot238767%_)))
                                  (__tmp245095
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self238424%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field238775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self238424%_ 'receiver))
                               '()))
                   (cons _%expr238769%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp245095
                              _%stx238425%_))))))
                  (_%__kont244429244430%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self238424%_ _%stx238425%_)))))
              (let* ((_%__match244910244911%_
                      (lambda (_%$%e238629238669%_
                               _%$%hd238630238672%_
                               _%$%tl238631238674%_
                               _%$%e238632238677%_
                               _%$%hd238633238680%_
                               _%$%tl238634238682%_
                               _%$%e238635238685%_
                               _%$%hd238636238688%_
                               _%$%tl238637238690%_
                               _%$%e238638238693%_
                               _%$%hd238639238696%_
                               _%$%tl238640238698%_
                               _%$%e238641238701%_
                               _%$%hd238642238704%_
                               _%$%tl238643238706%_
                               _%$%e238644238709%_
                               _%$%hd238645238712%_
                               _%$%tl238646238714%_
                               _%$%e238647238717%_
                               _%$%hd238648238720%_
                               _%$%tl238649238722%_
                               _%$%e238650238725%_
                               _%$%hd238651238728%_
                               _%$%tl238652238730%_)
                        (let ((_%$%g238626238733%_ _%$%hd238651238728%_)
                              (_%$%g238627238734%_ _%$%hd238648238720%_)
                              (_%$%g238628238735%_ _%$%hd238639238696%_))
                          (if (and (let ((__tmp245096
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238424%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g238627238734%_
                                      __tmp245096))
                                   (let ((__tmp245097
                                          (let ((__tmp245098
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g238628238735%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp245098))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp245097
                                      'gxc#!mutator::t)))
                              (_%__kont244427244428%_
                               _%$%g238626238733%_
                               _%$%g238627238734%_
                               _%$%g238628238735%_)
                              (_%__kont244429244430%_)))))
                     (_%__match244908244909%_
                      (lambda (_%$%e238629238669%_
                               _%$%hd238630238672%_
                               _%$%tl238631238674%_
                               _%$%e238632238677%_
                               _%$%hd238633238680%_
                               _%$%tl238634238682%_
                               _%$%e238635238685%_
                               _%$%hd238636238688%_
                               _%$%tl238637238690%_
                               _%$%e238638238693%_
                               _%$%hd238639238696%_
                               _%$%tl238640238698%_
                               _%$%e238641238701%_
                               _%$%hd238642238704%_
                               _%$%tl238643238706%_
                               _%$%e238644238709%_
                               _%$%hd238645238712%_
                               _%$%tl238646238714%_
                               _%$%e238647238717%_
                               _%$%hd238648238720%_
                               _%$%tl238649238722%_
                               _%$%e238650238725%_
                               _%$%hd238651238728%_
                               _%$%tl238652238730%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl238652238730%_))
                            (_%__match244910244911%_
                             _%$%e238629238669%_
                             _%$%hd238630238672%_
                             _%$%tl238631238674%_
                             _%$%e238632238677%_
                             _%$%hd238633238680%_
                             _%$%tl238634238682%_
                             _%$%e238635238685%_
                             _%$%hd238636238688%_
                             _%$%tl238637238690%_
                             _%$%e238638238693%_
                             _%$%hd238639238696%_
                             _%$%tl238640238698%_
                             _%$%e238641238701%_
                             _%$%hd238642238704%_
                             _%$%tl238643238706%_
                             _%$%e238644238709%_
                             _%$%hd238645238712%_
                             _%$%tl238646238714%_
                             _%$%e238647238717%_
                             _%$%hd238648238720%_
                             _%$%tl238649238722%_
                             _%$%e238650238725%_
                             _%$%hd238651238728%_
                             _%$%tl238652238730%_)
                            (_%__kont244429244430%_))))
                     (_%__match244902244903%_
                      (lambda (_%$%e238629238669%_
                               _%$%hd238630238672%_
                               _%$%tl238631238674%_
                               _%$%e238632238677%_
                               _%$%hd238633238680%_
                               _%$%tl238634238682%_
                               _%$%e238635238685%_
                               _%$%hd238636238688%_
                               _%$%tl238637238690%_
                               _%$%e238638238693%_
                               _%$%hd238639238696%_
                               _%$%tl238640238698%_
                               _%$%e238641238701%_
                               _%$%hd238642238704%_
                               _%$%tl238643238706%_
                               _%$%e238644238709%_
                               _%$%hd238645238712%_
                               _%$%tl238646238714%_
                               _%$%e238647238717%_
                               _%$%hd238648238720%_
                               _%$%tl238649238722%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl238643238706%_))
                            (let ((_%$%e238650238725%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl238643238706%_))))
                              (let ((_%$%tl238652238730%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238650238725%_)))
                                    (_%$%hd238651238728%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238650238725%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl238652238730%_))
                                    (_%__match244910244911%_
                                     _%$%e238629238669%_
                                     _%$%hd238630238672%_
                                     _%$%tl238631238674%_
                                     _%$%e238632238677%_
                                     _%$%hd238633238680%_
                                     _%$%tl238634238682%_
                                     _%$%e238635238685%_
                                     _%$%hd238636238688%_
                                     _%$%tl238637238690%_
                                     _%$%e238638238693%_
                                     _%$%hd238639238696%_
                                     _%$%tl238640238698%_
                                     _%$%e238641238701%_
                                     _%$%hd238642238704%_
                                     _%$%tl238643238706%_
                                     _%$%e238644238709%_
                                     _%$%hd238645238712%_
                                     _%$%tl238646238714%_
                                     _%$%e238647238717%_
                                     _%$%hd238648238720%_
                                     _%$%tl238649238722%_
                                     _%$%e238650238725%_
                                     _%$%hd238651238728%_
                                     _%$%tl238652238730%_)
                                    (_%__kont244429244430%_))))
                            (_%__kont244429244430%_))))
                     (_%__match244848244849%_
                      (lambda (_%$%e238605238782%_
                               _%$%hd238606238785%_
                               _%$%tl238607238787%_
                               _%$%e238608238790%_
                               _%$%hd238609238793%_
                               _%$%tl238610238795%_
                               _%$%e238611238798%_
                               _%$%hd238612238801%_
                               _%$%tl238613238803%_
                               _%$%e238614238806%_
                               _%$%hd238615238809%_
                               _%$%tl238616238811%_
                               _%$%e238617238814%_
                               _%$%hd238618238817%_
                               _%$%tl238619238819%_
                               _%$%e238620238822%_
                               _%$%hd238621238825%_
                               _%$%tl238622238827%_
                               _%$%e238623238830%_
                               _%$%hd238624238833%_
                               _%$%tl238625238835%_)
                        (let ((_%$%g238603238838%_ _%$%hd238624238833%_)
                              (_%$%g238604238839%_ _%$%hd238615238809%_))
                          (if (and (let ((__tmp245099
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238424%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g238603238838%_
                                      __tmp245099))
                                   (let ((__tmp245100
                                          (let ((__tmp245101
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g238604238839%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp245101))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp245100
                                      'gxc#!accessor::t)))
                              (_%__kont244425244426%_
                               _%$%g238603238838%_
                               _%$%g238604238839%_)
                              (_%__kont244429244430%_)))))
                     (_%__match244846244847%_
                      (lambda (_%$%e238605238782%_
                               _%$%hd238606238785%_
                               _%$%tl238607238787%_
                               _%$%e238608238790%_
                               _%$%hd238609238793%_
                               _%$%tl238610238795%_
                               _%$%e238611238798%_
                               _%$%hd238612238801%_
                               _%$%tl238613238803%_
                               _%$%e238614238806%_
                               _%$%hd238615238809%_
                               _%$%tl238616238811%_
                               _%$%e238617238814%_
                               _%$%hd238618238817%_
                               _%$%tl238619238819%_
                               _%$%e238620238822%_
                               _%$%hd238621238825%_
                               _%$%tl238622238827%_
                               _%$%e238623238830%_
                               _%$%hd238624238833%_
                               _%$%tl238625238835%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl238619238819%_))
                            (_%__match244848244849%_
                             _%$%e238605238782%_
                             _%$%hd238606238785%_
                             _%$%tl238607238787%_
                             _%$%e238608238790%_
                             _%$%hd238609238793%_
                             _%$%tl238610238795%_
                             _%$%e238611238798%_
                             _%$%hd238612238801%_
                             _%$%tl238613238803%_
                             _%$%e238614238806%_
                             _%$%hd238615238809%_
                             _%$%tl238616238811%_
                             _%$%e238617238814%_
                             _%$%hd238618238817%_
                             _%$%tl238619238819%_
                             _%$%e238620238822%_
                             _%$%hd238621238825%_
                             _%$%tl238622238827%_
                             _%$%e238623238830%_
                             _%$%hd238624238833%_
                             _%$%tl238625238835%_)
                            (_%__match244902244903%_
                             _%$%e238605238782%_
                             _%$%hd238606238785%_
                             _%$%tl238607238787%_
                             _%$%e238608238790%_
                             _%$%hd238609238793%_
                             _%$%tl238610238795%_
                             _%$%e238611238798%_
                             _%$%hd238612238801%_
                             _%$%tl238613238803%_
                             _%$%e238614238806%_
                             _%$%hd238615238809%_
                             _%$%tl238616238811%_
                             _%$%e238617238814%_
                             _%$%hd238618238817%_
                             _%$%tl238619238819%_
                             _%$%e238620238822%_
                             _%$%hd238621238825%_
                             _%$%tl238622238827%_
                             _%$%e238623238830%_
                             _%$%hd238624238833%_
                             _%$%tl238625238835%_))))
                     (_%__match244792244793%_
                      (lambda (_%$%e238570238878%_
                               _%$%hd238571238881%_
                               _%$%tl238572238883%_
                               _%$%e238573238886%_
                               _%$%hd238574238889%_
                               _%$%tl238575238891%_
                               _%$%e238576238894%_
                               _%$%hd238577238897%_
                               _%$%tl238578238899%_
                               _%$%e238579238902%_
                               _%$%hd238580238905%_
                               _%$%tl238581238907%_
                               _%$%e238582238910%_
                               _%$%hd238583238913%_
                               _%$%tl238584238915%_
                               _%$%e238585238918%_
                               _%$%hd238586238921%_
                               _%$%tl238587238923%_
                               _%$%e238588238926%_
                               _%$%hd238589238929%_
                               _%$%tl238590238931%_
                               _%$%e238591238934%_
                               _%$%hd238592238937%_
                               _%$%tl238593238939%_
                               _%$%e238594238942%_
                               _%$%hd238595238945%_
                               _%$%tl238596238947%_
                               _%$%e238597238950%_
                               _%$%hd238598238953%_
                               _%$%tl238599238955%_
                               _%$%e238600238958%_
                               _%$%hd238601238961%_
                               _%$%tl238602238963%_)
                        (let ((_%$%g238566238966%_ _%$%hd238601238961%_)
                              (_%$%g238567238967%_ _%$%hd238598238953%_)
                              (_%$%g238568238968%_ _%$%hd238589238929%_)
                              (_%$%g238569238969%_ _%$%hd238580238905%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g238569238969%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g238569238969%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp245102
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238424%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g238568238968%_
                                      __tmp245102)))
                              (_%__kont244423244424%_
                               _%$%g238566238966%_
                               _%$%g238567238967%_
                               _%$%g238568238968%_
                               _%$%g238569238969%_)
                              (_%__kont244429244430%_)))))
                     (_%__match244784244785%_
                      (lambda (_%$%e238570238878%_
                               _%$%hd238571238881%_
                               _%$%tl238572238883%_
                               _%$%e238573238886%_
                               _%$%hd238574238889%_
                               _%$%tl238575238891%_
                               _%$%e238576238894%_
                               _%$%hd238577238897%_
                               _%$%tl238578238899%_
                               _%$%e238579238902%_
                               _%$%hd238580238905%_
                               _%$%tl238581238907%_
                               _%$%e238582238910%_
                               _%$%hd238583238913%_
                               _%$%tl238584238915%_
                               _%$%e238585238918%_
                               _%$%hd238586238921%_
                               _%$%tl238587238923%_
                               _%$%e238588238926%_
                               _%$%hd238589238929%_
                               _%$%tl238590238931%_
                               _%$%e238591238934%_
                               _%$%hd238592238937%_
                               _%$%tl238593238939%_
                               _%$%e238594238942%_
                               _%$%hd238595238945%_
                               _%$%tl238596238947%_
                               _%$%e238597238950%_
                               _%$%hd238598238953%_
                               _%$%tl238599238955%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl238593238939%_))
                            (let ((_%$%e238600238958%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl238593238939%_))))
                              (let ((_%$%tl238602238963%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238600238958%_)))
                                    (_%$%hd238601238961%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238600238958%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl238602238963%_))
                                    (_%__match244792244793%_
                                     _%$%e238570238878%_
                                     _%$%hd238571238881%_
                                     _%$%tl238572238883%_
                                     _%$%e238573238886%_
                                     _%$%hd238574238889%_
                                     _%$%tl238575238891%_
                                     _%$%e238576238894%_
                                     _%$%hd238577238897%_
                                     _%$%tl238578238899%_
                                     _%$%e238579238902%_
                                     _%$%hd238580238905%_
                                     _%$%tl238581238907%_
                                     _%$%e238582238910%_
                                     _%$%hd238583238913%_
                                     _%$%tl238584238915%_
                                     _%$%e238585238918%_
                                     _%$%hd238586238921%_
                                     _%$%tl238587238923%_
                                     _%$%e238588238926%_
                                     _%$%hd238589238929%_
                                     _%$%tl238590238931%_
                                     _%$%e238591238934%_
                                     _%$%hd238592238937%_
                                     _%$%tl238593238939%_
                                     _%$%e238594238942%_
                                     _%$%hd238595238945%_
                                     _%$%tl238596238947%_
                                     _%$%e238597238950%_
                                     _%$%hd238598238953%_
                                     _%$%tl238599238955%_
                                     _%$%e238600238958%_
                                     _%$%hd238601238961%_
                                     _%$%tl238602238963%_)
                                    (_%__kont244429244430%_))))
                            (_%__match244908244909%_
                             _%$%e238570238878%_
                             _%$%hd238571238881%_
                             _%$%tl238572238883%_
                             _%$%e238573238886%_
                             _%$%hd238574238889%_
                             _%$%tl238575238891%_
                             _%$%e238576238894%_
                             _%$%hd238577238897%_
                             _%$%tl238578238899%_
                             _%$%e238579238902%_
                             _%$%hd238580238905%_
                             _%$%tl238581238907%_
                             _%$%e238582238910%_
                             _%$%hd238583238913%_
                             _%$%tl238584238915%_
                             _%$%e238585238918%_
                             _%$%hd238586238921%_
                             _%$%tl238587238923%_
                             _%$%e238588238926%_
                             _%$%hd238589238929%_
                             _%$%tl238590238931%_
                             _%$%e238591238934%_
                             _%$%hd238592238937%_
                             _%$%tl238593238939%_))))
                     (_%__match244706244707%_
                      (lambda (_%$%e238536239012%_
                               _%$%hd238537239015%_
                               _%$%tl238538239017%_
                               _%$%e238539239020%_
                               _%$%hd238540239023%_
                               _%$%tl238541239025%_
                               _%$%e238542239028%_
                               _%$%hd238543239031%_
                               _%$%tl238544239033%_
                               _%$%e238545239036%_
                               _%$%hd238546239039%_
                               _%$%tl238547239041%_
                               _%$%e238548239044%_
                               _%$%hd238549239047%_
                               _%$%tl238550239049%_
                               _%$%e238551239052%_
                               _%$%hd238552239055%_
                               _%$%tl238553239057%_
                               _%$%e238554239060%_
                               _%$%hd238555239063%_
                               _%$%tl238556239065%_
                               _%$%e238557239068%_
                               _%$%hd238558239071%_
                               _%$%tl238559239073%_
                               _%$%e238560239076%_
                               _%$%hd238561239079%_
                               _%$%tl238562239081%_
                               _%$%e238563239084%_
                               _%$%hd238564239087%_
                               _%$%tl238565239089%_)
                        (let ((_%$%g238533239092%_ _%$%hd238564239087%_)
                              (_%$%g238534239093%_ _%$%hd238555239063%_)
                              (_%$%g238535239094%_ _%$%hd238546239039%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g238535239094%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g238535239094%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp245103
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self238424%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g238534239093%_
                                      __tmp245103)))
                              (_%__kont244421244422%_
                               _%$%g238533239092%_
                               _%$%g238534239093%_
                               _%$%g238535239094%_)
                              (_%__match244910244911%_
                               _%$%e238536239012%_
                               _%$%hd238537239015%_
                               _%$%tl238538239017%_
                               _%$%e238539239020%_
                               _%$%hd238540239023%_
                               _%$%tl238541239025%_
                               _%$%e238542239028%_
                               _%$%hd238543239031%_
                               _%$%tl238544239033%_
                               _%$%e238545239036%_
                               _%$%hd238546239039%_
                               _%$%tl238547239041%_
                               _%$%e238548239044%_
                               _%$%hd238549239047%_
                               _%$%tl238550239049%_
                               _%$%e238551239052%_
                               _%$%hd238552239055%_
                               _%$%tl238553239057%_
                               _%$%e238554239060%_
                               _%$%hd238555239063%_
                               _%$%tl238556239065%_
                               _%$%e238557239068%_
                               _%$%hd238558239071%_
                               _%$%tl238559239073%_)))))
                     (_%__match244704244705%_
                      (lambda (_%$%e238536239012%_
                               _%$%hd238537239015%_
                               _%$%tl238538239017%_
                               _%$%e238539239020%_
                               _%$%hd238540239023%_
                               _%$%tl238541239025%_
                               _%$%e238542239028%_
                               _%$%hd238543239031%_
                               _%$%tl238544239033%_
                               _%$%e238545239036%_
                               _%$%hd238546239039%_
                               _%$%tl238547239041%_
                               _%$%e238548239044%_
                               _%$%hd238549239047%_
                               _%$%tl238550239049%_
                               _%$%e238551239052%_
                               _%$%hd238552239055%_
                               _%$%tl238553239057%_
                               _%$%e238554239060%_
                               _%$%hd238555239063%_
                               _%$%tl238556239065%_
                               _%$%e238557239068%_
                               _%$%hd238558239071%_
                               _%$%tl238559239073%_
                               _%$%e238560239076%_
                               _%$%hd238561239079%_
                               _%$%tl238562239081%_
                               _%$%e238563239084%_
                               _%$%hd238564239087%_
                               _%$%tl238565239089%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl238559239073%_))
                            (_%__match244706244707%_
                             _%$%e238536239012%_
                             _%$%hd238537239015%_
                             _%$%tl238538239017%_
                             _%$%e238539239020%_
                             _%$%hd238540239023%_
                             _%$%tl238541239025%_
                             _%$%e238542239028%_
                             _%$%hd238543239031%_
                             _%$%tl238544239033%_
                             _%$%e238545239036%_
                             _%$%hd238546239039%_
                             _%$%tl238547239041%_
                             _%$%e238548239044%_
                             _%$%hd238549239047%_
                             _%$%tl238550239049%_
                             _%$%e238551239052%_
                             _%$%hd238552239055%_
                             _%$%tl238553239057%_
                             _%$%e238554239060%_
                             _%$%hd238555239063%_
                             _%$%tl238556239065%_
                             _%$%e238557239068%_
                             _%$%hd238558239071%_
                             _%$%tl238559239073%_
                             _%$%e238560239076%_
                             _%$%hd238561239079%_
                             _%$%tl238562239081%_
                             _%$%e238563239084%_
                             _%$%hd238564239087%_
                             _%$%tl238565239089%_)
                            (_%__match244784244785%_
                             _%$%e238536239012%_
                             _%$%hd238537239015%_
                             _%$%tl238538239017%_
                             _%$%e238539239020%_
                             _%$%hd238540239023%_
                             _%$%tl238541239025%_
                             _%$%e238542239028%_
                             _%$%hd238543239031%_
                             _%$%tl238544239033%_
                             _%$%e238545239036%_
                             _%$%hd238546239039%_
                             _%$%tl238547239041%_
                             _%$%e238548239044%_
                             _%$%hd238549239047%_
                             _%$%tl238550239049%_
                             _%$%e238551239052%_
                             _%$%hd238552239055%_
                             _%$%tl238553239057%_
                             _%$%e238554239060%_
                             _%$%hd238555239063%_
                             _%$%tl238556239065%_
                             _%$%e238557239068%_
                             _%$%hd238558239071%_
                             _%$%tl238559239073%_
                             _%$%e238560239076%_
                             _%$%hd238561239079%_
                             _%$%tl238562239081%_
                             _%$%e238563239084%_
                             _%$%hd238564239087%_
                             _%$%tl238565239089%_))))
                     (_%__match244694244695%_
                      (lambda (_%$%e238536239012%_
                               _%$%hd238537239015%_
                               _%$%tl238538239017%_
                               _%$%e238539239020%_
                               _%$%hd238540239023%_
                               _%$%tl238541239025%_
                               _%$%e238542239028%_
                               _%$%hd238543239031%_
                               _%$%tl238544239033%_
                               _%$%e238545239036%_
                               _%$%hd238546239039%_
                               _%$%tl238547239041%_
                               _%$%e238548239044%_
                               _%$%hd238549239047%_
                               _%$%tl238550239049%_
                               _%$%e238551239052%_
                               _%$%hd238552239055%_
                               _%$%tl238553239057%_
                               _%$%e238554239060%_
                               _%$%hd238555239063%_
                               _%$%tl238556239065%_
                               _%$%e238557239068%_
                               _%$%hd238558239071%_
                               _%$%tl238559239073%_
                               _%$%e238560239076%_
                               _%$%hd238561239079%_
                               _%$%tl238562239081%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd238561239079%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl238562239081%_))
                                (let ((_%$%e238563239084%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl238562239081%_))))
                                  (let ((_%$%tl238565239089%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e238563239084%_)))
                                        (_%$%hd238564239087%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e238563239084%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl238565239089%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl238559239073%_))
                                            (_%__match244706244707%_
                                             _%$%e238536239012%_
                                             _%$%hd238537239015%_
                                             _%$%tl238538239017%_
                                             _%$%e238539239020%_
                                             _%$%hd238540239023%_
                                             _%$%tl238541239025%_
                                             _%$%e238542239028%_
                                             _%$%hd238543239031%_
                                             _%$%tl238544239033%_
                                             _%$%e238545239036%_
                                             _%$%hd238546239039%_
                                             _%$%tl238547239041%_
                                             _%$%e238548239044%_
                                             _%$%hd238549239047%_
                                             _%$%tl238550239049%_
                                             _%$%e238551239052%_
                                             _%$%hd238552239055%_
                                             _%$%tl238553239057%_
                                             _%$%e238554239060%_
                                             _%$%hd238555239063%_
                                             _%$%tl238556239065%_
                                             _%$%e238557239068%_
                                             _%$%hd238558239071%_
                                             _%$%tl238559239073%_
                                             _%$%e238560239076%_
                                             _%$%hd238561239079%_
                                             _%$%tl238562239081%_
                                             _%$%e238563239084%_
                                             _%$%hd238564239087%_
                                             _%$%tl238565239089%_)
                                            (_%__match244784244785%_
                                             _%$%e238536239012%_
                                             _%$%hd238537239015%_
                                             _%$%tl238538239017%_
                                             _%$%e238539239020%_
                                             _%$%hd238540239023%_
                                             _%$%tl238541239025%_
                                             _%$%e238542239028%_
                                             _%$%hd238543239031%_
                                             _%$%tl238544239033%_
                                             _%$%e238545239036%_
                                             _%$%hd238546239039%_
                                             _%$%tl238547239041%_
                                             _%$%e238548239044%_
                                             _%$%hd238549239047%_
                                             _%$%tl238550239049%_
                                             _%$%e238551239052%_
                                             _%$%hd238552239055%_
                                             _%$%tl238553239057%_
                                             _%$%e238554239060%_
                                             _%$%hd238555239063%_
                                             _%$%tl238556239065%_
                                             _%$%e238557239068%_
                                             _%$%hd238558239071%_
                                             _%$%tl238559239073%_
                                             _%$%e238560239076%_
                                             _%$%hd238561239079%_
                                             _%$%tl238562239081%_
                                             _%$%e238563239084%_
                                             _%$%hd238564239087%_
                                             _%$%tl238565239089%_))
                                        (_%__match244908244909%_
                                         _%$%e238536239012%_
                                         _%$%hd238537239015%_
                                         _%$%tl238538239017%_
                                         _%$%e238539239020%_
                                         _%$%hd238540239023%_
                                         _%$%tl238541239025%_
                                         _%$%e238542239028%_
                                         _%$%hd238543239031%_
                                         _%$%tl238544239033%_
                                         _%$%e238545239036%_
                                         _%$%hd238546239039%_
                                         _%$%tl238547239041%_
                                         _%$%e238548239044%_
                                         _%$%hd238549239047%_
                                         _%$%tl238550239049%_
                                         _%$%e238551239052%_
                                         _%$%hd238552239055%_
                                         _%$%tl238553239057%_
                                         _%$%e238554239060%_
                                         _%$%hd238555239063%_
                                         _%$%tl238556239065%_
                                         _%$%e238557239068%_
                                         _%$%hd238558239071%_
                                         _%$%tl238559239073%_))))
                                (_%__match244908244909%_
                                 _%$%e238536239012%_
                                 _%$%hd238537239015%_
                                 _%$%tl238538239017%_
                                 _%$%e238539239020%_
                                 _%$%hd238540239023%_
                                 _%$%tl238541239025%_
                                 _%$%e238542239028%_
                                 _%$%hd238543239031%_
                                 _%$%tl238544239033%_
                                 _%$%e238545239036%_
                                 _%$%hd238546239039%_
                                 _%$%tl238547239041%_
                                 _%$%e238548239044%_
                                 _%$%hd238549239047%_
                                 _%$%tl238550239049%_
                                 _%$%e238551239052%_
                                 _%$%hd238552239055%_
                                 _%$%tl238553239057%_
                                 _%$%e238554239060%_
                                 _%$%hd238555239063%_
                                 _%$%tl238556239065%_
                                 _%$%e238557239068%_
                                 _%$%hd238558239071%_
                                 _%$%tl238559239073%_))
                            (_%__match244908244909%_
                             _%$%e238536239012%_
                             _%$%hd238537239015%_
                             _%$%tl238538239017%_
                             _%$%e238539239020%_
                             _%$%hd238540239023%_
                             _%$%tl238541239025%_
                             _%$%e238542239028%_
                             _%$%hd238543239031%_
                             _%$%tl238544239033%_
                             _%$%e238545239036%_
                             _%$%hd238546239039%_
                             _%$%tl238547239041%_
                             _%$%e238548239044%_
                             _%$%hd238549239047%_
                             _%$%tl238550239049%_
                             _%$%e238551239052%_
                             _%$%hd238552239055%_
                             _%$%tl238553239057%_
                             _%$%e238554239060%_
                             _%$%hd238555239063%_
                             _%$%tl238556239065%_
                             _%$%e238557239068%_
                             _%$%hd238558239071%_
                             _%$%tl238559239073%_))))
                     (_%__match244626244627%_
                      (lambda (_%$%e238485239133%_
                               _%$%hd238486239136%_
                               _%$%tl238487239138%_
                               _%$%e238488239141%_
                               _%$%hd238489239144%_
                               _%$%tl238490239146%_
                               _%$%e238491239149%_
                               _%$%hd238492239152%_
                               _%$%tl238493239154%_
                               _%$%e238494239157%_
                               _%$%hd238495239160%_
                               _%$%tl238496239162%_
                               _%$%e238497239165%_
                               _%$%hd238498239168%_
                               _%$%tl238499239170%_
                               _%$%e238500239173%_
                               _%$%hd238501239176%_
                               _%$%tl238502239178%_
                               _%$%e238503239181%_
                               _%$%hd238504239184%_
                               _%$%tl238505239186%_
                               _%$%e238506239189%_
                               _%$%hd238507239192%_
                               _%$%tl238508239194%_
                               _%$%e238509239197%_
                               _%$%hd238510239200%_
                               _%$%tl238511239202%_
                               _%$%e238512239205%_
                               _%$%hd238513239208%_
                               _%$%tl238514239210%_
                               _%$%e238515239213%_
                               _%$%hd238516239216%_
                               _%$%tl238517239218%_
                               _%$%e238518239221%_
                               _%$%hd238519239224%_
                               _%$%tl238520239226%_
                               _%$%e238521239229%_
                               _%$%hd238522239232%_
                               _%$%tl238523239234%_
                               _%__splice244419244420%_
                               _%$%target238524239237%_
                               _%$%tl238526239239%_)
                        (letrec ((_%$%loop238527239242%_
                                  (lambda (_%$%hd238525239245%_
                                           _%$%args238531239247%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd238525239245%_))
                                        (let ((_%$%e238528239249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd238525239245%_))))
                                          (let ((_%$%lp-tl238530239254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e238528239249%_)))
                                                (_%$%lp-hd238529239252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e238528239249%_))))
                                            (_%$%loop238527239242%_
                                             _%$%lp-tl238530239254%_
                                             (cons _%$%lp-hd238529239252%_
                                                   _%$%args238531239247%_))))
                                        (let ((_%$%args238532239257%_
                                               (reverse _%$%args238531239247%_)))
                                          (let ((_%$%g238480239259%_
                                                 _%$%args238532239257%_)
                                                (_%$%g238481239260%_
                                                 _%$%hd238522239232%_)
                                                (_%$%g238482239261%_
                                                 _%$%hd238513239208%_)
                                                (_%$%g238483239262%_
                                                 _%$%hd238504239184%_)
                                                (_%$%g238484239263%_
                                                 _%$%hd238495239160%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g238484239263%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g238483239262%_
                                                        'call-method))
                                                     (let ((__tmp245104
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self238424%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g238482239261%_
                                                        __tmp245104)))
                                                (_%__kont244417244418%_
                                                 _%$%g238480239259%_
                                                 _%$%g238481239260%_
                                                 _%$%g238482239261%_
                                                 _%$%g238483239262%_
                                                 _%$%g238484239263%_)
                                                (_%__kont244429244430%_))))))))
                          (_%$%loop238527239242%_
                           _%$%target238524239237%_
                           '()))))
                     (_%__match244584244585%_
                      (lambda (_%$%e238485239133%_
                               _%$%hd238486239136%_
                               _%$%tl238487239138%_
                               _%$%e238488239141%_
                               _%$%hd238489239144%_
                               _%$%tl238490239146%_
                               _%$%e238491239149%_
                               _%$%hd238492239152%_
                               _%$%tl238493239154%_
                               _%$%e238494239157%_
                               _%$%hd238495239160%_
                               _%$%tl238496239162%_
                               _%$%e238497239165%_
                               _%$%hd238498239168%_
                               _%$%tl238499239170%_
                               _%$%e238500239173%_
                               _%$%hd238501239176%_
                               _%$%tl238502239178%_
                               _%$%e238503239181%_
                               _%$%hd238504239184%_
                               _%$%tl238505239186%_
                               _%$%e238506239189%_
                               _%$%hd238507239192%_
                               _%$%tl238508239194%_
                               _%$%e238509239197%_
                               _%$%hd238510239200%_
                               _%$%tl238511239202%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd238510239200%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl238511239202%_))
                                (let ((_%$%e238512239205%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl238511239202%_))))
                                  (let ((_%$%tl238514239210%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e238512239205%_)))
                                        (_%$%hd238513239208%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e238512239205%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl238514239210%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl238508239194%_))
                                            (let ((_%$%e238515239213%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl238508239194%_))))
                                              (let ((_%$%tl238517239218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e238515239213%_)))
                                                    (_%$%hd238516239216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e238515239213%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd238516239216%_))
                                                    (let ((_%$%e238518239221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd238516239216%_))))
                                                      (let ((_%$%tl238520239226%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e238518239221%_)))
                    (_%$%hd238519239224%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e238518239221%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd238519239224%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd238519239224%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl238520239226%_))
                            (let ((_%$%e238521239229%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl238520239226%_))))
                              (let ((_%$%tl238523239234%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238521239229%_)))
                                    (_%$%hd238522239232%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238521239229%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl238523239234%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl238517239218%_))
                                        (let ((_%__splice244419244420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl238517239218%_
                                                  '0))))
                                          (let ((_%$%tl238526239239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice244419244420%_
                                                    '1)))
                                                (_%$%target238524239237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice244419244420%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl238526239239%_))
                                                (_%__match244626244627%_
                                                 _%$%e238485239133%_
                                                 _%$%hd238486239136%_
                                                 _%$%tl238487239138%_
                                                 _%$%e238488239141%_
                                                 _%$%hd238489239144%_
                                                 _%$%tl238490239146%_
                                                 _%$%e238491239149%_
                                                 _%$%hd238492239152%_
                                                 _%$%tl238493239154%_
                                                 _%$%e238494239157%_
                                                 _%$%hd238495239160%_
                                                 _%$%tl238496239162%_
                                                 _%$%e238497239165%_
                                                 _%$%hd238498239168%_
                                                 _%$%tl238499239170%_
                                                 _%$%e238500239173%_
                                                 _%$%hd238501239176%_
                                                 _%$%tl238502239178%_
                                                 _%$%e238503239181%_
                                                 _%$%hd238504239184%_
                                                 _%$%tl238505239186%_
                                                 _%$%e238506239189%_
                                                 _%$%hd238507239192%_
                                                 _%$%tl238508239194%_
                                                 _%$%e238509239197%_
                                                 _%$%hd238510239200%_
                                                 _%$%tl238511239202%_
                                                 _%$%e238512239205%_
                                                 _%$%hd238513239208%_
                                                 _%$%tl238514239210%_
                                                 _%$%e238515239213%_
                                                 _%$%hd238516239216%_
                                                 _%$%tl238517239218%_
                                                 _%$%e238518239221%_
                                                 _%$%hd238519239224%_
                                                 _%$%tl238520239226%_
                                                 _%$%e238521239229%_
                                                 _%$%hd238522239232%_
                                                 _%$%tl238523239234%_
                                                 _%__splice244419244420%_
                                                 _%$%target238524239237%_
                                                 _%$%tl238526239239%_)
                                                (_%__kont244429244430%_))))
                                        (_%__kont244429244430%_))
                                    (_%__kont244429244430%_))))
                            (_%__kont244429244430%_))
                        (_%__kont244429244430%_))
                    (_%__kont244429244430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont244429244430%_))))
                                            (_%__match244908244909%_
                                             _%$%e238485239133%_
                                             _%$%hd238486239136%_
                                             _%$%tl238487239138%_
                                             _%$%e238488239141%_
                                             _%$%hd238489239144%_
                                             _%$%tl238490239146%_
                                             _%$%e238491239149%_
                                             _%$%hd238492239152%_
                                             _%$%tl238493239154%_
                                             _%$%e238494239157%_
                                             _%$%hd238495239160%_
                                             _%$%tl238496239162%_
                                             _%$%e238497239165%_
                                             _%$%hd238498239168%_
                                             _%$%tl238499239170%_
                                             _%$%e238500239173%_
                                             _%$%hd238501239176%_
                                             _%$%tl238502239178%_
                                             _%$%e238503239181%_
                                             _%$%hd238504239184%_
                                             _%$%tl238505239186%_
                                             _%$%e238506239189%_
                                             _%$%hd238507239192%_
                                             _%$%tl238508239194%_))
                                        (_%__match244908244909%_
                                         _%$%e238485239133%_
                                         _%$%hd238486239136%_
                                         _%$%tl238487239138%_
                                         _%$%e238488239141%_
                                         _%$%hd238489239144%_
                                         _%$%tl238490239146%_
                                         _%$%e238491239149%_
                                         _%$%hd238492239152%_
                                         _%$%tl238493239154%_
                                         _%$%e238494239157%_
                                         _%$%hd238495239160%_
                                         _%$%tl238496239162%_
                                         _%$%e238497239165%_
                                         _%$%hd238498239168%_
                                         _%$%tl238499239170%_
                                         _%$%e238500239173%_
                                         _%$%hd238501239176%_
                                         _%$%tl238502239178%_
                                         _%$%e238503239181%_
                                         _%$%hd238504239184%_
                                         _%$%tl238505239186%_
                                         _%$%e238506239189%_
                                         _%$%hd238507239192%_
                                         _%$%tl238508239194%_))))
                                (_%__match244908244909%_
                                 _%$%e238485239133%_
                                 _%$%hd238486239136%_
                                 _%$%tl238487239138%_
                                 _%$%e238488239141%_
                                 _%$%hd238489239144%_
                                 _%$%tl238490239146%_
                                 _%$%e238491239149%_
                                 _%$%hd238492239152%_
                                 _%$%tl238493239154%_
                                 _%$%e238494239157%_
                                 _%$%hd238495239160%_
                                 _%$%tl238496239162%_
                                 _%$%e238497239165%_
                                 _%$%hd238498239168%_
                                 _%$%tl238499239170%_
                                 _%$%e238500239173%_
                                 _%$%hd238501239176%_
                                 _%$%tl238502239178%_
                                 _%$%e238503239181%_
                                 _%$%hd238504239184%_
                                 _%$%tl238505239186%_
                                 _%$%e238506239189%_
                                 _%$%hd238507239192%_
                                 _%$%tl238508239194%_))
                            (_%__match244694244695%_
                             _%$%e238485239133%_
                             _%$%hd238486239136%_
                             _%$%tl238487239138%_
                             _%$%e238488239141%_
                             _%$%hd238489239144%_
                             _%$%tl238490239146%_
                             _%$%e238491239149%_
                             _%$%hd238492239152%_
                             _%$%tl238493239154%_
                             _%$%e238494239157%_
                             _%$%hd238495239160%_
                             _%$%tl238496239162%_
                             _%$%e238497239165%_
                             _%$%hd238498239168%_
                             _%$%tl238499239170%_
                             _%$%e238500239173%_
                             _%$%hd238501239176%_
                             _%$%tl238502239178%_
                             _%$%e238503239181%_
                             _%$%hd238504239184%_
                             _%$%tl238505239186%_
                             _%$%e238506239189%_
                             _%$%hd238507239192%_
                             _%$%tl238508239194%_
                             _%$%e238509239197%_
                             _%$%hd238510239200%_
                             _%$%tl238511239202%_))))
                     (_%__match244516244517%_
                      (lambda (_%$%e238441239323%_
                               _%$%hd238442239326%_
                               _%$%tl238443239328%_
                               _%$%e238444239331%_
                               _%$%hd238445239334%_
                               _%$%tl238446239336%_
                               _%$%e238447239339%_
                               _%$%hd238448239342%_
                               _%$%tl238449239344%_
                               _%$%e238450239347%_
                               _%$%hd238451239350%_
                               _%$%tl238452239352%_
                               _%$%e238453239355%_
                               _%$%hd238454239358%_
                               _%$%tl238455239360%_
                               _%$%e238456239363%_
                               _%$%hd238457239366%_
                               _%$%tl238458239368%_
                               _%$%e238459239371%_
                               _%$%hd238460239374%_
                               _%$%tl238461239376%_
                               _%$%e238462239379%_
                               _%$%hd238463239382%_
                               _%$%tl238464239384%_
                               _%$%e238465239387%_
                               _%$%hd238466239390%_
                               _%$%tl238467239392%_
                               _%$%e238468239395%_
                               _%$%hd238469239398%_
                               _%$%tl238470239400%_
                               _%__splice244415244416%_
                               _%$%target238471239403%_
                               _%$%tl238473239405%_)
                        (letrec ((_%$%loop238474239408%_
                                  (lambda (_%$%hd238472239411%_
                                           _%$%args238478239413%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd238472239411%_))
                                        (let ((_%$%e238475239415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd238472239411%_))))
                                          (let ((_%$%lp-tl238477239420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e238475239415%_)))
                                                (_%$%lp-hd238476239418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e238475239415%_))))
                                            (_%$%loop238474239408%_
                                             _%$%lp-tl238477239420%_
                                             (cons _%$%lp-hd238476239418%_
                                                   _%$%args238478239413%_))))
                                        (let ((_%$%args238479239423%_
                                               (reverse _%$%args238478239413%_)))
                                          (let ((_%$%g238437239425%_
                                                 _%$%args238479239423%_)
                                                (_%$%g238438239426%_
                                                 _%$%hd238469239398%_)
                                                (_%$%g238439239427%_
                                                 _%$%hd238460239374%_)
                                                (_%$%g238440239428%_
                                                 _%$%hd238451239350%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g238440239428%_
                                                        'call-method))
                                                     (let ((__tmp245105
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self238424%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g238439239427%_
                                                        __tmp245105)))
                                                (_%__kont244413244414%_
                                                 _%$%g238437239425%_
                                                 _%$%g238438239426%_
                                                 _%$%g238439239427%_
                                                 _%$%g238440239428%_)
                                                (_%__match244704244705%_
                                                 _%$%e238441239323%_
                                                 _%$%hd238442239326%_
                                                 _%$%tl238443239328%_
                                                 _%$%e238444239331%_
                                                 _%$%hd238445239334%_
                                                 _%$%tl238446239336%_
                                                 _%$%e238447239339%_
                                                 _%$%hd238448239342%_
                                                 _%$%tl238449239344%_
                                                 _%$%e238450239347%_
                                                 _%$%hd238451239350%_
                                                 _%$%tl238452239352%_
                                                 _%$%e238453239355%_
                                                 _%$%hd238454239358%_
                                                 _%$%tl238455239360%_
                                                 _%$%e238456239363%_
                                                 _%$%hd238457239366%_
                                                 _%$%tl238458239368%_
                                                 _%$%e238459239371%_
                                                 _%$%hd238460239374%_
                                                 _%$%tl238461239376%_
                                                 _%$%e238462239379%_
                                                 _%$%hd238463239382%_
                                                 _%$%tl238464239384%_
                                                 _%$%e238465239387%_
                                                 _%$%hd238466239390%_
                                                 _%$%tl238467239392%_
                                                 _%$%e238468239395%_
                                                 _%$%hd238469239398%_
                                                 _%$%tl238470239400%_))))))))
                          (_%$%loop238474239408%_
                           _%$%target238471239403%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx244411244412%_))
                    (let ((_%$%e238441239323%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx244411244412%_))))
                      (let ((_%$%tl238443239328%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e238441239323%_)))
                            (_%$%hd238442239326%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e238441239323%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl238443239328%_))
                            (let ((_%$%e238444239331%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl238443239328%_))))
                              (let ((_%$%tl238446239336%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238444239331%_)))
                                    (_%$%hd238445239334%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238444239331%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd238445239334%_))
                                    (let ((_%$%e238447239339%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd238445239334%_))))
                                      (let ((_%$%tl238449239344%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e238447239339%_)))
                                            (_%$%hd238448239342%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e238447239339%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd238448239342%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd238448239342%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl238449239344%_))
                                                    (let ((_%$%e238450239347%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl238449239344%_))))
                                                      (let ((_%$%tl238452239352%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e238450239347%_)))
                    (_%$%hd238451239350%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e238450239347%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl238452239352%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl238446239336%_))
                        (let ((_%$%e238453239355%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl238446239336%_))))
                          (let ((_%$%tl238455239360%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e238453239355%_)))
                                (_%$%hd238454239358%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e238453239355%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd238454239358%_))
                                (let ((_%$%e238456239363%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd238454239358%_))))
                                  (let ((_%$%tl238458239368%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e238456239363%_)))
                                        (_%$%hd238457239366%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e238456239363%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd238457239366%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd238457239366%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl238458239368%_))
                                                (let ((_%$%e238459239371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl238458239368%_))))
                                                  (let ((_%$%tl238461239376%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e238459239371%_)))
                                                        (_%$%hd238460239374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e238459239371%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl238461239376%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl238455239360%_))
                                                            (let ((_%$%e238462239379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl238455239360%_))))
                      (let ((_%$%tl238464239384%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e238462239379%_)))
                            (_%$%hd238463239382%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e238462239379%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd238463239382%_))
                            (let ((_%$%e238465239387%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd238463239382%_))))
                              (let ((_%$%tl238467239392%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e238465239387%_)))
                                    (_%$%hd238466239390%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e238465239387%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd238466239390%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd238466239390%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl238467239392%_))
                                            (let ((_%$%e238468239395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl238467239392%_))))
                                              (let ((_%$%tl238470239400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e238468239395%_)))
                                                    (_%$%hd238469239398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e238468239395%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl238470239400%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl238464239384%_))
                                                        (let ((_%__splice244415244416%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl238464239384%_
                          '0))))
                  (let ((_%$%tl238473239405%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice244415244416%_ '1)))
                        (_%$%target238471239403%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice244415244416%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl238473239405%_))
                        (_%__match244516244517%_
                         _%$%e238441239323%_
                         _%$%hd238442239326%_
                         _%$%tl238443239328%_
                         _%$%e238444239331%_
                         _%$%hd238445239334%_
                         _%$%tl238446239336%_
                         _%$%e238447239339%_
                         _%$%hd238448239342%_
                         _%$%tl238449239344%_
                         _%$%e238450239347%_
                         _%$%hd238451239350%_
                         _%$%tl238452239352%_
                         _%$%e238453239355%_
                         _%$%hd238454239358%_
                         _%$%tl238455239360%_
                         _%$%e238456239363%_
                         _%$%hd238457239366%_
                         _%$%tl238458239368%_
                         _%$%e238459239371%_
                         _%$%hd238460239374%_
                         _%$%tl238461239376%_
                         _%$%e238462239379%_
                         _%$%hd238463239382%_
                         _%$%tl238464239384%_
                         _%$%e238465239387%_
                         _%$%hd238466239390%_
                         _%$%tl238467239392%_
                         _%$%e238468239395%_
                         _%$%hd238469239398%_
                         _%$%tl238470239400%_
                         _%__splice244415244416%_
                         _%$%target238471239403%_
                         _%$%tl238473239405%_)
                        (_%__match244704244705%_
                         _%$%e238441239323%_
                         _%$%hd238442239326%_
                         _%$%tl238443239328%_
                         _%$%e238444239331%_
                         _%$%hd238445239334%_
                         _%$%tl238446239336%_
                         _%$%e238447239339%_
                         _%$%hd238448239342%_
                         _%$%tl238449239344%_
                         _%$%e238450239347%_
                         _%$%hd238451239350%_
                         _%$%tl238452239352%_
                         _%$%e238453239355%_
                         _%$%hd238454239358%_
                         _%$%tl238455239360%_
                         _%$%e238456239363%_
                         _%$%hd238457239366%_
                         _%$%tl238458239368%_
                         _%$%e238459239371%_
                         _%$%hd238460239374%_
                         _%$%tl238461239376%_
                         _%$%e238462239379%_
                         _%$%hd238463239382%_
                         _%$%tl238464239384%_
                         _%$%e238465239387%_
                         _%$%hd238466239390%_
                         _%$%tl238467239392%_
                         _%$%e238468239395%_
                         _%$%hd238469239398%_
                         _%$%tl238470239400%_))))
                (_%__match244704244705%_
                 _%$%e238441239323%_
                 _%$%hd238442239326%_
                 _%$%tl238443239328%_
                 _%$%e238444239331%_
                 _%$%hd238445239334%_
                 _%$%tl238446239336%_
                 _%$%e238447239339%_
                 _%$%hd238448239342%_
                 _%$%tl238449239344%_
                 _%$%e238450239347%_
                 _%$%hd238451239350%_
                 _%$%tl238452239352%_
                 _%$%e238453239355%_
                 _%$%hd238454239358%_
                 _%$%tl238455239360%_
                 _%$%e238456239363%_
                 _%$%hd238457239366%_
                 _%$%tl238458239368%_
                 _%$%e238459239371%_
                 _%$%hd238460239374%_
                 _%$%tl238461239376%_
                 _%$%e238462239379%_
                 _%$%hd238463239382%_
                 _%$%tl238464239384%_
                 _%$%e238465239387%_
                 _%$%hd238466239390%_
                 _%$%tl238467239392%_
                 _%$%e238468239395%_
                 _%$%hd238469239398%_
                 _%$%tl238470239400%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match244908244909%_
                                                     _%$%e238441239323%_
                                                     _%$%hd238442239326%_
                                                     _%$%tl238443239328%_
                                                     _%$%e238444239331%_
                                                     _%$%hd238445239334%_
                                                     _%$%tl238446239336%_
                                                     _%$%e238447239339%_
                                                     _%$%hd238448239342%_
                                                     _%$%tl238449239344%_
                                                     _%$%e238450239347%_
                                                     _%$%hd238451239350%_
                                                     _%$%tl238452239352%_
                                                     _%$%e238453239355%_
                                                     _%$%hd238454239358%_
                                                     _%$%tl238455239360%_
                                                     _%$%e238456239363%_
                                                     _%$%hd238457239366%_
                                                     _%$%tl238458239368%_
                                                     _%$%e238459239371%_
                                                     _%$%hd238460239374%_
                                                     _%$%tl238461239376%_
                                                     _%$%e238462239379%_
                                                     _%$%hd238463239382%_
                                                     _%$%tl238464239384%_))))
                                            (_%__match244908244909%_
                                             _%$%e238441239323%_
                                             _%$%hd238442239326%_
                                             _%$%tl238443239328%_
                                             _%$%e238444239331%_
                                             _%$%hd238445239334%_
                                             _%$%tl238446239336%_
                                             _%$%e238447239339%_
                                             _%$%hd238448239342%_
                                             _%$%tl238449239344%_
                                             _%$%e238450239347%_
                                             _%$%hd238451239350%_
                                             _%$%tl238452239352%_
                                             _%$%e238453239355%_
                                             _%$%hd238454239358%_
                                             _%$%tl238455239360%_
                                             _%$%e238456239363%_
                                             _%$%hd238457239366%_
                                             _%$%tl238458239368%_
                                             _%$%e238459239371%_
                                             _%$%hd238460239374%_
                                             _%$%tl238461239376%_
                                             _%$%e238462239379%_
                                             _%$%hd238463239382%_
                                             _%$%tl238464239384%_))
                                        (_%__match244584244585%_
                                         _%$%e238441239323%_
                                         _%$%hd238442239326%_
                                         _%$%tl238443239328%_
                                         _%$%e238444239331%_
                                         _%$%hd238445239334%_
                                         _%$%tl238446239336%_
                                         _%$%e238447239339%_
                                         _%$%hd238448239342%_
                                         _%$%tl238449239344%_
                                         _%$%e238450239347%_
                                         _%$%hd238451239350%_
                                         _%$%tl238452239352%_
                                         _%$%e238453239355%_
                                         _%$%hd238454239358%_
                                         _%$%tl238455239360%_
                                         _%$%e238456239363%_
                                         _%$%hd238457239366%_
                                         _%$%tl238458239368%_
                                         _%$%e238459239371%_
                                         _%$%hd238460239374%_
                                         _%$%tl238461239376%_
                                         _%$%e238462239379%_
                                         _%$%hd238463239382%_
                                         _%$%tl238464239384%_
                                         _%$%e238465239387%_
                                         _%$%hd238466239390%_
                                         _%$%tl238467239392%_))
                                    (_%__match244908244909%_
                                     _%$%e238441239323%_
                                     _%$%hd238442239326%_
                                     _%$%tl238443239328%_
                                     _%$%e238444239331%_
                                     _%$%hd238445239334%_
                                     _%$%tl238446239336%_
                                     _%$%e238447239339%_
                                     _%$%hd238448239342%_
                                     _%$%tl238449239344%_
                                     _%$%e238450239347%_
                                     _%$%hd238451239350%_
                                     _%$%tl238452239352%_
                                     _%$%e238453239355%_
                                     _%$%hd238454239358%_
                                     _%$%tl238455239360%_
                                     _%$%e238456239363%_
                                     _%$%hd238457239366%_
                                     _%$%tl238458239368%_
                                     _%$%e238459239371%_
                                     _%$%hd238460239374%_
                                     _%$%tl238461239376%_
                                     _%$%e238462239379%_
                                     _%$%hd238463239382%_
                                     _%$%tl238464239384%_))))
                            (_%__match244908244909%_
                             _%$%e238441239323%_
                             _%$%hd238442239326%_
                             _%$%tl238443239328%_
                             _%$%e238444239331%_
                             _%$%hd238445239334%_
                             _%$%tl238446239336%_
                             _%$%e238447239339%_
                             _%$%hd238448239342%_
                             _%$%tl238449239344%_
                             _%$%e238450239347%_
                             _%$%hd238451239350%_
                             _%$%tl238452239352%_
                             _%$%e238453239355%_
                             _%$%hd238454239358%_
                             _%$%tl238455239360%_
                             _%$%e238456239363%_
                             _%$%hd238457239366%_
                             _%$%tl238458239368%_
                             _%$%e238459239371%_
                             _%$%hd238460239374%_
                             _%$%tl238461239376%_
                             _%$%e238462239379%_
                             _%$%hd238463239382%_
                             _%$%tl238464239384%_))))
                    (_%__match244846244847%_
                     _%$%e238441239323%_
                     _%$%hd238442239326%_
                     _%$%tl238443239328%_
                     _%$%e238444239331%_
                     _%$%hd238445239334%_
                     _%$%tl238446239336%_
                     _%$%e238447239339%_
                     _%$%hd238448239342%_
                     _%$%tl238449239344%_
                     _%$%e238450239347%_
                     _%$%hd238451239350%_
                     _%$%tl238452239352%_
                     _%$%e238453239355%_
                     _%$%hd238454239358%_
                     _%$%tl238455239360%_
                     _%$%e238456239363%_
                     _%$%hd238457239366%_
                     _%$%tl238458239368%_
                     _%$%e238459239371%_
                     _%$%hd238460239374%_
                     _%$%tl238461239376%_))
                (_%__kont244429244430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont244429244430%_))
                                            (_%__kont244429244430%_))
                                        (_%__kont244429244430%_))))
                                (_%__kont244429244430%_))))
                        (_%__kont244429244430%_))
                    (_%__kont244429244430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont244429244430%_))
                                                (_%__kont244429244430%_))
                                            (_%__kont244429244430%_))))
                                    (_%__kont244429244430%_))))
                            (_%__kont244429244430%_))))
                    (_%__kont244429244430%_))))))))))
