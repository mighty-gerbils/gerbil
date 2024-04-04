(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712246558)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp172646 (list gxc#::identity::t))
            (__tmp172645 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp172646
         '()
         __tmp172645
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args171511%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args171511%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp172647
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
        (__make-promise __tmp172647)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx171503%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self171506%_
                (let ((__obj172640
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj172640))
               (__tmp172648
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171506%_ _%stx171503%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp172648
           gxc#current-compile-method
           _%self171506%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp172650 (list gxc#::void::t))
            (__tmp172649 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp172650
         '(receiver methods slots)
         __tmp172649
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args171500%_
        (apply make-instance gxc#::collect-object-refs::t _%$args171500%_)))
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
      (let ((__tmp172651
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
        (__make-promise __tmp172651)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords171466%_
               _%receiver171461171467%_
               _%methods171462171469%_
               _%slots171463171471%_
               _%stx171473%_)
        (let* ((_%receiver171476%_
                (if (eq? _%receiver171461171467%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171461171467%_))
               (_%methods171478%_
                (if (eq? _%methods171462171469%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171462171469%_))
               (_%slots171480%_
                (if (eq? _%slots171463171471%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171463171471%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self171482%_
                  (let ((__obj172642
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
                       __obj172642
                       _%receiver171476%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172642
                       _%methods171478%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172642
                       _%slots171480%_
                       '3
                       '#f
                       '#f))
                    __obj172642))
                 (__tmp172652
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171482%_ _%stx171473%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172652
             gxc#current-compile-method
             _%self171482%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords171489%_ . _%args171490%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords171489%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171489%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171489%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171489%_
                  'slots:
                  absent-value))
               _%args171490%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args171464171496%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args171464171496%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp172654 (list gxc#::basic-xform-expression::t))
            (__tmp172653 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp172654
         '(receiver klass methods slots)
         __tmp172653
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args171457%_
        (apply make-instance gxc#::subst-object-refs::t _%$args171457%_)))
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
      (let ((__tmp172655
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
        (__make-promise __tmp172655)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords171419%_
               _%receiver171413171420%_
               _%klass171414171422%_
               _%methods171415171424%_
               _%slots171416171426%_
               _%stx171428%_)
        (let* ((_%receiver171431%_
                (if (eq? _%receiver171413171420%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171413171420%_))
               (_%klass171433%_
                (if (eq? _%klass171414171422%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass171414171422%_))
               (_%methods171435%_
                (if (eq? _%methods171415171424%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171415171424%_))
               (_%slots171437%_
                (if (eq? _%slots171416171426%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171416171426%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self171439%_
                  (let ((__obj172644
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
                       __obj172644
                       _%receiver171431%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172644
                       _%klass171433%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172644
                       _%methods171435%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172644
                       _%slots171437%_
                       '4
                       '#f
                       '#f))
                    __obj172644))
                 (__tmp172656
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171439%_ _%stx171428%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172656
             gxc#current-compile-method
             _%self171439%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords171446%_ . _%args171447%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords171446%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171446%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171446%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171446%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171446%_
                  'slots:
                  absent-value))
               _%args171447%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args171417171453%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args171417171453%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self168594%_ _%stx168595%_)
        (letrec ((_%generate-method-bind168597%_
                  (lambda (_%$klass171405%_
                           _%$method-table171406%_
                           _%id171407%_
                           _%$id171408%_)
                    (let ((_%$tmp171410%_
                           (let ((__tmp172657
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172657))))
                      (cons (cons _%$id171408%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp171410%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table171406%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id171407%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp171410%_ '()))
                    (cons (cons '%#ref (cons _%$tmp171410%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id171407%_
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
                 (_%generate-slot-bind168598%_
                  (lambda (_%$klass171399%_ _%id171400%_ _%$id171401%_)
                    (let ((_%$tmp171403%_
                           (let ((__tmp172658
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172658))))
                      (cons (cons _%$id171401%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp171403%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass171399%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id171400%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp171403%_ '()))
                        (cons (cons '%#ref (cons _%$tmp171403%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id171400%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl168599%_
                  (lambda (_%$klass171393%_
                           _%$method-table171394%_
                           _%methods-bind171395%_
                           _%slots-bind171396%_
                           _%specializer-impl171397%_)
                    (let ((__tmp172659
                           (cons '%#lambda
                                 (cons (cons _%$klass171393%_
                                             (cons _%$method-table171394%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind171396%_
                                                            _%methods-bind171395%_))
                                                         (cons _%specializer-impl171397%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172659 _%stx168595%_))))
                 (_%generate-specializer-def168600%_
                  (lambda (_%id171389%_
                           _%specializer-id171390%_
                           _%specializer-impl171391%_)
                    (let ((__tmp172660
                           (cons '%#begin
                                 (cons _%stx168595%_
                                       (cons (let ((__tmp172661
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id171390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl171391%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp172661
                                                _%stx168595%_))
                                             (cons (let ((__tmp172662
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id171389%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id171390%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172662
                                                      _%stx168595%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172660 _%stx168595%_)))))
          (let* ((_%__stx171600171601%_ _%stx168595%_)
                 (_%g168603168623%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171600171601%_)))))
            (let ((_%__kont171602171603%_
                   (lambda (_%L168667%_ _%L168668%_)
                     (let ((_%method-calls168687%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs168688%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty168689%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?168691%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls168687%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs168688%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L168667%_))
                             (let ()
                               (let* ((_%__stx171514171515%_ _%L168667%_)
                                      (_%g169079169097%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx171514171515%_)))))
                                 (let ((_%__kont171516171517%_
                                        (lambda (_%L169133%_
                                                 _%L169134%_
                                                 _%L169135%_)
                                          (for-each
                                           (lambda (_%g169151169153%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs__%
                                                '#f
                                                _%L169135%_
                                                _%method-calls168687%_
                                                _%slot-refs168688%_
                                                _%g169151169153%_)))
                                           _%L169133%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?168691%_))
                                              _%stx168595%_
                                              (let* ((_%specializer-id169162%_
                                                      (let* ((_%id169156%_
                                                              (let ((__tmp172663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L168668%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp172663 '"::specialize")))
                     (_%specializer-id169159%_
                      (let ((__tmp172664
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx168595%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id169156%_ __tmp172664))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id169159%_))
                _%specializer-id169159%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass169164%_
                                                      (let ((__tmp172665
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp172665)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table169166%_
                                                      (let ((__tmp172666
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp172666)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods169168%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls168687%_)))
                                                     (_%$methods169172%_
                                                      (map (lambda (_%id169170%_)
                                                             (let ((__tmp172667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169170%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172667)))
                   _%methods169168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169181%_
                                                      (for-each
                                                       (lambda (_%g169173169176%_
                                                                _%g169174169178%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls168687%_
                                                            _%g169173169176%_
                                                            _%g169174169178%_)))
                                                       _%methods169168%_
                                                       _%$methods169172%_))
                                                     (_%methods-bind169191%_
                                                      (map (lambda (_%g169183169186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169184169188%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind168597%_
                        _%$klass169164%_
                        _%$method-table169166%_
                        _%g169183169186%_
                        _%g169184169188%_)))
                   _%methods169168%_
                   _%$methods169172%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169193%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs168688%_)))
                                                     (_%$slots169197%_
                                                      (map (lambda (_%id169195%_)
                                                             (let ((__tmp172668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169195%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172668)))
                   _%slots169193%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169206%_
                                                      (for-each
                                                       (lambda (_%g169198169201%_
                                                                _%g169199169203%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs168688%_
                                                            _%g169198169201%_
                                                            _%g169199169203%_)))
                                                       _%slots169193%_
                                                       _%$slots169197%_))
                                                     (_%slots-bind169215%_
                                                      (map (lambda (_%g169207169210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169208169212%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind168598%_
                        _%$klass169164%_
                        _%g169207169210%_
                        _%g169208169212%_)))
                   _%slots169193%_
                   _%$slots169197%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body169221%_
                                                      (map (lambda (_%g169216169218%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs__%
                        '#f
                        _%L169135%_
                        _%$klass169164%_
                        _%method-calls168687%_
                        _%slot-refs168688%_
                        _%g169216169218%_)))
                   _%L169133%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169223%_
                                                      (let ((__tmp172669
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L169135%_ _%L169134%_)
                                 _%specializer-body169221%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp172669 _%stx168595%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169225%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl168599%_
                                                         _%$klass169164%_
                                                         _%$method-table169166%_
                                                         _%methods-bind169191%_
                                                         _%slots-bind169215%_
                                                         _%specializer-impl169223%_))))
                                                (let ((__tmp172671
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168668%_)))
                                                      (__tmp172670
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id169162%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp172671
                                                   '" => "
                                                   __tmp172670))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def168600%_
                                                   _%L168668%_
                                                   _%specializer-id169162%_
                                                   _%specializer-impl169225%_))))))
                                       (_%__kont171518171519%_
                                        (lambda () _%stx168595%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx171514171515%_))
                                       (let ((_%e169086169109%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx171514171515%_))))
                                         (let ((_%tl169084169114%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169086169109%_)))
                                               (_%hd169085169112%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169086169109%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl169084169114%_))
                                               (let ((_%e169089169117%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl169084169114%_))))
                                                 (let ((_%tl169087169122%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169089169117%_)))
                                                       (_%hd169088169120%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169089169117%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd169088169120%_))
                                                       (let ((_%e169092169125%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd169088169120%_))))
                 (let ((_%tl169090169130%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169092169125%_)))
                       (_%hd169091169128%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169092169125%_))))
                   (_%__kont171516171517%_
                    _%tl169087169122%_
                    _%tl169090169130%_
                    _%hd169091169128%_)))
               (_%__kont171518171519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont171518171519%_))))
                                       (_%__kont171518171519%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L168667%_))
                                 (let ()
                                   (let* ((_%g169232169251%_
                                           (lambda (_%g169233169248%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g169233169248%_))))
                                          (_%g169231169538%_
                                           (lambda (_%g169233169254%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g169233169254%_))
                                                 (let ((_%e169237169256%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g169233169254%_))))
                                                   (let ((_%hd169236169259%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169237169256%_)))
                                                         (_%tl169235169261%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169237169256%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl169235169261%_))
                                                         (let ((_g172672_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl169235169261%_ '0))))
                   (begin
                     (let ((_g172673_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g172672_)
                                  (##vector-length _g172672_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g172673_ 2)))
                           (error "Context expects 2 values" _g172673_)))
                     (let ((_%target169238169264%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172672_ 0)))
                           (_%tl169240169266%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172672_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169240169266%_))
                           (letrec ((_%loop169241169269%_
                                     (lambda (_%hd169239169272%_
                                              _%clause169245169274%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169239169272%_))
                                           (let ((_%e169242169277%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169239169272%_))))
                                             (let ((_%lp-hd169243169280%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169242169277%_)))
                                                   (_%lp-tl169244169282%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169242169277%_))))
                                               (let ((__tmp172674
                                                      (cons _%lp-hd169243169280%_
                                                            _%clause169245169274%_)))
                                                 (declare (not safe))
                                                 (_%loop169241169269%_
                                                  _%lp-tl169244169282%_
                                                  __tmp172674))))
                                           (let ((_%clause169246169285%_
                                                  (reverse _%clause169245169274%_)))
                                             ((lambda (_%L169288%_)
                                                (for-each
                                                 (lambda (_%clause169302%_)
                                                   (let* ((_%__stx171540171541%_
                                                           _%clause169302%_)
                                                          (_%g169305169320%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx171540171541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont171542171543%_
                                                            (lambda (_%L169348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L169349%_
                             _%L169350%_)
                      (for-each
                       (lambda (_%g169365169367%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs__%
                            '#f
                            _%L169350%_
                            _%method-calls168687%_
                            _%slot-refs168688%_
                            _%g169365169367%_)))
                       _%L169348%_)))
                   (_%__kont171544171545%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx171540171541%_))
                   (let ((_%e169312169332%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx171540171541%_))))
                     (let ((_%tl169310169337%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169312169332%_)))
                           (_%hd169311169335%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169312169332%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169311169335%_))
                           (let ((_%e169315169340%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169311169335%_))))
                             (let ((_%tl169313169345%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169315169340%_)))
                                   (_%hd169314169343%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169315169340%_))))
                               (_%__kont171542171543%_
                                _%tl169310169337%_
                                _%tl169313169345%_
                                _%hd169314169343%_)))
                           (_%__kont171544171545%_))))
                   (_%__kont171544171545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp172675
                                                        (lambda (_%g169372169375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169373169377%_)
                  (cons _%g169372169375%_ _%g169373169377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172675
                                                    '()
                                                    _%L169288%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?168691%_))
                                                    _%stx168595%_
                                                    (let* ((_%specializer-id169386%_
                                                            (let* ((_%id169380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp172676
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168668%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp172676 '"::specialize")))
                           (_%specializer-id169383%_
                            (let ((__tmp172677
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx168595%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id169380%_
                               __tmp172677))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id169383%_))
                      _%specializer-id169383%_))
                   (_%$klass169388%_
                    (let ((__tmp172678
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172678)))
                   (_%$method-table169390%_
                    (let ((__tmp172679
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172679)))
                   (_%methods169392%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls168687%_)))
                   (_%$methods169396%_
                    (map (lambda (_%id169394%_)
                           (let ((__tmp172680 (gensym _%id169394%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172680)))
                         _%methods169392%_))
                   (_%_169405%_
                    (for-each
                     (lambda (_%g169397169400%_ _%g169398169402%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls168687%_
                          _%g169397169400%_
                          _%g169398169402%_)))
                     _%methods169392%_
                     _%$methods169396%_))
                   (_%methods-bind169415%_
                    (map (lambda (_%g169407169410%_ _%g169408169412%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind168597%_
                              _%$klass169388%_
                              _%$method-table169390%_
                              _%g169407169410%_
                              _%g169408169412%_)))
                         _%methods169392%_
                         _%$methods169396%_))
                   (_%slots169417%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs168688%_)))
                   (_%$slots169421%_
                    (map (lambda (_%id169419%_)
                           (let ((__tmp172681 (gensym _%id169419%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172681)))
                         _%slots169417%_))
                   (_%_169430%_
                    (for-each
                     (lambda (_%g169422169425%_ _%g169423169427%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs168688%_
                          _%g169422169425%_
                          _%g169423169427%_)))
                     _%slots169417%_
                     _%$slots169421%_))
                   (_%slots-bind169439%_
                    (map (lambda (_%g169431169434%_ _%g169432169436%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind168598%_
                              _%$klass169388%_
                              _%g169431169434%_
                              _%g169432169436%_)))
                         _%slots169417%_
                         _%$slots169421%_))
                   (_%specializer-clauses169531%_
                    (map (lambda (_%clause169441%_)
                           (let* ((_%__stx171560171561%_ _%clause169441%_)
                                  (_%g169444169459%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx171560171561%_)))))
                             (let ((_%__kont171562171563%_
                                    (lambda (_%L169487%_
                                             _%L169488%_
                                             _%L169489%_)
                                      (let ((_%body169519%_
                                             (map (lambda (_%g169514169516%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs__%
                                                       '#f
                                                       _%L169489%_
                                                       _%$klass169388%_
                                                       _%method-calls168687%_
                                                       _%slot-refs168688%_
                                                       _%g169514169516%_)))
                                                  _%L169487%_)))
                                        (cons (cons _%L169489%_ _%L169488%_)
                                              _%body169519%_))))
                                   (_%__kont171564171565%_
                                    (lambda () _%clause169441%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx171560171561%_))
                                   (let ((_%e169451169471%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx171560171561%_))))
                                     (let ((_%tl169449169476%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169451169471%_)))
                                           (_%hd169450169474%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169451169471%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169450169474%_))
                                           (let ((_%e169454169479%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169450169474%_))))
                                             (let ((_%tl169452169484%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169454169479%_)))
                                                   (_%hd169453169482%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169454169479%_))))
                                               (_%__kont171562171563%_
                                                _%tl169449169476%_
                                                _%tl169452169484%_
                                                _%hd169453169482%_)))
                                           (_%__kont171564171565%_))))
                                   (_%__kont171564171565%_)))))
                         (let ((__tmp172682
                                (lambda (_%g169523169526%_ _%g169524169528%_)
                                  (cons _%g169523169526%_ _%g169524169528%_))))
                           (declare (not safe))
                           (__foldr1 __tmp172682 '() _%L169288%_))))
                   (_%specializer-impl169533%_
                    (let ((__tmp172683
                           (cons '%#case-lambda
                                 _%specializer-clauses169531%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172683 _%stx168595%_)))
                   (_%specializer-impl169535%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl168599%_
                       _%$klass169388%_
                       _%$method-table169390%_
                       _%methods-bind169415%_
                       _%slots-bind169439%_
                       _%specializer-impl169533%_))))
              (let ((__tmp172685
                     (let () (declare (not safe)) (gx#stx-e _%L168668%_)))
                    (__tmp172684
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id169386%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp172685
                 '" => "
                 __tmp172684))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def168600%_
                 _%L168668%_
                 _%specializer-id169386%_
                 _%specializer-impl169535%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause169246169285%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop169241169269%_
                                _%target169238169264%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g169232169251%_ _%g169233169254%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g169232169251%_ _%g169233169254%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169232169251%_
                                                    _%g169233169254%_))))))
                                     (declare (not safe))
                                     (_%g169231169538%_ _%L168667%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L168667%_))
                                     (let ()
                                       (let* ((_%g169542169572%_
                                               (lambda (_%g169543169569%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g169543169569%_))))
                                              (_%g169541170181%_
                                               (lambda (_%g169543169575%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g169543169575%_))
                                                     (let ((_%e169549169577%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g169543169575%_))))
                                                       (let ((_%hd169548169580%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e169549169577%_)))
                     (_%tl169547169582%_
                      (let () (declare (not safe)) (##cdr _%e169549169577%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl169547169582%_))
                     (let ((_%e169552169585%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl169547169582%_))))
                       (let ((_%hd169551169588%_
                              (let ()
                                (declare (not safe))
                                (##car _%e169552169585%_)))
                             (_%tl169550169590%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e169552169585%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd169551169588%_))
                             (let ((_%e169555169593%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd169551169588%_))))
                               (let ((_%hd169554169596%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e169555169593%_)))
                                     (_%tl169553169598%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e169555169593%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd169554169596%_))
                                     (let ((_%e169558169601%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd169554169596%_))))
                                       (let ((_%hd169557169604%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169558169601%_)))
                                             (_%tl169556169606%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169558169601%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd169557169604%_))
                                             (let ((_%e169561169609%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd169557169604%_))))
                                               (let ((_%hd169560169612%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e169561169609%_)))
                                                     (_%tl169559169614%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e169561169609%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl169559169614%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl169556169606%_))
                                                         (let ((_%e169564169617%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl169556169606%_))))
                   (let ((_%hd169563169620%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169564169617%_)))
                         (_%tl169562169622%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169564169617%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl169562169622%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl169553169598%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl169550169590%_))
                                 (let ((_%e169567169625%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl169550169590%_))))
                                   (let ((_%hd169566169628%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e169567169625%_)))
                                         (_%tl169565169630%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e169567169625%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl169565169630%_))
                                         ((lambda (_%L169633%_
                                                   _%L169634%_
                                                   _%L169635%_)
                                            (let* ((_%g169659169677%_
                                                    (lambda (_%g169660169674%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169660169674%_))))
                                                   (_%g169658169728%_
                                                    (lambda (_%g169660169680%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169660169680%_))
                                                          (let ((_%e169666169682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169660169680%_))))
                    (let ((_%hd169665169685%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169666169682%_)))
                          (_%tl169664169687%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169666169682%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169664169687%_))
                          (let ((_%e169669169690%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169664169687%_))))
                            (let ((_%hd169668169693%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169669169690%_)))
                                  (_%tl169667169695%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169669169690%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169668169693%_))
                                  (let ((_%e169672169698%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169668169693%_))))
                                    (let ((_%hd169671169701%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169672169698%_)))
                                          (_%tl169670169703%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169672169698%_))))
                                      ((lambda (_%L169706%_
                                                _%L169707%_
                                                _%L169708%_)
                                         (for-each
                                          (lambda (_%g169723169725%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%L169708%_
                                               _%method-calls168687%_
                                               _%slot-refs168688%_
                                               _%g169723169725%_)))
                                          _%L169706%_))
                                       _%tl169667169695%_
                                       _%tl169670169703%_
                                       _%hd169671169701%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169659169677%_ _%g169660169680%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g169659169677%_ _%g169660169680%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169659169677%_ _%g169660169680%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169658169728%_ _%L169634%_))
                                            (let* ((_%g169731169750%_
                                                    (lambda (_%g169732169747%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169732169747%_))))
                                                   (_%g169730169869%_
                                                    (lambda (_%g169732169753%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169732169753%_))
                                                          (let ((_%e169736169755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169732169753%_))))
                    (let ((_%hd169735169758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169736169755%_)))
                          (_%tl169734169760%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169736169755%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl169734169760%_))
                          (let ((_g172686_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl169734169760%_
                                    '0))))
                            (begin
                              (let ((_g172687_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g172686_)
                                           (##vector-length _g172686_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g172687_ 2)))
                                    (error "Context expects 2 values"
                                           _g172687_)))
                              (let ((_%target169737169763%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172686_ 0)))
                                    (_%tl169739169765%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172686_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169739169765%_))
                                    (letrec ((_%loop169740169768%_
                                              (lambda (_%hd169738169771%_
                                                       _%clause169744169773%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169738169771%_))
                                                    (let ((_%e169741169776%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169738169771%_))))
                                                      (let ((_%lp-hd169742169779%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169741169776%_)))
                    (_%lp-tl169743169781%_
                     (let () (declare (not safe)) (##cdr _%e169741169776%_))))
                (let ((__tmp172688
                       (cons _%lp-hd169742169779%_ _%clause169744169773%_)))
                  (declare (not safe))
                  (_%loop169740169768%_ _%lp-tl169743169781%_ __tmp172688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause169745169784%_
                                                           (reverse _%clause169744169773%_)))
                                                      ((lambda (_%L169787%_)
                                                         (for-each
                                                          (lambda (_%clause169800%_)
                                                            (let* ((_%g169802169817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g169803169814%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g169803169814%_))))
                           (_%g169801169859%_
                            (lambda (_%g169803169820%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g169803169820%_))
                                  (let ((_%e169809169822%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g169803169820%_))))
                                    (let ((_%hd169808169825%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169809169822%_)))
                                          (_%tl169807169827%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169809169822%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd169808169825%_))
                                          (let ((_%e169812169830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd169808169825%_))))
                                            (let ((_%hd169811169833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169812169830%_)))
                                                  (_%tl169810169835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169812169830%_))))
                                              ((lambda (_%L169838%_
                                                        _%L169839%_
                                                        _%L169840%_)
                                                 (for-each
                                                  (lambda (_%g169854169856%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%L169840%_
                                                       _%method-calls168687%_
                                                       _%slot-refs168688%_
                                                       _%g169854169856%_)))
                                                  _%L169838%_))
                                               _%tl169807169827%_
                                               _%tl169810169835%_
                                               _%hd169811169833%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169802169817%_
                                             _%g169803169820%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169802169817%_ _%g169803169820%_))))))
                      (declare (not safe))
                      (_%g169801169859%_ _%clause169800%_)))
                  (let ((__tmp172689
                         (lambda (_%g169861169864%_ _%g169862169866%_)
                           (cons _%g169861169864%_ _%g169862169866%_))))
                    (declare (not safe))
                    (__foldr1 __tmp172689 '() _%L169787%_))))
               _%clause169745169784%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop169740169768%_
                                         _%target169737169763%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169731169750%_
                                       _%g169732169753%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g169731169750%_ _%g169732169753%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169731169750%_ _%g169732169753%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169730169869%_ _%L169633%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?168691%_))
                                                _%stx168595%_
                                                (let* ((_%specializer-id169878%_
                                                        (let* ((_%id169872%_
                                                                (let ((__tmp172690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L168668%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp172690 '"::specialize")))
                       (_%specializer-id169875%_
                        (let ((__tmp172691
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx168595%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id169872%_ __tmp172691))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id169875%_))
                  _%specializer-id169875%_))
               (_%$klass169880%_
                (let ((__tmp172692
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172692)))
               (_%$method-table169882%_
                (let ((__tmp172693
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172693)))
               (_%methods169884%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls168687%_)))
               (_%$methods169888%_
                (map (lambda (_%id169886%_)
                       (let ((__tmp172694 (gensym _%id169886%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172694)))
                     _%methods169884%_))
               (_%_169897%_
                (for-each
                 (lambda (_%g169889169892%_ _%g169890169894%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls168687%_
                      _%g169889169892%_
                      _%g169890169894%_)))
                 _%methods169884%_
                 _%$methods169888%_))
               (_%methods-bind169907%_
                (map (lambda (_%g169899169902%_ _%g169900169904%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind168597%_
                          _%$klass169880%_
                          _%$method-table169882%_
                          _%g169899169902%_
                          _%g169900169904%_)))
                     _%methods169884%_
                     _%$methods169888%_))
               (_%slots169909%_
                (let () (declare (not safe)) (hash-keys _%slot-refs168688%_)))
               (_%$slots169913%_
                (map (lambda (_%id169911%_)
                       (let ((__tmp172695 (gensym _%id169911%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172695)))
                     _%slots169909%_))
               (_%_169922%_
                (for-each
                 (lambda (_%g169914169917%_ _%g169915169919%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs168688%_
                      _%g169914169917%_
                      _%g169915169919%_)))
                 _%slots169909%_
                 _%$slots169913%_))
               (_%slots-bind169931%_
                (map (lambda (_%g169923169926%_ _%g169924169928%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind168598%_
                          _%$klass169880%_
                          _%g169923169926%_
                          _%g169924169928%_)))
                     _%slots169909%_
                     _%$slots169913%_))
               (_%specializer-lambda-expr170017%_
                (let* ((_%g169933169951%_
                        (lambda (_%g169934169948%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169934169948%_))))
                       (_%g169932170014%_
                        (lambda (_%g169934169954%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169934169954%_))
                              (let ((_%e169940169956%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169934169954%_))))
                                (let ((_%hd169939169959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169940169956%_)))
                                      (_%tl169938169961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169940169956%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169938169961%_))
                                      (let ((_%e169943169964%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169938169961%_))))
                                        (let ((_%hd169942169967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169943169964%_)))
                                              (_%tl169941169969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169943169964%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169942169967%_))
                                              (let ((_%e169946169972%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169942169967%_))))
                                                (let ((_%hd169945169975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169946169972%_)))
                                                      (_%tl169944169977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169946169972%_))))
                                                  ((lambda (_%L169980%_
                                                            _%L169981%_
                                                            _%L169982%_)
                                                     (let* ((_%body170012%_
                                                             (map (lambda (_%g170007170009%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs__%
                               '#f
                               _%L169982%_
                               _%$klass169880%_
                               _%method-calls168687%_
                               _%slot-refs168688%_
                               _%g170007170009%_)))
                          _%L169980%_))
                    (__tmp172696
                     (cons '%#lambda
                           (cons (cons _%L169982%_ _%L169981%_)
                                 _%body170012%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp172696 _%L169634%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl169941169969%_
                                                   _%tl169944169977%_
                                                   _%hd169945169975%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g169933169951%_
                                                 _%g169934169954%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169933169951%_
                                         _%g169934169954%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169933169951%_ _%g169934169954%_))))))
                  (declare (not safe))
                  (_%g169932170014%_ _%L169634%_)))
               (_%specializer-case-lambda-expr170174%_
                (let* ((_%g170019170038%_
                        (lambda (_%g170020170035%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g170020170035%_))))
                       (_%g170018170171%_
                        (lambda (_%g170020170041%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g170020170041%_))
                              (let ((_%e170024170043%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g170020170041%_))))
                                (let ((_%hd170023170046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170024170043%_)))
                                      (_%tl170022170048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170024170043%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl170022170048%_))
                                      (let ((_g172697_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl170022170048%_
                                                '0))))
                                        (begin
                                          (let ((_g172698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g172697_)
                                                       (##vector-length
                                                        _g172697_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g172698_ 2)))
                                                (error "Context expects 2 values"
                                                       _g172698_)))
                                          (let ((_%target170025170051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g172697_ 0)))
                                                (_%tl170027170053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g172697_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170027170053%_))
                                                (letrec ((_%loop170028170056%_
                                                          (lambda (_%hd170026170059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause170032170061%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd170026170059%_))
                        (let ((_%e170029170064%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd170026170059%_))))
                          (let ((_%lp-hd170030170067%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170029170064%_)))
                                (_%lp-tl170031170069%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170029170064%_))))
                            (let ((__tmp172699
                                   (cons _%lp-hd170030170067%_
                                         _%clause170032170061%_)))
                              (declare (not safe))
                              (_%loop170028170056%_
                               _%lp-tl170031170069%_
                               __tmp172699))))
                        (let ((_%clause170033170072%_
                               (reverse _%clause170032170061%_)))
                          ((lambda (_%L170075%_)
                             (let* ((_%clauses170169%_
                                     (map (lambda (_%clause170089%_)
                                            (let* ((_%__stx171580171581%_
                                                    _%clause170089%_)
                                                   (_%g170092170107%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx171580171581%_)))))
                                              (let ((_%__kont171582171583%_
                                                     (lambda (_%L170135%_
                                                              _%L170136%_
                                                              _%L170137%_)
                                                       (let ((_%body170157%_
                                                              (map (lambda (_%g170152170154%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs__%
                                '#f
                                _%L170137%_
                                _%$klass169880%_
                                _%method-calls168687%_
                                _%slot-refs168688%_
                                _%g170152170154%_)))
                           _%L170135%_)))
                 (cons (cons _%L170137%_ _%L170136%_) _%body170157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171584171585%_
                                                     (lambda ()
                                                       _%clause170089%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx171580171581%_))
                                                    (let ((_%e170099170119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx171580171581%_))))
                                                      (let ((_%tl170097170124%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170099170119%_)))
                    (_%hd170098170122%_
                     (let () (declare (not safe)) (##car _%e170099170119%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd170098170122%_))
                    (let ((_%e170102170127%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd170098170122%_))))
                      (let ((_%tl170100170132%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170102170127%_)))
                            (_%hd170101170130%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170102170127%_))))
                        (_%__kont171582171583%_
                         _%tl170097170124%_
                         _%tl170100170132%_
                         _%hd170101170130%_)))
                    (_%__kont171584171585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171584171585%_)))))
                                          (let ((__tmp172700
                                                 (lambda (_%g170161170164%_
                                                          _%g170162170166%_)
                                                   (cons _%g170161170164%_
                                                         _%g170162170166%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp172700
                                             '()
                                             _%L170075%_))))
                                    (__tmp172701
                                     (cons '%#case-lambda _%clauses170169%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp172701
                                _%L169633%_)))
                           _%clause170033170072%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop170028170056%_
                                                     _%target170025170051%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170019170038%_
                                                   _%g170020170041%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170019170038%_
                                         _%g170020170041%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170019170038%_ _%g170020170041%_))))))
                  (declare (not safe))
                  (_%g170018170171%_ _%L169633%_)))
               (_%specializer-impl170176%_
                (let ((__tmp172702
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L169635%_ '())
                                               (cons _%specializer-lambda-expr170017%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr170174%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp172702 _%stx168595%_)))
               (_%specializer-impl170178%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl168599%_
                   _%$klass169880%_
                   _%$method-table169882%_
                   _%methods-bind169907%_
                   _%slots-bind169931%_
                   _%specializer-impl170176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp172704
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L168668%_)))
                                                        (__tmp172703
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id169878%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp172704
                                                     '" => "
                                                     __tmp172703))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def168600%_
                                                     _%L168668%_
                                                     _%specializer-id169878%_
                                                     _%specializer-impl170178%_)))))
                                          _%hd169566169628%_
                                          _%hd169563169620%_
                                          _%hd169560169612%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g169542169572%_
                                            _%g169543169575%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g169542169572%_ _%g169543169575%_)))
                             (let ()
                               (declare (not safe))
                               (_%g169542169572%_ _%g169543169575%_)))
                         (let ()
                           (declare (not safe))
                           (_%g169542169572%_ _%g169543169575%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g169542169572%_ _%g169543169575%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169542169572%_
                                                        _%g169543169575%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169542169572%_
                                                _%g169543169575%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169542169572%_
                                        _%g169543169575%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g169542169572%_ _%g169543169575%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g169542169572%_ _%g169543169575%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169542169572%_
                                                        _%g169543169575%_))))))
                                         (declare (not safe))
                                         (_%g169541170181%_ _%L168667%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L168667%_))
                                         (let ()
                                           (let* ((_%g170185170238%_
                                                   (lambda (_%g170186170235%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g170186170235%_))))
                                                  (_%g170184171381%_
                                                   (lambda (_%g170186170241%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g170186170241%_))
                                                         (let ((_%e170194170243%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g170186170241%_))))
                   (let ((_%hd170193170246%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170194170243%_)))
                         (_%tl170192170248%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170194170243%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd170193170246%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd170193170246%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl170192170248%_))
                                 (let ((_%e170197170251%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl170192170248%_))))
                                   (let ((_%hd170196170254%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e170197170251%_)))
                                         (_%tl170195170256%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e170197170251%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd170196170254%_))
                                         (let ((_%e170200170259%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd170196170254%_))))
                                           (let ((_%hd170199170262%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170200170259%_)))
                                                 (_%tl170198170264%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170200170259%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd170199170262%_))
                                                 (let ((_%e170203170267%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd170199170262%_))))
                                                   (let ((_%hd170202170270%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170203170267%_)))
                                                         (_%tl170201170272%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170203170267%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd170202170270%_))
                                                         (let ((_%e170206170275%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd170202170270%_))))
                   (let ((_%hd170205170278%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170206170275%_)))
                         (_%tl170204170280%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170206170275%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl170204170280%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl170201170272%_))
                             (let ((_%e170209170283%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl170201170272%_))))
                               (let ((_%hd170208170286%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170209170283%_)))
                                     (_%tl170207170288%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170209170283%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170208170286%_))
                                     (let ((_%e170212170291%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170208170286%_))))
                                       (let ((_%hd170211170294%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170212170291%_)))
                                             (_%tl170210170296%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170212170291%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd170211170294%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd170211170294%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl170210170296%_))
                                                     (let ((_%e170215170299%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl170210170296%_))))
                                                       (let ((_%hd170214170302%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e170215170299%_)))
                     (_%tl170213170304%_
                      (let () (declare (not safe)) (##cdr _%e170215170299%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd170214170302%_))
                     (let ((_%e170218170307%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd170214170302%_))))
                       (let ((_%hd170217170310%_
                              (let ()
                                (declare (not safe))
                                (##car _%e170218170307%_)))
                             (_%tl170216170312%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e170218170307%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd170217170310%_))
                             (let ((_%e170221170315%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd170217170310%_))))
                               (let ((_%hd170220170318%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170221170315%_)))
                                     (_%tl170219170320%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170221170315%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170220170318%_))
                                     (let ((_%e170224170323%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170220170318%_))))
                                       (let ((_%hd170223170326%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170224170323%_)))
                                             (_%tl170222170328%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170224170323%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl170222170328%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl170219170320%_))
                                                 (let ((_%e170227170331%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl170219170320%_))))
                                                   (let ((_%hd170226170334%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170227170331%_)))
                                                         (_%tl170225170336%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170227170331%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl170225170336%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl170216170312%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl170213170304%_))
                         (let ((_%e170230170339%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl170213170304%_))))
                           (let ((_%hd170229170342%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e170230170339%_)))
                                 (_%tl170228170344%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e170230170339%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl170228170344%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl170207170288%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl170198170264%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl170195170256%_))
                                             (let ((_%e170233170347%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl170195170256%_))))
                                               (let ((_%hd170232170350%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e170233170347%_)))
                                                     (_%tl170231170352%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e170233170347%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl170231170352%_))
                                                     ((lambda (_%L170355%_
                                                               _%L170356%_
                                                               _%L170357%_
                                                               _%L170358%_
                                                               _%L170359%_)
                                                        (let* ((_%g170399170461%_
                                                                (lambda (_%g170400170458%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g170400170458%_))))
                       (_%g170398171378%_
                        (lambda (_%g170400170464%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g170400170464%_))
                              (let ((_%e170408170466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g170400170464%_))))
                                (let ((_%hd170407170469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170408170466%_)))
                                      (_%tl170406170471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170408170466%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170407170469%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd170407170469%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170406170471%_))
                                              (let ((_%e170411170474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170406170471%_))))
                                                (let ((_%hd170410170477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170411170474%_)))
                                                      (_%tl170409170479%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170411170474%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170409170479%_))
                                                      (let ((_%e170414170482%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170409170479%_))))
                (let ((_%hd170413170485%_
                       (let () (declare (not safe)) (##car _%e170414170482%_)))
                      (_%tl170412170487%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170414170482%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd170413170485%_))
                      (let ((_%e170417170490%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd170413170485%_))))
                        (let ((_%hd170416170493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170417170490%_)))
                              (_%tl170415170495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170417170490%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd170416170493%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd170416170493%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170415170495%_))
                                      (let ((_%e170420170498%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170415170495%_))))
                                        (let ((_%hd170419170501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170420170498%_)))
                                              (_%tl170418170503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170420170498%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170419170501%_))
                                              (let ((_%e170423170506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170419170501%_))))
                                                (let ((_%hd170422170509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170423170506%_)))
                                                      (_%tl170421170511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170423170506%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd170422170509%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd170422170509%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170421170511%_))
                      (let ((_%e170426170514%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170421170511%_))))
                        (let ((_%hd170425170517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170426170514%_)))
                              (_%tl170424170519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170426170514%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170424170519%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170418170503%_))
                                  (let ((_%e170429170522%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170418170503%_))))
                                    (let ((_%hd170428170525%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170429170522%_)))
                                          (_%tl170427170527%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170429170522%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd170428170525%_))
                                          (let ((_%e170432170530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd170428170525%_))))
                                            (let ((_%hd170431170533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170432170530%_)))
                                                  (_%tl170430170535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170432170530%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd170431170533%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd170431170533%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170430170535%_))
                                                          (let ((_%e170435170538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170430170535%_))))
                    (let ((_%hd170434170541%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170435170538%_)))
                          (_%tl170433170543%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170435170538%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170433170543%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170427170527%_))
                              (let ((_%e170438170546%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170427170527%_))))
                                (let ((_%hd170437170549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170438170546%_)))
                                      (_%tl170436170551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170438170546%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170437170549%_))
                                      (let ((_%e170441170554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170437170549%_))))
                                        (let ((_%hd170440170557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170441170554%_)))
                                              (_%tl170439170559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170441170554%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd170440170557%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd170440170557%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170439170559%_))
                                                      (let ((_%e170444170562%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170439170559%_))))
                (let ((_%hd170443170565%_
                       (let () (declare (not safe)) (##car _%e170444170562%_)))
                      (_%tl170442170567%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170444170562%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170442170567%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl170436170551%_))
                          (if (let ((__tmp172705
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl170436170551%_))))
                                (declare (not safe))
                                (##fx>= __tmp172705 '1))
                              (let ((_g172706_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl170436170551%_
                                        '1))))
                                (begin
                                  (let ((_g172707_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g172706_)
                                               (##vector-length _g172706_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g172707_ 2)))
                                        (error "Context expects 2 values"
                                               _g172707_)))
                                  (let ((_%target170445170570%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172706_ 0)))
                                        (_%tl170447170572%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172706_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170447170572%_))
                                        (let ((_%e170456170575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170447170572%_))))
                                          (let ((_%hd170455170578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170456170575%_)))
                                                (_%tl170454170580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170456170575%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170454170580%_))
                                                (letrec ((_%loop170448170583%_
                                                          (lambda (_%hd170446170586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref170452170588%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd170446170586%_))
                        (let ((_%e170449170591%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd170446170586%_))))
                          (let ((_%lp-hd170450170594%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170449170591%_)))
                                (_%lp-tl170451170596%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170449170591%_))))
                            (let ((__tmp172708
                                   (cons _%lp-hd170450170594%_
                                         _%kw-ref170452170588%_)))
                              (declare (not safe))
                              (_%loop170448170583%_
                               _%lp-tl170451170596%_
                               __tmp172708))))
                        (let ((_%kw-ref170453170599%_
                               (reverse _%kw-ref170452170588%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170412170487%_))
                              ((lambda (_%L170602%_
                                        _%L170603%_
                                        _%L170604%_
                                        _%L170605%_
                                        _%L170606%_)
                                 (let* ((_%kw-count170657%_
                                         (length (let ((__tmp172709
                                                        (lambda (_%g170649170652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170650170654%_)
                  (cons _%g170649170652%_ _%g170650170654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172709
                                                    '()
                                                    _%L170603%_))))
                                        (_%self-index170659%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count170657%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L170357%_))
                                       (let ()
                                         (let* ((_%g170663170677%_
                                                 (lambda (_%g170664170674%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g170664170674%_))))
                                                (_%g170662170794%_
                                                 (lambda (_%g170664170680%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g170664170680%_))
                                                       (let ((_%e170669170682%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g170664170680%_))))
                 (let ((_%hd170668170685%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170669170682%_)))
                       (_%tl170667170687%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170669170682%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl170667170687%_))
                       (let ((_%e170672170690%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170667170687%_))))
                         (let ((_%hd170671170693%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170672170690%_)))
                               (_%tl170670170695%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170672170690%_))))
                           ((lambda (_%L170698%_ _%L170699%_)
                              (let ((_%self170716%_
                                     (list-ref
                                      _%L170699%_
                                      _%self-index170659%_)))
                                (for-each
                                 (lambda (_%g170717170719%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs__%
                                      '#f
                                      _%self170716%_
                                      _%method-calls168687%_
                                      _%slot-refs168688%_
                                      _%g170717170719%_)))
                                 _%L170698%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?168691%_))
                                    _%stx168595%_
                                    (let* ((_%specializer-id170728%_
                                            (let* ((_%id170722%_
                                                    (let ((__tmp172710
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L168668%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp172710
                                                       '"::specialize")))
                                                   (_%specializer-id170725%_
                                                    (let ((__tmp172711
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx168595%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id170722%_
                                                       __tmp172711))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id170725%_))
                                              _%specializer-id170725%_))
                                           (_%$klass170730%_
                                            (let ((__tmp172712
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172712)))
                                           (_%$method-table170732%_
                                            (let ((__tmp172713
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172713)))
                                           (_%methods170734%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls168687%_)))
                                           (_%$methods170738%_
                                            (map (lambda (_%id170736%_)
                                                   (let ((__tmp172714
                                                          (gensym _%id170736%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172714)))
                                                 _%methods170734%_))
                                           (_%_170747%_
                                            (for-each
                                             (lambda (_%g170739170742%_
                                                      _%g170740170744%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls168687%_
                                                  _%g170739170742%_
                                                  _%g170740170744%_)))
                                             _%methods170734%_
                                             _%$methods170738%_))
                                           (_%methods-bind170757%_
                                            (map (lambda (_%g170749170752%_
                                                          _%g170750170754%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind168597%_
                                                      _%$klass170730%_
                                                      _%$method-table170732%_
                                                      _%g170749170752%_
                                                      _%g170750170754%_)))
                                                 _%methods170734%_
                                                 _%$methods170738%_))
                                           (_%slots170759%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs168688%_)))
                                           (_%$slots170763%_
                                            (map (lambda (_%id170761%_)
                                                   (let ((__tmp172715
                                                          (gensym _%id170761%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172715)))
                                                 _%slots170759%_))
                                           (_%_170772%_
                                            (for-each
                                             (lambda (_%g170764170767%_
                                                      _%g170765170769%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs168688%_
                                                  _%g170764170767%_
                                                  _%g170765170769%_)))
                                             _%slots170759%_
                                             _%$slots170763%_))
                                           (_%slots-bind170781%_
                                            (map (lambda (_%g170773170776%_
                                                          _%g170774170778%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind168598%_
                                                      _%$klass170730%_
                                                      _%g170773170776%_
                                                      _%g170774170778%_)))
                                                 _%slots170759%_
                                                 _%$slots170763%_))
                                           (_%specializer-impl170789%_
                                            (let* ((_%specializer-body170787%_
                                                    (map (lambda (_%g170782170784%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%self170716%_
                                                              _%$klass170730%_
                                                              _%method-calls168687%_
                                                              _%slot-refs168688%_
                                                              _%g170782170784%_)))
                                                         _%L170698%_))
                                                   (__tmp172716
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L170359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L170358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp172717
                                       (cons '%#lambda
                                             (cons _%L170699%_
                                                   _%specializer-body170787%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp172717
                                   _%L170357%_))
                                '()))
                    '())
              (cons _%L170356%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L170355%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp172716
                                               _%stx168595%_)))
                                           (_%specializer-impl170791%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl168599%_
                                               _%$klass170730%_
                                               _%$method-table170732%_
                                               _%methods-bind170757%_
                                               _%slots-bind170781%_
                                               _%specializer-impl170789%_))))
                                      (let ((__tmp172719
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L168668%_)))
                                            (__tmp172718
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id170728%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp172719
                                         '" => "
                                         __tmp172718))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def168600%_
                                         _%L168668%_
                                         _%specializer-id170728%_
                                         _%specializer-impl170791%_))))))
                            _%tl170670170695%_
                            _%hd170671170693%_)))
                       (let ()
                         (declare (not safe))
                         (_%g170663170677%_ _%g170664170680%_)))))
               (let ()
                 (declare (not safe))
                 (_%g170663170677%_ _%g170664170680%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g170662170794%_ _%L170357%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L170357%_))
                                           (let ()
                                             (let* ((_%g170798170828%_
                                                     (lambda (_%g170799170825%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g170799170825%_))))
                                                    (_%g170797171374%_
                                                     (lambda (_%g170799170831%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g170799170831%_))
                                                           (let ((_%e170805170833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g170799170831%_))))
                     (let ((_%hd170804170836%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170805170833%_)))
                           (_%tl170803170838%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170805170833%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl170803170838%_))
                           (let ((_%e170808170841%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl170803170838%_))))
                             (let ((_%hd170807170844%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170808170841%_)))
                                   (_%tl170806170846%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170808170841%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170807170844%_))
                                   (let ((_%e170811170849%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170807170844%_))))
                                     (let ((_%hd170810170852%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170811170849%_)))
                                           (_%tl170809170854%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170811170849%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd170810170852%_))
                                           (let ((_%e170814170857%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd170810170852%_))))
                                             (let ((_%hd170813170860%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e170814170857%_)))
                                                   (_%tl170812170862%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e170814170857%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd170813170860%_))
                                                   (let ((_%e170817170865%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd170813170860%_))))
                                                     (let ((_%hd170816170868%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170817170865%_)))
                                                           (_%tl170815170870%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170817170865%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl170815170870%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl170812170862%_))
                       (let ((_%e170820170873%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170812170862%_))))
                         (let ((_%hd170819170876%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170820170873%_)))
                               (_%tl170818170878%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170820170873%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl170818170878%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170809170854%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl170806170846%_))
                                       (let ((_%e170823170881%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl170806170846%_))))
                                         (let ((_%hd170822170884%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e170823170881%_)))
                                               (_%tl170821170886%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e170823170881%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl170821170886%_))
                                               ((lambda (_%L170889%_
                                                         _%L170890%_
                                                         _%L170891%_)
                                                  (let* ((_%g170915170929%_
                                                          (lambda (_%g170916170926%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170916170926%_))))
                                                         (_%g170914170970%_
                                                          (lambda (_%g170916170932%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170916170932%_))
                        (let ((_%e170921170934%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170916170932%_))))
                          (let ((_%hd170920170937%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170921170934%_)))
                                (_%tl170919170939%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170921170934%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170919170939%_))
                                (let ((_%e170924170942%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170919170939%_))))
                                  (let ((_%hd170923170945%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170924170942%_)))
                                        (_%tl170922170947%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170924170942%_))))
                                    ((lambda (_%L170950%_ _%L170951%_)
                                       (let ((_%self170964%_
                                              (list-ref
                                               _%L170951%_
                                               _%self-index170659%_)))
                                         (for-each
                                          (lambda (_%g170965170967%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%self170964%_
                                               _%method-calls168687%_
                                               _%slot-refs168688%_
                                               _%g170965170967%_)))
                                          _%L170950%_)))
                                     _%tl170922170947%_
                                     _%hd170923170945%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g170915170929%_ _%g170916170932%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170915170929%_ _%g170916170932%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170914170970%_
                                                     _%L170890%_))
                                                  (let* ((_%g170973170992%_
                                                          (lambda (_%g170974170989%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170974170989%_))))
                                                         (_%g170972171097%_
                                                          (lambda (_%g170974170995%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170974170995%_))
                        (let ((_%e170978170997%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170974170995%_))))
                          (let ((_%hd170977171000%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170978170997%_)))
                                (_%tl170976171002%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170978170997%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl170976171002%_))
                                (let ((_g172720_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl170976171002%_
                                          '0))))
                                  (begin
                                    (let ((_g172721_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g172720_)
                                                 (##vector-length _g172720_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g172721_ 2)))
                                          (error "Context expects 2 values"
                                                 _g172721_)))
                                    (let ((_%target170979171005%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172720_ 0)))
                                          (_%tl170981171007%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172720_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170981171007%_))
                                          (letrec ((_%loop170982171010%_
                                                    (lambda (_%hd170980171013%_
                                                             _%clause170986171015%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd170980171013%_))
                                                          (let ((_%e170983171018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd170980171013%_))))
                    (let ((_%lp-hd170984171021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170983171018%_)))
                          (_%lp-tl170985171023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170983171018%_))))
                      (let ((__tmp172722
                             (cons _%lp-hd170984171021%_
                                   _%clause170986171015%_)))
                        (declare (not safe))
                        (_%loop170982171010%_
                         _%lp-tl170985171023%_
                         __tmp172722))))
                  (let ((_%clause170987171026%_
                         (reverse _%clause170986171015%_)))
                    ((lambda (_%L171029%_)
                       (for-each
                        (lambda (_%clause171042%_)
                          (let* ((_%g171044171055%_
                                  (lambda (_%g171045171052%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g171045171052%_))))
                                 (_%g171043171087%_
                                  (lambda (_%g171045171058%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g171045171058%_))
                                        (let ((_%e171050171060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g171045171058%_))))
                                          (let ((_%hd171049171063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171050171060%_)))
                                                (_%tl171048171065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171050171060%_))))
                                            ((lambda (_%L171068%_ _%L171069%_)
                                               (let ((_%self171081%_
                                                      (list-ref
                                                       _%L171069%_
                                                       _%self-index170659%_)))
                                                 (for-each
                                                  (lambda (_%g171082171084%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%self171081%_
                                                       _%method-calls168687%_
                                                       _%slot-refs168688%_
                                                       _%g171082171084%_)))
                                                  _%L171068%_)))
                                             _%tl171048171065%_
                                             _%hd171049171063%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g171044171055%_
                                           _%g171045171058%_))))))
                            (declare (not safe))
                            (_%g171043171087%_ _%clause171042%_)))
                        (let ((__tmp172723
                               (lambda (_%g171089171092%_ _%g171090171094%_)
                                 (cons _%g171089171092%_ _%g171090171094%_))))
                          (declare (not safe))
                          (__foldr1 __tmp172723 '() _%L171029%_))))
                     _%clause170987171026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop170982171010%_
                                               _%target170979171005%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170973170992%_
                                             _%g170974170995%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g170973170992%_ _%g170974170995%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170973170992%_ _%g170974170995%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170972171097%_
                                                     _%L170889%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?168691%_))
                                                      _%stx168595%_
                                                      (let* ((_%specializer-id171106%_
                                                              (let* ((_%id171100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp172724
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L168668%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp172724 '"::specialize")))
                             (_%specializer-id171103%_
                              (let ((__tmp172725
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx168595%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id171100%_
                                 __tmp172725))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id171103%_))
                        _%specializer-id171103%_))
                     (_%$klass171108%_
                      (let ((__tmp172726
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172726)))
                     (_%$method-table171110%_
                      (let ((__tmp172727
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172727)))
                     (_%methods171112%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls168687%_)))
                     (_%$methods171116%_
                      (map (lambda (_%id171114%_)
                             (let ((__tmp172728 (gensym _%id171114%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172728)))
                           _%methods171112%_))
                     (_%_171125%_
                      (for-each
                       (lambda (_%g171117171120%_ _%g171118171122%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls168687%_
                            _%g171117171120%_
                            _%g171118171122%_)))
                       _%methods171112%_
                       _%$methods171116%_))
                     (_%methods-bind171135%_
                      (map (lambda (_%g171127171130%_ _%g171128171132%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind168597%_
                                _%$klass171108%_
                                _%$method-table171110%_
                                _%g171127171130%_
                                _%g171128171132%_)))
                           _%methods171112%_
                           _%$methods171116%_))
                     (_%slots171137%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs168688%_)))
                     (_%$slots171141%_
                      (map (lambda (_%id171139%_)
                             (let ((__tmp172729 (gensym _%id171139%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172729)))
                           _%slots171137%_))
                     (_%_171150%_
                      (for-each
                       (lambda (_%g171142171145%_ _%g171143171147%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs168688%_
                            _%g171142171145%_
                            _%g171143171147%_)))
                       _%slots171137%_
                       _%$slots171141%_))
                     (_%slots-bind171159%_
                      (map (lambda (_%g171151171154%_ _%g171152171156%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind168598%_
                                _%$klass171108%_
                                _%g171151171154%_
                                _%g171152171156%_)))
                           _%slots171137%_
                           _%$slots171141%_))
                     (_%specializer-lambda-expr171232%_
                      (let* ((_%g171161171175%_
                              (lambda (_%g171162171172%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171162171172%_))))
                             (_%g171160171229%_
                              (lambda (_%g171162171178%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171162171178%_))
                                    (let ((_%e171167171180%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171162171178%_))))
                                      (let ((_%hd171166171183%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171167171180%_)))
                                            (_%tl171165171185%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171167171180%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171165171185%_))
                                            (let ((_%e171170171188%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171165171185%_))))
                                              (let ((_%hd171169171191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171170171188%_)))
                                                    (_%tl171168171193%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171170171188%_))))
                                                ((lambda (_%L171196%_
                                                          _%L171197%_)
                                                   (let* ((_%self171220%_
                                                           (list-ref
                                                            _%L171197%_
                                                            _%self-index170659%_))
                                                          (_%body171226%_
                                                           (map (lambda (_%g171221171223%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%self171220%_
                             _%$klass171108%_
                             _%method-calls168687%_
                             _%slot-refs168688%_
                             _%g171221171223%_)))
                        _%L171196%_))
                  (__tmp172730
                   (cons '%#lambda (cons _%L171197%_ _%body171226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172730
                                                      _%L170890%_)))
                                                 _%tl171168171193%_
                                                 _%hd171169171191%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g171161171175%_
                                               _%g171162171178%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171161171175%_
                                       _%g171162171178%_))))))
                        (declare (not safe))
                        (_%g171160171229%_ _%L170890%_)))
                     (_%specializer-case-lambda-expr171367%_
                      (let* ((_%g171234171253%_
                              (lambda (_%g171235171250%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171235171250%_))))
                             (_%g171233171364%_
                              (lambda (_%g171235171256%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171235171256%_))
                                    (let ((_%e171239171258%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171235171256%_))))
                                      (let ((_%hd171238171261%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171239171258%_)))
                                            (_%tl171237171263%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171239171258%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl171237171263%_))
                                            (let ((_g172731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl171237171263%_
                                                      '0))))
                                              (begin
                                                (let ((_g172732_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g172731_)
                                                             (##vector-length
                                                              _g172731_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g172732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g172732_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target171240171266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172731_
                                                          0)))
                                                      (_%tl171242171268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172731_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171242171268%_))
                                                      (letrec ((_%loop171243171271%_
                                                                (lambda (_%hd171241171274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause171247171276%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd171241171274%_))
                              (let ((_%e171244171279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd171241171274%_))))
                                (let ((_%lp-hd171245171282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171244171279%_)))
                                      (_%lp-tl171246171284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171244171279%_))))
                                  (let ((__tmp172733
                                         (cons _%lp-hd171245171282%_
                                               _%clause171247171276%_)))
                                    (declare (not safe))
                                    (_%loop171243171271%_
                                     _%lp-tl171246171284%_
                                     __tmp172733))))
                              (let ((_%clause171248171287%_
                                     (reverse _%clause171247171276%_)))
                                ((lambda (_%L171290%_)
                                   (let* ((_%clauses171362%_
                                           (map (lambda (_%clause171304%_)
                                                  (let* ((_%g171306171317%_
                                                          (lambda (_%g171307171314%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g171307171314%_))))
                                                         (_%g171305171352%_
                                                          (lambda (_%g171307171320%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g171307171320%_))
                        (let ((_%e171312171322%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g171307171320%_))))
                          (let ((_%hd171311171325%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171312171322%_)))
                                (_%tl171310171327%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171312171322%_))))
                            ((lambda (_%L171330%_ _%L171331%_)
                               (let* ((_%self171343%_
                                       (list-ref
                                        _%L171331%_
                                        _%self-index170659%_))
                                      (_%body171349%_
                                       (map (lambda (_%g171344171346%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%self171343%_
                                                 _%$klass171108%_
                                                 _%method-calls168687%_
                                                 _%slot-refs168688%_
                                                 _%g171344171346%_)))
                                            _%L171330%_)))
                                 (cons _%L171331%_ _%body171349%_)))
                             _%tl171310171327%_
                             _%hd171311171325%_)))
                        (let ()
                          (declare (not safe))
                          (_%g171306171317%_ _%g171307171320%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g171305171352%_
                                                     _%clause171304%_)))
                                                (let ((__tmp172734
                                                       (lambda (_%g171354171357%_
                                                                _%g171355171359%_)
                                                         (cons _%g171354171357%_
                                                               _%g171355171359%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172734
                                                   '()
                                                   _%L171290%_))))
                                          (__tmp172735
                                           (cons '%#case-lambda
                                                 _%clauses171362%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp172735
                                      _%L170889%_)))
                                 _%clause171248171287%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop171243171271%_ _%target171240171266%_ '())))
              (let ()
                (declare (not safe))
                (_%g171234171253%_ _%g171235171256%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g171234171253%_
                                               _%g171235171256%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171234171253%_
                                       _%g171235171256%_))))))
                        (declare (not safe))
                        (_%g171233171364%_ _%L170889%_)))
                     (_%specializer-impl171369%_
                      (let ((__tmp172736
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L170359%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L170358%_ '())
                                           (cons (let ((__tmp172737
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L170891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr171232%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr171367%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp172737
                                                    _%stx168595%_))
                                                 '()))
                                     '())
                               (cons _%L170356%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L170355%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp172736 _%stx168595%_)))
                     (_%specializer-impl171371%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl168599%_
                         _%$klass171108%_
                         _%$method-table171110%_
                         _%methods-bind171135%_
                         _%slots-bind171159%_
                         _%specializer-impl171369%_))))
                (let ((__tmp172739
                       (let () (declare (not safe)) (gx#stx-e _%L168668%_)))
                      (__tmp172738
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id171106%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp172739
                   '" => "
                   __tmp172738))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def168600%_
                   _%L168668%_
                   _%specializer-id171106%_
                   _%specializer-impl171371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd170822170884%_
                                                _%hd170819170876%_
                                                _%hd170816170868%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g170798170828%_
                                                  _%g170799170831%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g170798170828%_
                                          _%g170799170831%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170798170828%_ _%g170799170831%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g170798170828%_ _%g170799170831%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g170798170828%_ _%g170799170831%_)))
                   (let ()
                     (declare (not safe))
                     (_%g170798170828%_ _%g170799170831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g170798170828%_
                                                      _%g170799170831%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g170798170828%_
                                              _%g170799170831%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170798170828%_ _%g170799170831%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g170798170828%_ _%g170799170831%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g170798170828%_ _%g170799170831%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g170797171374%_
                                                _%L170357%_)))
                                           (let () _%stx168595%_)))))
                               _%hd170455170578%_
                               _%kw-ref170453170599%_
                               _%hd170443170565%_
                               _%hd170434170541%_
                               _%hd170425170517%_)
                              (let ()
                                (declare (not safe))
                                (_%g170399170461%_ _%g170400170464%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop170448170583%_
                                                     _%target170445170570%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170399170461%_
                                                   _%g170400170464%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170399170461%_
                                           _%g170400170464%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g170399170461%_ _%g170400170464%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170399170461%_ _%g170400170464%_)))
                      (let ()
                        (declare (not safe))
                        (_%g170399170461%_ _%g170400170464%_)))))
              (let ()
                (declare (not safe))
                (_%g170399170461%_ _%g170400170464%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170399170461%_
                                                     _%g170400170464%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170399170461%_
                                                 _%g170400170464%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170399170461%_
                                         _%g170400170464%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170399170461%_ _%g170400170464%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170399170461%_ _%g170400170464%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g170399170461%_ _%g170400170464%_)))
              (let ()
                (declare (not safe))
                (_%g170399170461%_ _%g170400170464%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170399170461%_
                                                     _%g170400170464%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170399170461%_
                                             _%g170400170464%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170399170461%_ _%g170400170464%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170399170461%_ _%g170400170464%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170399170461%_ _%g170400170464%_)))
                  (let ()
                    (declare (not safe))
                    (_%g170399170461%_ _%g170400170464%_)))
              (let ()
                (declare (not safe))
                (_%g170399170461%_ _%g170400170464%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170399170461%_
                                                 _%g170400170464%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170399170461%_ _%g170400170464%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170399170461%_ _%g170400170464%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170399170461%_ _%g170400170464%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170399170461%_ _%g170400170464%_)))))
              (let ()
                (declare (not safe))
                (_%g170399170461%_ _%g170400170464%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170399170461%_
                                                 _%g170400170464%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170399170461%_
                                             _%g170400170464%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170399170461%_
                                         _%g170400170464%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170399170461%_ _%g170400170464%_))))))
                  (declare (not safe))
                  (_%g170398171378%_ _%L170356%_)))
              _%hd170232170350%_
              _%hd170229170342%_
              _%hd170226170334%_
              _%hd170223170326%_
              _%hd170205170278%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170185170238%_
                                                        _%g170186170241%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170185170238%_
                                                _%g170186170241%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170185170238%_
                                            _%g170186170241%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170185170238%_ _%g170186170241%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170185170238%_ _%g170186170241%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g170185170238%_ _%g170186170241%_)))
                     (let ()
                       (declare (not safe))
                       (_%g170185170238%_ _%g170186170241%_)))
                 (let ()
                   (declare (not safe))
                   (_%g170185170238%_ _%g170186170241%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170185170238%_
                                                    _%g170186170241%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170185170238%_
                                                _%g170186170241%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170185170238%_
                                        _%g170186170241%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170185170238%_ _%g170186170241%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g170185170238%_ _%g170186170241%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170185170238%_
                                                        _%g170186170241%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170185170238%_
                                                    _%g170186170241%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170185170238%_
                                                _%g170186170241%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170185170238%_
                                        _%g170186170241%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170185170238%_ _%g170186170241%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170185170238%_ _%g170186170241%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170185170238%_ _%g170186170241%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170185170238%_
                                                    _%g170186170241%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170185170238%_
                                            _%g170186170241%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170185170238%_ _%g170186170241%_)))
                             (let ()
                               (declare (not safe))
                               (_%g170185170238%_ _%g170186170241%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170185170238%_ _%g170186170241%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170185170238%_ _%g170186170241%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g170184171381%_ _%L168667%_)))
                                         (let () _%stx168595%_)))))))))
                  (_%__kont171604171605%_ (lambda () _%stx168595%_)))
              (let ((_%__match171633171634%_
                     (lambda (_%e168609168635%_
                              _%hd168608168638%_
                              _%tl168607168640%_
                              _%e168612168643%_
                              _%hd168611168646%_
                              _%tl168610168648%_
                              _%e168615168651%_
                              _%hd168614168654%_
                              _%tl168613168656%_
                              _%e168618168659%_
                              _%hd168617168662%_
                              _%tl168616168664%_)
                       (let ((_%L168667%_ _%hd168617168662%_)
                             (_%L168668%_ _%hd168614168654%_))
                         (if (let ((__tmp172740
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168668%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp172740))
                             (_%__kont171602171603%_ _%L168667%_ _%L168668%_)
                             (_%__kont171604171605%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171600171601%_))
                    (let ((_%e168609168635%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171600171601%_))))
                      (let ((_%tl168607168640%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168609168635%_)))
                            (_%hd168608168638%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168609168635%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168607168640%_))
                            (let ((_%e168612168643%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168607168640%_))))
                              (let ((_%tl168610168648%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168612168643%_)))
                                    (_%hd168611168646%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168612168643%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd168611168646%_))
                                    (let ((_%e168615168651%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd168611168646%_))))
                                      (let ((_%tl168613168656%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168615168651%_)))
                                            (_%hd168614168654%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168615168651%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168613168656%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168610168648%_))
                                                (let ((_%e168618168659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168610168648%_))))
                                                  (let ((_%tl168616168664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168618168659%_)))
                                                        (_%hd168617168662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168618168659%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168616168664%_))
                                                        (_%__match171633171634%_
                                                         _%e168609168635%_
                                                         _%hd168608168638%_
                                                         _%tl168607168640%_
                                                         _%e168612168643%_
                                                         _%hd168611168646%_
                                                         _%tl168610168648%_
                                                         _%e168615168651%_
                                                         _%hd168614168654%_
                                                         _%tl168613168656%_
                                                         _%e168618168659%_
                                                         _%hd168617168662%_
                                                         _%tl168616168664%_)
                                                        (_%__kont171604171605%_))))
                                                (_%__kont171604171605%_))
                                            (_%__kont171604171605%_))))
                                    (_%__kont171604171605%_))))
                            (_%__kont171604171605%_))))
                    (_%__kont171604171605%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self167555%_ _%stx167556%_)
        (let* ((_%__stx171636171637%_ _%stx167556%_)
               (_%g167564167786%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171636171637%_)))))
          (let ((_%__kont171638171639%_
                 (lambda (_%L168543%_ _%L168544%_ _%L168545%_ _%L168546%_)
                   (let ((__tmp172742
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167555%_ 'methods)))
                         (__tmp172741
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168544%_))))
                     (declare (not safe))
                     (hash-put! __tmp172742 __tmp172741 '#t))
                   (for-each
                    (lambda (_%g168579168581%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167555%_ _%g168579168581%_)))
                    (let ((__tmp172743
                           (lambda (_%g168583168586%_ _%g168584168588%_)
                             (cons _%g168583168586%_ _%g168584168588%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172743 '() _%L168543%_)))))
                (_%__kont171642171643%_
                 (lambda (_%L168378%_
                          _%L168379%_
                          _%L168380%_
                          _%L168381%_
                          _%L168382%_)
                   (let ((__tmp172745
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167555%_ 'methods)))
                         (__tmp172744
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168379%_))))
                     (declare (not safe))
                     (hash-put! __tmp172745 __tmp172744 '#t))
                   (for-each
                    (lambda (_%g168422168424%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167555%_ _%g168422168424%_)))
                    (let ((__tmp172746
                           (lambda (_%g168426168429%_ _%g168427168431%_)
                             (cons _%g168426168429%_ _%g168427168431%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172746 '() _%L168378%_)))))
                (_%__kont171646171647%_
                 (lambda (_%L168211%_ _%L168212%_ _%L168213%_)
                   (let ((__tmp172748
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167555%_ 'slots)))
                         (__tmp172747
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168211%_))))
                     (declare (not safe))
                     (hash-put! __tmp172748 __tmp172747 '#t))))
                (_%__kont171648171649%_
                 (lambda (_%L168088%_ _%L168089%_ _%L168090%_ _%L168091%_)
                   (let ((__tmp172750
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167555%_ 'slots)))
                         (__tmp172749
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168089%_))))
                     (declare (not safe))
                     (hash-put! __tmp172750 __tmp172749 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self167555%_ _%L168088%_))))
                (_%__kont171650171651%_
                 (lambda (_%L167962%_ _%L167963%_)
                   (let* ((_%accessor167985%_
                           (let ((__tmp172751
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167963%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172751)))
                          (_%klass167987%_
                           (let ((__tmp172752
                                  (##structure-ref
                                   _%accessor167985%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167556%_
                              __tmp172752)))
                          (_%slot167989%_
                           (##structure-ref
                            _%accessor167985%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp172753
                                     (##structure-ref
                                      _%accessor167985%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172753))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167987%_
                                     _%slot167989%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167987%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172755
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167555%_ 'slots)))
                               (__tmp172754
                                (##structure-ref
                                 _%accessor167985%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp172755 __tmp172754 '#t))))))
                (_%__kont171652171653%_
                 (lambda (_%L167862%_ _%L167863%_ _%L167864%_)
                   (let* ((_%mutator167891%_
                           (let ((__tmp172756
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167864%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172756)))
                          (_%klass167893%_
                           (let ((__tmp172757
                                  (##structure-ref
                                   _%mutator167891%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167556%_
                              __tmp172757)))
                          (_%slot167895%_
                           (##structure-ref
                            _%mutator167891%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp172758
                                     (##structure-ref
                                      _%mutator167891%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172758))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167893%_
                                     _%slot167895%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167893%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172759
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167555%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp172759 _%slot167895%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self167555%_ _%L167862%_)))))
                (_%__kont171654171655%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self167555%_ _%stx167556%_)))))
            (let* ((_%__match172135172136%_
                    (lambda (_%e167760167798%_
                             _%hd167759167801%_
                             _%tl167758167803%_
                             _%e167763167806%_
                             _%hd167762167809%_
                             _%tl167761167811%_
                             _%e167766167814%_
                             _%hd167765167817%_
                             _%tl167764167819%_
                             _%e167769167822%_
                             _%hd167768167825%_
                             _%tl167767167827%_
                             _%e167772167830%_
                             _%hd167771167833%_
                             _%tl167770167835%_
                             _%e167775167838%_
                             _%hd167774167841%_
                             _%tl167773167843%_
                             _%e167778167846%_
                             _%hd167777167849%_
                             _%tl167776167851%_
                             _%e167781167854%_
                             _%hd167780167857%_
                             _%tl167779167859%_)
                      (let ((_%L167862%_ _%hd167780167857%_)
                            (_%L167863%_ _%hd167777167849%_)
                            (_%L167864%_ _%hd167768167825%_))
                        (if (and (let ((__tmp172760
                                        (let ((__tmp172761
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167864%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172761))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172760
                                    'gxc#!mutator::t))
                                 (let ((__tmp172762
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167555%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167863%_
                                    __tmp172762)))
                            (_%__kont171652171653%_
                             _%L167862%_
                             _%L167863%_
                             _%L167864%_)
                            (_%__kont171654171655%_)))))
                   (_%__match172133172134%_
                    (lambda (_%e167760167798%_
                             _%hd167759167801%_
                             _%tl167758167803%_
                             _%e167763167806%_
                             _%hd167762167809%_
                             _%tl167761167811%_
                             _%e167766167814%_
                             _%hd167765167817%_
                             _%tl167764167819%_
                             _%e167769167822%_
                             _%hd167768167825%_
                             _%tl167767167827%_
                             _%e167772167830%_
                             _%hd167771167833%_
                             _%tl167770167835%_
                             _%e167775167838%_
                             _%hd167774167841%_
                             _%tl167773167843%_
                             _%e167778167846%_
                             _%hd167777167849%_
                             _%tl167776167851%_
                             _%e167781167854%_
                             _%hd167780167857%_
                             _%tl167779167859%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167779167859%_))
                          (_%__match172135172136%_
                           _%e167760167798%_
                           _%hd167759167801%_
                           _%tl167758167803%_
                           _%e167763167806%_
                           _%hd167762167809%_
                           _%tl167761167811%_
                           _%e167766167814%_
                           _%hd167765167817%_
                           _%tl167764167819%_
                           _%e167769167822%_
                           _%hd167768167825%_
                           _%tl167767167827%_
                           _%e167772167830%_
                           _%hd167771167833%_
                           _%tl167770167835%_
                           _%e167775167838%_
                           _%hd167774167841%_
                           _%tl167773167843%_
                           _%e167778167846%_
                           _%hd167777167849%_
                           _%tl167776167851%_
                           _%e167781167854%_
                           _%hd167780167857%_
                           _%tl167779167859%_)
                          (_%__kont171654171655%_))))
                   (_%__match172127172128%_
                    (lambda (_%e167760167798%_
                             _%hd167759167801%_
                             _%tl167758167803%_
                             _%e167763167806%_
                             _%hd167762167809%_
                             _%tl167761167811%_
                             _%e167766167814%_
                             _%hd167765167817%_
                             _%tl167764167819%_
                             _%e167769167822%_
                             _%hd167768167825%_
                             _%tl167767167827%_
                             _%e167772167830%_
                             _%hd167771167833%_
                             _%tl167770167835%_
                             _%e167775167838%_
                             _%hd167774167841%_
                             _%tl167773167843%_
                             _%e167778167846%_
                             _%hd167777167849%_
                             _%tl167776167851%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167770167835%_))
                          (let ((_%e167781167854%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167770167835%_))))
                            (let ((_%tl167779167859%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167781167854%_)))
                                  (_%hd167780167857%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167781167854%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167779167859%_))
                                  (_%__match172135172136%_
                                   _%e167760167798%_
                                   _%hd167759167801%_
                                   _%tl167758167803%_
                                   _%e167763167806%_
                                   _%hd167762167809%_
                                   _%tl167761167811%_
                                   _%e167766167814%_
                                   _%hd167765167817%_
                                   _%tl167764167819%_
                                   _%e167769167822%_
                                   _%hd167768167825%_
                                   _%tl167767167827%_
                                   _%e167772167830%_
                                   _%hd167771167833%_
                                   _%tl167770167835%_
                                   _%e167775167838%_
                                   _%hd167774167841%_
                                   _%tl167773167843%_
                                   _%e167778167846%_
                                   _%hd167777167849%_
                                   _%tl167776167851%_
                                   _%e167781167854%_
                                   _%hd167780167857%_
                                   _%tl167779167859%_)
                                  (_%__kont171654171655%_))))
                          (_%__kont171654171655%_))))
                   (_%__match172073172074%_
                    (lambda (_%e167736167906%_
                             _%hd167735167909%_
                             _%tl167734167911%_
                             _%e167739167914%_
                             _%hd167738167917%_
                             _%tl167737167919%_
                             _%e167742167922%_
                             _%hd167741167925%_
                             _%tl167740167927%_
                             _%e167745167930%_
                             _%hd167744167933%_
                             _%tl167743167935%_
                             _%e167748167938%_
                             _%hd167747167941%_
                             _%tl167746167943%_
                             _%e167751167946%_
                             _%hd167750167949%_
                             _%tl167749167951%_
                             _%e167754167954%_
                             _%hd167753167957%_
                             _%tl167752167959%_)
                      (let ((_%L167962%_ _%hd167753167957%_)
                            (_%L167963%_ _%hd167744167933%_))
                        (if (and (let ((__tmp172763
                                        (let ((__tmp172764
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167963%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172764))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172763
                                    'gxc#!accessor::t))
                                 (let ((__tmp172765
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167555%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167962%_
                                    __tmp172765)))
                            (_%__kont171650171651%_ _%L167962%_ _%L167963%_)
                            (_%__kont171654171655%_)))))
                   (_%__match172071172072%_
                    (lambda (_%e167736167906%_
                             _%hd167735167909%_
                             _%tl167734167911%_
                             _%e167739167914%_
                             _%hd167738167917%_
                             _%tl167737167919%_
                             _%e167742167922%_
                             _%hd167741167925%_
                             _%tl167740167927%_
                             _%e167745167930%_
                             _%hd167744167933%_
                             _%tl167743167935%_
                             _%e167748167938%_
                             _%hd167747167941%_
                             _%tl167746167943%_
                             _%e167751167946%_
                             _%hd167750167949%_
                             _%tl167749167951%_
                             _%e167754167954%_
                             _%hd167753167957%_
                             _%tl167752167959%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167746167943%_))
                          (_%__match172073172074%_
                           _%e167736167906%_
                           _%hd167735167909%_
                           _%tl167734167911%_
                           _%e167739167914%_
                           _%hd167738167917%_
                           _%tl167737167919%_
                           _%e167742167922%_
                           _%hd167741167925%_
                           _%tl167740167927%_
                           _%e167745167930%_
                           _%hd167744167933%_
                           _%tl167743167935%_
                           _%e167748167938%_
                           _%hd167747167941%_
                           _%tl167746167943%_
                           _%e167751167946%_
                           _%hd167750167949%_
                           _%tl167749167951%_
                           _%e167754167954%_
                           _%hd167753167957%_
                           _%tl167752167959%_)
                          (_%__match172127172128%_
                           _%e167736167906%_
                           _%hd167735167909%_
                           _%tl167734167911%_
                           _%e167739167914%_
                           _%hd167738167917%_
                           _%tl167737167919%_
                           _%e167742167922%_
                           _%hd167741167925%_
                           _%tl167740167927%_
                           _%e167745167930%_
                           _%hd167744167933%_
                           _%tl167743167935%_
                           _%e167748167938%_
                           _%hd167747167941%_
                           _%tl167746167943%_
                           _%e167751167946%_
                           _%hd167750167949%_
                           _%tl167749167951%_
                           _%e167754167954%_
                           _%hd167753167957%_
                           _%tl167752167959%_))))
                   (_%__match172017172018%_
                    (lambda (_%e167701168000%_
                             _%hd167700168003%_
                             _%tl167699168005%_
                             _%e167704168008%_
                             _%hd167703168011%_
                             _%tl167702168013%_
                             _%e167707168016%_
                             _%hd167706168019%_
                             _%tl167705168021%_
                             _%e167710168024%_
                             _%hd167709168027%_
                             _%tl167708168029%_
                             _%e167713168032%_
                             _%hd167712168035%_
                             _%tl167711168037%_
                             _%e167716168040%_
                             _%hd167715168043%_
                             _%tl167714168045%_
                             _%e167719168048%_
                             _%hd167718168051%_
                             _%tl167717168053%_
                             _%e167722168056%_
                             _%hd167721168059%_
                             _%tl167720168061%_
                             _%e167725168064%_
                             _%hd167724168067%_
                             _%tl167723168069%_
                             _%e167728168072%_
                             _%hd167727168075%_
                             _%tl167726168077%_
                             _%e167731168080%_
                             _%hd167730168083%_
                             _%tl167729168085%_)
                      (let ((_%L168088%_ _%hd167730168083%_)
                            (_%L168089%_ _%hd167727168075%_)
                            (_%L168090%_ _%hd167718168051%_)
                            (_%L168091%_ _%hd167709168027%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168091%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168091%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp172766
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167555%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168090%_
                                    __tmp172766)))
                            (_%__kont171648171649%_
                             _%L168088%_
                             _%L168089%_
                             _%L168090%_
                             _%L168091%_)
                            (_%__kont171654171655%_)))))
                   (_%__match172009172010%_
                    (lambda (_%e167701168000%_
                             _%hd167700168003%_
                             _%tl167699168005%_
                             _%e167704168008%_
                             _%hd167703168011%_
                             _%tl167702168013%_
                             _%e167707168016%_
                             _%hd167706168019%_
                             _%tl167705168021%_
                             _%e167710168024%_
                             _%hd167709168027%_
                             _%tl167708168029%_
                             _%e167713168032%_
                             _%hd167712168035%_
                             _%tl167711168037%_
                             _%e167716168040%_
                             _%hd167715168043%_
                             _%tl167714168045%_
                             _%e167719168048%_
                             _%hd167718168051%_
                             _%tl167717168053%_
                             _%e167722168056%_
                             _%hd167721168059%_
                             _%tl167720168061%_
                             _%e167725168064%_
                             _%hd167724168067%_
                             _%tl167723168069%_
                             _%e167728168072%_
                             _%hd167727168075%_
                             _%tl167726168077%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167720168061%_))
                          (let ((_%e167731168080%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167720168061%_))))
                            (let ((_%tl167729168085%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167731168080%_)))
                                  (_%hd167730168083%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167731168080%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167729168085%_))
                                  (_%__match172017172018%_
                                   _%e167701168000%_
                                   _%hd167700168003%_
                                   _%tl167699168005%_
                                   _%e167704168008%_
                                   _%hd167703168011%_
                                   _%tl167702168013%_
                                   _%e167707168016%_
                                   _%hd167706168019%_
                                   _%tl167705168021%_
                                   _%e167710168024%_
                                   _%hd167709168027%_
                                   _%tl167708168029%_
                                   _%e167713168032%_
                                   _%hd167712168035%_
                                   _%tl167711168037%_
                                   _%e167716168040%_
                                   _%hd167715168043%_
                                   _%tl167714168045%_
                                   _%e167719168048%_
                                   _%hd167718168051%_
                                   _%tl167717168053%_
                                   _%e167722168056%_
                                   _%hd167721168059%_
                                   _%tl167720168061%_
                                   _%e167725168064%_
                                   _%hd167724168067%_
                                   _%tl167723168069%_
                                   _%e167728168072%_
                                   _%hd167727168075%_
                                   _%tl167726168077%_
                                   _%e167731168080%_
                                   _%hd167730168083%_
                                   _%tl167729168085%_)
                                  (_%__kont171654171655%_))))
                          (_%__match172133172134%_
                           _%e167701168000%_
                           _%hd167700168003%_
                           _%tl167699168005%_
                           _%e167704168008%_
                           _%hd167703168011%_
                           _%tl167702168013%_
                           _%e167707168016%_
                           _%hd167706168019%_
                           _%tl167705168021%_
                           _%e167710168024%_
                           _%hd167709168027%_
                           _%tl167708168029%_
                           _%e167713168032%_
                           _%hd167712168035%_
                           _%tl167711168037%_
                           _%e167716168040%_
                           _%hd167715168043%_
                           _%tl167714168045%_
                           _%e167719168048%_
                           _%hd167718168051%_
                           _%tl167717168053%_
                           _%e167722168056%_
                           _%hd167721168059%_
                           _%tl167720168061%_))))
                   (_%__match171931171932%_
                    (lambda (_%e167667168131%_
                             _%hd167666168134%_
                             _%tl167665168136%_
                             _%e167670168139%_
                             _%hd167669168142%_
                             _%tl167668168144%_
                             _%e167673168147%_
                             _%hd167672168150%_
                             _%tl167671168152%_
                             _%e167676168155%_
                             _%hd167675168158%_
                             _%tl167674168160%_
                             _%e167679168163%_
                             _%hd167678168166%_
                             _%tl167677168168%_
                             _%e167682168171%_
                             _%hd167681168174%_
                             _%tl167680168176%_
                             _%e167685168179%_
                             _%hd167684168182%_
                             _%tl167683168184%_
                             _%e167688168187%_
                             _%hd167687168190%_
                             _%tl167686168192%_
                             _%e167691168195%_
                             _%hd167690168198%_
                             _%tl167689168200%_
                             _%e167694168203%_
                             _%hd167693168206%_
                             _%tl167692168208%_)
                      (let ((_%L168211%_ _%hd167693168206%_)
                            (_%L168212%_ _%hd167684168182%_)
                            (_%L168213%_ _%hd167675168158%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168213%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168213%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp172767
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167555%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168212%_
                                    __tmp172767)))
                            (_%__kont171646171647%_
                             _%L168211%_
                             _%L168212%_
                             _%L168213%_)
                            (_%__match172135172136%_
                             _%e167667168131%_
                             _%hd167666168134%_
                             _%tl167665168136%_
                             _%e167670168139%_
                             _%hd167669168142%_
                             _%tl167668168144%_
                             _%e167673168147%_
                             _%hd167672168150%_
                             _%tl167671168152%_
                             _%e167676168155%_
                             _%hd167675168158%_
                             _%tl167674168160%_
                             _%e167679168163%_
                             _%hd167678168166%_
                             _%tl167677168168%_
                             _%e167682168171%_
                             _%hd167681168174%_
                             _%tl167680168176%_
                             _%e167685168179%_
                             _%hd167684168182%_
                             _%tl167683168184%_
                             _%e167688168187%_
                             _%hd167687168190%_
                             _%tl167686168192%_)))))
                   (_%__match171929171930%_
                    (lambda (_%e167667168131%_
                             _%hd167666168134%_
                             _%tl167665168136%_
                             _%e167670168139%_
                             _%hd167669168142%_
                             _%tl167668168144%_
                             _%e167673168147%_
                             _%hd167672168150%_
                             _%tl167671168152%_
                             _%e167676168155%_
                             _%hd167675168158%_
                             _%tl167674168160%_
                             _%e167679168163%_
                             _%hd167678168166%_
                             _%tl167677168168%_
                             _%e167682168171%_
                             _%hd167681168174%_
                             _%tl167680168176%_
                             _%e167685168179%_
                             _%hd167684168182%_
                             _%tl167683168184%_
                             _%e167688168187%_
                             _%hd167687168190%_
                             _%tl167686168192%_
                             _%e167691168195%_
                             _%hd167690168198%_
                             _%tl167689168200%_
                             _%e167694168203%_
                             _%hd167693168206%_
                             _%tl167692168208%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167686168192%_))
                          (_%__match171931171932%_
                           _%e167667168131%_
                           _%hd167666168134%_
                           _%tl167665168136%_
                           _%e167670168139%_
                           _%hd167669168142%_
                           _%tl167668168144%_
                           _%e167673168147%_
                           _%hd167672168150%_
                           _%tl167671168152%_
                           _%e167676168155%_
                           _%hd167675168158%_
                           _%tl167674168160%_
                           _%e167679168163%_
                           _%hd167678168166%_
                           _%tl167677168168%_
                           _%e167682168171%_
                           _%hd167681168174%_
                           _%tl167680168176%_
                           _%e167685168179%_
                           _%hd167684168182%_
                           _%tl167683168184%_
                           _%e167688168187%_
                           _%hd167687168190%_
                           _%tl167686168192%_
                           _%e167691168195%_
                           _%hd167690168198%_
                           _%tl167689168200%_
                           _%e167694168203%_
                           _%hd167693168206%_
                           _%tl167692168208%_)
                          (_%__match172009172010%_
                           _%e167667168131%_
                           _%hd167666168134%_
                           _%tl167665168136%_
                           _%e167670168139%_
                           _%hd167669168142%_
                           _%tl167668168144%_
                           _%e167673168147%_
                           _%hd167672168150%_
                           _%tl167671168152%_
                           _%e167676168155%_
                           _%hd167675168158%_
                           _%tl167674168160%_
                           _%e167679168163%_
                           _%hd167678168166%_
                           _%tl167677168168%_
                           _%e167682168171%_
                           _%hd167681168174%_
                           _%tl167680168176%_
                           _%e167685168179%_
                           _%hd167684168182%_
                           _%tl167683168184%_
                           _%e167688168187%_
                           _%hd167687168190%_
                           _%tl167686168192%_
                           _%e167691168195%_
                           _%hd167690168198%_
                           _%tl167689168200%_
                           _%e167694168203%_
                           _%hd167693168206%_
                           _%tl167692168208%_))))
                   (_%__match171919171920%_
                    (lambda (_%e167667168131%_
                             _%hd167666168134%_
                             _%tl167665168136%_
                             _%e167670168139%_
                             _%hd167669168142%_
                             _%tl167668168144%_
                             _%e167673168147%_
                             _%hd167672168150%_
                             _%tl167671168152%_
                             _%e167676168155%_
                             _%hd167675168158%_
                             _%tl167674168160%_
                             _%e167679168163%_
                             _%hd167678168166%_
                             _%tl167677168168%_
                             _%e167682168171%_
                             _%hd167681168174%_
                             _%tl167680168176%_
                             _%e167685168179%_
                             _%hd167684168182%_
                             _%tl167683168184%_
                             _%e167688168187%_
                             _%hd167687168190%_
                             _%tl167686168192%_
                             _%e167691168195%_
                             _%hd167690168198%_
                             _%tl167689168200%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd167690168198%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167689168200%_))
                              (let ((_%e167694168203%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167689168200%_))))
                                (let ((_%tl167692168208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167694168203%_)))
                                      (_%hd167693168206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167694168203%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167692168208%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl167686168192%_))
                                          (_%__match171931171932%_
                                           _%e167667168131%_
                                           _%hd167666168134%_
                                           _%tl167665168136%_
                                           _%e167670168139%_
                                           _%hd167669168142%_
                                           _%tl167668168144%_
                                           _%e167673168147%_
                                           _%hd167672168150%_
                                           _%tl167671168152%_
                                           _%e167676168155%_
                                           _%hd167675168158%_
                                           _%tl167674168160%_
                                           _%e167679168163%_
                                           _%hd167678168166%_
                                           _%tl167677168168%_
                                           _%e167682168171%_
                                           _%hd167681168174%_
                                           _%tl167680168176%_
                                           _%e167685168179%_
                                           _%hd167684168182%_
                                           _%tl167683168184%_
                                           _%e167688168187%_
                                           _%hd167687168190%_
                                           _%tl167686168192%_
                                           _%e167691168195%_
                                           _%hd167690168198%_
                                           _%tl167689168200%_
                                           _%e167694168203%_
                                           _%hd167693168206%_
                                           _%tl167692168208%_)
                                          (_%__match172009172010%_
                                           _%e167667168131%_
                                           _%hd167666168134%_
                                           _%tl167665168136%_
                                           _%e167670168139%_
                                           _%hd167669168142%_
                                           _%tl167668168144%_
                                           _%e167673168147%_
                                           _%hd167672168150%_
                                           _%tl167671168152%_
                                           _%e167676168155%_
                                           _%hd167675168158%_
                                           _%tl167674168160%_
                                           _%e167679168163%_
                                           _%hd167678168166%_
                                           _%tl167677168168%_
                                           _%e167682168171%_
                                           _%hd167681168174%_
                                           _%tl167680168176%_
                                           _%e167685168179%_
                                           _%hd167684168182%_
                                           _%tl167683168184%_
                                           _%e167688168187%_
                                           _%hd167687168190%_
                                           _%tl167686168192%_
                                           _%e167691168195%_
                                           _%hd167690168198%_
                                           _%tl167689168200%_
                                           _%e167694168203%_
                                           _%hd167693168206%_
                                           _%tl167692168208%_))
                                      (_%__match172133172134%_
                                       _%e167667168131%_
                                       _%hd167666168134%_
                                       _%tl167665168136%_
                                       _%e167670168139%_
                                       _%hd167669168142%_
                                       _%tl167668168144%_
                                       _%e167673168147%_
                                       _%hd167672168150%_
                                       _%tl167671168152%_
                                       _%e167676168155%_
                                       _%hd167675168158%_
                                       _%tl167674168160%_
                                       _%e167679168163%_
                                       _%hd167678168166%_
                                       _%tl167677168168%_
                                       _%e167682168171%_
                                       _%hd167681168174%_
                                       _%tl167680168176%_
                                       _%e167685168179%_
                                       _%hd167684168182%_
                                       _%tl167683168184%_
                                       _%e167688168187%_
                                       _%hd167687168190%_
                                       _%tl167686168192%_))))
                              (_%__match172133172134%_
                               _%e167667168131%_
                               _%hd167666168134%_
                               _%tl167665168136%_
                               _%e167670168139%_
                               _%hd167669168142%_
                               _%tl167668168144%_
                               _%e167673168147%_
                               _%hd167672168150%_
                               _%tl167671168152%_
                               _%e167676168155%_
                               _%hd167675168158%_
                               _%tl167674168160%_
                               _%e167679168163%_
                               _%hd167678168166%_
                               _%tl167677168168%_
                               _%e167682168171%_
                               _%hd167681168174%_
                               _%tl167680168176%_
                               _%e167685168179%_
                               _%hd167684168182%_
                               _%tl167683168184%_
                               _%e167688168187%_
                               _%hd167687168190%_
                               _%tl167686168192%_))
                          (_%__match172133172134%_
                           _%e167667168131%_
                           _%hd167666168134%_
                           _%tl167665168136%_
                           _%e167670168139%_
                           _%hd167669168142%_
                           _%tl167668168144%_
                           _%e167673168147%_
                           _%hd167672168150%_
                           _%tl167671168152%_
                           _%e167676168155%_
                           _%hd167675168158%_
                           _%tl167674168160%_
                           _%e167679168163%_
                           _%hd167678168166%_
                           _%tl167677168168%_
                           _%e167682168171%_
                           _%hd167681168174%_
                           _%tl167680168176%_
                           _%e167685168179%_
                           _%hd167684168182%_
                           _%tl167683168184%_
                           _%e167688168187%_
                           _%hd167687168190%_
                           _%tl167686168192%_))))
                   (_%__match171851171852%_
                    (lambda (_%e167616168250%_
                             _%hd167615168253%_
                             _%tl167614168255%_
                             _%e167619168258%_
                             _%hd167618168261%_
                             _%tl167617168263%_
                             _%e167622168266%_
                             _%hd167621168269%_
                             _%tl167620168271%_
                             _%e167625168274%_
                             _%hd167624168277%_
                             _%tl167623168279%_
                             _%e167628168282%_
                             _%hd167627168285%_
                             _%tl167626168287%_
                             _%e167631168290%_
                             _%hd167630168293%_
                             _%tl167629168295%_
                             _%e167634168298%_
                             _%hd167633168301%_
                             _%tl167632168303%_
                             _%e167637168306%_
                             _%hd167636168309%_
                             _%tl167635168311%_
                             _%e167640168314%_
                             _%hd167639168317%_
                             _%tl167638168319%_
                             _%e167643168322%_
                             _%hd167642168325%_
                             _%tl167641168327%_
                             _%e167646168330%_
                             _%hd167645168333%_
                             _%tl167644168335%_
                             _%e167649168338%_
                             _%hd167648168341%_
                             _%tl167647168343%_
                             _%e167652168346%_
                             _%hd167651168349%_
                             _%tl167650168351%_
                             _%__splice171644171645%_
                             _%target167653168354%_
                             _%tl167655168356%_)
                      (letrec ((_%loop167656168359%_
                                (lambda (_%hd167654168362%_
                                         _%args167660168364%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167654168362%_))
                                      (let ((_%e167657168367%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167654168362%_))))
                                        (let ((_%lp-tl167659168372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167657168367%_)))
                                              (_%lp-hd167658168370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167657168367%_))))
                                          (let ((__tmp172768
                                                 (cons _%lp-hd167658168370%_
                                                       _%args167660168364%_)))
                                            (declare (not safe))
                                            (_%loop167656168359%_
                                             _%lp-tl167659168372%_
                                             __tmp172768))))
                                      (let ((_%args167661168375%_
                                             (reverse _%args167660168364%_)))
                                        (let ((_%L168378%_
                                               _%args167661168375%_)
                                              (_%L168379%_ _%hd167651168349%_)
                                              (_%L168380%_ _%hd167642168325%_)
                                              (_%L168381%_ _%hd167633168301%_)
                                              (_%L168382%_ _%hd167624168277%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168382%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168381%_
                                                      'call-method))
                                                   (let ((__tmp172769
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167555%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168380%_
                                                      __tmp172769)))
                                              (_%__kont171642171643%_
                                               _%L168378%_
                                               _%L168379%_
                                               _%L168380%_
                                               _%L168381%_
                                               _%L168382%_)
                                              (_%__kont171654171655%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167656168359%_ _%target167653168354%_ '())))))
                   (_%__match171809171810%_
                    (lambda (_%e167616168250%_
                             _%hd167615168253%_
                             _%tl167614168255%_
                             _%e167619168258%_
                             _%hd167618168261%_
                             _%tl167617168263%_
                             _%e167622168266%_
                             _%hd167621168269%_
                             _%tl167620168271%_
                             _%e167625168274%_
                             _%hd167624168277%_
                             _%tl167623168279%_
                             _%e167628168282%_
                             _%hd167627168285%_
                             _%tl167626168287%_
                             _%e167631168290%_
                             _%hd167630168293%_
                             _%tl167629168295%_
                             _%e167634168298%_
                             _%hd167633168301%_
                             _%tl167632168303%_
                             _%e167637168306%_
                             _%hd167636168309%_
                             _%tl167635168311%_
                             _%e167640168314%_
                             _%hd167639168317%_
                             _%tl167638168319%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd167639168317%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167638168319%_))
                              (let ((_%e167643168322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167638168319%_))))
                                (let ((_%tl167641168327%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167643168322%_)))
                                      (_%hd167642168325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167643168322%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167641168327%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167635168311%_))
                                          (let ((_%e167646168330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167635168311%_))))
                                            (let ((_%tl167644168335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167646168330%_)))
                                                  (_%hd167645168333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167646168330%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167645168333%_))
                                                  (let ((_%e167649168338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167645168333%_))))
                                                    (let ((_%tl167647168343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167649168338%_)))
                                                          (_%hd167648168341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167649168338%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd167648168341%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd167648168341%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167647168343%_))
                          (let ((_%e167652168346%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167647168343%_))))
                            (let ((_%tl167650168351%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167652168346%_)))
                                  (_%hd167651168349%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167652168346%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167650168351%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl167644168335%_))
                                      (let ((_%__splice171644171645%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl167644168335%_
                                                '0))))
                                        (let ((_%tl167655168356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171644171645%_
                                                  '1)))
                                              (_%target167653168354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171644171645%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167655168356%_))
                                              (_%__match171851171852%_
                                               _%e167616168250%_
                                               _%hd167615168253%_
                                               _%tl167614168255%_
                                               _%e167619168258%_
                                               _%hd167618168261%_
                                               _%tl167617168263%_
                                               _%e167622168266%_
                                               _%hd167621168269%_
                                               _%tl167620168271%_
                                               _%e167625168274%_
                                               _%hd167624168277%_
                                               _%tl167623168279%_
                                               _%e167628168282%_
                                               _%hd167627168285%_
                                               _%tl167626168287%_
                                               _%e167631168290%_
                                               _%hd167630168293%_
                                               _%tl167629168295%_
                                               _%e167634168298%_
                                               _%hd167633168301%_
                                               _%tl167632168303%_
                                               _%e167637168306%_
                                               _%hd167636168309%_
                                               _%tl167635168311%_
                                               _%e167640168314%_
                                               _%hd167639168317%_
                                               _%tl167638168319%_
                                               _%e167643168322%_
                                               _%hd167642168325%_
                                               _%tl167641168327%_
                                               _%e167646168330%_
                                               _%hd167645168333%_
                                               _%tl167644168335%_
                                               _%e167649168338%_
                                               _%hd167648168341%_
                                               _%tl167647168343%_
                                               _%e167652168346%_
                                               _%hd167651168349%_
                                               _%tl167650168351%_
                                               _%__splice171644171645%_
                                               _%target167653168354%_
                                               _%tl167655168356%_)
                                              (_%__kont171654171655%_))))
                                      (_%__kont171654171655%_))
                                  (_%__kont171654171655%_))))
                          (_%__kont171654171655%_))
                      (_%__kont171654171655%_))
                  (_%__kont171654171655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171654171655%_))))
                                          (_%__match172133172134%_
                                           _%e167616168250%_
                                           _%hd167615168253%_
                                           _%tl167614168255%_
                                           _%e167619168258%_
                                           _%hd167618168261%_
                                           _%tl167617168263%_
                                           _%e167622168266%_
                                           _%hd167621168269%_
                                           _%tl167620168271%_
                                           _%e167625168274%_
                                           _%hd167624168277%_
                                           _%tl167623168279%_
                                           _%e167628168282%_
                                           _%hd167627168285%_
                                           _%tl167626168287%_
                                           _%e167631168290%_
                                           _%hd167630168293%_
                                           _%tl167629168295%_
                                           _%e167634168298%_
                                           _%hd167633168301%_
                                           _%tl167632168303%_
                                           _%e167637168306%_
                                           _%hd167636168309%_
                                           _%tl167635168311%_))
                                      (_%__match172133172134%_
                                       _%e167616168250%_
                                       _%hd167615168253%_
                                       _%tl167614168255%_
                                       _%e167619168258%_
                                       _%hd167618168261%_
                                       _%tl167617168263%_
                                       _%e167622168266%_
                                       _%hd167621168269%_
                                       _%tl167620168271%_
                                       _%e167625168274%_
                                       _%hd167624168277%_
                                       _%tl167623168279%_
                                       _%e167628168282%_
                                       _%hd167627168285%_
                                       _%tl167626168287%_
                                       _%e167631168290%_
                                       _%hd167630168293%_
                                       _%tl167629168295%_
                                       _%e167634168298%_
                                       _%hd167633168301%_
                                       _%tl167632168303%_
                                       _%e167637168306%_
                                       _%hd167636168309%_
                                       _%tl167635168311%_))))
                              (_%__match172133172134%_
                               _%e167616168250%_
                               _%hd167615168253%_
                               _%tl167614168255%_
                               _%e167619168258%_
                               _%hd167618168261%_
                               _%tl167617168263%_
                               _%e167622168266%_
                               _%hd167621168269%_
                               _%tl167620168271%_
                               _%e167625168274%_
                               _%hd167624168277%_
                               _%tl167623168279%_
                               _%e167628168282%_
                               _%hd167627168285%_
                               _%tl167626168287%_
                               _%e167631168290%_
                               _%hd167630168293%_
                               _%tl167629168295%_
                               _%e167634168298%_
                               _%hd167633168301%_
                               _%tl167632168303%_
                               _%e167637168306%_
                               _%hd167636168309%_
                               _%tl167635168311%_))
                          (_%__match171919171920%_
                           _%e167616168250%_
                           _%hd167615168253%_
                           _%tl167614168255%_
                           _%e167619168258%_
                           _%hd167618168261%_
                           _%tl167617168263%_
                           _%e167622168266%_
                           _%hd167621168269%_
                           _%tl167620168271%_
                           _%e167625168274%_
                           _%hd167624168277%_
                           _%tl167623168279%_
                           _%e167628168282%_
                           _%hd167627168285%_
                           _%tl167626168287%_
                           _%e167631168290%_
                           _%hd167630168293%_
                           _%tl167629168295%_
                           _%e167634168298%_
                           _%hd167633168301%_
                           _%tl167632168303%_
                           _%e167637168306%_
                           _%hd167636168309%_
                           _%tl167635168311%_
                           _%e167640168314%_
                           _%hd167639168317%_
                           _%tl167638168319%_))))
                   (_%__match171741171742%_
                    (lambda (_%e167572168439%_
                             _%hd167571168442%_
                             _%tl167570168444%_
                             _%e167575168447%_
                             _%hd167574168450%_
                             _%tl167573168452%_
                             _%e167578168455%_
                             _%hd167577168458%_
                             _%tl167576168460%_
                             _%e167581168463%_
                             _%hd167580168466%_
                             _%tl167579168468%_
                             _%e167584168471%_
                             _%hd167583168474%_
                             _%tl167582168476%_
                             _%e167587168479%_
                             _%hd167586168482%_
                             _%tl167585168484%_
                             _%e167590168487%_
                             _%hd167589168490%_
                             _%tl167588168492%_
                             _%e167593168495%_
                             _%hd167592168498%_
                             _%tl167591168500%_
                             _%e167596168503%_
                             _%hd167595168506%_
                             _%tl167594168508%_
                             _%e167599168511%_
                             _%hd167598168514%_
                             _%tl167597168516%_
                             _%__splice171640171641%_
                             _%target167600168519%_
                             _%tl167602168521%_)
                      (letrec ((_%loop167603168524%_
                                (lambda (_%hd167601168527%_
                                         _%args167607168529%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167601168527%_))
                                      (let ((_%e167604168532%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167601168527%_))))
                                        (let ((_%lp-tl167606168537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167604168532%_)))
                                              (_%lp-hd167605168535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167604168532%_))))
                                          (let ((__tmp172770
                                                 (cons _%lp-hd167605168535%_
                                                       _%args167607168529%_)))
                                            (declare (not safe))
                                            (_%loop167603168524%_
                                             _%lp-tl167606168537%_
                                             __tmp172770))))
                                      (let ((_%args167608168540%_
                                             (reverse _%args167607168529%_)))
                                        (let ((_%L168543%_
                                               _%args167608168540%_)
                                              (_%L168544%_ _%hd167598168514%_)
                                              (_%L168545%_ _%hd167589168490%_)
                                              (_%L168546%_ _%hd167580168466%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168546%_
                                                      'call-method))
                                                   (let ((__tmp172771
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167555%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168545%_
                                                      __tmp172771)))
                                              (_%__kont171638171639%_
                                               _%L168543%_
                                               _%L168544%_
                                               _%L168545%_
                                               _%L168546%_)
                                              (_%__match171929171930%_
                                               _%e167572168439%_
                                               _%hd167571168442%_
                                               _%tl167570168444%_
                                               _%e167575168447%_
                                               _%hd167574168450%_
                                               _%tl167573168452%_
                                               _%e167578168455%_
                                               _%hd167577168458%_
                                               _%tl167576168460%_
                                               _%e167581168463%_
                                               _%hd167580168466%_
                                               _%tl167579168468%_
                                               _%e167584168471%_
                                               _%hd167583168474%_
                                               _%tl167582168476%_
                                               _%e167587168479%_
                                               _%hd167586168482%_
                                               _%tl167585168484%_
                                               _%e167590168487%_
                                               _%hd167589168490%_
                                               _%tl167588168492%_
                                               _%e167593168495%_
                                               _%hd167592168498%_
                                               _%tl167591168500%_
                                               _%e167596168503%_
                                               _%hd167595168506%_
                                               _%tl167594168508%_
                                               _%e167599168511%_
                                               _%hd167598168514%_
                                               _%tl167597168516%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167603168524%_
                           _%target167600168519%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171636171637%_))
                  (let ((_%e167572168439%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171636171637%_))))
                    (let ((_%tl167570168444%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167572168439%_)))
                          (_%hd167571168442%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167572168439%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167570168444%_))
                          (let ((_%e167575168447%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167570168444%_))))
                            (let ((_%tl167573168452%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167575168447%_)))
                                  (_%hd167574168450%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167575168447%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd167574168450%_))
                                  (let ((_%e167578168455%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd167574168450%_))))
                                    (let ((_%tl167576168460%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167578168455%_)))
                                          (_%hd167577168458%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167578168455%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd167577168458%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd167577168458%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl167576168460%_))
                                                  (let ((_%e167581168463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl167576168460%_))))
                                                    (let ((_%tl167579168468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167581168463%_)))
                                                          (_%hd167580168466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167581168463%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl167579168468%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl167573168452%_))
                      (let ((_%e167584168471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl167573168452%_))))
                        (let ((_%tl167582168476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167584168471%_)))
                              (_%hd167583168474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167584168471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd167583168474%_))
                              (let ((_%e167587168479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd167583168474%_))))
                                (let ((_%tl167585168484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167587168479%_)))
                                      (_%hd167586168482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167587168479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd167586168482%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd167586168482%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl167585168484%_))
                                              (let ((_%e167590168487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl167585168484%_))))
                                                (let ((_%tl167588168492%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167590168487%_)))
                                                      (_%hd167589168490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167590168487%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl167588168492%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl167582168476%_))
                                                          (let ((_%e167593168495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl167582168476%_))))
                    (let ((_%tl167591168500%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167593168495%_)))
                          (_%hd167592168498%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167593168495%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd167592168498%_))
                          (let ((_%e167596168503%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd167592168498%_))))
                            (let ((_%tl167594168508%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167596168503%_)))
                                  (_%hd167595168506%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167596168503%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd167595168506%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd167595168506%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167594168508%_))
                                          (let ((_%e167599168511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167594168508%_))))
                                            (let ((_%tl167597168516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167599168511%_)))
                                                  (_%hd167598168514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167599168511%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl167597168516%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl167591168500%_))
                                                      (let ((_%__splice171640171641%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl167591168500%_ '0))))
                (let ((_%tl167602168521%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171640171641%_ '1)))
                      (_%target167600168519%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171640171641%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167602168521%_))
                      (_%__match171741171742%_
                       _%e167572168439%_
                       _%hd167571168442%_
                       _%tl167570168444%_
                       _%e167575168447%_
                       _%hd167574168450%_
                       _%tl167573168452%_
                       _%e167578168455%_
                       _%hd167577168458%_
                       _%tl167576168460%_
                       _%e167581168463%_
                       _%hd167580168466%_
                       _%tl167579168468%_
                       _%e167584168471%_
                       _%hd167583168474%_
                       _%tl167582168476%_
                       _%e167587168479%_
                       _%hd167586168482%_
                       _%tl167585168484%_
                       _%e167590168487%_
                       _%hd167589168490%_
                       _%tl167588168492%_
                       _%e167593168495%_
                       _%hd167592168498%_
                       _%tl167591168500%_
                       _%e167596168503%_
                       _%hd167595168506%_
                       _%tl167594168508%_
                       _%e167599168511%_
                       _%hd167598168514%_
                       _%tl167597168516%_
                       _%__splice171640171641%_
                       _%target167600168519%_
                       _%tl167602168521%_)
                      (_%__match171929171930%_
                       _%e167572168439%_
                       _%hd167571168442%_
                       _%tl167570168444%_
                       _%e167575168447%_
                       _%hd167574168450%_
                       _%tl167573168452%_
                       _%e167578168455%_
                       _%hd167577168458%_
                       _%tl167576168460%_
                       _%e167581168463%_
                       _%hd167580168466%_
                       _%tl167579168468%_
                       _%e167584168471%_
                       _%hd167583168474%_
                       _%tl167582168476%_
                       _%e167587168479%_
                       _%hd167586168482%_
                       _%tl167585168484%_
                       _%e167590168487%_
                       _%hd167589168490%_
                       _%tl167588168492%_
                       _%e167593168495%_
                       _%hd167592168498%_
                       _%tl167591168500%_
                       _%e167596168503%_
                       _%hd167595168506%_
                       _%tl167594168508%_
                       _%e167599168511%_
                       _%hd167598168514%_
                       _%tl167597168516%_))))
              (_%__match171929171930%_
               _%e167572168439%_
               _%hd167571168442%_
               _%tl167570168444%_
               _%e167575168447%_
               _%hd167574168450%_
               _%tl167573168452%_
               _%e167578168455%_
               _%hd167577168458%_
               _%tl167576168460%_
               _%e167581168463%_
               _%hd167580168466%_
               _%tl167579168468%_
               _%e167584168471%_
               _%hd167583168474%_
               _%tl167582168476%_
               _%e167587168479%_
               _%hd167586168482%_
               _%tl167585168484%_
               _%e167590168487%_
               _%hd167589168490%_
               _%tl167588168492%_
               _%e167593168495%_
               _%hd167592168498%_
               _%tl167591168500%_
               _%e167596168503%_
               _%hd167595168506%_
               _%tl167594168508%_
               _%e167599168511%_
               _%hd167598168514%_
               _%tl167597168516%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match172133172134%_
                                                   _%e167572168439%_
                                                   _%hd167571168442%_
                                                   _%tl167570168444%_
                                                   _%e167575168447%_
                                                   _%hd167574168450%_
                                                   _%tl167573168452%_
                                                   _%e167578168455%_
                                                   _%hd167577168458%_
                                                   _%tl167576168460%_
                                                   _%e167581168463%_
                                                   _%hd167580168466%_
                                                   _%tl167579168468%_
                                                   _%e167584168471%_
                                                   _%hd167583168474%_
                                                   _%tl167582168476%_
                                                   _%e167587168479%_
                                                   _%hd167586168482%_
                                                   _%tl167585168484%_
                                                   _%e167590168487%_
                                                   _%hd167589168490%_
                                                   _%tl167588168492%_
                                                   _%e167593168495%_
                                                   _%hd167592168498%_
                                                   _%tl167591168500%_))))
                                          (_%__match172133172134%_
                                           _%e167572168439%_
                                           _%hd167571168442%_
                                           _%tl167570168444%_
                                           _%e167575168447%_
                                           _%hd167574168450%_
                                           _%tl167573168452%_
                                           _%e167578168455%_
                                           _%hd167577168458%_
                                           _%tl167576168460%_
                                           _%e167581168463%_
                                           _%hd167580168466%_
                                           _%tl167579168468%_
                                           _%e167584168471%_
                                           _%hd167583168474%_
                                           _%tl167582168476%_
                                           _%e167587168479%_
                                           _%hd167586168482%_
                                           _%tl167585168484%_
                                           _%e167590168487%_
                                           _%hd167589168490%_
                                           _%tl167588168492%_
                                           _%e167593168495%_
                                           _%hd167592168498%_
                                           _%tl167591168500%_))
                                      (_%__match171809171810%_
                                       _%e167572168439%_
                                       _%hd167571168442%_
                                       _%tl167570168444%_
                                       _%e167575168447%_
                                       _%hd167574168450%_
                                       _%tl167573168452%_
                                       _%e167578168455%_
                                       _%hd167577168458%_
                                       _%tl167576168460%_
                                       _%e167581168463%_
                                       _%hd167580168466%_
                                       _%tl167579168468%_
                                       _%e167584168471%_
                                       _%hd167583168474%_
                                       _%tl167582168476%_
                                       _%e167587168479%_
                                       _%hd167586168482%_
                                       _%tl167585168484%_
                                       _%e167590168487%_
                                       _%hd167589168490%_
                                       _%tl167588168492%_
                                       _%e167593168495%_
                                       _%hd167592168498%_
                                       _%tl167591168500%_
                                       _%e167596168503%_
                                       _%hd167595168506%_
                                       _%tl167594168508%_))
                                  (_%__match172133172134%_
                                   _%e167572168439%_
                                   _%hd167571168442%_
                                   _%tl167570168444%_
                                   _%e167575168447%_
                                   _%hd167574168450%_
                                   _%tl167573168452%_
                                   _%e167578168455%_
                                   _%hd167577168458%_
                                   _%tl167576168460%_
                                   _%e167581168463%_
                                   _%hd167580168466%_
                                   _%tl167579168468%_
                                   _%e167584168471%_
                                   _%hd167583168474%_
                                   _%tl167582168476%_
                                   _%e167587168479%_
                                   _%hd167586168482%_
                                   _%tl167585168484%_
                                   _%e167590168487%_
                                   _%hd167589168490%_
                                   _%tl167588168492%_
                                   _%e167593168495%_
                                   _%hd167592168498%_
                                   _%tl167591168500%_))))
                          (_%__match172133172134%_
                           _%e167572168439%_
                           _%hd167571168442%_
                           _%tl167570168444%_
                           _%e167575168447%_
                           _%hd167574168450%_
                           _%tl167573168452%_
                           _%e167578168455%_
                           _%hd167577168458%_
                           _%tl167576168460%_
                           _%e167581168463%_
                           _%hd167580168466%_
                           _%tl167579168468%_
                           _%e167584168471%_
                           _%hd167583168474%_
                           _%tl167582168476%_
                           _%e167587168479%_
                           _%hd167586168482%_
                           _%tl167585168484%_
                           _%e167590168487%_
                           _%hd167589168490%_
                           _%tl167588168492%_
                           _%e167593168495%_
                           _%hd167592168498%_
                           _%tl167591168500%_))))
                  (_%__match172071172072%_
                   _%e167572168439%_
                   _%hd167571168442%_
                   _%tl167570168444%_
                   _%e167575168447%_
                   _%hd167574168450%_
                   _%tl167573168452%_
                   _%e167578168455%_
                   _%hd167577168458%_
                   _%tl167576168460%_
                   _%e167581168463%_
                   _%hd167580168466%_
                   _%tl167579168468%_
                   _%e167584168471%_
                   _%hd167583168474%_
                   _%tl167582168476%_
                   _%e167587168479%_
                   _%hd167586168482%_
                   _%tl167585168484%_
                   _%e167590168487%_
                   _%hd167589168490%_
                   _%tl167588168492%_))
              (_%__kont171654171655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171654171655%_))
                                          (_%__kont171654171655%_))
                                      (_%__kont171654171655%_))))
                              (_%__kont171654171655%_))))
                      (_%__kont171654171655%_))
                  (_%__kont171654171655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171654171655%_))
                                              (_%__kont171654171655%_))
                                          (_%__kont171654171655%_))))
                                  (_%__kont171654171655%_))))
                          (_%__kont171654171655%_))))
                  (_%__kont171654171655%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self166494%_ _%stx166495%_)
        (letrec ((_%force-e166497%_
                  (lambda (_%target167553%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target167553%_ '()))
                                      '()))))))
          (let* ((_%__stx172138172139%_ _%stx166495%_)
                 (_%g166505166727%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172138172139%_)))))
            (let ((_%__kont172140172141%_
                   (lambda (_%L167499%_ _%L167500%_ _%L167501%_ _%L167502%_)
                     (let ((_%$method167547%_
                            (let ((__tmp172773
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166494%_ 'methods)))
                                  (__tmp172772
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167500%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172773 __tmp172772)))
                           (_%args167548%_
                            (map (lambda (_%g167535167537%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166494%_
                                      _%g167535167537%_)))
                                 (let ((__tmp172774
                                        (lambda (_%g167539167542%_
                                                 _%g167540167544%_)
                                          (cons _%g167539167542%_
                                                _%g167540167544%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172774 '() _%L167499%_)))))
                       (let ((__tmp172775
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e166497%_
                                             _%$method167547%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166494%_
                                                               'receiver))
                                                            '()))
                                                _%args167548%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172775 _%stx166495%_)))))
                  (_%__kont172144172145%_
                   (lambda (_%L167331%_
                            _%L167332%_
                            _%L167333%_
                            _%L167334%_
                            _%L167335%_)
                     (let ((_%$method167387%_
                            (let ((__tmp172777
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166494%_ 'methods)))
                                  (__tmp172776
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167332%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172777 __tmp172776)))
                           (_%args167388%_
                            (map (lambda (_%g167375167377%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166494%_
                                      _%g167375167377%_)))
                                 (let ((__tmp172778
                                        (lambda (_%g167379167382%_
                                                 _%g167380167384%_)
                                          (cons _%g167379167382%_
                                                _%g167380167384%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172778 '() _%L167331%_)))))
                       (let ((__tmp172779
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e166497%_
                                                   _%$method167387%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166494%_ 'receiver))
                          '()))
              _%args167388%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172779 _%stx166495%_)))))
                  (_%__kont172148172149%_
                   (lambda (_%L167162%_ _%L167163%_ _%L167164%_)
                     (let* ((_%$field167196%_
                             (let ((__tmp172781
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self166494%_ 'slots)))
                                   (__tmp172780
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L167162%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp172781 __tmp172780)))
                            (__tmp172782
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self166494%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field167196%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self166494%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp172782 _%stx166495%_))))
                  (_%__kont172150172151%_
                   (lambda (_%L167036%_ _%L167037%_ _%L167038%_ _%L167039%_)
                     (let ((_%$field167074%_
                            (let ((__tmp172784
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166494%_ 'slots)))
                                  (__tmp172783
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167037%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172784 __tmp172783)))
                           (_%expr167075%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self166494%_ _%L167036%_))))
                       (let ((__tmp172785
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self166494%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field167074%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166494%_ 'receiver))
                          '()))
              (cons _%expr167075%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172785 _%stx166495%_)))))
                  (_%__kont172152172153%_
                   (lambda (_%L166908%_ _%L166909%_)
                     (let* ((_%accessor166931%_
                             (let ((__tmp172786
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166909%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172786)))
                            (_%klass166933%_
                             (let ((__tmp172787
                                    (##structure-ref
                                     _%accessor166931%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166495%_
                                __tmp172787)))
                            (_%slot166935%_
                             (##structure-ref
                              _%accessor166931%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp172788
                                       (##structure-ref
                                        _%accessor166931%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172788))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166933%_
                                       _%slot166935%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166933%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx166495%_
                           (let* ((_%$field166941%_
                                   (let ((__tmp172789
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166494%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172789 _%slot166935%_)))
                                  (__tmp172790
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166494%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166494%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172790
                              _%stx166495%_))))))
                  (_%__kont172154172155%_
                   (lambda (_%L166803%_ _%L166804%_ _%L166805%_)
                     (let* ((_%mutator166833%_
                             (let ((__tmp172791
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166805%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172791)))
                            (_%klass166835%_
                             (let ((__tmp172792
                                    (##structure-ref
                                     _%mutator166833%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166495%_
                                __tmp172792)))
                            (_%slot166837%_
                             (##structure-ref
                              _%mutator166833%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr166839%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self166494%_ _%L166803%_))))
                       (if (and (let ((__tmp172793
                                       (##structure-ref
                                        _%mutator166833%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172793))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166835%_
                                       _%slot166837%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166835%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp172794
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L166805%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L166804%_
                                                                '()))
                                                    (cons _%expr166839%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp172794 _%stx166495%_))
                           (let* ((_%$field166845%_
                                   (let ((__tmp172795
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166494%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172795 _%slot166837%_)))
                                  (__tmp172796
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166494%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166494%_ 'receiver))
                               '()))
                   (cons _%expr166839%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172796
                              _%stx166495%_))))))
                  (_%__kont172156172157%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self166494%_ _%stx166495%_)))))
              (let* ((_%__match172637172638%_
                      (lambda (_%e166701166739%_
                               _%hd166700166742%_
                               _%tl166699166744%_
                               _%e166704166747%_
                               _%hd166703166750%_
                               _%tl166702166752%_
                               _%e166707166755%_
                               _%hd166706166758%_
                               _%tl166705166760%_
                               _%e166710166763%_
                               _%hd166709166766%_
                               _%tl166708166768%_
                               _%e166713166771%_
                               _%hd166712166774%_
                               _%tl166711166776%_
                               _%e166716166779%_
                               _%hd166715166782%_
                               _%tl166714166784%_
                               _%e166719166787%_
                               _%hd166718166790%_
                               _%tl166717166792%_
                               _%e166722166795%_
                               _%hd166721166798%_
                               _%tl166720166800%_)
                        (let ((_%L166803%_ _%hd166721166798%_)
                              (_%L166804%_ _%hd166718166790%_)
                              (_%L166805%_ _%hd166709166766%_))
                          (if (and (let ((__tmp172797
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166494%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166804%_
                                      __tmp172797))
                                   (let ((__tmp172798
                                          (let ((__tmp172799
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166805%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172799))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172798
                                      'gxc#!mutator::t)))
                              (_%__kont172154172155%_
                               _%L166803%_
                               _%L166804%_
                               _%L166805%_)
                              (_%__kont172156172157%_)))))
                     (_%__match172635172636%_
                      (lambda (_%e166701166739%_
                               _%hd166700166742%_
                               _%tl166699166744%_
                               _%e166704166747%_
                               _%hd166703166750%_
                               _%tl166702166752%_
                               _%e166707166755%_
                               _%hd166706166758%_
                               _%tl166705166760%_
                               _%e166710166763%_
                               _%hd166709166766%_
                               _%tl166708166768%_
                               _%e166713166771%_
                               _%hd166712166774%_
                               _%tl166711166776%_
                               _%e166716166779%_
                               _%hd166715166782%_
                               _%tl166714166784%_
                               _%e166719166787%_
                               _%hd166718166790%_
                               _%tl166717166792%_
                               _%e166722166795%_
                               _%hd166721166798%_
                               _%tl166720166800%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166720166800%_))
                            (_%__match172637172638%_
                             _%e166701166739%_
                             _%hd166700166742%_
                             _%tl166699166744%_
                             _%e166704166747%_
                             _%hd166703166750%_
                             _%tl166702166752%_
                             _%e166707166755%_
                             _%hd166706166758%_
                             _%tl166705166760%_
                             _%e166710166763%_
                             _%hd166709166766%_
                             _%tl166708166768%_
                             _%e166713166771%_
                             _%hd166712166774%_
                             _%tl166711166776%_
                             _%e166716166779%_
                             _%hd166715166782%_
                             _%tl166714166784%_
                             _%e166719166787%_
                             _%hd166718166790%_
                             _%tl166717166792%_
                             _%e166722166795%_
                             _%hd166721166798%_
                             _%tl166720166800%_)
                            (_%__kont172156172157%_))))
                     (_%__match172629172630%_
                      (lambda (_%e166701166739%_
                               _%hd166700166742%_
                               _%tl166699166744%_
                               _%e166704166747%_
                               _%hd166703166750%_
                               _%tl166702166752%_
                               _%e166707166755%_
                               _%hd166706166758%_
                               _%tl166705166760%_
                               _%e166710166763%_
                               _%hd166709166766%_
                               _%tl166708166768%_
                               _%e166713166771%_
                               _%hd166712166774%_
                               _%tl166711166776%_
                               _%e166716166779%_
                               _%hd166715166782%_
                               _%tl166714166784%_
                               _%e166719166787%_
                               _%hd166718166790%_
                               _%tl166717166792%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166711166776%_))
                            (let ((_%e166722166795%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166711166776%_))))
                              (let ((_%tl166720166800%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166722166795%_)))
                                    (_%hd166721166798%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166722166795%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166720166800%_))
                                    (_%__match172637172638%_
                                     _%e166701166739%_
                                     _%hd166700166742%_
                                     _%tl166699166744%_
                                     _%e166704166747%_
                                     _%hd166703166750%_
                                     _%tl166702166752%_
                                     _%e166707166755%_
                                     _%hd166706166758%_
                                     _%tl166705166760%_
                                     _%e166710166763%_
                                     _%hd166709166766%_
                                     _%tl166708166768%_
                                     _%e166713166771%_
                                     _%hd166712166774%_
                                     _%tl166711166776%_
                                     _%e166716166779%_
                                     _%hd166715166782%_
                                     _%tl166714166784%_
                                     _%e166719166787%_
                                     _%hd166718166790%_
                                     _%tl166717166792%_
                                     _%e166722166795%_
                                     _%hd166721166798%_
                                     _%tl166720166800%_)
                                    (_%__kont172156172157%_))))
                            (_%__kont172156172157%_))))
                     (_%__match172575172576%_
                      (lambda (_%e166677166852%_
                               _%hd166676166855%_
                               _%tl166675166857%_
                               _%e166680166860%_
                               _%hd166679166863%_
                               _%tl166678166865%_
                               _%e166683166868%_
                               _%hd166682166871%_
                               _%tl166681166873%_
                               _%e166686166876%_
                               _%hd166685166879%_
                               _%tl166684166881%_
                               _%e166689166884%_
                               _%hd166688166887%_
                               _%tl166687166889%_
                               _%e166692166892%_
                               _%hd166691166895%_
                               _%tl166690166897%_
                               _%e166695166900%_
                               _%hd166694166903%_
                               _%tl166693166905%_)
                        (let ((_%L166908%_ _%hd166694166903%_)
                              (_%L166909%_ _%hd166685166879%_))
                          (if (and (let ((__tmp172800
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166494%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166908%_
                                      __tmp172800))
                                   (let ((__tmp172801
                                          (let ((__tmp172802
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166909%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172802))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172801
                                      'gxc#!accessor::t)))
                              (_%__kont172152172153%_ _%L166908%_ _%L166909%_)
                              (_%__kont172156172157%_)))))
                     (_%__match172573172574%_
                      (lambda (_%e166677166852%_
                               _%hd166676166855%_
                               _%tl166675166857%_
                               _%e166680166860%_
                               _%hd166679166863%_
                               _%tl166678166865%_
                               _%e166683166868%_
                               _%hd166682166871%_
                               _%tl166681166873%_
                               _%e166686166876%_
                               _%hd166685166879%_
                               _%tl166684166881%_
                               _%e166689166884%_
                               _%hd166688166887%_
                               _%tl166687166889%_
                               _%e166692166892%_
                               _%hd166691166895%_
                               _%tl166690166897%_
                               _%e166695166900%_
                               _%hd166694166903%_
                               _%tl166693166905%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166687166889%_))
                            (_%__match172575172576%_
                             _%e166677166852%_
                             _%hd166676166855%_
                             _%tl166675166857%_
                             _%e166680166860%_
                             _%hd166679166863%_
                             _%tl166678166865%_
                             _%e166683166868%_
                             _%hd166682166871%_
                             _%tl166681166873%_
                             _%e166686166876%_
                             _%hd166685166879%_
                             _%tl166684166881%_
                             _%e166689166884%_
                             _%hd166688166887%_
                             _%tl166687166889%_
                             _%e166692166892%_
                             _%hd166691166895%_
                             _%tl166690166897%_
                             _%e166695166900%_
                             _%hd166694166903%_
                             _%tl166693166905%_)
                            (_%__match172629172630%_
                             _%e166677166852%_
                             _%hd166676166855%_
                             _%tl166675166857%_
                             _%e166680166860%_
                             _%hd166679166863%_
                             _%tl166678166865%_
                             _%e166683166868%_
                             _%hd166682166871%_
                             _%tl166681166873%_
                             _%e166686166876%_
                             _%hd166685166879%_
                             _%tl166684166881%_
                             _%e166689166884%_
                             _%hd166688166887%_
                             _%tl166687166889%_
                             _%e166692166892%_
                             _%hd166691166895%_
                             _%tl166690166897%_
                             _%e166695166900%_
                             _%hd166694166903%_
                             _%tl166693166905%_))))
                     (_%__match172519172520%_
                      (lambda (_%e166642166948%_
                               _%hd166641166951%_
                               _%tl166640166953%_
                               _%e166645166956%_
                               _%hd166644166959%_
                               _%tl166643166961%_
                               _%e166648166964%_
                               _%hd166647166967%_
                               _%tl166646166969%_
                               _%e166651166972%_
                               _%hd166650166975%_
                               _%tl166649166977%_
                               _%e166654166980%_
                               _%hd166653166983%_
                               _%tl166652166985%_
                               _%e166657166988%_
                               _%hd166656166991%_
                               _%tl166655166993%_
                               _%e166660166996%_
                               _%hd166659166999%_
                               _%tl166658167001%_
                               _%e166663167004%_
                               _%hd166662167007%_
                               _%tl166661167009%_
                               _%e166666167012%_
                               _%hd166665167015%_
                               _%tl166664167017%_
                               _%e166669167020%_
                               _%hd166668167023%_
                               _%tl166667167025%_
                               _%e166672167028%_
                               _%hd166671167031%_
                               _%tl166670167033%_)
                        (let ((_%L167036%_ _%hd166671167031%_)
                              (_%L167037%_ _%hd166668167023%_)
                              (_%L167038%_ _%hd166659166999%_)
                              (_%L167039%_ _%hd166650166975%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167039%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167039%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp172803
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166494%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167038%_
                                      __tmp172803)))
                              (_%__kont172150172151%_
                               _%L167036%_
                               _%L167037%_
                               _%L167038%_
                               _%L167039%_)
                              (_%__kont172156172157%_)))))
                     (_%__match172511172512%_
                      (lambda (_%e166642166948%_
                               _%hd166641166951%_
                               _%tl166640166953%_
                               _%e166645166956%_
                               _%hd166644166959%_
                               _%tl166643166961%_
                               _%e166648166964%_
                               _%hd166647166967%_
                               _%tl166646166969%_
                               _%e166651166972%_
                               _%hd166650166975%_
                               _%tl166649166977%_
                               _%e166654166980%_
                               _%hd166653166983%_
                               _%tl166652166985%_
                               _%e166657166988%_
                               _%hd166656166991%_
                               _%tl166655166993%_
                               _%e166660166996%_
                               _%hd166659166999%_
                               _%tl166658167001%_
                               _%e166663167004%_
                               _%hd166662167007%_
                               _%tl166661167009%_
                               _%e166666167012%_
                               _%hd166665167015%_
                               _%tl166664167017%_
                               _%e166669167020%_
                               _%hd166668167023%_
                               _%tl166667167025%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166661167009%_))
                            (let ((_%e166672167028%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166661167009%_))))
                              (let ((_%tl166670167033%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166672167028%_)))
                                    (_%hd166671167031%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166672167028%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166670167033%_))
                                    (_%__match172519172520%_
                                     _%e166642166948%_
                                     _%hd166641166951%_
                                     _%tl166640166953%_
                                     _%e166645166956%_
                                     _%hd166644166959%_
                                     _%tl166643166961%_
                                     _%e166648166964%_
                                     _%hd166647166967%_
                                     _%tl166646166969%_
                                     _%e166651166972%_
                                     _%hd166650166975%_
                                     _%tl166649166977%_
                                     _%e166654166980%_
                                     _%hd166653166983%_
                                     _%tl166652166985%_
                                     _%e166657166988%_
                                     _%hd166656166991%_
                                     _%tl166655166993%_
                                     _%e166660166996%_
                                     _%hd166659166999%_
                                     _%tl166658167001%_
                                     _%e166663167004%_
                                     _%hd166662167007%_
                                     _%tl166661167009%_
                                     _%e166666167012%_
                                     _%hd166665167015%_
                                     _%tl166664167017%_
                                     _%e166669167020%_
                                     _%hd166668167023%_
                                     _%tl166667167025%_
                                     _%e166672167028%_
                                     _%hd166671167031%_
                                     _%tl166670167033%_)
                                    (_%__kont172156172157%_))))
                            (_%__match172635172636%_
                             _%e166642166948%_
                             _%hd166641166951%_
                             _%tl166640166953%_
                             _%e166645166956%_
                             _%hd166644166959%_
                             _%tl166643166961%_
                             _%e166648166964%_
                             _%hd166647166967%_
                             _%tl166646166969%_
                             _%e166651166972%_
                             _%hd166650166975%_
                             _%tl166649166977%_
                             _%e166654166980%_
                             _%hd166653166983%_
                             _%tl166652166985%_
                             _%e166657166988%_
                             _%hd166656166991%_
                             _%tl166655166993%_
                             _%e166660166996%_
                             _%hd166659166999%_
                             _%tl166658167001%_
                             _%e166663167004%_
                             _%hd166662167007%_
                             _%tl166661167009%_))))
                     (_%__match172433172434%_
                      (lambda (_%e166608167082%_
                               _%hd166607167085%_
                               _%tl166606167087%_
                               _%e166611167090%_
                               _%hd166610167093%_
                               _%tl166609167095%_
                               _%e166614167098%_
                               _%hd166613167101%_
                               _%tl166612167103%_
                               _%e166617167106%_
                               _%hd166616167109%_
                               _%tl166615167111%_
                               _%e166620167114%_
                               _%hd166619167117%_
                               _%tl166618167119%_
                               _%e166623167122%_
                               _%hd166622167125%_
                               _%tl166621167127%_
                               _%e166626167130%_
                               _%hd166625167133%_
                               _%tl166624167135%_
                               _%e166629167138%_
                               _%hd166628167141%_
                               _%tl166627167143%_
                               _%e166632167146%_
                               _%hd166631167149%_
                               _%tl166630167151%_
                               _%e166635167154%_
                               _%hd166634167157%_
                               _%tl166633167159%_)
                        (let ((_%L167162%_ _%hd166634167157%_)
                              (_%L167163%_ _%hd166625167133%_)
                              (_%L167164%_ _%hd166616167109%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167164%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167164%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp172804
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166494%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167163%_
                                      __tmp172804)))
                              (_%__kont172148172149%_
                               _%L167162%_
                               _%L167163%_
                               _%L167164%_)
                              (_%__match172637172638%_
                               _%e166608167082%_
                               _%hd166607167085%_
                               _%tl166606167087%_
                               _%e166611167090%_
                               _%hd166610167093%_
                               _%tl166609167095%_
                               _%e166614167098%_
                               _%hd166613167101%_
                               _%tl166612167103%_
                               _%e166617167106%_
                               _%hd166616167109%_
                               _%tl166615167111%_
                               _%e166620167114%_
                               _%hd166619167117%_
                               _%tl166618167119%_
                               _%e166623167122%_
                               _%hd166622167125%_
                               _%tl166621167127%_
                               _%e166626167130%_
                               _%hd166625167133%_
                               _%tl166624167135%_
                               _%e166629167138%_
                               _%hd166628167141%_
                               _%tl166627167143%_)))))
                     (_%__match172431172432%_
                      (lambda (_%e166608167082%_
                               _%hd166607167085%_
                               _%tl166606167087%_
                               _%e166611167090%_
                               _%hd166610167093%_
                               _%tl166609167095%_
                               _%e166614167098%_
                               _%hd166613167101%_
                               _%tl166612167103%_
                               _%e166617167106%_
                               _%hd166616167109%_
                               _%tl166615167111%_
                               _%e166620167114%_
                               _%hd166619167117%_
                               _%tl166618167119%_
                               _%e166623167122%_
                               _%hd166622167125%_
                               _%tl166621167127%_
                               _%e166626167130%_
                               _%hd166625167133%_
                               _%tl166624167135%_
                               _%e166629167138%_
                               _%hd166628167141%_
                               _%tl166627167143%_
                               _%e166632167146%_
                               _%hd166631167149%_
                               _%tl166630167151%_
                               _%e166635167154%_
                               _%hd166634167157%_
                               _%tl166633167159%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166627167143%_))
                            (_%__match172433172434%_
                             _%e166608167082%_
                             _%hd166607167085%_
                             _%tl166606167087%_
                             _%e166611167090%_
                             _%hd166610167093%_
                             _%tl166609167095%_
                             _%e166614167098%_
                             _%hd166613167101%_
                             _%tl166612167103%_
                             _%e166617167106%_
                             _%hd166616167109%_
                             _%tl166615167111%_
                             _%e166620167114%_
                             _%hd166619167117%_
                             _%tl166618167119%_
                             _%e166623167122%_
                             _%hd166622167125%_
                             _%tl166621167127%_
                             _%e166626167130%_
                             _%hd166625167133%_
                             _%tl166624167135%_
                             _%e166629167138%_
                             _%hd166628167141%_
                             _%tl166627167143%_
                             _%e166632167146%_
                             _%hd166631167149%_
                             _%tl166630167151%_
                             _%e166635167154%_
                             _%hd166634167157%_
                             _%tl166633167159%_)
                            (_%__match172511172512%_
                             _%e166608167082%_
                             _%hd166607167085%_
                             _%tl166606167087%_
                             _%e166611167090%_
                             _%hd166610167093%_
                             _%tl166609167095%_
                             _%e166614167098%_
                             _%hd166613167101%_
                             _%tl166612167103%_
                             _%e166617167106%_
                             _%hd166616167109%_
                             _%tl166615167111%_
                             _%e166620167114%_
                             _%hd166619167117%_
                             _%tl166618167119%_
                             _%e166623167122%_
                             _%hd166622167125%_
                             _%tl166621167127%_
                             _%e166626167130%_
                             _%hd166625167133%_
                             _%tl166624167135%_
                             _%e166629167138%_
                             _%hd166628167141%_
                             _%tl166627167143%_
                             _%e166632167146%_
                             _%hd166631167149%_
                             _%tl166630167151%_
                             _%e166635167154%_
                             _%hd166634167157%_
                             _%tl166633167159%_))))
                     (_%__match172421172422%_
                      (lambda (_%e166608167082%_
                               _%hd166607167085%_
                               _%tl166606167087%_
                               _%e166611167090%_
                               _%hd166610167093%_
                               _%tl166609167095%_
                               _%e166614167098%_
                               _%hd166613167101%_
                               _%tl166612167103%_
                               _%e166617167106%_
                               _%hd166616167109%_
                               _%tl166615167111%_
                               _%e166620167114%_
                               _%hd166619167117%_
                               _%tl166618167119%_
                               _%e166623167122%_
                               _%hd166622167125%_
                               _%tl166621167127%_
                               _%e166626167130%_
                               _%hd166625167133%_
                               _%tl166624167135%_
                               _%e166629167138%_
                               _%hd166628167141%_
                               _%tl166627167143%_
                               _%e166632167146%_
                               _%hd166631167149%_
                               _%tl166630167151%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd166631167149%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166630167151%_))
                                (let ((_%e166635167154%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166630167151%_))))
                                  (let ((_%tl166633167159%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166635167154%_)))
                                        (_%hd166634167157%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166635167154%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166633167159%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl166627167143%_))
                                            (_%__match172433172434%_
                                             _%e166608167082%_
                                             _%hd166607167085%_
                                             _%tl166606167087%_
                                             _%e166611167090%_
                                             _%hd166610167093%_
                                             _%tl166609167095%_
                                             _%e166614167098%_
                                             _%hd166613167101%_
                                             _%tl166612167103%_
                                             _%e166617167106%_
                                             _%hd166616167109%_
                                             _%tl166615167111%_
                                             _%e166620167114%_
                                             _%hd166619167117%_
                                             _%tl166618167119%_
                                             _%e166623167122%_
                                             _%hd166622167125%_
                                             _%tl166621167127%_
                                             _%e166626167130%_
                                             _%hd166625167133%_
                                             _%tl166624167135%_
                                             _%e166629167138%_
                                             _%hd166628167141%_
                                             _%tl166627167143%_
                                             _%e166632167146%_
                                             _%hd166631167149%_
                                             _%tl166630167151%_
                                             _%e166635167154%_
                                             _%hd166634167157%_
                                             _%tl166633167159%_)
                                            (_%__match172511172512%_
                                             _%e166608167082%_
                                             _%hd166607167085%_
                                             _%tl166606167087%_
                                             _%e166611167090%_
                                             _%hd166610167093%_
                                             _%tl166609167095%_
                                             _%e166614167098%_
                                             _%hd166613167101%_
                                             _%tl166612167103%_
                                             _%e166617167106%_
                                             _%hd166616167109%_
                                             _%tl166615167111%_
                                             _%e166620167114%_
                                             _%hd166619167117%_
                                             _%tl166618167119%_
                                             _%e166623167122%_
                                             _%hd166622167125%_
                                             _%tl166621167127%_
                                             _%e166626167130%_
                                             _%hd166625167133%_
                                             _%tl166624167135%_
                                             _%e166629167138%_
                                             _%hd166628167141%_
                                             _%tl166627167143%_
                                             _%e166632167146%_
                                             _%hd166631167149%_
                                             _%tl166630167151%_
                                             _%e166635167154%_
                                             _%hd166634167157%_
                                             _%tl166633167159%_))
                                        (_%__match172635172636%_
                                         _%e166608167082%_
                                         _%hd166607167085%_
                                         _%tl166606167087%_
                                         _%e166611167090%_
                                         _%hd166610167093%_
                                         _%tl166609167095%_
                                         _%e166614167098%_
                                         _%hd166613167101%_
                                         _%tl166612167103%_
                                         _%e166617167106%_
                                         _%hd166616167109%_
                                         _%tl166615167111%_
                                         _%e166620167114%_
                                         _%hd166619167117%_
                                         _%tl166618167119%_
                                         _%e166623167122%_
                                         _%hd166622167125%_
                                         _%tl166621167127%_
                                         _%e166626167130%_
                                         _%hd166625167133%_
                                         _%tl166624167135%_
                                         _%e166629167138%_
                                         _%hd166628167141%_
                                         _%tl166627167143%_))))
                                (_%__match172635172636%_
                                 _%e166608167082%_
                                 _%hd166607167085%_
                                 _%tl166606167087%_
                                 _%e166611167090%_
                                 _%hd166610167093%_
                                 _%tl166609167095%_
                                 _%e166614167098%_
                                 _%hd166613167101%_
                                 _%tl166612167103%_
                                 _%e166617167106%_
                                 _%hd166616167109%_
                                 _%tl166615167111%_
                                 _%e166620167114%_
                                 _%hd166619167117%_
                                 _%tl166618167119%_
                                 _%e166623167122%_
                                 _%hd166622167125%_
                                 _%tl166621167127%_
                                 _%e166626167130%_
                                 _%hd166625167133%_
                                 _%tl166624167135%_
                                 _%e166629167138%_
                                 _%hd166628167141%_
                                 _%tl166627167143%_))
                            (_%__match172635172636%_
                             _%e166608167082%_
                             _%hd166607167085%_
                             _%tl166606167087%_
                             _%e166611167090%_
                             _%hd166610167093%_
                             _%tl166609167095%_
                             _%e166614167098%_
                             _%hd166613167101%_
                             _%tl166612167103%_
                             _%e166617167106%_
                             _%hd166616167109%_
                             _%tl166615167111%_
                             _%e166620167114%_
                             _%hd166619167117%_
                             _%tl166618167119%_
                             _%e166623167122%_
                             _%hd166622167125%_
                             _%tl166621167127%_
                             _%e166626167130%_
                             _%hd166625167133%_
                             _%tl166624167135%_
                             _%e166629167138%_
                             _%hd166628167141%_
                             _%tl166627167143%_))))
                     (_%__match172353172354%_
                      (lambda (_%e166557167203%_
                               _%hd166556167206%_
                               _%tl166555167208%_
                               _%e166560167211%_
                               _%hd166559167214%_
                               _%tl166558167216%_
                               _%e166563167219%_
                               _%hd166562167222%_
                               _%tl166561167224%_
                               _%e166566167227%_
                               _%hd166565167230%_
                               _%tl166564167232%_
                               _%e166569167235%_
                               _%hd166568167238%_
                               _%tl166567167240%_
                               _%e166572167243%_
                               _%hd166571167246%_
                               _%tl166570167248%_
                               _%e166575167251%_
                               _%hd166574167254%_
                               _%tl166573167256%_
                               _%e166578167259%_
                               _%hd166577167262%_
                               _%tl166576167264%_
                               _%e166581167267%_
                               _%hd166580167270%_
                               _%tl166579167272%_
                               _%e166584167275%_
                               _%hd166583167278%_
                               _%tl166582167280%_
                               _%e166587167283%_
                               _%hd166586167286%_
                               _%tl166585167288%_
                               _%e166590167291%_
                               _%hd166589167294%_
                               _%tl166588167296%_
                               _%e166593167299%_
                               _%hd166592167302%_
                               _%tl166591167304%_
                               _%__splice172146172147%_
                               _%target166594167307%_
                               _%tl166596167309%_)
                        (letrec ((_%loop166597167312%_
                                  (lambda (_%hd166595167315%_
                                           _%args166601167317%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166595167315%_))
                                        (let ((_%e166598167320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166595167315%_))))
                                          (let ((_%lp-tl166600167325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166598167320%_)))
                                                (_%lp-hd166599167323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166598167320%_))))
                                            (let ((__tmp172805
                                                   (cons _%lp-hd166599167323%_
                                                         _%args166601167317%_)))
                                              (declare (not safe))
                                              (_%loop166597167312%_
                                               _%lp-tl166600167325%_
                                               __tmp172805))))
                                        (let ((_%args166602167328%_
                                               (reverse _%args166601167317%_)))
                                          (let ((_%L167331%_
                                                 _%args166602167328%_)
                                                (_%L167332%_
                                                 _%hd166592167302%_)
                                                (_%L167333%_
                                                 _%hd166583167278%_)
                                                (_%L167334%_
                                                 _%hd166574167254%_)
                                                (_%L167335%_
                                                 _%hd166565167230%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167335%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167334%_
                                                        'call-method))
                                                     (let ((__tmp172806
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166494%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167333%_
                                                        __tmp172806)))
                                                (_%__kont172144172145%_
                                                 _%L167331%_
                                                 _%L167332%_
                                                 _%L167333%_
                                                 _%L167334%_
                                                 _%L167335%_)
                                                (_%__kont172156172157%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166597167312%_
                             _%target166594167307%_
                             '())))))
                     (_%__match172311172312%_
                      (lambda (_%e166557167203%_
                               _%hd166556167206%_
                               _%tl166555167208%_
                               _%e166560167211%_
                               _%hd166559167214%_
                               _%tl166558167216%_
                               _%e166563167219%_
                               _%hd166562167222%_
                               _%tl166561167224%_
                               _%e166566167227%_
                               _%hd166565167230%_
                               _%tl166564167232%_
                               _%e166569167235%_
                               _%hd166568167238%_
                               _%tl166567167240%_
                               _%e166572167243%_
                               _%hd166571167246%_
                               _%tl166570167248%_
                               _%e166575167251%_
                               _%hd166574167254%_
                               _%tl166573167256%_
                               _%e166578167259%_
                               _%hd166577167262%_
                               _%tl166576167264%_
                               _%e166581167267%_
                               _%hd166580167270%_
                               _%tl166579167272%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd166580167270%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166579167272%_))
                                (let ((_%e166584167275%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166579167272%_))))
                                  (let ((_%tl166582167280%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166584167275%_)))
                                        (_%hd166583167278%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166584167275%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166582167280%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166576167264%_))
                                            (let ((_%e166587167283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166576167264%_))))
                                              (let ((_%tl166585167288%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166587167283%_)))
                                                    (_%hd166586167286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166587167283%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd166586167286%_))
                                                    (let ((_%e166590167291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd166586167286%_))))
                                                      (let ((_%tl166588167296%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166590167291%_)))
                    (_%hd166589167294%_
                     (let () (declare (not safe)) (##car _%e166590167291%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd166589167294%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd166589167294%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166588167296%_))
                            (let ((_%e166593167299%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166588167296%_))))
                              (let ((_%tl166591167304%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166593167299%_)))
                                    (_%hd166592167302%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166593167299%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166591167304%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166585167288%_))
                                        (let ((_%__splice172146172147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166585167288%_
                                                  '0))))
                                          (let ((_%tl166596167309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172146172147%_
                                                    '1)))
                                                (_%target166594167307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172146172147%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166596167309%_))
                                                (_%__match172353172354%_
                                                 _%e166557167203%_
                                                 _%hd166556167206%_
                                                 _%tl166555167208%_
                                                 _%e166560167211%_
                                                 _%hd166559167214%_
                                                 _%tl166558167216%_
                                                 _%e166563167219%_
                                                 _%hd166562167222%_
                                                 _%tl166561167224%_
                                                 _%e166566167227%_
                                                 _%hd166565167230%_
                                                 _%tl166564167232%_
                                                 _%e166569167235%_
                                                 _%hd166568167238%_
                                                 _%tl166567167240%_
                                                 _%e166572167243%_
                                                 _%hd166571167246%_
                                                 _%tl166570167248%_
                                                 _%e166575167251%_
                                                 _%hd166574167254%_
                                                 _%tl166573167256%_
                                                 _%e166578167259%_
                                                 _%hd166577167262%_
                                                 _%tl166576167264%_
                                                 _%e166581167267%_
                                                 _%hd166580167270%_
                                                 _%tl166579167272%_
                                                 _%e166584167275%_
                                                 _%hd166583167278%_
                                                 _%tl166582167280%_
                                                 _%e166587167283%_
                                                 _%hd166586167286%_
                                                 _%tl166585167288%_
                                                 _%e166590167291%_
                                                 _%hd166589167294%_
                                                 _%tl166588167296%_
                                                 _%e166593167299%_
                                                 _%hd166592167302%_
                                                 _%tl166591167304%_
                                                 _%__splice172146172147%_
                                                 _%target166594167307%_
                                                 _%tl166596167309%_)
                                                (_%__kont172156172157%_))))
                                        (_%__kont172156172157%_))
                                    (_%__kont172156172157%_))))
                            (_%__kont172156172157%_))
                        (_%__kont172156172157%_))
                    (_%__kont172156172157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172156172157%_))))
                                            (_%__match172635172636%_
                                             _%e166557167203%_
                                             _%hd166556167206%_
                                             _%tl166555167208%_
                                             _%e166560167211%_
                                             _%hd166559167214%_
                                             _%tl166558167216%_
                                             _%e166563167219%_
                                             _%hd166562167222%_
                                             _%tl166561167224%_
                                             _%e166566167227%_
                                             _%hd166565167230%_
                                             _%tl166564167232%_
                                             _%e166569167235%_
                                             _%hd166568167238%_
                                             _%tl166567167240%_
                                             _%e166572167243%_
                                             _%hd166571167246%_
                                             _%tl166570167248%_
                                             _%e166575167251%_
                                             _%hd166574167254%_
                                             _%tl166573167256%_
                                             _%e166578167259%_
                                             _%hd166577167262%_
                                             _%tl166576167264%_))
                                        (_%__match172635172636%_
                                         _%e166557167203%_
                                         _%hd166556167206%_
                                         _%tl166555167208%_
                                         _%e166560167211%_
                                         _%hd166559167214%_
                                         _%tl166558167216%_
                                         _%e166563167219%_
                                         _%hd166562167222%_
                                         _%tl166561167224%_
                                         _%e166566167227%_
                                         _%hd166565167230%_
                                         _%tl166564167232%_
                                         _%e166569167235%_
                                         _%hd166568167238%_
                                         _%tl166567167240%_
                                         _%e166572167243%_
                                         _%hd166571167246%_
                                         _%tl166570167248%_
                                         _%e166575167251%_
                                         _%hd166574167254%_
                                         _%tl166573167256%_
                                         _%e166578167259%_
                                         _%hd166577167262%_
                                         _%tl166576167264%_))))
                                (_%__match172635172636%_
                                 _%e166557167203%_
                                 _%hd166556167206%_
                                 _%tl166555167208%_
                                 _%e166560167211%_
                                 _%hd166559167214%_
                                 _%tl166558167216%_
                                 _%e166563167219%_
                                 _%hd166562167222%_
                                 _%tl166561167224%_
                                 _%e166566167227%_
                                 _%hd166565167230%_
                                 _%tl166564167232%_
                                 _%e166569167235%_
                                 _%hd166568167238%_
                                 _%tl166567167240%_
                                 _%e166572167243%_
                                 _%hd166571167246%_
                                 _%tl166570167248%_
                                 _%e166575167251%_
                                 _%hd166574167254%_
                                 _%tl166573167256%_
                                 _%e166578167259%_
                                 _%hd166577167262%_
                                 _%tl166576167264%_))
                            (_%__match172421172422%_
                             _%e166557167203%_
                             _%hd166556167206%_
                             _%tl166555167208%_
                             _%e166560167211%_
                             _%hd166559167214%_
                             _%tl166558167216%_
                             _%e166563167219%_
                             _%hd166562167222%_
                             _%tl166561167224%_
                             _%e166566167227%_
                             _%hd166565167230%_
                             _%tl166564167232%_
                             _%e166569167235%_
                             _%hd166568167238%_
                             _%tl166567167240%_
                             _%e166572167243%_
                             _%hd166571167246%_
                             _%tl166570167248%_
                             _%e166575167251%_
                             _%hd166574167254%_
                             _%tl166573167256%_
                             _%e166578167259%_
                             _%hd166577167262%_
                             _%tl166576167264%_
                             _%e166581167267%_
                             _%hd166580167270%_
                             _%tl166579167272%_))))
                     (_%__match172243172244%_
                      (lambda (_%e166513167395%_
                               _%hd166512167398%_
                               _%tl166511167400%_
                               _%e166516167403%_
                               _%hd166515167406%_
                               _%tl166514167408%_
                               _%e166519167411%_
                               _%hd166518167414%_
                               _%tl166517167416%_
                               _%e166522167419%_
                               _%hd166521167422%_
                               _%tl166520167424%_
                               _%e166525167427%_
                               _%hd166524167430%_
                               _%tl166523167432%_
                               _%e166528167435%_
                               _%hd166527167438%_
                               _%tl166526167440%_
                               _%e166531167443%_
                               _%hd166530167446%_
                               _%tl166529167448%_
                               _%e166534167451%_
                               _%hd166533167454%_
                               _%tl166532167456%_
                               _%e166537167459%_
                               _%hd166536167462%_
                               _%tl166535167464%_
                               _%e166540167467%_
                               _%hd166539167470%_
                               _%tl166538167472%_
                               _%__splice172142172143%_
                               _%target166541167475%_
                               _%tl166543167477%_)
                        (letrec ((_%loop166544167480%_
                                  (lambda (_%hd166542167483%_
                                           _%args166548167485%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166542167483%_))
                                        (let ((_%e166545167488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166542167483%_))))
                                          (let ((_%lp-tl166547167493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166545167488%_)))
                                                (_%lp-hd166546167491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166545167488%_))))
                                            (let ((__tmp172807
                                                   (cons _%lp-hd166546167491%_
                                                         _%args166548167485%_)))
                                              (declare (not safe))
                                              (_%loop166544167480%_
                                               _%lp-tl166547167493%_
                                               __tmp172807))))
                                        (let ((_%args166549167496%_
                                               (reverse _%args166548167485%_)))
                                          (let ((_%L167499%_
                                                 _%args166549167496%_)
                                                (_%L167500%_
                                                 _%hd166539167470%_)
                                                (_%L167501%_
                                                 _%hd166530167446%_)
                                                (_%L167502%_
                                                 _%hd166521167422%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167502%_
                                                        'call-method))
                                                     (let ((__tmp172808
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166494%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167501%_
                                                        __tmp172808)))
                                                (_%__kont172140172141%_
                                                 _%L167499%_
                                                 _%L167500%_
                                                 _%L167501%_
                                                 _%L167502%_)
                                                (_%__match172431172432%_
                                                 _%e166513167395%_
                                                 _%hd166512167398%_
                                                 _%tl166511167400%_
                                                 _%e166516167403%_
                                                 _%hd166515167406%_
                                                 _%tl166514167408%_
                                                 _%e166519167411%_
                                                 _%hd166518167414%_
                                                 _%tl166517167416%_
                                                 _%e166522167419%_
                                                 _%hd166521167422%_
                                                 _%tl166520167424%_
                                                 _%e166525167427%_
                                                 _%hd166524167430%_
                                                 _%tl166523167432%_
                                                 _%e166528167435%_
                                                 _%hd166527167438%_
                                                 _%tl166526167440%_
                                                 _%e166531167443%_
                                                 _%hd166530167446%_
                                                 _%tl166529167448%_
                                                 _%e166534167451%_
                                                 _%hd166533167454%_
                                                 _%tl166532167456%_
                                                 _%e166537167459%_
                                                 _%hd166536167462%_
                                                 _%tl166535167464%_
                                                 _%e166540167467%_
                                                 _%hd166539167470%_
                                                 _%tl166538167472%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166544167480%_
                             _%target166541167475%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172138172139%_))
                    (let ((_%e166513167395%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172138172139%_))))
                      (let ((_%tl166511167400%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166513167395%_)))
                            (_%hd166512167398%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166513167395%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166511167400%_))
                            (let ((_%e166516167403%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166511167400%_))))
                              (let ((_%tl166514167408%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166516167403%_)))
                                    (_%hd166515167406%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166516167403%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd166515167406%_))
                                    (let ((_%e166519167411%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd166515167406%_))))
                                      (let ((_%tl166517167416%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e166519167411%_)))
                                            (_%hd166518167414%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e166519167411%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd166518167414%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd166518167414%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166517167416%_))
                                                    (let ((_%e166522167419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166517167416%_))))
                                                      (let ((_%tl166520167424%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166522167419%_)))
                    (_%hd166521167422%_
                     (let () (declare (not safe)) (##car _%e166522167419%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166520167424%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl166514167408%_))
                        (let ((_%e166525167427%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl166514167408%_))))
                          (let ((_%tl166523167432%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166525167427%_)))
                                (_%hd166524167430%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166525167427%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd166524167430%_))
                                (let ((_%e166528167435%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd166524167430%_))))
                                  (let ((_%tl166526167440%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166528167435%_)))
                                        (_%hd166527167438%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166528167435%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166527167438%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166527167438%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166526167440%_))
                                                (let ((_%e166531167443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166526167440%_))))
                                                  (let ((_%tl166529167448%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166531167443%_)))
                                                        (_%hd166530167446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166531167443%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166529167448%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl166523167432%_))
                                                            (let ((_%e166534167451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl166523167432%_))))
                      (let ((_%tl166532167456%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166534167451%_)))
                            (_%hd166533167454%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166534167451%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd166533167454%_))
                            (let ((_%e166537167459%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd166533167454%_))))
                              (let ((_%tl166535167464%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166537167459%_)))
                                    (_%hd166536167462%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166537167459%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd166536167462%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd166536167462%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166535167464%_))
                                            (let ((_%e166540167467%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166535167464%_))))
                                              (let ((_%tl166538167472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166540167467%_)))
                                                    (_%hd166539167470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166540167467%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl166538167472%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl166532167456%_))
                                                        (let ((_%__splice172142172143%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl166532167456%_ '0))))
                  (let ((_%tl166543167477%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172142172143%_ '1)))
                        (_%target166541167475%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172142172143%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl166543167477%_))
                        (_%__match172243172244%_
                         _%e166513167395%_
                         _%hd166512167398%_
                         _%tl166511167400%_
                         _%e166516167403%_
                         _%hd166515167406%_
                         _%tl166514167408%_
                         _%e166519167411%_
                         _%hd166518167414%_
                         _%tl166517167416%_
                         _%e166522167419%_
                         _%hd166521167422%_
                         _%tl166520167424%_
                         _%e166525167427%_
                         _%hd166524167430%_
                         _%tl166523167432%_
                         _%e166528167435%_
                         _%hd166527167438%_
                         _%tl166526167440%_
                         _%e166531167443%_
                         _%hd166530167446%_
                         _%tl166529167448%_
                         _%e166534167451%_
                         _%hd166533167454%_
                         _%tl166532167456%_
                         _%e166537167459%_
                         _%hd166536167462%_
                         _%tl166535167464%_
                         _%e166540167467%_
                         _%hd166539167470%_
                         _%tl166538167472%_
                         _%__splice172142172143%_
                         _%target166541167475%_
                         _%tl166543167477%_)
                        (_%__match172431172432%_
                         _%e166513167395%_
                         _%hd166512167398%_
                         _%tl166511167400%_
                         _%e166516167403%_
                         _%hd166515167406%_
                         _%tl166514167408%_
                         _%e166519167411%_
                         _%hd166518167414%_
                         _%tl166517167416%_
                         _%e166522167419%_
                         _%hd166521167422%_
                         _%tl166520167424%_
                         _%e166525167427%_
                         _%hd166524167430%_
                         _%tl166523167432%_
                         _%e166528167435%_
                         _%hd166527167438%_
                         _%tl166526167440%_
                         _%e166531167443%_
                         _%hd166530167446%_
                         _%tl166529167448%_
                         _%e166534167451%_
                         _%hd166533167454%_
                         _%tl166532167456%_
                         _%e166537167459%_
                         _%hd166536167462%_
                         _%tl166535167464%_
                         _%e166540167467%_
                         _%hd166539167470%_
                         _%tl166538167472%_))))
                (_%__match172431172432%_
                 _%e166513167395%_
                 _%hd166512167398%_
                 _%tl166511167400%_
                 _%e166516167403%_
                 _%hd166515167406%_
                 _%tl166514167408%_
                 _%e166519167411%_
                 _%hd166518167414%_
                 _%tl166517167416%_
                 _%e166522167419%_
                 _%hd166521167422%_
                 _%tl166520167424%_
                 _%e166525167427%_
                 _%hd166524167430%_
                 _%tl166523167432%_
                 _%e166528167435%_
                 _%hd166527167438%_
                 _%tl166526167440%_
                 _%e166531167443%_
                 _%hd166530167446%_
                 _%tl166529167448%_
                 _%e166534167451%_
                 _%hd166533167454%_
                 _%tl166532167456%_
                 _%e166537167459%_
                 _%hd166536167462%_
                 _%tl166535167464%_
                 _%e166540167467%_
                 _%hd166539167470%_
                 _%tl166538167472%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match172635172636%_
                                                     _%e166513167395%_
                                                     _%hd166512167398%_
                                                     _%tl166511167400%_
                                                     _%e166516167403%_
                                                     _%hd166515167406%_
                                                     _%tl166514167408%_
                                                     _%e166519167411%_
                                                     _%hd166518167414%_
                                                     _%tl166517167416%_
                                                     _%e166522167419%_
                                                     _%hd166521167422%_
                                                     _%tl166520167424%_
                                                     _%e166525167427%_
                                                     _%hd166524167430%_
                                                     _%tl166523167432%_
                                                     _%e166528167435%_
                                                     _%hd166527167438%_
                                                     _%tl166526167440%_
                                                     _%e166531167443%_
                                                     _%hd166530167446%_
                                                     _%tl166529167448%_
                                                     _%e166534167451%_
                                                     _%hd166533167454%_
                                                     _%tl166532167456%_))))
                                            (_%__match172635172636%_
                                             _%e166513167395%_
                                             _%hd166512167398%_
                                             _%tl166511167400%_
                                             _%e166516167403%_
                                             _%hd166515167406%_
                                             _%tl166514167408%_
                                             _%e166519167411%_
                                             _%hd166518167414%_
                                             _%tl166517167416%_
                                             _%e166522167419%_
                                             _%hd166521167422%_
                                             _%tl166520167424%_
                                             _%e166525167427%_
                                             _%hd166524167430%_
                                             _%tl166523167432%_
                                             _%e166528167435%_
                                             _%hd166527167438%_
                                             _%tl166526167440%_
                                             _%e166531167443%_
                                             _%hd166530167446%_
                                             _%tl166529167448%_
                                             _%e166534167451%_
                                             _%hd166533167454%_
                                             _%tl166532167456%_))
                                        (_%__match172311172312%_
                                         _%e166513167395%_
                                         _%hd166512167398%_
                                         _%tl166511167400%_
                                         _%e166516167403%_
                                         _%hd166515167406%_
                                         _%tl166514167408%_
                                         _%e166519167411%_
                                         _%hd166518167414%_
                                         _%tl166517167416%_
                                         _%e166522167419%_
                                         _%hd166521167422%_
                                         _%tl166520167424%_
                                         _%e166525167427%_
                                         _%hd166524167430%_
                                         _%tl166523167432%_
                                         _%e166528167435%_
                                         _%hd166527167438%_
                                         _%tl166526167440%_
                                         _%e166531167443%_
                                         _%hd166530167446%_
                                         _%tl166529167448%_
                                         _%e166534167451%_
                                         _%hd166533167454%_
                                         _%tl166532167456%_
                                         _%e166537167459%_
                                         _%hd166536167462%_
                                         _%tl166535167464%_))
                                    (_%__match172635172636%_
                                     _%e166513167395%_
                                     _%hd166512167398%_
                                     _%tl166511167400%_
                                     _%e166516167403%_
                                     _%hd166515167406%_
                                     _%tl166514167408%_
                                     _%e166519167411%_
                                     _%hd166518167414%_
                                     _%tl166517167416%_
                                     _%e166522167419%_
                                     _%hd166521167422%_
                                     _%tl166520167424%_
                                     _%e166525167427%_
                                     _%hd166524167430%_
                                     _%tl166523167432%_
                                     _%e166528167435%_
                                     _%hd166527167438%_
                                     _%tl166526167440%_
                                     _%e166531167443%_
                                     _%hd166530167446%_
                                     _%tl166529167448%_
                                     _%e166534167451%_
                                     _%hd166533167454%_
                                     _%tl166532167456%_))))
                            (_%__match172635172636%_
                             _%e166513167395%_
                             _%hd166512167398%_
                             _%tl166511167400%_
                             _%e166516167403%_
                             _%hd166515167406%_
                             _%tl166514167408%_
                             _%e166519167411%_
                             _%hd166518167414%_
                             _%tl166517167416%_
                             _%e166522167419%_
                             _%hd166521167422%_
                             _%tl166520167424%_
                             _%e166525167427%_
                             _%hd166524167430%_
                             _%tl166523167432%_
                             _%e166528167435%_
                             _%hd166527167438%_
                             _%tl166526167440%_
                             _%e166531167443%_
                             _%hd166530167446%_
                             _%tl166529167448%_
                             _%e166534167451%_
                             _%hd166533167454%_
                             _%tl166532167456%_))))
                    (_%__match172573172574%_
                     _%e166513167395%_
                     _%hd166512167398%_
                     _%tl166511167400%_
                     _%e166516167403%_
                     _%hd166515167406%_
                     _%tl166514167408%_
                     _%e166519167411%_
                     _%hd166518167414%_
                     _%tl166517167416%_
                     _%e166522167419%_
                     _%hd166521167422%_
                     _%tl166520167424%_
                     _%e166525167427%_
                     _%hd166524167430%_
                     _%tl166523167432%_
                     _%e166528167435%_
                     _%hd166527167438%_
                     _%tl166526167440%_
                     _%e166531167443%_
                     _%hd166530167446%_
                     _%tl166529167448%_))
                (_%__kont172156172157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172156172157%_))
                                            (_%__kont172156172157%_))
                                        (_%__kont172156172157%_))))
                                (_%__kont172156172157%_))))
                        (_%__kont172156172157%_))
                    (_%__kont172156172157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172156172157%_))
                                                (_%__kont172156172157%_))
                                            (_%__kont172156172157%_))))
                                    (_%__kont172156172157%_))))
                            (_%__kont172156172157%_))))
                    (_%__kont172156172157%_))))))))))
