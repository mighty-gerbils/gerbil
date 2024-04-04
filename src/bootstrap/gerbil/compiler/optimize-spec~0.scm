(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712251115)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp172621 (list gxc#::identity::t))
            (__tmp172620 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp172621
         '()
         __tmp172620
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args171486%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args171486%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp172622
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
        (__make-promise __tmp172622)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx171478%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self171481%_
                (let ((__obj172615
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj172615))
               (__tmp172623
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171481%_ _%stx171478%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp172623
           gxc#current-compile-method
           _%self171481%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp172625 (list gxc#::void::t))
            (__tmp172624 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp172625
         '(receiver methods slots)
         __tmp172624
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args171475%_
        (apply make-instance gxc#::collect-object-refs::t _%$args171475%_)))
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
      (let ((__tmp172626
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
        (__make-promise __tmp172626)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords171441%_
               _%receiver171436171442%_
               _%methods171437171444%_
               _%slots171438171446%_
               _%stx171448%_)
        (let* ((_%receiver171451%_
                (if (eq? _%receiver171436171442%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171436171442%_))
               (_%methods171453%_
                (if (eq? _%methods171437171444%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171437171444%_))
               (_%slots171455%_
                (if (eq? _%slots171438171446%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171438171446%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self171457%_
                  (let ((__obj172617
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
                       __obj172617
                       _%receiver171451%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172617
                       _%methods171453%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172617
                       _%slots171455%_
                       '3
                       '#f
                       '#f))
                    __obj172617))
                 (__tmp172627
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171457%_ _%stx171448%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172627
             gxc#current-compile-method
             _%self171457%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords171464%_ . _%args171465%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords171464%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171464%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171464%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171464%_
                  'slots:
                  absent-value))
               _%args171465%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args171439171471%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args171439171471%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp172629 (list gxc#::basic-xform-expression::t))
            (__tmp172628 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp172629
         '(receiver klass methods slots)
         __tmp172628
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args171432%_
        (apply make-instance gxc#::subst-object-refs::t _%$args171432%_)))
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
      (let ((__tmp172630
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
        (__make-promise __tmp172630)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords171394%_
               _%receiver171388171395%_
               _%klass171389171397%_
               _%methods171390171399%_
               _%slots171391171401%_
               _%stx171403%_)
        (let* ((_%receiver171406%_
                (if (eq? _%receiver171388171395%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171388171395%_))
               (_%klass171408%_
                (if (eq? _%klass171389171397%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass171389171397%_))
               (_%methods171410%_
                (if (eq? _%methods171390171399%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171390171399%_))
               (_%slots171412%_
                (if (eq? _%slots171391171401%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171391171401%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self171414%_
                  (let ((__obj172619
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
                       __obj172619
                       _%receiver171406%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172619
                       _%klass171408%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172619
                       _%methods171410%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172619
                       _%slots171412%_
                       '4
                       '#f
                       '#f))
                    __obj172619))
                 (__tmp172631
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171414%_ _%stx171403%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172631
             gxc#current-compile-method
             _%self171414%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords171421%_ . _%args171422%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords171421%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171421%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171421%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171421%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171421%_
                  'slots:
                  absent-value))
               _%args171422%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args171392171428%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args171392171428%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self168569%_ _%stx168570%_)
        (letrec ((_%generate-method-bind168572%_
                  (lambda (_%$klass171380%_
                           _%$method-table171381%_
                           _%id171382%_
                           _%$id171383%_)
                    (let ((_%$tmp171385%_
                           (let ((__tmp172632
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172632))))
                      (cons (cons _%$id171383%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp171385%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table171381%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id171382%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp171385%_ '()))
                    (cons (cons '%#ref (cons _%$tmp171385%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id171382%_
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
                 (_%generate-slot-bind168573%_
                  (lambda (_%$klass171374%_ _%id171375%_ _%$id171376%_)
                    (let ((_%$tmp171378%_
                           (let ((__tmp172633
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172633))))
                      (cons (cons _%$id171376%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp171378%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass171374%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id171375%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp171378%_ '()))
                        (cons (cons '%#ref (cons _%$tmp171378%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id171375%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl168574%_
                  (lambda (_%$klass171368%_
                           _%$method-table171369%_
                           _%methods-bind171370%_
                           _%slots-bind171371%_
                           _%specializer-impl171372%_)
                    (let ((__tmp172634
                           (cons '%#lambda
                                 (cons (cons _%$klass171368%_
                                             (cons _%$method-table171369%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind171371%_
                                                            _%methods-bind171370%_))
                                                         (cons _%specializer-impl171372%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172634 _%stx168570%_))))
                 (_%generate-specializer-def168575%_
                  (lambda (_%id171364%_
                           _%specializer-id171365%_
                           _%specializer-impl171366%_)
                    (let ((__tmp172635
                           (cons '%#begin
                                 (cons _%stx168570%_
                                       (cons (let ((__tmp172636
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id171365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl171366%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp172636
                                                _%stx168570%_))
                                             (cons (let ((__tmp172637
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id171364%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id171365%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172637
                                                      _%stx168570%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172635 _%stx168570%_)))))
          (let* ((_%__stx171575171576%_ _%stx168570%_)
                 (_%g168578168598%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171575171576%_)))))
            (let ((_%__kont171577171578%_
                   (lambda (_%L168642%_ _%L168643%_)
                     (let ((_%method-calls168662%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs168663%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty168664%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?168666%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls168662%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs168663%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L168642%_))
                             (let ()
                               (let* ((_%__stx171489171490%_ _%L168642%_)
                                      (_%g169054169072%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx171489171490%_)))))
                                 (let ((_%__kont171491171492%_
                                        (lambda (_%L169108%_
                                                 _%L169109%_
                                                 _%L169110%_)
                                          (for-each
                                           (lambda (_%g169126169128%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs__%
                                                '#f
                                                _%L169110%_
                                                _%method-calls168662%_
                                                _%slot-refs168663%_
                                                _%g169126169128%_)))
                                           _%L169108%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?168666%_))
                                              _%stx168570%_
                                              (let* ((_%specializer-id169137%_
                                                      (let* ((_%id169131%_
                                                              (let ((__tmp172638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L168643%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp172638 '"::specialize")))
                     (_%specializer-id169134%_
                      (let ((__tmp172639
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx168570%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id169131%_ __tmp172639))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id169134%_))
                _%specializer-id169134%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass169139%_
                                                      (let ((__tmp172640
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp172640)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table169141%_
                                                      (let ((__tmp172641
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp172641)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods169143%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls168662%_)))
                                                     (_%$methods169147%_
                                                      (map (lambda (_%id169145%_)
                                                             (let ((__tmp172642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169145%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172642)))
                   _%methods169143%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169156%_
                                                      (for-each
                                                       (lambda (_%g169148169151%_
                                                                _%g169149169153%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls168662%_
                                                            _%g169148169151%_
                                                            _%g169149169153%_)))
                                                       _%methods169143%_
                                                       _%$methods169147%_))
                                                     (_%methods-bind169166%_
                                                      (map (lambda (_%g169158169161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169159169163%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind168572%_
                        _%$klass169139%_
                        _%$method-table169141%_
                        _%g169158169161%_
                        _%g169159169163%_)))
                   _%methods169143%_
                   _%$methods169147%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169168%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs168663%_)))
                                                     (_%$slots169172%_
                                                      (map (lambda (_%id169170%_)
                                                             (let ((__tmp172643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169170%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172643)))
                   _%slots169168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169181%_
                                                      (for-each
                                                       (lambda (_%g169173169176%_
                                                                _%g169174169178%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs168663%_
                                                            _%g169173169176%_
                                                            _%g169174169178%_)))
                                                       _%slots169168%_
                                                       _%$slots169172%_))
                                                     (_%slots-bind169190%_
                                                      (map (lambda (_%g169182169185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169183169187%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind168573%_
                        _%$klass169139%_
                        _%g169182169185%_
                        _%g169183169187%_)))
                   _%slots169168%_
                   _%$slots169172%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body169196%_
                                                      (map (lambda (_%g169191169193%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs__%
                        '#f
                        _%L169110%_
                        _%$klass169139%_
                        _%method-calls168662%_
                        _%slot-refs168663%_
                        _%g169191169193%_)))
                   _%L169108%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169198%_
                                                      (let ((__tmp172644
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L169110%_ _%L169109%_)
                                 _%specializer-body169196%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp172644 _%stx168570%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169200%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl168574%_
                                                         _%$klass169139%_
                                                         _%$method-table169141%_
                                                         _%methods-bind169166%_
                                                         _%slots-bind169190%_
                                                         _%specializer-impl169198%_))))
                                                (let ((__tmp172646
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168643%_)))
                                                      (__tmp172645
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id169137%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp172646
                                                   '" => "
                                                   __tmp172645))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def168575%_
                                                   _%L168643%_
                                                   _%specializer-id169137%_
                                                   _%specializer-impl169200%_))))))
                                       (_%__kont171493171494%_
                                        (lambda () _%stx168570%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx171489171490%_))
                                       (let ((_%e169061169084%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx171489171490%_))))
                                         (let ((_%tl169059169089%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169061169084%_)))
                                               (_%hd169060169087%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169061169084%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl169059169089%_))
                                               (let ((_%e169064169092%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl169059169089%_))))
                                                 (let ((_%tl169062169097%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169064169092%_)))
                                                       (_%hd169063169095%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169064169092%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd169063169095%_))
                                                       (let ((_%e169067169100%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd169063169095%_))))
                 (let ((_%tl169065169105%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169067169100%_)))
                       (_%hd169066169103%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169067169100%_))))
                   (_%__kont171491171492%_
                    _%tl169062169097%_
                    _%tl169065169105%_
                    _%hd169066169103%_)))
               (_%__kont171493171494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont171493171494%_))))
                                       (_%__kont171493171494%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L168642%_))
                                 (let ()
                                   (let* ((_%g169207169226%_
                                           (lambda (_%g169208169223%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g169208169223%_))))
                                          (_%g169206169513%_
                                           (lambda (_%g169208169229%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g169208169229%_))
                                                 (let ((_%e169212169231%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g169208169229%_))))
                                                   (let ((_%hd169211169234%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169212169231%_)))
                                                         (_%tl169210169236%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169212169231%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl169210169236%_))
                                                         (let ((_g172647_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl169210169236%_ '0))))
                   (begin
                     (let ((_g172648_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g172647_)
                                  (##vector-length _g172647_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g172648_ 2)))
                           (error "Context expects 2 values" _g172648_)))
                     (let ((_%target169213169239%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172647_ 0)))
                           (_%tl169215169241%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172647_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169215169241%_))
                           (letrec ((_%loop169216169244%_
                                     (lambda (_%hd169214169247%_
                                              _%clause169220169249%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169214169247%_))
                                           (let ((_%e169217169252%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169214169247%_))))
                                             (let ((_%lp-hd169218169255%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169217169252%_)))
                                                   (_%lp-tl169219169257%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169217169252%_))))
                                               (let ((__tmp172649
                                                      (cons _%lp-hd169218169255%_
                                                            _%clause169220169249%_)))
                                                 (declare (not safe))
                                                 (_%loop169216169244%_
                                                  _%lp-tl169219169257%_
                                                  __tmp172649))))
                                           (let ((_%clause169221169260%_
                                                  (reverse _%clause169220169249%_)))
                                             ((lambda (_%L169263%_)
                                                (for-each
                                                 (lambda (_%clause169277%_)
                                                   (let* ((_%__stx171515171516%_
                                                           _%clause169277%_)
                                                          (_%g169280169295%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx171515171516%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont171517171518%_
                                                            (lambda (_%L169323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L169324%_
                             _%L169325%_)
                      (for-each
                       (lambda (_%g169340169342%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs__%
                            '#f
                            _%L169325%_
                            _%method-calls168662%_
                            _%slot-refs168663%_
                            _%g169340169342%_)))
                       _%L169323%_)))
                   (_%__kont171519171520%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx171515171516%_))
                   (let ((_%e169287169307%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx171515171516%_))))
                     (let ((_%tl169285169312%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169287169307%_)))
                           (_%hd169286169310%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169287169307%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169286169310%_))
                           (let ((_%e169290169315%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169286169310%_))))
                             (let ((_%tl169288169320%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169290169315%_)))
                                   (_%hd169289169318%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169290169315%_))))
                               (_%__kont171517171518%_
                                _%tl169285169312%_
                                _%tl169288169320%_
                                _%hd169289169318%_)))
                           (_%__kont171519171520%_))))
                   (_%__kont171519171520%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp172650
                                                        (lambda (_%g169347169350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169348169352%_)
                  (cons _%g169347169350%_ _%g169348169352%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172650
                                                    '()
                                                    _%L169263%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?168666%_))
                                                    _%stx168570%_
                                                    (let* ((_%specializer-id169361%_
                                                            (let* ((_%id169355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp172651
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168643%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp172651 '"::specialize")))
                           (_%specializer-id169358%_
                            (let ((__tmp172652
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx168570%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id169355%_
                               __tmp172652))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id169358%_))
                      _%specializer-id169358%_))
                   (_%$klass169363%_
                    (let ((__tmp172653
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172653)))
                   (_%$method-table169365%_
                    (let ((__tmp172654
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172654)))
                   (_%methods169367%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls168662%_)))
                   (_%$methods169371%_
                    (map (lambda (_%id169369%_)
                           (let ((__tmp172655 (gensym _%id169369%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172655)))
                         _%methods169367%_))
                   (_%_169380%_
                    (for-each
                     (lambda (_%g169372169375%_ _%g169373169377%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls168662%_
                          _%g169372169375%_
                          _%g169373169377%_)))
                     _%methods169367%_
                     _%$methods169371%_))
                   (_%methods-bind169390%_
                    (map (lambda (_%g169382169385%_ _%g169383169387%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind168572%_
                              _%$klass169363%_
                              _%$method-table169365%_
                              _%g169382169385%_
                              _%g169383169387%_)))
                         _%methods169367%_
                         _%$methods169371%_))
                   (_%slots169392%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs168663%_)))
                   (_%$slots169396%_
                    (map (lambda (_%id169394%_)
                           (let ((__tmp172656 (gensym _%id169394%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172656)))
                         _%slots169392%_))
                   (_%_169405%_
                    (for-each
                     (lambda (_%g169397169400%_ _%g169398169402%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs168663%_
                          _%g169397169400%_
                          _%g169398169402%_)))
                     _%slots169392%_
                     _%$slots169396%_))
                   (_%slots-bind169414%_
                    (map (lambda (_%g169406169409%_ _%g169407169411%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind168573%_
                              _%$klass169363%_
                              _%g169406169409%_
                              _%g169407169411%_)))
                         _%slots169392%_
                         _%$slots169396%_))
                   (_%specializer-clauses169506%_
                    (map (lambda (_%clause169416%_)
                           (let* ((_%__stx171535171536%_ _%clause169416%_)
                                  (_%g169419169434%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx171535171536%_)))))
                             (let ((_%__kont171537171538%_
                                    (lambda (_%L169462%_
                                             _%L169463%_
                                             _%L169464%_)
                                      (let ((_%body169494%_
                                             (map (lambda (_%g169489169491%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs__%
                                                       '#f
                                                       _%L169464%_
                                                       _%$klass169363%_
                                                       _%method-calls168662%_
                                                       _%slot-refs168663%_
                                                       _%g169489169491%_)))
                                                  _%L169462%_)))
                                        (cons (cons _%L169464%_ _%L169463%_)
                                              _%body169494%_))))
                                   (_%__kont171539171540%_
                                    (lambda () _%clause169416%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx171535171536%_))
                                   (let ((_%e169426169446%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx171535171536%_))))
                                     (let ((_%tl169424169451%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169426169446%_)))
                                           (_%hd169425169449%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169426169446%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169425169449%_))
                                           (let ((_%e169429169454%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169425169449%_))))
                                             (let ((_%tl169427169459%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169429169454%_)))
                                                   (_%hd169428169457%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169429169454%_))))
                                               (_%__kont171537171538%_
                                                _%tl169424169451%_
                                                _%tl169427169459%_
                                                _%hd169428169457%_)))
                                           (_%__kont171539171540%_))))
                                   (_%__kont171539171540%_)))))
                         (let ((__tmp172657
                                (lambda (_%g169498169501%_ _%g169499169503%_)
                                  (cons _%g169498169501%_ _%g169499169503%_))))
                           (declare (not safe))
                           (__foldr1 __tmp172657 '() _%L169263%_))))
                   (_%specializer-impl169508%_
                    (let ((__tmp172658
                           (cons '%#case-lambda
                                 _%specializer-clauses169506%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172658 _%stx168570%_)))
                   (_%specializer-impl169510%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl168574%_
                       _%$klass169363%_
                       _%$method-table169365%_
                       _%methods-bind169390%_
                       _%slots-bind169414%_
                       _%specializer-impl169508%_))))
              (let ((__tmp172660
                     (let () (declare (not safe)) (gx#stx-e _%L168643%_)))
                    (__tmp172659
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id169361%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp172660
                 '" => "
                 __tmp172659))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def168575%_
                 _%L168643%_
                 _%specializer-id169361%_
                 _%specializer-impl169510%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause169221169260%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop169216169244%_
                                _%target169213169239%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g169207169226%_ _%g169208169229%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g169207169226%_ _%g169208169229%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169207169226%_
                                                    _%g169208169229%_))))))
                                     (declare (not safe))
                                     (_%g169206169513%_ _%L168642%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L168642%_))
                                     (let ()
                                       (let* ((_%g169517169547%_
                                               (lambda (_%g169518169544%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g169518169544%_))))
                                              (_%g169516170156%_
                                               (lambda (_%g169518169550%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g169518169550%_))
                                                     (let ((_%e169524169552%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g169518169550%_))))
                                                       (let ((_%hd169523169555%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e169524169552%_)))
                     (_%tl169522169557%_
                      (let () (declare (not safe)) (##cdr _%e169524169552%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl169522169557%_))
                     (let ((_%e169527169560%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl169522169557%_))))
                       (let ((_%hd169526169563%_
                              (let ()
                                (declare (not safe))
                                (##car _%e169527169560%_)))
                             (_%tl169525169565%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e169527169560%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd169526169563%_))
                             (let ((_%e169530169568%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd169526169563%_))))
                               (let ((_%hd169529169571%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e169530169568%_)))
                                     (_%tl169528169573%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e169530169568%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd169529169571%_))
                                     (let ((_%e169533169576%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd169529169571%_))))
                                       (let ((_%hd169532169579%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169533169576%_)))
                                             (_%tl169531169581%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169533169576%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd169532169579%_))
                                             (let ((_%e169536169584%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd169532169579%_))))
                                               (let ((_%hd169535169587%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e169536169584%_)))
                                                     (_%tl169534169589%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e169536169584%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl169534169589%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl169531169581%_))
                                                         (let ((_%e169539169592%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl169531169581%_))))
                   (let ((_%hd169538169595%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169539169592%_)))
                         (_%tl169537169597%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169539169592%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl169537169597%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl169528169573%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl169525169565%_))
                                 (let ((_%e169542169600%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl169525169565%_))))
                                   (let ((_%hd169541169603%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e169542169600%_)))
                                         (_%tl169540169605%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e169542169600%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl169540169605%_))
                                         ((lambda (_%L169608%_
                                                   _%L169609%_
                                                   _%L169610%_)
                                            (let* ((_%g169634169652%_
                                                    (lambda (_%g169635169649%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169635169649%_))))
                                                   (_%g169633169703%_
                                                    (lambda (_%g169635169655%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169635169655%_))
                                                          (let ((_%e169641169657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169635169655%_))))
                    (let ((_%hd169640169660%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169641169657%_)))
                          (_%tl169639169662%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169641169657%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169639169662%_))
                          (let ((_%e169644169665%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169639169662%_))))
                            (let ((_%hd169643169668%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169644169665%_)))
                                  (_%tl169642169670%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169644169665%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169643169668%_))
                                  (let ((_%e169647169673%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169643169668%_))))
                                    (let ((_%hd169646169676%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169647169673%_)))
                                          (_%tl169645169678%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169647169673%_))))
                                      ((lambda (_%L169681%_
                                                _%L169682%_
                                                _%L169683%_)
                                         (for-each
                                          (lambda (_%g169698169700%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%L169683%_
                                               _%method-calls168662%_
                                               _%slot-refs168663%_
                                               _%g169698169700%_)))
                                          _%L169681%_))
                                       _%tl169642169670%_
                                       _%tl169645169678%_
                                       _%hd169646169676%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169634169652%_ _%g169635169655%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g169634169652%_ _%g169635169655%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169634169652%_ _%g169635169655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169633169703%_ _%L169609%_))
                                            (let* ((_%g169706169725%_
                                                    (lambda (_%g169707169722%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169707169722%_))))
                                                   (_%g169705169844%_
                                                    (lambda (_%g169707169728%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169707169728%_))
                                                          (let ((_%e169711169730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169707169728%_))))
                    (let ((_%hd169710169733%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169711169730%_)))
                          (_%tl169709169735%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169711169730%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl169709169735%_))
                          (let ((_g172661_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl169709169735%_
                                    '0))))
                            (begin
                              (let ((_g172662_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g172661_)
                                           (##vector-length _g172661_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g172662_ 2)))
                                    (error "Context expects 2 values"
                                           _g172662_)))
                              (let ((_%target169712169738%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172661_ 0)))
                                    (_%tl169714169740%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172661_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169714169740%_))
                                    (letrec ((_%loop169715169743%_
                                              (lambda (_%hd169713169746%_
                                                       _%clause169719169748%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169713169746%_))
                                                    (let ((_%e169716169751%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169713169746%_))))
                                                      (let ((_%lp-hd169717169754%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169716169751%_)))
                    (_%lp-tl169718169756%_
                     (let () (declare (not safe)) (##cdr _%e169716169751%_))))
                (let ((__tmp172663
                       (cons _%lp-hd169717169754%_ _%clause169719169748%_)))
                  (declare (not safe))
                  (_%loop169715169743%_ _%lp-tl169718169756%_ __tmp172663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause169720169759%_
                                                           (reverse _%clause169719169748%_)))
                                                      ((lambda (_%L169762%_)
                                                         (for-each
                                                          (lambda (_%clause169775%_)
                                                            (let* ((_%g169777169792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g169778169789%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g169778169789%_))))
                           (_%g169776169834%_
                            (lambda (_%g169778169795%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g169778169795%_))
                                  (let ((_%e169784169797%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g169778169795%_))))
                                    (let ((_%hd169783169800%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169784169797%_)))
                                          (_%tl169782169802%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169784169797%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd169783169800%_))
                                          (let ((_%e169787169805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd169783169800%_))))
                                            (let ((_%hd169786169808%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169787169805%_)))
                                                  (_%tl169785169810%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169787169805%_))))
                                              ((lambda (_%L169813%_
                                                        _%L169814%_
                                                        _%L169815%_)
                                                 (for-each
                                                  (lambda (_%g169829169831%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%L169815%_
                                                       _%method-calls168662%_
                                                       _%slot-refs168663%_
                                                       _%g169829169831%_)))
                                                  _%L169813%_))
                                               _%tl169782169802%_
                                               _%tl169785169810%_
                                               _%hd169786169808%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169777169792%_
                                             _%g169778169795%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169777169792%_ _%g169778169795%_))))))
                      (declare (not safe))
                      (_%g169776169834%_ _%clause169775%_)))
                  (let ((__tmp172664
                         (lambda (_%g169836169839%_ _%g169837169841%_)
                           (cons _%g169836169839%_ _%g169837169841%_))))
                    (declare (not safe))
                    (__foldr1 __tmp172664 '() _%L169762%_))))
               _%clause169720169759%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop169715169743%_
                                         _%target169712169738%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169706169725%_
                                       _%g169707169728%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g169706169725%_ _%g169707169728%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169706169725%_ _%g169707169728%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169705169844%_ _%L169608%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?168666%_))
                                                _%stx168570%_
                                                (let* ((_%specializer-id169853%_
                                                        (let* ((_%id169847%_
                                                                (let ((__tmp172665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L168643%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp172665 '"::specialize")))
                       (_%specializer-id169850%_
                        (let ((__tmp172666
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx168570%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id169847%_ __tmp172666))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id169850%_))
                  _%specializer-id169850%_))
               (_%$klass169855%_
                (let ((__tmp172667
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172667)))
               (_%$method-table169857%_
                (let ((__tmp172668
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172668)))
               (_%methods169859%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls168662%_)))
               (_%$methods169863%_
                (map (lambda (_%id169861%_)
                       (let ((__tmp172669 (gensym _%id169861%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172669)))
                     _%methods169859%_))
               (_%_169872%_
                (for-each
                 (lambda (_%g169864169867%_ _%g169865169869%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls168662%_
                      _%g169864169867%_
                      _%g169865169869%_)))
                 _%methods169859%_
                 _%$methods169863%_))
               (_%methods-bind169882%_
                (map (lambda (_%g169874169877%_ _%g169875169879%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind168572%_
                          _%$klass169855%_
                          _%$method-table169857%_
                          _%g169874169877%_
                          _%g169875169879%_)))
                     _%methods169859%_
                     _%$methods169863%_))
               (_%slots169884%_
                (let () (declare (not safe)) (hash-keys _%slot-refs168663%_)))
               (_%$slots169888%_
                (map (lambda (_%id169886%_)
                       (let ((__tmp172670 (gensym _%id169886%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172670)))
                     _%slots169884%_))
               (_%_169897%_
                (for-each
                 (lambda (_%g169889169892%_ _%g169890169894%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs168663%_
                      _%g169889169892%_
                      _%g169890169894%_)))
                 _%slots169884%_
                 _%$slots169888%_))
               (_%slots-bind169906%_
                (map (lambda (_%g169898169901%_ _%g169899169903%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind168573%_
                          _%$klass169855%_
                          _%g169898169901%_
                          _%g169899169903%_)))
                     _%slots169884%_
                     _%$slots169888%_))
               (_%specializer-lambda-expr169992%_
                (let* ((_%g169908169926%_
                        (lambda (_%g169909169923%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169909169923%_))))
                       (_%g169907169989%_
                        (lambda (_%g169909169929%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169909169929%_))
                              (let ((_%e169915169931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169909169929%_))))
                                (let ((_%hd169914169934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169915169931%_)))
                                      (_%tl169913169936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169915169931%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169913169936%_))
                                      (let ((_%e169918169939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169913169936%_))))
                                        (let ((_%hd169917169942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169918169939%_)))
                                              (_%tl169916169944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169918169939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169917169942%_))
                                              (let ((_%e169921169947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169917169942%_))))
                                                (let ((_%hd169920169950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169921169947%_)))
                                                      (_%tl169919169952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169921169947%_))))
                                                  ((lambda (_%L169955%_
                                                            _%L169956%_
                                                            _%L169957%_)
                                                     (let* ((_%body169987%_
                                                             (map (lambda (_%g169982169984%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs__%
                               '#f
                               _%L169957%_
                               _%$klass169855%_
                               _%method-calls168662%_
                               _%slot-refs168663%_
                               _%g169982169984%_)))
                          _%L169955%_))
                    (__tmp172671
                     (cons '%#lambda
                           (cons (cons _%L169957%_ _%L169956%_)
                                 _%body169987%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp172671 _%L169609%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl169916169944%_
                                                   _%tl169919169952%_
                                                   _%hd169920169950%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g169908169926%_
                                                 _%g169909169929%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169908169926%_
                                         _%g169909169929%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169908169926%_ _%g169909169929%_))))))
                  (declare (not safe))
                  (_%g169907169989%_ _%L169609%_)))
               (_%specializer-case-lambda-expr170149%_
                (let* ((_%g169994170013%_
                        (lambda (_%g169995170010%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169995170010%_))))
                       (_%g169993170146%_
                        (lambda (_%g169995170016%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169995170016%_))
                              (let ((_%e169999170018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169995170016%_))))
                                (let ((_%hd169998170021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169999170018%_)))
                                      (_%tl169997170023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169999170018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl169997170023%_))
                                      (let ((_g172672_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl169997170023%_
                                                '0))))
                                        (begin
                                          (let ((_g172673_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g172672_)
                                                       (##vector-length
                                                        _g172672_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g172673_ 2)))
                                                (error "Context expects 2 values"
                                                       _g172673_)))
                                          (let ((_%target170000170026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g172672_ 0)))
                                                (_%tl170002170028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g172672_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170002170028%_))
                                                (letrec ((_%loop170003170031%_
                                                          (lambda (_%hd170001170034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause170007170036%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd170001170034%_))
                        (let ((_%e170004170039%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd170001170034%_))))
                          (let ((_%lp-hd170005170042%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170004170039%_)))
                                (_%lp-tl170006170044%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170004170039%_))))
                            (let ((__tmp172674
                                   (cons _%lp-hd170005170042%_
                                         _%clause170007170036%_)))
                              (declare (not safe))
                              (_%loop170003170031%_
                               _%lp-tl170006170044%_
                               __tmp172674))))
                        (let ((_%clause170008170047%_
                               (reverse _%clause170007170036%_)))
                          ((lambda (_%L170050%_)
                             (let* ((_%clauses170144%_
                                     (map (lambda (_%clause170064%_)
                                            (let* ((_%__stx171555171556%_
                                                    _%clause170064%_)
                                                   (_%g170067170082%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx171555171556%_)))))
                                              (let ((_%__kont171557171558%_
                                                     (lambda (_%L170110%_
                                                              _%L170111%_
                                                              _%L170112%_)
                                                       (let ((_%body170132%_
                                                              (map (lambda (_%g170127170129%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs__%
                                '#f
                                _%L170112%_
                                _%$klass169855%_
                                _%method-calls168662%_
                                _%slot-refs168663%_
                                _%g170127170129%_)))
                           _%L170110%_)))
                 (cons (cons _%L170112%_ _%L170111%_) _%body170132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171559171560%_
                                                     (lambda ()
                                                       _%clause170064%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx171555171556%_))
                                                    (let ((_%e170074170094%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx171555171556%_))))
                                                      (let ((_%tl170072170099%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170074170094%_)))
                    (_%hd170073170097%_
                     (let () (declare (not safe)) (##car _%e170074170094%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd170073170097%_))
                    (let ((_%e170077170102%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd170073170097%_))))
                      (let ((_%tl170075170107%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170077170102%_)))
                            (_%hd170076170105%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170077170102%_))))
                        (_%__kont171557171558%_
                         _%tl170072170099%_
                         _%tl170075170107%_
                         _%hd170076170105%_)))
                    (_%__kont171559171560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171559171560%_)))))
                                          (let ((__tmp172675
                                                 (lambda (_%g170136170139%_
                                                          _%g170137170141%_)
                                                   (cons _%g170136170139%_
                                                         _%g170137170141%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp172675
                                             '()
                                             _%L170050%_))))
                                    (__tmp172676
                                     (cons '%#case-lambda _%clauses170144%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp172676
                                _%L169608%_)))
                           _%clause170008170047%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop170003170031%_
                                                     _%target170000170026%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g169994170013%_
                                                   _%g169995170016%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169994170013%_
                                         _%g169995170016%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169994170013%_ _%g169995170016%_))))))
                  (declare (not safe))
                  (_%g169993170146%_ _%L169608%_)))
               (_%specializer-impl170151%_
                (let ((__tmp172677
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L169610%_ '())
                                               (cons _%specializer-lambda-expr169992%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr170149%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp172677 _%stx168570%_)))
               (_%specializer-impl170153%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl168574%_
                   _%$klass169855%_
                   _%$method-table169857%_
                   _%methods-bind169882%_
                   _%slots-bind169906%_
                   _%specializer-impl170151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp172679
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L168643%_)))
                                                        (__tmp172678
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id169853%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp172679
                                                     '" => "
                                                     __tmp172678))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def168575%_
                                                     _%L168643%_
                                                     _%specializer-id169853%_
                                                     _%specializer-impl170153%_)))))
                                          _%hd169541169603%_
                                          _%hd169538169595%_
                                          _%hd169535169587%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g169517169547%_
                                            _%g169518169550%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g169517169547%_ _%g169518169550%_)))
                             (let ()
                               (declare (not safe))
                               (_%g169517169547%_ _%g169518169550%_)))
                         (let ()
                           (declare (not safe))
                           (_%g169517169547%_ _%g169518169550%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g169517169547%_ _%g169518169550%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169517169547%_
                                                        _%g169518169550%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169517169547%_
                                                _%g169518169550%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169517169547%_
                                        _%g169518169550%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g169517169547%_ _%g169518169550%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g169517169547%_ _%g169518169550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169517169547%_
                                                        _%g169518169550%_))))))
                                         (declare (not safe))
                                         (_%g169516170156%_ _%L168642%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L168642%_))
                                         (let ()
                                           (let* ((_%g170160170213%_
                                                   (lambda (_%g170161170210%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g170161170210%_))))
                                                  (_%g170159171356%_
                                                   (lambda (_%g170161170216%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g170161170216%_))
                                                         (let ((_%e170169170218%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g170161170216%_))))
                   (let ((_%hd170168170221%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170169170218%_)))
                         (_%tl170167170223%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170169170218%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd170168170221%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd170168170221%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl170167170223%_))
                                 (let ((_%e170172170226%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl170167170223%_))))
                                   (let ((_%hd170171170229%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e170172170226%_)))
                                         (_%tl170170170231%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e170172170226%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd170171170229%_))
                                         (let ((_%e170175170234%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd170171170229%_))))
                                           (let ((_%hd170174170237%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170175170234%_)))
                                                 (_%tl170173170239%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170175170234%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd170174170237%_))
                                                 (let ((_%e170178170242%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd170174170237%_))))
                                                   (let ((_%hd170177170245%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170178170242%_)))
                                                         (_%tl170176170247%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170178170242%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd170177170245%_))
                                                         (let ((_%e170181170250%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd170177170245%_))))
                   (let ((_%hd170180170253%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170181170250%_)))
                         (_%tl170179170255%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170181170250%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl170179170255%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl170176170247%_))
                             (let ((_%e170184170258%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl170176170247%_))))
                               (let ((_%hd170183170261%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170184170258%_)))
                                     (_%tl170182170263%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170184170258%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170183170261%_))
                                     (let ((_%e170187170266%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170183170261%_))))
                                       (let ((_%hd170186170269%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170187170266%_)))
                                             (_%tl170185170271%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170187170266%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd170186170269%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd170186170269%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl170185170271%_))
                                                     (let ((_%e170190170274%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl170185170271%_))))
                                                       (let ((_%hd170189170277%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e170190170274%_)))
                     (_%tl170188170279%_
                      (let () (declare (not safe)) (##cdr _%e170190170274%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd170189170277%_))
                     (let ((_%e170193170282%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd170189170277%_))))
                       (let ((_%hd170192170285%_
                              (let ()
                                (declare (not safe))
                                (##car _%e170193170282%_)))
                             (_%tl170191170287%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e170193170282%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd170192170285%_))
                             (let ((_%e170196170290%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd170192170285%_))))
                               (let ((_%hd170195170293%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170196170290%_)))
                                     (_%tl170194170295%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170196170290%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170195170293%_))
                                     (let ((_%e170199170298%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170195170293%_))))
                                       (let ((_%hd170198170301%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170199170298%_)))
                                             (_%tl170197170303%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170199170298%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl170197170303%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl170194170295%_))
                                                 (let ((_%e170202170306%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl170194170295%_))))
                                                   (let ((_%hd170201170309%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170202170306%_)))
                                                         (_%tl170200170311%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170202170306%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl170200170311%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl170191170287%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl170188170279%_))
                         (let ((_%e170205170314%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl170188170279%_))))
                           (let ((_%hd170204170317%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e170205170314%_)))
                                 (_%tl170203170319%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e170205170314%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl170203170319%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl170182170263%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl170173170239%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl170170170231%_))
                                             (let ((_%e170208170322%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl170170170231%_))))
                                               (let ((_%hd170207170325%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e170208170322%_)))
                                                     (_%tl170206170327%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e170208170322%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl170206170327%_))
                                                     ((lambda (_%L170330%_
                                                               _%L170331%_
                                                               _%L170332%_
                                                               _%L170333%_
                                                               _%L170334%_)
                                                        (let* ((_%g170374170436%_
                                                                (lambda (_%g170375170433%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g170375170433%_))))
                       (_%g170373171353%_
                        (lambda (_%g170375170439%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g170375170439%_))
                              (let ((_%e170383170441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g170375170439%_))))
                                (let ((_%hd170382170444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170383170441%_)))
                                      (_%tl170381170446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170383170441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170382170444%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd170382170444%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170381170446%_))
                                              (let ((_%e170386170449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170381170446%_))))
                                                (let ((_%hd170385170452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170386170449%_)))
                                                      (_%tl170384170454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170386170449%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170384170454%_))
                                                      (let ((_%e170389170457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170384170454%_))))
                (let ((_%hd170388170460%_
                       (let () (declare (not safe)) (##car _%e170389170457%_)))
                      (_%tl170387170462%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170389170457%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd170388170460%_))
                      (let ((_%e170392170465%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd170388170460%_))))
                        (let ((_%hd170391170468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170392170465%_)))
                              (_%tl170390170470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170392170465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd170391170468%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd170391170468%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170390170470%_))
                                      (let ((_%e170395170473%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170390170470%_))))
                                        (let ((_%hd170394170476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170395170473%_)))
                                              (_%tl170393170478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170395170473%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170394170476%_))
                                              (let ((_%e170398170481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170394170476%_))))
                                                (let ((_%hd170397170484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170398170481%_)))
                                                      (_%tl170396170486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170398170481%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd170397170484%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd170397170484%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170396170486%_))
                      (let ((_%e170401170489%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170396170486%_))))
                        (let ((_%hd170400170492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170401170489%_)))
                              (_%tl170399170494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170401170489%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170399170494%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170393170478%_))
                                  (let ((_%e170404170497%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170393170478%_))))
                                    (let ((_%hd170403170500%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170404170497%_)))
                                          (_%tl170402170502%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170404170497%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd170403170500%_))
                                          (let ((_%e170407170505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd170403170500%_))))
                                            (let ((_%hd170406170508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170407170505%_)))
                                                  (_%tl170405170510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170407170505%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd170406170508%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd170406170508%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170405170510%_))
                                                          (let ((_%e170410170513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170405170510%_))))
                    (let ((_%hd170409170516%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170410170513%_)))
                          (_%tl170408170518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170410170513%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170408170518%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170402170502%_))
                              (let ((_%e170413170521%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170402170502%_))))
                                (let ((_%hd170412170524%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170413170521%_)))
                                      (_%tl170411170526%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170413170521%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170412170524%_))
                                      (let ((_%e170416170529%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170412170524%_))))
                                        (let ((_%hd170415170532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170416170529%_)))
                                              (_%tl170414170534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170416170529%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd170415170532%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd170415170532%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170414170534%_))
                                                      (let ((_%e170419170537%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170414170534%_))))
                (let ((_%hd170418170540%_
                       (let () (declare (not safe)) (##car _%e170419170537%_)))
                      (_%tl170417170542%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170419170537%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170417170542%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl170411170526%_))
                          (if (let ((__tmp172680
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl170411170526%_))))
                                (declare (not safe))
                                (##fx>= __tmp172680 '1))
                              (let ((_g172681_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl170411170526%_
                                        '1))))
                                (begin
                                  (let ((_g172682_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g172681_)
                                               (##vector-length _g172681_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g172682_ 2)))
                                        (error "Context expects 2 values"
                                               _g172682_)))
                                  (let ((_%target170420170545%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172681_ 0)))
                                        (_%tl170422170547%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172681_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170422170547%_))
                                        (let ((_%e170431170550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170422170547%_))))
                                          (let ((_%hd170430170553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170431170550%_)))
                                                (_%tl170429170555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170431170550%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170429170555%_))
                                                (letrec ((_%loop170423170558%_
                                                          (lambda (_%hd170421170561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref170427170563%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd170421170561%_))
                        (let ((_%e170424170566%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd170421170561%_))))
                          (let ((_%lp-hd170425170569%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170424170566%_)))
                                (_%lp-tl170426170571%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170424170566%_))))
                            (let ((__tmp172683
                                   (cons _%lp-hd170425170569%_
                                         _%kw-ref170427170563%_)))
                              (declare (not safe))
                              (_%loop170423170558%_
                               _%lp-tl170426170571%_
                               __tmp172683))))
                        (let ((_%kw-ref170428170574%_
                               (reverse _%kw-ref170427170563%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170387170462%_))
                              ((lambda (_%L170577%_
                                        _%L170578%_
                                        _%L170579%_
                                        _%L170580%_
                                        _%L170581%_)
                                 (let* ((_%kw-count170632%_
                                         (length (let ((__tmp172684
                                                        (lambda (_%g170624170627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170625170629%_)
                  (cons _%g170624170627%_ _%g170625170629%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172684
                                                    '()
                                                    _%L170578%_))))
                                        (_%self-index170634%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count170632%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L170332%_))
                                       (let ()
                                         (let* ((_%g170638170652%_
                                                 (lambda (_%g170639170649%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g170639170649%_))))
                                                (_%g170637170769%_
                                                 (lambda (_%g170639170655%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g170639170655%_))
                                                       (let ((_%e170644170657%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g170639170655%_))))
                 (let ((_%hd170643170660%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170644170657%_)))
                       (_%tl170642170662%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170644170657%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl170642170662%_))
                       (let ((_%e170647170665%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170642170662%_))))
                         (let ((_%hd170646170668%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170647170665%_)))
                               (_%tl170645170670%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170647170665%_))))
                           ((lambda (_%L170673%_ _%L170674%_)
                              (let ((_%self170691%_
                                     (list-ref
                                      _%L170674%_
                                      _%self-index170634%_)))
                                (for-each
                                 (lambda (_%g170692170694%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs__%
                                      '#f
                                      _%self170691%_
                                      _%method-calls168662%_
                                      _%slot-refs168663%_
                                      _%g170692170694%_)))
                                 _%L170673%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?168666%_))
                                    _%stx168570%_
                                    (let* ((_%specializer-id170703%_
                                            (let* ((_%id170697%_
                                                    (let ((__tmp172685
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L168643%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp172685
                                                       '"::specialize")))
                                                   (_%specializer-id170700%_
                                                    (let ((__tmp172686
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx168570%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id170697%_
                                                       __tmp172686))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id170700%_))
                                              _%specializer-id170700%_))
                                           (_%$klass170705%_
                                            (let ((__tmp172687
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172687)))
                                           (_%$method-table170707%_
                                            (let ((__tmp172688
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172688)))
                                           (_%methods170709%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls168662%_)))
                                           (_%$methods170713%_
                                            (map (lambda (_%id170711%_)
                                                   (let ((__tmp172689
                                                          (gensym _%id170711%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172689)))
                                                 _%methods170709%_))
                                           (_%_170722%_
                                            (for-each
                                             (lambda (_%g170714170717%_
                                                      _%g170715170719%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls168662%_
                                                  _%g170714170717%_
                                                  _%g170715170719%_)))
                                             _%methods170709%_
                                             _%$methods170713%_))
                                           (_%methods-bind170732%_
                                            (map (lambda (_%g170724170727%_
                                                          _%g170725170729%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind168572%_
                                                      _%$klass170705%_
                                                      _%$method-table170707%_
                                                      _%g170724170727%_
                                                      _%g170725170729%_)))
                                                 _%methods170709%_
                                                 _%$methods170713%_))
                                           (_%slots170734%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs168663%_)))
                                           (_%$slots170738%_
                                            (map (lambda (_%id170736%_)
                                                   (let ((__tmp172690
                                                          (gensym _%id170736%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172690)))
                                                 _%slots170734%_))
                                           (_%_170747%_
                                            (for-each
                                             (lambda (_%g170739170742%_
                                                      _%g170740170744%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs168663%_
                                                  _%g170739170742%_
                                                  _%g170740170744%_)))
                                             _%slots170734%_
                                             _%$slots170738%_))
                                           (_%slots-bind170756%_
                                            (map (lambda (_%g170748170751%_
                                                          _%g170749170753%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind168573%_
                                                      _%$klass170705%_
                                                      _%g170748170751%_
                                                      _%g170749170753%_)))
                                                 _%slots170734%_
                                                 _%$slots170738%_))
                                           (_%specializer-impl170764%_
                                            (let* ((_%specializer-body170762%_
                                                    (map (lambda (_%g170757170759%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%self170691%_
                                                              _%$klass170705%_
                                                              _%method-calls168662%_
                                                              _%slot-refs168663%_
                                                              _%g170757170759%_)))
                                                         _%L170673%_))
                                                   (__tmp172691
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L170334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L170333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp172692
                                       (cons '%#lambda
                                             (cons _%L170674%_
                                                   _%specializer-body170762%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp172692
                                   _%L170332%_))
                                '()))
                    '())
              (cons _%L170331%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L170330%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp172691
                                               _%stx168570%_)))
                                           (_%specializer-impl170766%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl168574%_
                                               _%$klass170705%_
                                               _%$method-table170707%_
                                               _%methods-bind170732%_
                                               _%slots-bind170756%_
                                               _%specializer-impl170764%_))))
                                      (let ((__tmp172694
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L168643%_)))
                                            (__tmp172693
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id170703%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp172694
                                         '" => "
                                         __tmp172693))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def168575%_
                                         _%L168643%_
                                         _%specializer-id170703%_
                                         _%specializer-impl170766%_))))))
                            _%tl170645170670%_
                            _%hd170646170668%_)))
                       (let ()
                         (declare (not safe))
                         (_%g170638170652%_ _%g170639170655%_)))))
               (let ()
                 (declare (not safe))
                 (_%g170638170652%_ _%g170639170655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g170637170769%_ _%L170332%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L170332%_))
                                           (let ()
                                             (let* ((_%g170773170803%_
                                                     (lambda (_%g170774170800%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g170774170800%_))))
                                                    (_%g170772171349%_
                                                     (lambda (_%g170774170806%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g170774170806%_))
                                                           (let ((_%e170780170808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g170774170806%_))))
                     (let ((_%hd170779170811%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170780170808%_)))
                           (_%tl170778170813%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170780170808%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl170778170813%_))
                           (let ((_%e170783170816%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl170778170813%_))))
                             (let ((_%hd170782170819%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170783170816%_)))
                                   (_%tl170781170821%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170783170816%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170782170819%_))
                                   (let ((_%e170786170824%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170782170819%_))))
                                     (let ((_%hd170785170827%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170786170824%_)))
                                           (_%tl170784170829%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170786170824%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd170785170827%_))
                                           (let ((_%e170789170832%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd170785170827%_))))
                                             (let ((_%hd170788170835%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e170789170832%_)))
                                                   (_%tl170787170837%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e170789170832%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd170788170835%_))
                                                   (let ((_%e170792170840%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd170788170835%_))))
                                                     (let ((_%hd170791170843%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170792170840%_)))
                                                           (_%tl170790170845%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170792170840%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl170790170845%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl170787170837%_))
                       (let ((_%e170795170848%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170787170837%_))))
                         (let ((_%hd170794170851%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170795170848%_)))
                               (_%tl170793170853%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170795170848%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl170793170853%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170784170829%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl170781170821%_))
                                       (let ((_%e170798170856%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl170781170821%_))))
                                         (let ((_%hd170797170859%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e170798170856%_)))
                                               (_%tl170796170861%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e170798170856%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl170796170861%_))
                                               ((lambda (_%L170864%_
                                                         _%L170865%_
                                                         _%L170866%_)
                                                  (let* ((_%g170890170904%_
                                                          (lambda (_%g170891170901%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170891170901%_))))
                                                         (_%g170889170945%_
                                                          (lambda (_%g170891170907%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170891170907%_))
                        (let ((_%e170896170909%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170891170907%_))))
                          (let ((_%hd170895170912%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170896170909%_)))
                                (_%tl170894170914%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170896170909%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170894170914%_))
                                (let ((_%e170899170917%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170894170914%_))))
                                  (let ((_%hd170898170920%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170899170917%_)))
                                        (_%tl170897170922%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170899170917%_))))
                                    ((lambda (_%L170925%_ _%L170926%_)
                                       (let ((_%self170939%_
                                              (list-ref
                                               _%L170926%_
                                               _%self-index170634%_)))
                                         (for-each
                                          (lambda (_%g170940170942%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%self170939%_
                                               _%method-calls168662%_
                                               _%slot-refs168663%_
                                               _%g170940170942%_)))
                                          _%L170925%_)))
                                     _%tl170897170922%_
                                     _%hd170898170920%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g170890170904%_ _%g170891170907%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170890170904%_ _%g170891170907%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170889170945%_
                                                     _%L170865%_))
                                                  (let* ((_%g170948170967%_
                                                          (lambda (_%g170949170964%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170949170964%_))))
                                                         (_%g170947171072%_
                                                          (lambda (_%g170949170970%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170949170970%_))
                        (let ((_%e170953170972%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170949170970%_))))
                          (let ((_%hd170952170975%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170953170972%_)))
                                (_%tl170951170977%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170953170972%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl170951170977%_))
                                (let ((_g172695_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl170951170977%_
                                          '0))))
                                  (begin
                                    (let ((_g172696_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g172695_)
                                                 (##vector-length _g172695_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g172696_ 2)))
                                          (error "Context expects 2 values"
                                                 _g172696_)))
                                    (let ((_%target170954170980%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172695_ 0)))
                                          (_%tl170956170982%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172695_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170956170982%_))
                                          (letrec ((_%loop170957170985%_
                                                    (lambda (_%hd170955170988%_
                                                             _%clause170961170990%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd170955170988%_))
                                                          (let ((_%e170958170993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd170955170988%_))))
                    (let ((_%lp-hd170959170996%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170958170993%_)))
                          (_%lp-tl170960170998%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170958170993%_))))
                      (let ((__tmp172697
                             (cons _%lp-hd170959170996%_
                                   _%clause170961170990%_)))
                        (declare (not safe))
                        (_%loop170957170985%_
                         _%lp-tl170960170998%_
                         __tmp172697))))
                  (let ((_%clause170962171001%_
                         (reverse _%clause170961170990%_)))
                    ((lambda (_%L171004%_)
                       (for-each
                        (lambda (_%clause171017%_)
                          (let* ((_%g171019171030%_
                                  (lambda (_%g171020171027%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g171020171027%_))))
                                 (_%g171018171062%_
                                  (lambda (_%g171020171033%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g171020171033%_))
                                        (let ((_%e171025171035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g171020171033%_))))
                                          (let ((_%hd171024171038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171025171035%_)))
                                                (_%tl171023171040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171025171035%_))))
                                            ((lambda (_%L171043%_ _%L171044%_)
                                               (let ((_%self171056%_
                                                      (list-ref
                                                       _%L171044%_
                                                       _%self-index170634%_)))
                                                 (for-each
                                                  (lambda (_%g171057171059%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%self171056%_
                                                       _%method-calls168662%_
                                                       _%slot-refs168663%_
                                                       _%g171057171059%_)))
                                                  _%L171043%_)))
                                             _%tl171023171040%_
                                             _%hd171024171038%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g171019171030%_
                                           _%g171020171033%_))))))
                            (declare (not safe))
                            (_%g171018171062%_ _%clause171017%_)))
                        (let ((__tmp172698
                               (lambda (_%g171064171067%_ _%g171065171069%_)
                                 (cons _%g171064171067%_ _%g171065171069%_))))
                          (declare (not safe))
                          (__foldr1 __tmp172698 '() _%L171004%_))))
                     _%clause170962171001%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop170957170985%_
                                               _%target170954170980%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170948170967%_
                                             _%g170949170970%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g170948170967%_ _%g170949170970%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170948170967%_ _%g170949170970%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170947171072%_
                                                     _%L170864%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?168666%_))
                                                      _%stx168570%_
                                                      (let* ((_%specializer-id171081%_
                                                              (let* ((_%id171075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp172699
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L168643%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp172699 '"::specialize")))
                             (_%specializer-id171078%_
                              (let ((__tmp172700
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx168570%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id171075%_
                                 __tmp172700))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id171078%_))
                        _%specializer-id171078%_))
                     (_%$klass171083%_
                      (let ((__tmp172701
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172701)))
                     (_%$method-table171085%_
                      (let ((__tmp172702
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172702)))
                     (_%methods171087%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls168662%_)))
                     (_%$methods171091%_
                      (map (lambda (_%id171089%_)
                             (let ((__tmp172703 (gensym _%id171089%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172703)))
                           _%methods171087%_))
                     (_%_171100%_
                      (for-each
                       (lambda (_%g171092171095%_ _%g171093171097%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls168662%_
                            _%g171092171095%_
                            _%g171093171097%_)))
                       _%methods171087%_
                       _%$methods171091%_))
                     (_%methods-bind171110%_
                      (map (lambda (_%g171102171105%_ _%g171103171107%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind168572%_
                                _%$klass171083%_
                                _%$method-table171085%_
                                _%g171102171105%_
                                _%g171103171107%_)))
                           _%methods171087%_
                           _%$methods171091%_))
                     (_%slots171112%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs168663%_)))
                     (_%$slots171116%_
                      (map (lambda (_%id171114%_)
                             (let ((__tmp172704 (gensym _%id171114%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172704)))
                           _%slots171112%_))
                     (_%_171125%_
                      (for-each
                       (lambda (_%g171117171120%_ _%g171118171122%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs168663%_
                            _%g171117171120%_
                            _%g171118171122%_)))
                       _%slots171112%_
                       _%$slots171116%_))
                     (_%slots-bind171134%_
                      (map (lambda (_%g171126171129%_ _%g171127171131%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind168573%_
                                _%$klass171083%_
                                _%g171126171129%_
                                _%g171127171131%_)))
                           _%slots171112%_
                           _%$slots171116%_))
                     (_%specializer-lambda-expr171207%_
                      (let* ((_%g171136171150%_
                              (lambda (_%g171137171147%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171137171147%_))))
                             (_%g171135171204%_
                              (lambda (_%g171137171153%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171137171153%_))
                                    (let ((_%e171142171155%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171137171153%_))))
                                      (let ((_%hd171141171158%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171142171155%_)))
                                            (_%tl171140171160%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171142171155%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171140171160%_))
                                            (let ((_%e171145171163%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171140171160%_))))
                                              (let ((_%hd171144171166%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171145171163%_)))
                                                    (_%tl171143171168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171145171163%_))))
                                                ((lambda (_%L171171%_
                                                          _%L171172%_)
                                                   (let* ((_%self171195%_
                                                           (list-ref
                                                            _%L171172%_
                                                            _%self-index170634%_))
                                                          (_%body171201%_
                                                           (map (lambda (_%g171196171198%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%self171195%_
                             _%$klass171083%_
                             _%method-calls168662%_
                             _%slot-refs168663%_
                             _%g171196171198%_)))
                        _%L171171%_))
                  (__tmp172705
                   (cons '%#lambda (cons _%L171172%_ _%body171201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172705
                                                      _%L170865%_)))
                                                 _%tl171143171168%_
                                                 _%hd171144171166%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g171136171150%_
                                               _%g171137171153%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171136171150%_
                                       _%g171137171153%_))))))
                        (declare (not safe))
                        (_%g171135171204%_ _%L170865%_)))
                     (_%specializer-case-lambda-expr171342%_
                      (let* ((_%g171209171228%_
                              (lambda (_%g171210171225%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171210171225%_))))
                             (_%g171208171339%_
                              (lambda (_%g171210171231%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171210171231%_))
                                    (let ((_%e171214171233%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171210171231%_))))
                                      (let ((_%hd171213171236%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171214171233%_)))
                                            (_%tl171212171238%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171214171233%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl171212171238%_))
                                            (let ((_g172706_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl171212171238%_
                                                      '0))))
                                              (begin
                                                (let ((_g172707_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g172706_)
                                                             (##vector-length
                                                              _g172706_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g172707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g172707_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target171215171241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172706_
                                                          0)))
                                                      (_%tl171217171243%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172706_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171217171243%_))
                                                      (letrec ((_%loop171218171246%_
                                                                (lambda (_%hd171216171249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause171222171251%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd171216171249%_))
                              (let ((_%e171219171254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd171216171249%_))))
                                (let ((_%lp-hd171220171257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171219171254%_)))
                                      (_%lp-tl171221171259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171219171254%_))))
                                  (let ((__tmp172708
                                         (cons _%lp-hd171220171257%_
                                               _%clause171222171251%_)))
                                    (declare (not safe))
                                    (_%loop171218171246%_
                                     _%lp-tl171221171259%_
                                     __tmp172708))))
                              (let ((_%clause171223171262%_
                                     (reverse _%clause171222171251%_)))
                                ((lambda (_%L171265%_)
                                   (let* ((_%clauses171337%_
                                           (map (lambda (_%clause171279%_)
                                                  (let* ((_%g171281171292%_
                                                          (lambda (_%g171282171289%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g171282171289%_))))
                                                         (_%g171280171327%_
                                                          (lambda (_%g171282171295%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g171282171295%_))
                        (let ((_%e171287171297%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g171282171295%_))))
                          (let ((_%hd171286171300%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171287171297%_)))
                                (_%tl171285171302%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171287171297%_))))
                            ((lambda (_%L171305%_ _%L171306%_)
                               (let* ((_%self171318%_
                                       (list-ref
                                        _%L171306%_
                                        _%self-index170634%_))
                                      (_%body171324%_
                                       (map (lambda (_%g171319171321%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%self171318%_
                                                 _%$klass171083%_
                                                 _%method-calls168662%_
                                                 _%slot-refs168663%_
                                                 _%g171319171321%_)))
                                            _%L171305%_)))
                                 (cons _%L171306%_ _%body171324%_)))
                             _%tl171285171302%_
                             _%hd171286171300%_)))
                        (let ()
                          (declare (not safe))
                          (_%g171281171292%_ _%g171282171295%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g171280171327%_
                                                     _%clause171279%_)))
                                                (let ((__tmp172709
                                                       (lambda (_%g171329171332%_
                                                                _%g171330171334%_)
                                                         (cons _%g171329171332%_
                                                               _%g171330171334%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172709
                                                   '()
                                                   _%L171265%_))))
                                          (__tmp172710
                                           (cons '%#case-lambda
                                                 _%clauses171337%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp172710
                                      _%L170864%_)))
                                 _%clause171223171262%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop171218171246%_ _%target171215171241%_ '())))
              (let ()
                (declare (not safe))
                (_%g171209171228%_ _%g171210171231%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g171209171228%_
                                               _%g171210171231%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171209171228%_
                                       _%g171210171231%_))))))
                        (declare (not safe))
                        (_%g171208171339%_ _%L170864%_)))
                     (_%specializer-impl171344%_
                      (let ((__tmp172711
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L170334%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L170333%_ '())
                                           (cons (let ((__tmp172712
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L170866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr171207%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr171342%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp172712
                                                    _%stx168570%_))
                                                 '()))
                                     '())
                               (cons _%L170331%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L170330%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp172711 _%stx168570%_)))
                     (_%specializer-impl171346%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl168574%_
                         _%$klass171083%_
                         _%$method-table171085%_
                         _%methods-bind171110%_
                         _%slots-bind171134%_
                         _%specializer-impl171344%_))))
                (let ((__tmp172714
                       (let () (declare (not safe)) (gx#stx-e _%L168643%_)))
                      (__tmp172713
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id171081%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp172714
                   '" => "
                   __tmp172713))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def168575%_
                   _%L168643%_
                   _%specializer-id171081%_
                   _%specializer-impl171346%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd170797170859%_
                                                _%hd170794170851%_
                                                _%hd170791170843%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g170773170803%_
                                                  _%g170774170806%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g170773170803%_
                                          _%g170774170806%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170773170803%_ _%g170774170806%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g170773170803%_ _%g170774170806%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g170773170803%_ _%g170774170806%_)))
                   (let ()
                     (declare (not safe))
                     (_%g170773170803%_ _%g170774170806%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g170773170803%_
                                                      _%g170774170806%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g170773170803%_
                                              _%g170774170806%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170773170803%_ _%g170774170806%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g170773170803%_ _%g170774170806%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g170773170803%_ _%g170774170806%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g170772171349%_
                                                _%L170332%_)))
                                           (let () _%stx168570%_)))))
                               _%hd170430170553%_
                               _%kw-ref170428170574%_
                               _%hd170418170540%_
                               _%hd170409170516%_
                               _%hd170400170492%_)
                              (let ()
                                (declare (not safe))
                                (_%g170374170436%_ _%g170375170439%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop170423170558%_
                                                     _%target170420170545%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170374170436%_
                                                   _%g170375170439%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170374170436%_
                                           _%g170375170439%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g170374170436%_ _%g170375170439%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170374170436%_ _%g170375170439%_)))
                      (let ()
                        (declare (not safe))
                        (_%g170374170436%_ _%g170375170439%_)))))
              (let ()
                (declare (not safe))
                (_%g170374170436%_ _%g170375170439%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170374170436%_
                                                     _%g170375170439%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170374170436%_
                                                 _%g170375170439%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170374170436%_
                                         _%g170375170439%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170374170436%_ _%g170375170439%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170374170436%_ _%g170375170439%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g170374170436%_ _%g170375170439%_)))
              (let ()
                (declare (not safe))
                (_%g170374170436%_ _%g170375170439%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170374170436%_
                                                     _%g170375170439%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170374170436%_
                                             _%g170375170439%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170374170436%_ _%g170375170439%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170374170436%_ _%g170375170439%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170374170436%_ _%g170375170439%_)))
                  (let ()
                    (declare (not safe))
                    (_%g170374170436%_ _%g170375170439%_)))
              (let ()
                (declare (not safe))
                (_%g170374170436%_ _%g170375170439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170374170436%_
                                                 _%g170375170439%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170374170436%_ _%g170375170439%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170374170436%_ _%g170375170439%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170374170436%_ _%g170375170439%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170374170436%_ _%g170375170439%_)))))
              (let ()
                (declare (not safe))
                (_%g170374170436%_ _%g170375170439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170374170436%_
                                                 _%g170375170439%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170374170436%_
                                             _%g170375170439%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170374170436%_
                                         _%g170375170439%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170374170436%_ _%g170375170439%_))))))
                  (declare (not safe))
                  (_%g170373171353%_ _%L170331%_)))
              _%hd170207170325%_
              _%hd170204170317%_
              _%hd170201170309%_
              _%hd170198170301%_
              _%hd170180170253%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170160170213%_
                                                        _%g170161170216%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170160170213%_
                                                _%g170161170216%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170160170213%_
                                            _%g170161170216%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170160170213%_ _%g170161170216%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170160170213%_ _%g170161170216%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g170160170213%_ _%g170161170216%_)))
                     (let ()
                       (declare (not safe))
                       (_%g170160170213%_ _%g170161170216%_)))
                 (let ()
                   (declare (not safe))
                   (_%g170160170213%_ _%g170161170216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170160170213%_
                                                    _%g170161170216%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170160170213%_
                                                _%g170161170216%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170160170213%_
                                        _%g170161170216%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170160170213%_ _%g170161170216%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g170160170213%_ _%g170161170216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170160170213%_
                                                        _%g170161170216%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170160170213%_
                                                    _%g170161170216%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170160170213%_
                                                _%g170161170216%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170160170213%_
                                        _%g170161170216%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170160170213%_ _%g170161170216%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170160170213%_ _%g170161170216%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170160170213%_ _%g170161170216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170160170213%_
                                                    _%g170161170216%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170160170213%_
                                            _%g170161170216%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170160170213%_ _%g170161170216%_)))
                             (let ()
                               (declare (not safe))
                               (_%g170160170213%_ _%g170161170216%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170160170213%_ _%g170161170216%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170160170213%_ _%g170161170216%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g170159171356%_ _%L168642%_)))
                                         (let () _%stx168570%_)))))))))
                  (_%__kont171579171580%_ (lambda () _%stx168570%_)))
              (let ((_%__match171608171609%_
                     (lambda (_%e168584168610%_
                              _%hd168583168613%_
                              _%tl168582168615%_
                              _%e168587168618%_
                              _%hd168586168621%_
                              _%tl168585168623%_
                              _%e168590168626%_
                              _%hd168589168629%_
                              _%tl168588168631%_
                              _%e168593168634%_
                              _%hd168592168637%_
                              _%tl168591168639%_)
                       (let ((_%L168642%_ _%hd168592168637%_)
                             (_%L168643%_ _%hd168589168629%_))
                         (if (let ((__tmp172715
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168643%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp172715))
                             (_%__kont171577171578%_ _%L168642%_ _%L168643%_)
                             (_%__kont171579171580%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171575171576%_))
                    (let ((_%e168584168610%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171575171576%_))))
                      (let ((_%tl168582168615%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168584168610%_)))
                            (_%hd168583168613%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168584168610%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168582168615%_))
                            (let ((_%e168587168618%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168582168615%_))))
                              (let ((_%tl168585168623%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168587168618%_)))
                                    (_%hd168586168621%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168587168618%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd168586168621%_))
                                    (let ((_%e168590168626%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd168586168621%_))))
                                      (let ((_%tl168588168631%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168590168626%_)))
                                            (_%hd168589168629%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168590168626%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168588168631%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168585168623%_))
                                                (let ((_%e168593168634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168585168623%_))))
                                                  (let ((_%tl168591168639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168593168634%_)))
                                                        (_%hd168592168637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168593168634%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168591168639%_))
                                                        (_%__match171608171609%_
                                                         _%e168584168610%_
                                                         _%hd168583168613%_
                                                         _%tl168582168615%_
                                                         _%e168587168618%_
                                                         _%hd168586168621%_
                                                         _%tl168585168623%_
                                                         _%e168590168626%_
                                                         _%hd168589168629%_
                                                         _%tl168588168631%_
                                                         _%e168593168634%_
                                                         _%hd168592168637%_
                                                         _%tl168591168639%_)
                                                        (_%__kont171579171580%_))))
                                                (_%__kont171579171580%_))
                                            (_%__kont171579171580%_))))
                                    (_%__kont171579171580%_))))
                            (_%__kont171579171580%_))))
                    (_%__kont171579171580%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self167530%_ _%stx167531%_)
        (let* ((_%__stx171611171612%_ _%stx167531%_)
               (_%g167539167761%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171611171612%_)))))
          (let ((_%__kont171613171614%_
                 (lambda (_%L168518%_ _%L168519%_ _%L168520%_ _%L168521%_)
                   (let ((__tmp172717
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167530%_ 'methods)))
                         (__tmp172716
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168519%_))))
                     (declare (not safe))
                     (hash-put! __tmp172717 __tmp172716 '#t))
                   (for-each
                    (lambda (_%g168554168556%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167530%_ _%g168554168556%_)))
                    (let ((__tmp172718
                           (lambda (_%g168558168561%_ _%g168559168563%_)
                             (cons _%g168558168561%_ _%g168559168563%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172718 '() _%L168518%_)))))
                (_%__kont171617171618%_
                 (lambda (_%L168353%_
                          _%L168354%_
                          _%L168355%_
                          _%L168356%_
                          _%L168357%_)
                   (let ((__tmp172720
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167530%_ 'methods)))
                         (__tmp172719
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168354%_))))
                     (declare (not safe))
                     (hash-put! __tmp172720 __tmp172719 '#t))
                   (for-each
                    (lambda (_%g168397168399%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167530%_ _%g168397168399%_)))
                    (let ((__tmp172721
                           (lambda (_%g168401168404%_ _%g168402168406%_)
                             (cons _%g168401168404%_ _%g168402168406%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172721 '() _%L168353%_)))))
                (_%__kont171621171622%_
                 (lambda (_%L168186%_ _%L168187%_ _%L168188%_)
                   (let ((__tmp172723
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167530%_ 'slots)))
                         (__tmp172722
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168186%_))))
                     (declare (not safe))
                     (hash-put! __tmp172723 __tmp172722 '#t))))
                (_%__kont171623171624%_
                 (lambda (_%L168063%_ _%L168064%_ _%L168065%_ _%L168066%_)
                   (let ((__tmp172725
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167530%_ 'slots)))
                         (__tmp172724
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168064%_))))
                     (declare (not safe))
                     (hash-put! __tmp172725 __tmp172724 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self167530%_ _%L168063%_))))
                (_%__kont171625171626%_
                 (lambda (_%L167937%_ _%L167938%_)
                   (let* ((_%accessor167960%_
                           (let ((__tmp172726
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167938%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172726)))
                          (_%klass167962%_
                           (let ((__tmp172727
                                  (##structure-ref
                                   _%accessor167960%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167531%_
                              __tmp172727)))
                          (_%slot167964%_
                           (##structure-ref
                            _%accessor167960%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp172728
                                     (##structure-ref
                                      _%accessor167960%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172728))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167962%_
                                     _%slot167964%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167962%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172730
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167530%_ 'slots)))
                               (__tmp172729
                                (##structure-ref
                                 _%accessor167960%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp172730 __tmp172729 '#t))))))
                (_%__kont171627171628%_
                 (lambda (_%L167837%_ _%L167838%_ _%L167839%_)
                   (let* ((_%mutator167866%_
                           (let ((__tmp172731
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167839%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172731)))
                          (_%klass167868%_
                           (let ((__tmp172732
                                  (##structure-ref
                                   _%mutator167866%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167531%_
                              __tmp172732)))
                          (_%slot167870%_
                           (##structure-ref
                            _%mutator167866%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp172733
                                     (##structure-ref
                                      _%mutator167866%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172733))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167868%_
                                     _%slot167870%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167868%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172734
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167530%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp172734 _%slot167870%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self167530%_ _%L167837%_)))))
                (_%__kont171629171630%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self167530%_ _%stx167531%_)))))
            (let* ((_%__match172110172111%_
                    (lambda (_%e167735167773%_
                             _%hd167734167776%_
                             _%tl167733167778%_
                             _%e167738167781%_
                             _%hd167737167784%_
                             _%tl167736167786%_
                             _%e167741167789%_
                             _%hd167740167792%_
                             _%tl167739167794%_
                             _%e167744167797%_
                             _%hd167743167800%_
                             _%tl167742167802%_
                             _%e167747167805%_
                             _%hd167746167808%_
                             _%tl167745167810%_
                             _%e167750167813%_
                             _%hd167749167816%_
                             _%tl167748167818%_
                             _%e167753167821%_
                             _%hd167752167824%_
                             _%tl167751167826%_
                             _%e167756167829%_
                             _%hd167755167832%_
                             _%tl167754167834%_)
                      (let ((_%L167837%_ _%hd167755167832%_)
                            (_%L167838%_ _%hd167752167824%_)
                            (_%L167839%_ _%hd167743167800%_))
                        (if (and (let ((__tmp172735
                                        (let ((__tmp172736
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167839%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172736))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172735
                                    'gxc#!mutator::t))
                                 (let ((__tmp172737
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167530%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167838%_
                                    __tmp172737)))
                            (_%__kont171627171628%_
                             _%L167837%_
                             _%L167838%_
                             _%L167839%_)
                            (_%__kont171629171630%_)))))
                   (_%__match172108172109%_
                    (lambda (_%e167735167773%_
                             _%hd167734167776%_
                             _%tl167733167778%_
                             _%e167738167781%_
                             _%hd167737167784%_
                             _%tl167736167786%_
                             _%e167741167789%_
                             _%hd167740167792%_
                             _%tl167739167794%_
                             _%e167744167797%_
                             _%hd167743167800%_
                             _%tl167742167802%_
                             _%e167747167805%_
                             _%hd167746167808%_
                             _%tl167745167810%_
                             _%e167750167813%_
                             _%hd167749167816%_
                             _%tl167748167818%_
                             _%e167753167821%_
                             _%hd167752167824%_
                             _%tl167751167826%_
                             _%e167756167829%_
                             _%hd167755167832%_
                             _%tl167754167834%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167754167834%_))
                          (_%__match172110172111%_
                           _%e167735167773%_
                           _%hd167734167776%_
                           _%tl167733167778%_
                           _%e167738167781%_
                           _%hd167737167784%_
                           _%tl167736167786%_
                           _%e167741167789%_
                           _%hd167740167792%_
                           _%tl167739167794%_
                           _%e167744167797%_
                           _%hd167743167800%_
                           _%tl167742167802%_
                           _%e167747167805%_
                           _%hd167746167808%_
                           _%tl167745167810%_
                           _%e167750167813%_
                           _%hd167749167816%_
                           _%tl167748167818%_
                           _%e167753167821%_
                           _%hd167752167824%_
                           _%tl167751167826%_
                           _%e167756167829%_
                           _%hd167755167832%_
                           _%tl167754167834%_)
                          (_%__kont171629171630%_))))
                   (_%__match172102172103%_
                    (lambda (_%e167735167773%_
                             _%hd167734167776%_
                             _%tl167733167778%_
                             _%e167738167781%_
                             _%hd167737167784%_
                             _%tl167736167786%_
                             _%e167741167789%_
                             _%hd167740167792%_
                             _%tl167739167794%_
                             _%e167744167797%_
                             _%hd167743167800%_
                             _%tl167742167802%_
                             _%e167747167805%_
                             _%hd167746167808%_
                             _%tl167745167810%_
                             _%e167750167813%_
                             _%hd167749167816%_
                             _%tl167748167818%_
                             _%e167753167821%_
                             _%hd167752167824%_
                             _%tl167751167826%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167745167810%_))
                          (let ((_%e167756167829%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167745167810%_))))
                            (let ((_%tl167754167834%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167756167829%_)))
                                  (_%hd167755167832%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167756167829%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167754167834%_))
                                  (_%__match172110172111%_
                                   _%e167735167773%_
                                   _%hd167734167776%_
                                   _%tl167733167778%_
                                   _%e167738167781%_
                                   _%hd167737167784%_
                                   _%tl167736167786%_
                                   _%e167741167789%_
                                   _%hd167740167792%_
                                   _%tl167739167794%_
                                   _%e167744167797%_
                                   _%hd167743167800%_
                                   _%tl167742167802%_
                                   _%e167747167805%_
                                   _%hd167746167808%_
                                   _%tl167745167810%_
                                   _%e167750167813%_
                                   _%hd167749167816%_
                                   _%tl167748167818%_
                                   _%e167753167821%_
                                   _%hd167752167824%_
                                   _%tl167751167826%_
                                   _%e167756167829%_
                                   _%hd167755167832%_
                                   _%tl167754167834%_)
                                  (_%__kont171629171630%_))))
                          (_%__kont171629171630%_))))
                   (_%__match172048172049%_
                    (lambda (_%e167711167881%_
                             _%hd167710167884%_
                             _%tl167709167886%_
                             _%e167714167889%_
                             _%hd167713167892%_
                             _%tl167712167894%_
                             _%e167717167897%_
                             _%hd167716167900%_
                             _%tl167715167902%_
                             _%e167720167905%_
                             _%hd167719167908%_
                             _%tl167718167910%_
                             _%e167723167913%_
                             _%hd167722167916%_
                             _%tl167721167918%_
                             _%e167726167921%_
                             _%hd167725167924%_
                             _%tl167724167926%_
                             _%e167729167929%_
                             _%hd167728167932%_
                             _%tl167727167934%_)
                      (let ((_%L167937%_ _%hd167728167932%_)
                            (_%L167938%_ _%hd167719167908%_))
                        (if (and (let ((__tmp172738
                                        (let ((__tmp172739
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167938%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172739))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172738
                                    'gxc#!accessor::t))
                                 (let ((__tmp172740
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167530%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167937%_
                                    __tmp172740)))
                            (_%__kont171625171626%_ _%L167937%_ _%L167938%_)
                            (_%__kont171629171630%_)))))
                   (_%__match172046172047%_
                    (lambda (_%e167711167881%_
                             _%hd167710167884%_
                             _%tl167709167886%_
                             _%e167714167889%_
                             _%hd167713167892%_
                             _%tl167712167894%_
                             _%e167717167897%_
                             _%hd167716167900%_
                             _%tl167715167902%_
                             _%e167720167905%_
                             _%hd167719167908%_
                             _%tl167718167910%_
                             _%e167723167913%_
                             _%hd167722167916%_
                             _%tl167721167918%_
                             _%e167726167921%_
                             _%hd167725167924%_
                             _%tl167724167926%_
                             _%e167729167929%_
                             _%hd167728167932%_
                             _%tl167727167934%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167721167918%_))
                          (_%__match172048172049%_
                           _%e167711167881%_
                           _%hd167710167884%_
                           _%tl167709167886%_
                           _%e167714167889%_
                           _%hd167713167892%_
                           _%tl167712167894%_
                           _%e167717167897%_
                           _%hd167716167900%_
                           _%tl167715167902%_
                           _%e167720167905%_
                           _%hd167719167908%_
                           _%tl167718167910%_
                           _%e167723167913%_
                           _%hd167722167916%_
                           _%tl167721167918%_
                           _%e167726167921%_
                           _%hd167725167924%_
                           _%tl167724167926%_
                           _%e167729167929%_
                           _%hd167728167932%_
                           _%tl167727167934%_)
                          (_%__match172102172103%_
                           _%e167711167881%_
                           _%hd167710167884%_
                           _%tl167709167886%_
                           _%e167714167889%_
                           _%hd167713167892%_
                           _%tl167712167894%_
                           _%e167717167897%_
                           _%hd167716167900%_
                           _%tl167715167902%_
                           _%e167720167905%_
                           _%hd167719167908%_
                           _%tl167718167910%_
                           _%e167723167913%_
                           _%hd167722167916%_
                           _%tl167721167918%_
                           _%e167726167921%_
                           _%hd167725167924%_
                           _%tl167724167926%_
                           _%e167729167929%_
                           _%hd167728167932%_
                           _%tl167727167934%_))))
                   (_%__match171992171993%_
                    (lambda (_%e167676167975%_
                             _%hd167675167978%_
                             _%tl167674167980%_
                             _%e167679167983%_
                             _%hd167678167986%_
                             _%tl167677167988%_
                             _%e167682167991%_
                             _%hd167681167994%_
                             _%tl167680167996%_
                             _%e167685167999%_
                             _%hd167684168002%_
                             _%tl167683168004%_
                             _%e167688168007%_
                             _%hd167687168010%_
                             _%tl167686168012%_
                             _%e167691168015%_
                             _%hd167690168018%_
                             _%tl167689168020%_
                             _%e167694168023%_
                             _%hd167693168026%_
                             _%tl167692168028%_
                             _%e167697168031%_
                             _%hd167696168034%_
                             _%tl167695168036%_
                             _%e167700168039%_
                             _%hd167699168042%_
                             _%tl167698168044%_
                             _%e167703168047%_
                             _%hd167702168050%_
                             _%tl167701168052%_
                             _%e167706168055%_
                             _%hd167705168058%_
                             _%tl167704168060%_)
                      (let ((_%L168063%_ _%hd167705168058%_)
                            (_%L168064%_ _%hd167702168050%_)
                            (_%L168065%_ _%hd167693168026%_)
                            (_%L168066%_ _%hd167684168002%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168066%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168066%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp172741
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167530%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168065%_
                                    __tmp172741)))
                            (_%__kont171623171624%_
                             _%L168063%_
                             _%L168064%_
                             _%L168065%_
                             _%L168066%_)
                            (_%__kont171629171630%_)))))
                   (_%__match171984171985%_
                    (lambda (_%e167676167975%_
                             _%hd167675167978%_
                             _%tl167674167980%_
                             _%e167679167983%_
                             _%hd167678167986%_
                             _%tl167677167988%_
                             _%e167682167991%_
                             _%hd167681167994%_
                             _%tl167680167996%_
                             _%e167685167999%_
                             _%hd167684168002%_
                             _%tl167683168004%_
                             _%e167688168007%_
                             _%hd167687168010%_
                             _%tl167686168012%_
                             _%e167691168015%_
                             _%hd167690168018%_
                             _%tl167689168020%_
                             _%e167694168023%_
                             _%hd167693168026%_
                             _%tl167692168028%_
                             _%e167697168031%_
                             _%hd167696168034%_
                             _%tl167695168036%_
                             _%e167700168039%_
                             _%hd167699168042%_
                             _%tl167698168044%_
                             _%e167703168047%_
                             _%hd167702168050%_
                             _%tl167701168052%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167695168036%_))
                          (let ((_%e167706168055%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167695168036%_))))
                            (let ((_%tl167704168060%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167706168055%_)))
                                  (_%hd167705168058%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167706168055%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167704168060%_))
                                  (_%__match171992171993%_
                                   _%e167676167975%_
                                   _%hd167675167978%_
                                   _%tl167674167980%_
                                   _%e167679167983%_
                                   _%hd167678167986%_
                                   _%tl167677167988%_
                                   _%e167682167991%_
                                   _%hd167681167994%_
                                   _%tl167680167996%_
                                   _%e167685167999%_
                                   _%hd167684168002%_
                                   _%tl167683168004%_
                                   _%e167688168007%_
                                   _%hd167687168010%_
                                   _%tl167686168012%_
                                   _%e167691168015%_
                                   _%hd167690168018%_
                                   _%tl167689168020%_
                                   _%e167694168023%_
                                   _%hd167693168026%_
                                   _%tl167692168028%_
                                   _%e167697168031%_
                                   _%hd167696168034%_
                                   _%tl167695168036%_
                                   _%e167700168039%_
                                   _%hd167699168042%_
                                   _%tl167698168044%_
                                   _%e167703168047%_
                                   _%hd167702168050%_
                                   _%tl167701168052%_
                                   _%e167706168055%_
                                   _%hd167705168058%_
                                   _%tl167704168060%_)
                                  (_%__kont171629171630%_))))
                          (_%__match172108172109%_
                           _%e167676167975%_
                           _%hd167675167978%_
                           _%tl167674167980%_
                           _%e167679167983%_
                           _%hd167678167986%_
                           _%tl167677167988%_
                           _%e167682167991%_
                           _%hd167681167994%_
                           _%tl167680167996%_
                           _%e167685167999%_
                           _%hd167684168002%_
                           _%tl167683168004%_
                           _%e167688168007%_
                           _%hd167687168010%_
                           _%tl167686168012%_
                           _%e167691168015%_
                           _%hd167690168018%_
                           _%tl167689168020%_
                           _%e167694168023%_
                           _%hd167693168026%_
                           _%tl167692168028%_
                           _%e167697168031%_
                           _%hd167696168034%_
                           _%tl167695168036%_))))
                   (_%__match171906171907%_
                    (lambda (_%e167642168106%_
                             _%hd167641168109%_
                             _%tl167640168111%_
                             _%e167645168114%_
                             _%hd167644168117%_
                             _%tl167643168119%_
                             _%e167648168122%_
                             _%hd167647168125%_
                             _%tl167646168127%_
                             _%e167651168130%_
                             _%hd167650168133%_
                             _%tl167649168135%_
                             _%e167654168138%_
                             _%hd167653168141%_
                             _%tl167652168143%_
                             _%e167657168146%_
                             _%hd167656168149%_
                             _%tl167655168151%_
                             _%e167660168154%_
                             _%hd167659168157%_
                             _%tl167658168159%_
                             _%e167663168162%_
                             _%hd167662168165%_
                             _%tl167661168167%_
                             _%e167666168170%_
                             _%hd167665168173%_
                             _%tl167664168175%_
                             _%e167669168178%_
                             _%hd167668168181%_
                             _%tl167667168183%_)
                      (let ((_%L168186%_ _%hd167668168181%_)
                            (_%L168187%_ _%hd167659168157%_)
                            (_%L168188%_ _%hd167650168133%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168188%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168188%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp172742
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167530%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168187%_
                                    __tmp172742)))
                            (_%__kont171621171622%_
                             _%L168186%_
                             _%L168187%_
                             _%L168188%_)
                            (_%__match172110172111%_
                             _%e167642168106%_
                             _%hd167641168109%_
                             _%tl167640168111%_
                             _%e167645168114%_
                             _%hd167644168117%_
                             _%tl167643168119%_
                             _%e167648168122%_
                             _%hd167647168125%_
                             _%tl167646168127%_
                             _%e167651168130%_
                             _%hd167650168133%_
                             _%tl167649168135%_
                             _%e167654168138%_
                             _%hd167653168141%_
                             _%tl167652168143%_
                             _%e167657168146%_
                             _%hd167656168149%_
                             _%tl167655168151%_
                             _%e167660168154%_
                             _%hd167659168157%_
                             _%tl167658168159%_
                             _%e167663168162%_
                             _%hd167662168165%_
                             _%tl167661168167%_)))))
                   (_%__match171904171905%_
                    (lambda (_%e167642168106%_
                             _%hd167641168109%_
                             _%tl167640168111%_
                             _%e167645168114%_
                             _%hd167644168117%_
                             _%tl167643168119%_
                             _%e167648168122%_
                             _%hd167647168125%_
                             _%tl167646168127%_
                             _%e167651168130%_
                             _%hd167650168133%_
                             _%tl167649168135%_
                             _%e167654168138%_
                             _%hd167653168141%_
                             _%tl167652168143%_
                             _%e167657168146%_
                             _%hd167656168149%_
                             _%tl167655168151%_
                             _%e167660168154%_
                             _%hd167659168157%_
                             _%tl167658168159%_
                             _%e167663168162%_
                             _%hd167662168165%_
                             _%tl167661168167%_
                             _%e167666168170%_
                             _%hd167665168173%_
                             _%tl167664168175%_
                             _%e167669168178%_
                             _%hd167668168181%_
                             _%tl167667168183%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167661168167%_))
                          (_%__match171906171907%_
                           _%e167642168106%_
                           _%hd167641168109%_
                           _%tl167640168111%_
                           _%e167645168114%_
                           _%hd167644168117%_
                           _%tl167643168119%_
                           _%e167648168122%_
                           _%hd167647168125%_
                           _%tl167646168127%_
                           _%e167651168130%_
                           _%hd167650168133%_
                           _%tl167649168135%_
                           _%e167654168138%_
                           _%hd167653168141%_
                           _%tl167652168143%_
                           _%e167657168146%_
                           _%hd167656168149%_
                           _%tl167655168151%_
                           _%e167660168154%_
                           _%hd167659168157%_
                           _%tl167658168159%_
                           _%e167663168162%_
                           _%hd167662168165%_
                           _%tl167661168167%_
                           _%e167666168170%_
                           _%hd167665168173%_
                           _%tl167664168175%_
                           _%e167669168178%_
                           _%hd167668168181%_
                           _%tl167667168183%_)
                          (_%__match171984171985%_
                           _%e167642168106%_
                           _%hd167641168109%_
                           _%tl167640168111%_
                           _%e167645168114%_
                           _%hd167644168117%_
                           _%tl167643168119%_
                           _%e167648168122%_
                           _%hd167647168125%_
                           _%tl167646168127%_
                           _%e167651168130%_
                           _%hd167650168133%_
                           _%tl167649168135%_
                           _%e167654168138%_
                           _%hd167653168141%_
                           _%tl167652168143%_
                           _%e167657168146%_
                           _%hd167656168149%_
                           _%tl167655168151%_
                           _%e167660168154%_
                           _%hd167659168157%_
                           _%tl167658168159%_
                           _%e167663168162%_
                           _%hd167662168165%_
                           _%tl167661168167%_
                           _%e167666168170%_
                           _%hd167665168173%_
                           _%tl167664168175%_
                           _%e167669168178%_
                           _%hd167668168181%_
                           _%tl167667168183%_))))
                   (_%__match171894171895%_
                    (lambda (_%e167642168106%_
                             _%hd167641168109%_
                             _%tl167640168111%_
                             _%e167645168114%_
                             _%hd167644168117%_
                             _%tl167643168119%_
                             _%e167648168122%_
                             _%hd167647168125%_
                             _%tl167646168127%_
                             _%e167651168130%_
                             _%hd167650168133%_
                             _%tl167649168135%_
                             _%e167654168138%_
                             _%hd167653168141%_
                             _%tl167652168143%_
                             _%e167657168146%_
                             _%hd167656168149%_
                             _%tl167655168151%_
                             _%e167660168154%_
                             _%hd167659168157%_
                             _%tl167658168159%_
                             _%e167663168162%_
                             _%hd167662168165%_
                             _%tl167661168167%_
                             _%e167666168170%_
                             _%hd167665168173%_
                             _%tl167664168175%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd167665168173%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167664168175%_))
                              (let ((_%e167669168178%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167664168175%_))))
                                (let ((_%tl167667168183%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167669168178%_)))
                                      (_%hd167668168181%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167669168178%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167667168183%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl167661168167%_))
                                          (_%__match171906171907%_
                                           _%e167642168106%_
                                           _%hd167641168109%_
                                           _%tl167640168111%_
                                           _%e167645168114%_
                                           _%hd167644168117%_
                                           _%tl167643168119%_
                                           _%e167648168122%_
                                           _%hd167647168125%_
                                           _%tl167646168127%_
                                           _%e167651168130%_
                                           _%hd167650168133%_
                                           _%tl167649168135%_
                                           _%e167654168138%_
                                           _%hd167653168141%_
                                           _%tl167652168143%_
                                           _%e167657168146%_
                                           _%hd167656168149%_
                                           _%tl167655168151%_
                                           _%e167660168154%_
                                           _%hd167659168157%_
                                           _%tl167658168159%_
                                           _%e167663168162%_
                                           _%hd167662168165%_
                                           _%tl167661168167%_
                                           _%e167666168170%_
                                           _%hd167665168173%_
                                           _%tl167664168175%_
                                           _%e167669168178%_
                                           _%hd167668168181%_
                                           _%tl167667168183%_)
                                          (_%__match171984171985%_
                                           _%e167642168106%_
                                           _%hd167641168109%_
                                           _%tl167640168111%_
                                           _%e167645168114%_
                                           _%hd167644168117%_
                                           _%tl167643168119%_
                                           _%e167648168122%_
                                           _%hd167647168125%_
                                           _%tl167646168127%_
                                           _%e167651168130%_
                                           _%hd167650168133%_
                                           _%tl167649168135%_
                                           _%e167654168138%_
                                           _%hd167653168141%_
                                           _%tl167652168143%_
                                           _%e167657168146%_
                                           _%hd167656168149%_
                                           _%tl167655168151%_
                                           _%e167660168154%_
                                           _%hd167659168157%_
                                           _%tl167658168159%_
                                           _%e167663168162%_
                                           _%hd167662168165%_
                                           _%tl167661168167%_
                                           _%e167666168170%_
                                           _%hd167665168173%_
                                           _%tl167664168175%_
                                           _%e167669168178%_
                                           _%hd167668168181%_
                                           _%tl167667168183%_))
                                      (_%__match172108172109%_
                                       _%e167642168106%_
                                       _%hd167641168109%_
                                       _%tl167640168111%_
                                       _%e167645168114%_
                                       _%hd167644168117%_
                                       _%tl167643168119%_
                                       _%e167648168122%_
                                       _%hd167647168125%_
                                       _%tl167646168127%_
                                       _%e167651168130%_
                                       _%hd167650168133%_
                                       _%tl167649168135%_
                                       _%e167654168138%_
                                       _%hd167653168141%_
                                       _%tl167652168143%_
                                       _%e167657168146%_
                                       _%hd167656168149%_
                                       _%tl167655168151%_
                                       _%e167660168154%_
                                       _%hd167659168157%_
                                       _%tl167658168159%_
                                       _%e167663168162%_
                                       _%hd167662168165%_
                                       _%tl167661168167%_))))
                              (_%__match172108172109%_
                               _%e167642168106%_
                               _%hd167641168109%_
                               _%tl167640168111%_
                               _%e167645168114%_
                               _%hd167644168117%_
                               _%tl167643168119%_
                               _%e167648168122%_
                               _%hd167647168125%_
                               _%tl167646168127%_
                               _%e167651168130%_
                               _%hd167650168133%_
                               _%tl167649168135%_
                               _%e167654168138%_
                               _%hd167653168141%_
                               _%tl167652168143%_
                               _%e167657168146%_
                               _%hd167656168149%_
                               _%tl167655168151%_
                               _%e167660168154%_
                               _%hd167659168157%_
                               _%tl167658168159%_
                               _%e167663168162%_
                               _%hd167662168165%_
                               _%tl167661168167%_))
                          (_%__match172108172109%_
                           _%e167642168106%_
                           _%hd167641168109%_
                           _%tl167640168111%_
                           _%e167645168114%_
                           _%hd167644168117%_
                           _%tl167643168119%_
                           _%e167648168122%_
                           _%hd167647168125%_
                           _%tl167646168127%_
                           _%e167651168130%_
                           _%hd167650168133%_
                           _%tl167649168135%_
                           _%e167654168138%_
                           _%hd167653168141%_
                           _%tl167652168143%_
                           _%e167657168146%_
                           _%hd167656168149%_
                           _%tl167655168151%_
                           _%e167660168154%_
                           _%hd167659168157%_
                           _%tl167658168159%_
                           _%e167663168162%_
                           _%hd167662168165%_
                           _%tl167661168167%_))))
                   (_%__match171826171827%_
                    (lambda (_%e167591168225%_
                             _%hd167590168228%_
                             _%tl167589168230%_
                             _%e167594168233%_
                             _%hd167593168236%_
                             _%tl167592168238%_
                             _%e167597168241%_
                             _%hd167596168244%_
                             _%tl167595168246%_
                             _%e167600168249%_
                             _%hd167599168252%_
                             _%tl167598168254%_
                             _%e167603168257%_
                             _%hd167602168260%_
                             _%tl167601168262%_
                             _%e167606168265%_
                             _%hd167605168268%_
                             _%tl167604168270%_
                             _%e167609168273%_
                             _%hd167608168276%_
                             _%tl167607168278%_
                             _%e167612168281%_
                             _%hd167611168284%_
                             _%tl167610168286%_
                             _%e167615168289%_
                             _%hd167614168292%_
                             _%tl167613168294%_
                             _%e167618168297%_
                             _%hd167617168300%_
                             _%tl167616168302%_
                             _%e167621168305%_
                             _%hd167620168308%_
                             _%tl167619168310%_
                             _%e167624168313%_
                             _%hd167623168316%_
                             _%tl167622168318%_
                             _%e167627168321%_
                             _%hd167626168324%_
                             _%tl167625168326%_
                             _%__splice171619171620%_
                             _%target167628168329%_
                             _%tl167630168331%_)
                      (letrec ((_%loop167631168334%_
                                (lambda (_%hd167629168337%_
                                         _%args167635168339%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167629168337%_))
                                      (let ((_%e167632168342%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167629168337%_))))
                                        (let ((_%lp-tl167634168347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167632168342%_)))
                                              (_%lp-hd167633168345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167632168342%_))))
                                          (let ((__tmp172743
                                                 (cons _%lp-hd167633168345%_
                                                       _%args167635168339%_)))
                                            (declare (not safe))
                                            (_%loop167631168334%_
                                             _%lp-tl167634168347%_
                                             __tmp172743))))
                                      (let ((_%args167636168350%_
                                             (reverse _%args167635168339%_)))
                                        (let ((_%L168353%_
                                               _%args167636168350%_)
                                              (_%L168354%_ _%hd167626168324%_)
                                              (_%L168355%_ _%hd167617168300%_)
                                              (_%L168356%_ _%hd167608168276%_)
                                              (_%L168357%_ _%hd167599168252%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168357%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168356%_
                                                      'call-method))
                                                   (let ((__tmp172744
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167530%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168355%_
                                                      __tmp172744)))
                                              (_%__kont171617171618%_
                                               _%L168353%_
                                               _%L168354%_
                                               _%L168355%_
                                               _%L168356%_
                                               _%L168357%_)
                                              (_%__kont171629171630%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167631168334%_ _%target167628168329%_ '())))))
                   (_%__match171784171785%_
                    (lambda (_%e167591168225%_
                             _%hd167590168228%_
                             _%tl167589168230%_
                             _%e167594168233%_
                             _%hd167593168236%_
                             _%tl167592168238%_
                             _%e167597168241%_
                             _%hd167596168244%_
                             _%tl167595168246%_
                             _%e167600168249%_
                             _%hd167599168252%_
                             _%tl167598168254%_
                             _%e167603168257%_
                             _%hd167602168260%_
                             _%tl167601168262%_
                             _%e167606168265%_
                             _%hd167605168268%_
                             _%tl167604168270%_
                             _%e167609168273%_
                             _%hd167608168276%_
                             _%tl167607168278%_
                             _%e167612168281%_
                             _%hd167611168284%_
                             _%tl167610168286%_
                             _%e167615168289%_
                             _%hd167614168292%_
                             _%tl167613168294%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd167614168292%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167613168294%_))
                              (let ((_%e167618168297%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167613168294%_))))
                                (let ((_%tl167616168302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167618168297%_)))
                                      (_%hd167617168300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167618168297%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167616168302%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167610168286%_))
                                          (let ((_%e167621168305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167610168286%_))))
                                            (let ((_%tl167619168310%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167621168305%_)))
                                                  (_%hd167620168308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167621168305%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167620168308%_))
                                                  (let ((_%e167624168313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167620168308%_))))
                                                    (let ((_%tl167622168318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167624168313%_)))
                                                          (_%hd167623168316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167624168313%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd167623168316%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd167623168316%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167622168318%_))
                          (let ((_%e167627168321%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167622168318%_))))
                            (let ((_%tl167625168326%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167627168321%_)))
                                  (_%hd167626168324%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167627168321%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167625168326%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl167619168310%_))
                                      (let ((_%__splice171619171620%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl167619168310%_
                                                '0))))
                                        (let ((_%tl167630168331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171619171620%_
                                                  '1)))
                                              (_%target167628168329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171619171620%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167630168331%_))
                                              (_%__match171826171827%_
                                               _%e167591168225%_
                                               _%hd167590168228%_
                                               _%tl167589168230%_
                                               _%e167594168233%_
                                               _%hd167593168236%_
                                               _%tl167592168238%_
                                               _%e167597168241%_
                                               _%hd167596168244%_
                                               _%tl167595168246%_
                                               _%e167600168249%_
                                               _%hd167599168252%_
                                               _%tl167598168254%_
                                               _%e167603168257%_
                                               _%hd167602168260%_
                                               _%tl167601168262%_
                                               _%e167606168265%_
                                               _%hd167605168268%_
                                               _%tl167604168270%_
                                               _%e167609168273%_
                                               _%hd167608168276%_
                                               _%tl167607168278%_
                                               _%e167612168281%_
                                               _%hd167611168284%_
                                               _%tl167610168286%_
                                               _%e167615168289%_
                                               _%hd167614168292%_
                                               _%tl167613168294%_
                                               _%e167618168297%_
                                               _%hd167617168300%_
                                               _%tl167616168302%_
                                               _%e167621168305%_
                                               _%hd167620168308%_
                                               _%tl167619168310%_
                                               _%e167624168313%_
                                               _%hd167623168316%_
                                               _%tl167622168318%_
                                               _%e167627168321%_
                                               _%hd167626168324%_
                                               _%tl167625168326%_
                                               _%__splice171619171620%_
                                               _%target167628168329%_
                                               _%tl167630168331%_)
                                              (_%__kont171629171630%_))))
                                      (_%__kont171629171630%_))
                                  (_%__kont171629171630%_))))
                          (_%__kont171629171630%_))
                      (_%__kont171629171630%_))
                  (_%__kont171629171630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171629171630%_))))
                                          (_%__match172108172109%_
                                           _%e167591168225%_
                                           _%hd167590168228%_
                                           _%tl167589168230%_
                                           _%e167594168233%_
                                           _%hd167593168236%_
                                           _%tl167592168238%_
                                           _%e167597168241%_
                                           _%hd167596168244%_
                                           _%tl167595168246%_
                                           _%e167600168249%_
                                           _%hd167599168252%_
                                           _%tl167598168254%_
                                           _%e167603168257%_
                                           _%hd167602168260%_
                                           _%tl167601168262%_
                                           _%e167606168265%_
                                           _%hd167605168268%_
                                           _%tl167604168270%_
                                           _%e167609168273%_
                                           _%hd167608168276%_
                                           _%tl167607168278%_
                                           _%e167612168281%_
                                           _%hd167611168284%_
                                           _%tl167610168286%_))
                                      (_%__match172108172109%_
                                       _%e167591168225%_
                                       _%hd167590168228%_
                                       _%tl167589168230%_
                                       _%e167594168233%_
                                       _%hd167593168236%_
                                       _%tl167592168238%_
                                       _%e167597168241%_
                                       _%hd167596168244%_
                                       _%tl167595168246%_
                                       _%e167600168249%_
                                       _%hd167599168252%_
                                       _%tl167598168254%_
                                       _%e167603168257%_
                                       _%hd167602168260%_
                                       _%tl167601168262%_
                                       _%e167606168265%_
                                       _%hd167605168268%_
                                       _%tl167604168270%_
                                       _%e167609168273%_
                                       _%hd167608168276%_
                                       _%tl167607168278%_
                                       _%e167612168281%_
                                       _%hd167611168284%_
                                       _%tl167610168286%_))))
                              (_%__match172108172109%_
                               _%e167591168225%_
                               _%hd167590168228%_
                               _%tl167589168230%_
                               _%e167594168233%_
                               _%hd167593168236%_
                               _%tl167592168238%_
                               _%e167597168241%_
                               _%hd167596168244%_
                               _%tl167595168246%_
                               _%e167600168249%_
                               _%hd167599168252%_
                               _%tl167598168254%_
                               _%e167603168257%_
                               _%hd167602168260%_
                               _%tl167601168262%_
                               _%e167606168265%_
                               _%hd167605168268%_
                               _%tl167604168270%_
                               _%e167609168273%_
                               _%hd167608168276%_
                               _%tl167607168278%_
                               _%e167612168281%_
                               _%hd167611168284%_
                               _%tl167610168286%_))
                          (_%__match171894171895%_
                           _%e167591168225%_
                           _%hd167590168228%_
                           _%tl167589168230%_
                           _%e167594168233%_
                           _%hd167593168236%_
                           _%tl167592168238%_
                           _%e167597168241%_
                           _%hd167596168244%_
                           _%tl167595168246%_
                           _%e167600168249%_
                           _%hd167599168252%_
                           _%tl167598168254%_
                           _%e167603168257%_
                           _%hd167602168260%_
                           _%tl167601168262%_
                           _%e167606168265%_
                           _%hd167605168268%_
                           _%tl167604168270%_
                           _%e167609168273%_
                           _%hd167608168276%_
                           _%tl167607168278%_
                           _%e167612168281%_
                           _%hd167611168284%_
                           _%tl167610168286%_
                           _%e167615168289%_
                           _%hd167614168292%_
                           _%tl167613168294%_))))
                   (_%__match171716171717%_
                    (lambda (_%e167547168414%_
                             _%hd167546168417%_
                             _%tl167545168419%_
                             _%e167550168422%_
                             _%hd167549168425%_
                             _%tl167548168427%_
                             _%e167553168430%_
                             _%hd167552168433%_
                             _%tl167551168435%_
                             _%e167556168438%_
                             _%hd167555168441%_
                             _%tl167554168443%_
                             _%e167559168446%_
                             _%hd167558168449%_
                             _%tl167557168451%_
                             _%e167562168454%_
                             _%hd167561168457%_
                             _%tl167560168459%_
                             _%e167565168462%_
                             _%hd167564168465%_
                             _%tl167563168467%_
                             _%e167568168470%_
                             _%hd167567168473%_
                             _%tl167566168475%_
                             _%e167571168478%_
                             _%hd167570168481%_
                             _%tl167569168483%_
                             _%e167574168486%_
                             _%hd167573168489%_
                             _%tl167572168491%_
                             _%__splice171615171616%_
                             _%target167575168494%_
                             _%tl167577168496%_)
                      (letrec ((_%loop167578168499%_
                                (lambda (_%hd167576168502%_
                                         _%args167582168504%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167576168502%_))
                                      (let ((_%e167579168507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167576168502%_))))
                                        (let ((_%lp-tl167581168512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167579168507%_)))
                                              (_%lp-hd167580168510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167579168507%_))))
                                          (let ((__tmp172745
                                                 (cons _%lp-hd167580168510%_
                                                       _%args167582168504%_)))
                                            (declare (not safe))
                                            (_%loop167578168499%_
                                             _%lp-tl167581168512%_
                                             __tmp172745))))
                                      (let ((_%args167583168515%_
                                             (reverse _%args167582168504%_)))
                                        (let ((_%L168518%_
                                               _%args167583168515%_)
                                              (_%L168519%_ _%hd167573168489%_)
                                              (_%L168520%_ _%hd167564168465%_)
                                              (_%L168521%_ _%hd167555168441%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168521%_
                                                      'call-method))
                                                   (let ((__tmp172746
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167530%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168520%_
                                                      __tmp172746)))
                                              (_%__kont171613171614%_
                                               _%L168518%_
                                               _%L168519%_
                                               _%L168520%_
                                               _%L168521%_)
                                              (_%__match171904171905%_
                                               _%e167547168414%_
                                               _%hd167546168417%_
                                               _%tl167545168419%_
                                               _%e167550168422%_
                                               _%hd167549168425%_
                                               _%tl167548168427%_
                                               _%e167553168430%_
                                               _%hd167552168433%_
                                               _%tl167551168435%_
                                               _%e167556168438%_
                                               _%hd167555168441%_
                                               _%tl167554168443%_
                                               _%e167559168446%_
                                               _%hd167558168449%_
                                               _%tl167557168451%_
                                               _%e167562168454%_
                                               _%hd167561168457%_
                                               _%tl167560168459%_
                                               _%e167565168462%_
                                               _%hd167564168465%_
                                               _%tl167563168467%_
                                               _%e167568168470%_
                                               _%hd167567168473%_
                                               _%tl167566168475%_
                                               _%e167571168478%_
                                               _%hd167570168481%_
                                               _%tl167569168483%_
                                               _%e167574168486%_
                                               _%hd167573168489%_
                                               _%tl167572168491%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167578168499%_
                           _%target167575168494%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171611171612%_))
                  (let ((_%e167547168414%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171611171612%_))))
                    (let ((_%tl167545168419%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167547168414%_)))
                          (_%hd167546168417%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167547168414%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167545168419%_))
                          (let ((_%e167550168422%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167545168419%_))))
                            (let ((_%tl167548168427%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167550168422%_)))
                                  (_%hd167549168425%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167550168422%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd167549168425%_))
                                  (let ((_%e167553168430%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd167549168425%_))))
                                    (let ((_%tl167551168435%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167553168430%_)))
                                          (_%hd167552168433%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167553168430%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd167552168433%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd167552168433%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl167551168435%_))
                                                  (let ((_%e167556168438%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl167551168435%_))))
                                                    (let ((_%tl167554168443%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167556168438%_)))
                                                          (_%hd167555168441%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167556168438%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl167554168443%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl167548168427%_))
                      (let ((_%e167559168446%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl167548168427%_))))
                        (let ((_%tl167557168451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167559168446%_)))
                              (_%hd167558168449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167559168446%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd167558168449%_))
                              (let ((_%e167562168454%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd167558168449%_))))
                                (let ((_%tl167560168459%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167562168454%_)))
                                      (_%hd167561168457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167562168454%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd167561168457%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd167561168457%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl167560168459%_))
                                              (let ((_%e167565168462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl167560168459%_))))
                                                (let ((_%tl167563168467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167565168462%_)))
                                                      (_%hd167564168465%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167565168462%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl167563168467%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl167557168451%_))
                                                          (let ((_%e167568168470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl167557168451%_))))
                    (let ((_%tl167566168475%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167568168470%_)))
                          (_%hd167567168473%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167568168470%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd167567168473%_))
                          (let ((_%e167571168478%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd167567168473%_))))
                            (let ((_%tl167569168483%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167571168478%_)))
                                  (_%hd167570168481%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167571168478%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd167570168481%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd167570168481%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167569168483%_))
                                          (let ((_%e167574168486%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167569168483%_))))
                                            (let ((_%tl167572168491%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167574168486%_)))
                                                  (_%hd167573168489%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167574168486%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl167572168491%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl167566168475%_))
                                                      (let ((_%__splice171615171616%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl167566168475%_ '0))))
                (let ((_%tl167577168496%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171615171616%_ '1)))
                      (_%target167575168494%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171615171616%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167577168496%_))
                      (_%__match171716171717%_
                       _%e167547168414%_
                       _%hd167546168417%_
                       _%tl167545168419%_
                       _%e167550168422%_
                       _%hd167549168425%_
                       _%tl167548168427%_
                       _%e167553168430%_
                       _%hd167552168433%_
                       _%tl167551168435%_
                       _%e167556168438%_
                       _%hd167555168441%_
                       _%tl167554168443%_
                       _%e167559168446%_
                       _%hd167558168449%_
                       _%tl167557168451%_
                       _%e167562168454%_
                       _%hd167561168457%_
                       _%tl167560168459%_
                       _%e167565168462%_
                       _%hd167564168465%_
                       _%tl167563168467%_
                       _%e167568168470%_
                       _%hd167567168473%_
                       _%tl167566168475%_
                       _%e167571168478%_
                       _%hd167570168481%_
                       _%tl167569168483%_
                       _%e167574168486%_
                       _%hd167573168489%_
                       _%tl167572168491%_
                       _%__splice171615171616%_
                       _%target167575168494%_
                       _%tl167577168496%_)
                      (_%__match171904171905%_
                       _%e167547168414%_
                       _%hd167546168417%_
                       _%tl167545168419%_
                       _%e167550168422%_
                       _%hd167549168425%_
                       _%tl167548168427%_
                       _%e167553168430%_
                       _%hd167552168433%_
                       _%tl167551168435%_
                       _%e167556168438%_
                       _%hd167555168441%_
                       _%tl167554168443%_
                       _%e167559168446%_
                       _%hd167558168449%_
                       _%tl167557168451%_
                       _%e167562168454%_
                       _%hd167561168457%_
                       _%tl167560168459%_
                       _%e167565168462%_
                       _%hd167564168465%_
                       _%tl167563168467%_
                       _%e167568168470%_
                       _%hd167567168473%_
                       _%tl167566168475%_
                       _%e167571168478%_
                       _%hd167570168481%_
                       _%tl167569168483%_
                       _%e167574168486%_
                       _%hd167573168489%_
                       _%tl167572168491%_))))
              (_%__match171904171905%_
               _%e167547168414%_
               _%hd167546168417%_
               _%tl167545168419%_
               _%e167550168422%_
               _%hd167549168425%_
               _%tl167548168427%_
               _%e167553168430%_
               _%hd167552168433%_
               _%tl167551168435%_
               _%e167556168438%_
               _%hd167555168441%_
               _%tl167554168443%_
               _%e167559168446%_
               _%hd167558168449%_
               _%tl167557168451%_
               _%e167562168454%_
               _%hd167561168457%_
               _%tl167560168459%_
               _%e167565168462%_
               _%hd167564168465%_
               _%tl167563168467%_
               _%e167568168470%_
               _%hd167567168473%_
               _%tl167566168475%_
               _%e167571168478%_
               _%hd167570168481%_
               _%tl167569168483%_
               _%e167574168486%_
               _%hd167573168489%_
               _%tl167572168491%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match172108172109%_
                                                   _%e167547168414%_
                                                   _%hd167546168417%_
                                                   _%tl167545168419%_
                                                   _%e167550168422%_
                                                   _%hd167549168425%_
                                                   _%tl167548168427%_
                                                   _%e167553168430%_
                                                   _%hd167552168433%_
                                                   _%tl167551168435%_
                                                   _%e167556168438%_
                                                   _%hd167555168441%_
                                                   _%tl167554168443%_
                                                   _%e167559168446%_
                                                   _%hd167558168449%_
                                                   _%tl167557168451%_
                                                   _%e167562168454%_
                                                   _%hd167561168457%_
                                                   _%tl167560168459%_
                                                   _%e167565168462%_
                                                   _%hd167564168465%_
                                                   _%tl167563168467%_
                                                   _%e167568168470%_
                                                   _%hd167567168473%_
                                                   _%tl167566168475%_))))
                                          (_%__match172108172109%_
                                           _%e167547168414%_
                                           _%hd167546168417%_
                                           _%tl167545168419%_
                                           _%e167550168422%_
                                           _%hd167549168425%_
                                           _%tl167548168427%_
                                           _%e167553168430%_
                                           _%hd167552168433%_
                                           _%tl167551168435%_
                                           _%e167556168438%_
                                           _%hd167555168441%_
                                           _%tl167554168443%_
                                           _%e167559168446%_
                                           _%hd167558168449%_
                                           _%tl167557168451%_
                                           _%e167562168454%_
                                           _%hd167561168457%_
                                           _%tl167560168459%_
                                           _%e167565168462%_
                                           _%hd167564168465%_
                                           _%tl167563168467%_
                                           _%e167568168470%_
                                           _%hd167567168473%_
                                           _%tl167566168475%_))
                                      (_%__match171784171785%_
                                       _%e167547168414%_
                                       _%hd167546168417%_
                                       _%tl167545168419%_
                                       _%e167550168422%_
                                       _%hd167549168425%_
                                       _%tl167548168427%_
                                       _%e167553168430%_
                                       _%hd167552168433%_
                                       _%tl167551168435%_
                                       _%e167556168438%_
                                       _%hd167555168441%_
                                       _%tl167554168443%_
                                       _%e167559168446%_
                                       _%hd167558168449%_
                                       _%tl167557168451%_
                                       _%e167562168454%_
                                       _%hd167561168457%_
                                       _%tl167560168459%_
                                       _%e167565168462%_
                                       _%hd167564168465%_
                                       _%tl167563168467%_
                                       _%e167568168470%_
                                       _%hd167567168473%_
                                       _%tl167566168475%_
                                       _%e167571168478%_
                                       _%hd167570168481%_
                                       _%tl167569168483%_))
                                  (_%__match172108172109%_
                                   _%e167547168414%_
                                   _%hd167546168417%_
                                   _%tl167545168419%_
                                   _%e167550168422%_
                                   _%hd167549168425%_
                                   _%tl167548168427%_
                                   _%e167553168430%_
                                   _%hd167552168433%_
                                   _%tl167551168435%_
                                   _%e167556168438%_
                                   _%hd167555168441%_
                                   _%tl167554168443%_
                                   _%e167559168446%_
                                   _%hd167558168449%_
                                   _%tl167557168451%_
                                   _%e167562168454%_
                                   _%hd167561168457%_
                                   _%tl167560168459%_
                                   _%e167565168462%_
                                   _%hd167564168465%_
                                   _%tl167563168467%_
                                   _%e167568168470%_
                                   _%hd167567168473%_
                                   _%tl167566168475%_))))
                          (_%__match172108172109%_
                           _%e167547168414%_
                           _%hd167546168417%_
                           _%tl167545168419%_
                           _%e167550168422%_
                           _%hd167549168425%_
                           _%tl167548168427%_
                           _%e167553168430%_
                           _%hd167552168433%_
                           _%tl167551168435%_
                           _%e167556168438%_
                           _%hd167555168441%_
                           _%tl167554168443%_
                           _%e167559168446%_
                           _%hd167558168449%_
                           _%tl167557168451%_
                           _%e167562168454%_
                           _%hd167561168457%_
                           _%tl167560168459%_
                           _%e167565168462%_
                           _%hd167564168465%_
                           _%tl167563168467%_
                           _%e167568168470%_
                           _%hd167567168473%_
                           _%tl167566168475%_))))
                  (_%__match172046172047%_
                   _%e167547168414%_
                   _%hd167546168417%_
                   _%tl167545168419%_
                   _%e167550168422%_
                   _%hd167549168425%_
                   _%tl167548168427%_
                   _%e167553168430%_
                   _%hd167552168433%_
                   _%tl167551168435%_
                   _%e167556168438%_
                   _%hd167555168441%_
                   _%tl167554168443%_
                   _%e167559168446%_
                   _%hd167558168449%_
                   _%tl167557168451%_
                   _%e167562168454%_
                   _%hd167561168457%_
                   _%tl167560168459%_
                   _%e167565168462%_
                   _%hd167564168465%_
                   _%tl167563168467%_))
              (_%__kont171629171630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171629171630%_))
                                          (_%__kont171629171630%_))
                                      (_%__kont171629171630%_))))
                              (_%__kont171629171630%_))))
                      (_%__kont171629171630%_))
                  (_%__kont171629171630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171629171630%_))
                                              (_%__kont171629171630%_))
                                          (_%__kont171629171630%_))))
                                  (_%__kont171629171630%_))))
                          (_%__kont171629171630%_))))
                  (_%__kont171629171630%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self166469%_ _%stx166470%_)
        (letrec ((_%force-e166472%_
                  (lambda (_%target167528%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target167528%_ '()))
                                      '()))))))
          (let* ((_%__stx172113172114%_ _%stx166470%_)
                 (_%g166480166702%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172113172114%_)))))
            (let ((_%__kont172115172116%_
                   (lambda (_%L167474%_ _%L167475%_ _%L167476%_ _%L167477%_)
                     (let ((_%$method167522%_
                            (let ((__tmp172748
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166469%_ 'methods)))
                                  (__tmp172747
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167475%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172748 __tmp172747)))
                           (_%args167523%_
                            (map (lambda (_%g167510167512%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166469%_
                                      _%g167510167512%_)))
                                 (let ((__tmp172749
                                        (lambda (_%g167514167517%_
                                                 _%g167515167519%_)
                                          (cons _%g167514167517%_
                                                _%g167515167519%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172749 '() _%L167474%_)))))
                       (let ((__tmp172750
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e166472%_
                                             _%$method167522%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166469%_
                                                               'receiver))
                                                            '()))
                                                _%args167523%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172750 _%stx166470%_)))))
                  (_%__kont172119172120%_
                   (lambda (_%L167306%_
                            _%L167307%_
                            _%L167308%_
                            _%L167309%_
                            _%L167310%_)
                     (let ((_%$method167362%_
                            (let ((__tmp172752
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166469%_ 'methods)))
                                  (__tmp172751
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167307%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172752 __tmp172751)))
                           (_%args167363%_
                            (map (lambda (_%g167350167352%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166469%_
                                      _%g167350167352%_)))
                                 (let ((__tmp172753
                                        (lambda (_%g167354167357%_
                                                 _%g167355167359%_)
                                          (cons _%g167354167357%_
                                                _%g167355167359%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172753 '() _%L167306%_)))))
                       (let ((__tmp172754
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e166472%_
                                                   _%$method167362%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166469%_ 'receiver))
                          '()))
              _%args167363%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172754 _%stx166470%_)))))
                  (_%__kont172123172124%_
                   (lambda (_%L167137%_ _%L167138%_ _%L167139%_)
                     (let* ((_%$field167171%_
                             (let ((__tmp172756
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self166469%_ 'slots)))
                                   (__tmp172755
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L167137%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp172756 __tmp172755)))
                            (__tmp172757
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self166469%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field167171%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self166469%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp172757 _%stx166470%_))))
                  (_%__kont172125172126%_
                   (lambda (_%L167011%_ _%L167012%_ _%L167013%_ _%L167014%_)
                     (let ((_%$field167049%_
                            (let ((__tmp172759
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166469%_ 'slots)))
                                  (__tmp172758
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167012%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172759 __tmp172758)))
                           (_%expr167050%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self166469%_ _%L167011%_))))
                       (let ((__tmp172760
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self166469%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field167049%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166469%_ 'receiver))
                          '()))
              (cons _%expr167050%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172760 _%stx166470%_)))))
                  (_%__kont172127172128%_
                   (lambda (_%L166883%_ _%L166884%_)
                     (let* ((_%accessor166906%_
                             (let ((__tmp172761
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166884%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172761)))
                            (_%klass166908%_
                             (let ((__tmp172762
                                    (##structure-ref
                                     _%accessor166906%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166470%_
                                __tmp172762)))
                            (_%slot166910%_
                             (##structure-ref
                              _%accessor166906%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp172763
                                       (##structure-ref
                                        _%accessor166906%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172763))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166908%_
                                       _%slot166910%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166908%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx166470%_
                           (let* ((_%$field166916%_
                                   (let ((__tmp172764
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166469%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172764 _%slot166910%_)))
                                  (__tmp172765
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166469%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166469%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172765
                              _%stx166470%_))))))
                  (_%__kont172129172130%_
                   (lambda (_%L166778%_ _%L166779%_ _%L166780%_)
                     (let* ((_%mutator166808%_
                             (let ((__tmp172766
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166780%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172766)))
                            (_%klass166810%_
                             (let ((__tmp172767
                                    (##structure-ref
                                     _%mutator166808%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166470%_
                                __tmp172767)))
                            (_%slot166812%_
                             (##structure-ref
                              _%mutator166808%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr166814%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self166469%_ _%L166778%_))))
                       (if (and (let ((__tmp172768
                                       (##structure-ref
                                        _%mutator166808%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172768))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166810%_
                                       _%slot166812%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166810%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp172769
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L166780%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L166779%_
                                                                '()))
                                                    (cons _%expr166814%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp172769 _%stx166470%_))
                           (let* ((_%$field166820%_
                                   (let ((__tmp172770
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166469%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172770 _%slot166812%_)))
                                  (__tmp172771
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166469%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166469%_ 'receiver))
                               '()))
                   (cons _%expr166814%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172771
                              _%stx166470%_))))))
                  (_%__kont172131172132%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self166469%_ _%stx166470%_)))))
              (let* ((_%__match172612172613%_
                      (lambda (_%e166676166714%_
                               _%hd166675166717%_
                               _%tl166674166719%_
                               _%e166679166722%_
                               _%hd166678166725%_
                               _%tl166677166727%_
                               _%e166682166730%_
                               _%hd166681166733%_
                               _%tl166680166735%_
                               _%e166685166738%_
                               _%hd166684166741%_
                               _%tl166683166743%_
                               _%e166688166746%_
                               _%hd166687166749%_
                               _%tl166686166751%_
                               _%e166691166754%_
                               _%hd166690166757%_
                               _%tl166689166759%_
                               _%e166694166762%_
                               _%hd166693166765%_
                               _%tl166692166767%_
                               _%e166697166770%_
                               _%hd166696166773%_
                               _%tl166695166775%_)
                        (let ((_%L166778%_ _%hd166696166773%_)
                              (_%L166779%_ _%hd166693166765%_)
                              (_%L166780%_ _%hd166684166741%_))
                          (if (and (let ((__tmp172772
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166469%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166779%_
                                      __tmp172772))
                                   (let ((__tmp172773
                                          (let ((__tmp172774
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166780%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172774))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172773
                                      'gxc#!mutator::t)))
                              (_%__kont172129172130%_
                               _%L166778%_
                               _%L166779%_
                               _%L166780%_)
                              (_%__kont172131172132%_)))))
                     (_%__match172610172611%_
                      (lambda (_%e166676166714%_
                               _%hd166675166717%_
                               _%tl166674166719%_
                               _%e166679166722%_
                               _%hd166678166725%_
                               _%tl166677166727%_
                               _%e166682166730%_
                               _%hd166681166733%_
                               _%tl166680166735%_
                               _%e166685166738%_
                               _%hd166684166741%_
                               _%tl166683166743%_
                               _%e166688166746%_
                               _%hd166687166749%_
                               _%tl166686166751%_
                               _%e166691166754%_
                               _%hd166690166757%_
                               _%tl166689166759%_
                               _%e166694166762%_
                               _%hd166693166765%_
                               _%tl166692166767%_
                               _%e166697166770%_
                               _%hd166696166773%_
                               _%tl166695166775%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166695166775%_))
                            (_%__match172612172613%_
                             _%e166676166714%_
                             _%hd166675166717%_
                             _%tl166674166719%_
                             _%e166679166722%_
                             _%hd166678166725%_
                             _%tl166677166727%_
                             _%e166682166730%_
                             _%hd166681166733%_
                             _%tl166680166735%_
                             _%e166685166738%_
                             _%hd166684166741%_
                             _%tl166683166743%_
                             _%e166688166746%_
                             _%hd166687166749%_
                             _%tl166686166751%_
                             _%e166691166754%_
                             _%hd166690166757%_
                             _%tl166689166759%_
                             _%e166694166762%_
                             _%hd166693166765%_
                             _%tl166692166767%_
                             _%e166697166770%_
                             _%hd166696166773%_
                             _%tl166695166775%_)
                            (_%__kont172131172132%_))))
                     (_%__match172604172605%_
                      (lambda (_%e166676166714%_
                               _%hd166675166717%_
                               _%tl166674166719%_
                               _%e166679166722%_
                               _%hd166678166725%_
                               _%tl166677166727%_
                               _%e166682166730%_
                               _%hd166681166733%_
                               _%tl166680166735%_
                               _%e166685166738%_
                               _%hd166684166741%_
                               _%tl166683166743%_
                               _%e166688166746%_
                               _%hd166687166749%_
                               _%tl166686166751%_
                               _%e166691166754%_
                               _%hd166690166757%_
                               _%tl166689166759%_
                               _%e166694166762%_
                               _%hd166693166765%_
                               _%tl166692166767%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166686166751%_))
                            (let ((_%e166697166770%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166686166751%_))))
                              (let ((_%tl166695166775%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166697166770%_)))
                                    (_%hd166696166773%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166697166770%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166695166775%_))
                                    (_%__match172612172613%_
                                     _%e166676166714%_
                                     _%hd166675166717%_
                                     _%tl166674166719%_
                                     _%e166679166722%_
                                     _%hd166678166725%_
                                     _%tl166677166727%_
                                     _%e166682166730%_
                                     _%hd166681166733%_
                                     _%tl166680166735%_
                                     _%e166685166738%_
                                     _%hd166684166741%_
                                     _%tl166683166743%_
                                     _%e166688166746%_
                                     _%hd166687166749%_
                                     _%tl166686166751%_
                                     _%e166691166754%_
                                     _%hd166690166757%_
                                     _%tl166689166759%_
                                     _%e166694166762%_
                                     _%hd166693166765%_
                                     _%tl166692166767%_
                                     _%e166697166770%_
                                     _%hd166696166773%_
                                     _%tl166695166775%_)
                                    (_%__kont172131172132%_))))
                            (_%__kont172131172132%_))))
                     (_%__match172550172551%_
                      (lambda (_%e166652166827%_
                               _%hd166651166830%_
                               _%tl166650166832%_
                               _%e166655166835%_
                               _%hd166654166838%_
                               _%tl166653166840%_
                               _%e166658166843%_
                               _%hd166657166846%_
                               _%tl166656166848%_
                               _%e166661166851%_
                               _%hd166660166854%_
                               _%tl166659166856%_
                               _%e166664166859%_
                               _%hd166663166862%_
                               _%tl166662166864%_
                               _%e166667166867%_
                               _%hd166666166870%_
                               _%tl166665166872%_
                               _%e166670166875%_
                               _%hd166669166878%_
                               _%tl166668166880%_)
                        (let ((_%L166883%_ _%hd166669166878%_)
                              (_%L166884%_ _%hd166660166854%_))
                          (if (and (let ((__tmp172775
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166469%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166883%_
                                      __tmp172775))
                                   (let ((__tmp172776
                                          (let ((__tmp172777
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166884%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172777))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172776
                                      'gxc#!accessor::t)))
                              (_%__kont172127172128%_ _%L166883%_ _%L166884%_)
                              (_%__kont172131172132%_)))))
                     (_%__match172548172549%_
                      (lambda (_%e166652166827%_
                               _%hd166651166830%_
                               _%tl166650166832%_
                               _%e166655166835%_
                               _%hd166654166838%_
                               _%tl166653166840%_
                               _%e166658166843%_
                               _%hd166657166846%_
                               _%tl166656166848%_
                               _%e166661166851%_
                               _%hd166660166854%_
                               _%tl166659166856%_
                               _%e166664166859%_
                               _%hd166663166862%_
                               _%tl166662166864%_
                               _%e166667166867%_
                               _%hd166666166870%_
                               _%tl166665166872%_
                               _%e166670166875%_
                               _%hd166669166878%_
                               _%tl166668166880%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166662166864%_))
                            (_%__match172550172551%_
                             _%e166652166827%_
                             _%hd166651166830%_
                             _%tl166650166832%_
                             _%e166655166835%_
                             _%hd166654166838%_
                             _%tl166653166840%_
                             _%e166658166843%_
                             _%hd166657166846%_
                             _%tl166656166848%_
                             _%e166661166851%_
                             _%hd166660166854%_
                             _%tl166659166856%_
                             _%e166664166859%_
                             _%hd166663166862%_
                             _%tl166662166864%_
                             _%e166667166867%_
                             _%hd166666166870%_
                             _%tl166665166872%_
                             _%e166670166875%_
                             _%hd166669166878%_
                             _%tl166668166880%_)
                            (_%__match172604172605%_
                             _%e166652166827%_
                             _%hd166651166830%_
                             _%tl166650166832%_
                             _%e166655166835%_
                             _%hd166654166838%_
                             _%tl166653166840%_
                             _%e166658166843%_
                             _%hd166657166846%_
                             _%tl166656166848%_
                             _%e166661166851%_
                             _%hd166660166854%_
                             _%tl166659166856%_
                             _%e166664166859%_
                             _%hd166663166862%_
                             _%tl166662166864%_
                             _%e166667166867%_
                             _%hd166666166870%_
                             _%tl166665166872%_
                             _%e166670166875%_
                             _%hd166669166878%_
                             _%tl166668166880%_))))
                     (_%__match172494172495%_
                      (lambda (_%e166617166923%_
                               _%hd166616166926%_
                               _%tl166615166928%_
                               _%e166620166931%_
                               _%hd166619166934%_
                               _%tl166618166936%_
                               _%e166623166939%_
                               _%hd166622166942%_
                               _%tl166621166944%_
                               _%e166626166947%_
                               _%hd166625166950%_
                               _%tl166624166952%_
                               _%e166629166955%_
                               _%hd166628166958%_
                               _%tl166627166960%_
                               _%e166632166963%_
                               _%hd166631166966%_
                               _%tl166630166968%_
                               _%e166635166971%_
                               _%hd166634166974%_
                               _%tl166633166976%_
                               _%e166638166979%_
                               _%hd166637166982%_
                               _%tl166636166984%_
                               _%e166641166987%_
                               _%hd166640166990%_
                               _%tl166639166992%_
                               _%e166644166995%_
                               _%hd166643166998%_
                               _%tl166642167000%_
                               _%e166647167003%_
                               _%hd166646167006%_
                               _%tl166645167008%_)
                        (let ((_%L167011%_ _%hd166646167006%_)
                              (_%L167012%_ _%hd166643166998%_)
                              (_%L167013%_ _%hd166634166974%_)
                              (_%L167014%_ _%hd166625166950%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167014%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167014%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp172778
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166469%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167013%_
                                      __tmp172778)))
                              (_%__kont172125172126%_
                               _%L167011%_
                               _%L167012%_
                               _%L167013%_
                               _%L167014%_)
                              (_%__kont172131172132%_)))))
                     (_%__match172486172487%_
                      (lambda (_%e166617166923%_
                               _%hd166616166926%_
                               _%tl166615166928%_
                               _%e166620166931%_
                               _%hd166619166934%_
                               _%tl166618166936%_
                               _%e166623166939%_
                               _%hd166622166942%_
                               _%tl166621166944%_
                               _%e166626166947%_
                               _%hd166625166950%_
                               _%tl166624166952%_
                               _%e166629166955%_
                               _%hd166628166958%_
                               _%tl166627166960%_
                               _%e166632166963%_
                               _%hd166631166966%_
                               _%tl166630166968%_
                               _%e166635166971%_
                               _%hd166634166974%_
                               _%tl166633166976%_
                               _%e166638166979%_
                               _%hd166637166982%_
                               _%tl166636166984%_
                               _%e166641166987%_
                               _%hd166640166990%_
                               _%tl166639166992%_
                               _%e166644166995%_
                               _%hd166643166998%_
                               _%tl166642167000%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166636166984%_))
                            (let ((_%e166647167003%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166636166984%_))))
                              (let ((_%tl166645167008%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166647167003%_)))
                                    (_%hd166646167006%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166647167003%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166645167008%_))
                                    (_%__match172494172495%_
                                     _%e166617166923%_
                                     _%hd166616166926%_
                                     _%tl166615166928%_
                                     _%e166620166931%_
                                     _%hd166619166934%_
                                     _%tl166618166936%_
                                     _%e166623166939%_
                                     _%hd166622166942%_
                                     _%tl166621166944%_
                                     _%e166626166947%_
                                     _%hd166625166950%_
                                     _%tl166624166952%_
                                     _%e166629166955%_
                                     _%hd166628166958%_
                                     _%tl166627166960%_
                                     _%e166632166963%_
                                     _%hd166631166966%_
                                     _%tl166630166968%_
                                     _%e166635166971%_
                                     _%hd166634166974%_
                                     _%tl166633166976%_
                                     _%e166638166979%_
                                     _%hd166637166982%_
                                     _%tl166636166984%_
                                     _%e166641166987%_
                                     _%hd166640166990%_
                                     _%tl166639166992%_
                                     _%e166644166995%_
                                     _%hd166643166998%_
                                     _%tl166642167000%_
                                     _%e166647167003%_
                                     _%hd166646167006%_
                                     _%tl166645167008%_)
                                    (_%__kont172131172132%_))))
                            (_%__match172610172611%_
                             _%e166617166923%_
                             _%hd166616166926%_
                             _%tl166615166928%_
                             _%e166620166931%_
                             _%hd166619166934%_
                             _%tl166618166936%_
                             _%e166623166939%_
                             _%hd166622166942%_
                             _%tl166621166944%_
                             _%e166626166947%_
                             _%hd166625166950%_
                             _%tl166624166952%_
                             _%e166629166955%_
                             _%hd166628166958%_
                             _%tl166627166960%_
                             _%e166632166963%_
                             _%hd166631166966%_
                             _%tl166630166968%_
                             _%e166635166971%_
                             _%hd166634166974%_
                             _%tl166633166976%_
                             _%e166638166979%_
                             _%hd166637166982%_
                             _%tl166636166984%_))))
                     (_%__match172408172409%_
                      (lambda (_%e166583167057%_
                               _%hd166582167060%_
                               _%tl166581167062%_
                               _%e166586167065%_
                               _%hd166585167068%_
                               _%tl166584167070%_
                               _%e166589167073%_
                               _%hd166588167076%_
                               _%tl166587167078%_
                               _%e166592167081%_
                               _%hd166591167084%_
                               _%tl166590167086%_
                               _%e166595167089%_
                               _%hd166594167092%_
                               _%tl166593167094%_
                               _%e166598167097%_
                               _%hd166597167100%_
                               _%tl166596167102%_
                               _%e166601167105%_
                               _%hd166600167108%_
                               _%tl166599167110%_
                               _%e166604167113%_
                               _%hd166603167116%_
                               _%tl166602167118%_
                               _%e166607167121%_
                               _%hd166606167124%_
                               _%tl166605167126%_
                               _%e166610167129%_
                               _%hd166609167132%_
                               _%tl166608167134%_)
                        (let ((_%L167137%_ _%hd166609167132%_)
                              (_%L167138%_ _%hd166600167108%_)
                              (_%L167139%_ _%hd166591167084%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167139%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167139%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp172779
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166469%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167138%_
                                      __tmp172779)))
                              (_%__kont172123172124%_
                               _%L167137%_
                               _%L167138%_
                               _%L167139%_)
                              (_%__match172612172613%_
                               _%e166583167057%_
                               _%hd166582167060%_
                               _%tl166581167062%_
                               _%e166586167065%_
                               _%hd166585167068%_
                               _%tl166584167070%_
                               _%e166589167073%_
                               _%hd166588167076%_
                               _%tl166587167078%_
                               _%e166592167081%_
                               _%hd166591167084%_
                               _%tl166590167086%_
                               _%e166595167089%_
                               _%hd166594167092%_
                               _%tl166593167094%_
                               _%e166598167097%_
                               _%hd166597167100%_
                               _%tl166596167102%_
                               _%e166601167105%_
                               _%hd166600167108%_
                               _%tl166599167110%_
                               _%e166604167113%_
                               _%hd166603167116%_
                               _%tl166602167118%_)))))
                     (_%__match172406172407%_
                      (lambda (_%e166583167057%_
                               _%hd166582167060%_
                               _%tl166581167062%_
                               _%e166586167065%_
                               _%hd166585167068%_
                               _%tl166584167070%_
                               _%e166589167073%_
                               _%hd166588167076%_
                               _%tl166587167078%_
                               _%e166592167081%_
                               _%hd166591167084%_
                               _%tl166590167086%_
                               _%e166595167089%_
                               _%hd166594167092%_
                               _%tl166593167094%_
                               _%e166598167097%_
                               _%hd166597167100%_
                               _%tl166596167102%_
                               _%e166601167105%_
                               _%hd166600167108%_
                               _%tl166599167110%_
                               _%e166604167113%_
                               _%hd166603167116%_
                               _%tl166602167118%_
                               _%e166607167121%_
                               _%hd166606167124%_
                               _%tl166605167126%_
                               _%e166610167129%_
                               _%hd166609167132%_
                               _%tl166608167134%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166602167118%_))
                            (_%__match172408172409%_
                             _%e166583167057%_
                             _%hd166582167060%_
                             _%tl166581167062%_
                             _%e166586167065%_
                             _%hd166585167068%_
                             _%tl166584167070%_
                             _%e166589167073%_
                             _%hd166588167076%_
                             _%tl166587167078%_
                             _%e166592167081%_
                             _%hd166591167084%_
                             _%tl166590167086%_
                             _%e166595167089%_
                             _%hd166594167092%_
                             _%tl166593167094%_
                             _%e166598167097%_
                             _%hd166597167100%_
                             _%tl166596167102%_
                             _%e166601167105%_
                             _%hd166600167108%_
                             _%tl166599167110%_
                             _%e166604167113%_
                             _%hd166603167116%_
                             _%tl166602167118%_
                             _%e166607167121%_
                             _%hd166606167124%_
                             _%tl166605167126%_
                             _%e166610167129%_
                             _%hd166609167132%_
                             _%tl166608167134%_)
                            (_%__match172486172487%_
                             _%e166583167057%_
                             _%hd166582167060%_
                             _%tl166581167062%_
                             _%e166586167065%_
                             _%hd166585167068%_
                             _%tl166584167070%_
                             _%e166589167073%_
                             _%hd166588167076%_
                             _%tl166587167078%_
                             _%e166592167081%_
                             _%hd166591167084%_
                             _%tl166590167086%_
                             _%e166595167089%_
                             _%hd166594167092%_
                             _%tl166593167094%_
                             _%e166598167097%_
                             _%hd166597167100%_
                             _%tl166596167102%_
                             _%e166601167105%_
                             _%hd166600167108%_
                             _%tl166599167110%_
                             _%e166604167113%_
                             _%hd166603167116%_
                             _%tl166602167118%_
                             _%e166607167121%_
                             _%hd166606167124%_
                             _%tl166605167126%_
                             _%e166610167129%_
                             _%hd166609167132%_
                             _%tl166608167134%_))))
                     (_%__match172396172397%_
                      (lambda (_%e166583167057%_
                               _%hd166582167060%_
                               _%tl166581167062%_
                               _%e166586167065%_
                               _%hd166585167068%_
                               _%tl166584167070%_
                               _%e166589167073%_
                               _%hd166588167076%_
                               _%tl166587167078%_
                               _%e166592167081%_
                               _%hd166591167084%_
                               _%tl166590167086%_
                               _%e166595167089%_
                               _%hd166594167092%_
                               _%tl166593167094%_
                               _%e166598167097%_
                               _%hd166597167100%_
                               _%tl166596167102%_
                               _%e166601167105%_
                               _%hd166600167108%_
                               _%tl166599167110%_
                               _%e166604167113%_
                               _%hd166603167116%_
                               _%tl166602167118%_
                               _%e166607167121%_
                               _%hd166606167124%_
                               _%tl166605167126%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd166606167124%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166605167126%_))
                                (let ((_%e166610167129%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166605167126%_))))
                                  (let ((_%tl166608167134%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166610167129%_)))
                                        (_%hd166609167132%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166610167129%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166608167134%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl166602167118%_))
                                            (_%__match172408172409%_
                                             _%e166583167057%_
                                             _%hd166582167060%_
                                             _%tl166581167062%_
                                             _%e166586167065%_
                                             _%hd166585167068%_
                                             _%tl166584167070%_
                                             _%e166589167073%_
                                             _%hd166588167076%_
                                             _%tl166587167078%_
                                             _%e166592167081%_
                                             _%hd166591167084%_
                                             _%tl166590167086%_
                                             _%e166595167089%_
                                             _%hd166594167092%_
                                             _%tl166593167094%_
                                             _%e166598167097%_
                                             _%hd166597167100%_
                                             _%tl166596167102%_
                                             _%e166601167105%_
                                             _%hd166600167108%_
                                             _%tl166599167110%_
                                             _%e166604167113%_
                                             _%hd166603167116%_
                                             _%tl166602167118%_
                                             _%e166607167121%_
                                             _%hd166606167124%_
                                             _%tl166605167126%_
                                             _%e166610167129%_
                                             _%hd166609167132%_
                                             _%tl166608167134%_)
                                            (_%__match172486172487%_
                                             _%e166583167057%_
                                             _%hd166582167060%_
                                             _%tl166581167062%_
                                             _%e166586167065%_
                                             _%hd166585167068%_
                                             _%tl166584167070%_
                                             _%e166589167073%_
                                             _%hd166588167076%_
                                             _%tl166587167078%_
                                             _%e166592167081%_
                                             _%hd166591167084%_
                                             _%tl166590167086%_
                                             _%e166595167089%_
                                             _%hd166594167092%_
                                             _%tl166593167094%_
                                             _%e166598167097%_
                                             _%hd166597167100%_
                                             _%tl166596167102%_
                                             _%e166601167105%_
                                             _%hd166600167108%_
                                             _%tl166599167110%_
                                             _%e166604167113%_
                                             _%hd166603167116%_
                                             _%tl166602167118%_
                                             _%e166607167121%_
                                             _%hd166606167124%_
                                             _%tl166605167126%_
                                             _%e166610167129%_
                                             _%hd166609167132%_
                                             _%tl166608167134%_))
                                        (_%__match172610172611%_
                                         _%e166583167057%_
                                         _%hd166582167060%_
                                         _%tl166581167062%_
                                         _%e166586167065%_
                                         _%hd166585167068%_
                                         _%tl166584167070%_
                                         _%e166589167073%_
                                         _%hd166588167076%_
                                         _%tl166587167078%_
                                         _%e166592167081%_
                                         _%hd166591167084%_
                                         _%tl166590167086%_
                                         _%e166595167089%_
                                         _%hd166594167092%_
                                         _%tl166593167094%_
                                         _%e166598167097%_
                                         _%hd166597167100%_
                                         _%tl166596167102%_
                                         _%e166601167105%_
                                         _%hd166600167108%_
                                         _%tl166599167110%_
                                         _%e166604167113%_
                                         _%hd166603167116%_
                                         _%tl166602167118%_))))
                                (_%__match172610172611%_
                                 _%e166583167057%_
                                 _%hd166582167060%_
                                 _%tl166581167062%_
                                 _%e166586167065%_
                                 _%hd166585167068%_
                                 _%tl166584167070%_
                                 _%e166589167073%_
                                 _%hd166588167076%_
                                 _%tl166587167078%_
                                 _%e166592167081%_
                                 _%hd166591167084%_
                                 _%tl166590167086%_
                                 _%e166595167089%_
                                 _%hd166594167092%_
                                 _%tl166593167094%_
                                 _%e166598167097%_
                                 _%hd166597167100%_
                                 _%tl166596167102%_
                                 _%e166601167105%_
                                 _%hd166600167108%_
                                 _%tl166599167110%_
                                 _%e166604167113%_
                                 _%hd166603167116%_
                                 _%tl166602167118%_))
                            (_%__match172610172611%_
                             _%e166583167057%_
                             _%hd166582167060%_
                             _%tl166581167062%_
                             _%e166586167065%_
                             _%hd166585167068%_
                             _%tl166584167070%_
                             _%e166589167073%_
                             _%hd166588167076%_
                             _%tl166587167078%_
                             _%e166592167081%_
                             _%hd166591167084%_
                             _%tl166590167086%_
                             _%e166595167089%_
                             _%hd166594167092%_
                             _%tl166593167094%_
                             _%e166598167097%_
                             _%hd166597167100%_
                             _%tl166596167102%_
                             _%e166601167105%_
                             _%hd166600167108%_
                             _%tl166599167110%_
                             _%e166604167113%_
                             _%hd166603167116%_
                             _%tl166602167118%_))))
                     (_%__match172328172329%_
                      (lambda (_%e166532167178%_
                               _%hd166531167181%_
                               _%tl166530167183%_
                               _%e166535167186%_
                               _%hd166534167189%_
                               _%tl166533167191%_
                               _%e166538167194%_
                               _%hd166537167197%_
                               _%tl166536167199%_
                               _%e166541167202%_
                               _%hd166540167205%_
                               _%tl166539167207%_
                               _%e166544167210%_
                               _%hd166543167213%_
                               _%tl166542167215%_
                               _%e166547167218%_
                               _%hd166546167221%_
                               _%tl166545167223%_
                               _%e166550167226%_
                               _%hd166549167229%_
                               _%tl166548167231%_
                               _%e166553167234%_
                               _%hd166552167237%_
                               _%tl166551167239%_
                               _%e166556167242%_
                               _%hd166555167245%_
                               _%tl166554167247%_
                               _%e166559167250%_
                               _%hd166558167253%_
                               _%tl166557167255%_
                               _%e166562167258%_
                               _%hd166561167261%_
                               _%tl166560167263%_
                               _%e166565167266%_
                               _%hd166564167269%_
                               _%tl166563167271%_
                               _%e166568167274%_
                               _%hd166567167277%_
                               _%tl166566167279%_
                               _%__splice172121172122%_
                               _%target166569167282%_
                               _%tl166571167284%_)
                        (letrec ((_%loop166572167287%_
                                  (lambda (_%hd166570167290%_
                                           _%args166576167292%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166570167290%_))
                                        (let ((_%e166573167295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166570167290%_))))
                                          (let ((_%lp-tl166575167300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166573167295%_)))
                                                (_%lp-hd166574167298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166573167295%_))))
                                            (let ((__tmp172780
                                                   (cons _%lp-hd166574167298%_
                                                         _%args166576167292%_)))
                                              (declare (not safe))
                                              (_%loop166572167287%_
                                               _%lp-tl166575167300%_
                                               __tmp172780))))
                                        (let ((_%args166577167303%_
                                               (reverse _%args166576167292%_)))
                                          (let ((_%L167306%_
                                                 _%args166577167303%_)
                                                (_%L167307%_
                                                 _%hd166567167277%_)
                                                (_%L167308%_
                                                 _%hd166558167253%_)
                                                (_%L167309%_
                                                 _%hd166549167229%_)
                                                (_%L167310%_
                                                 _%hd166540167205%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167310%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167309%_
                                                        'call-method))
                                                     (let ((__tmp172781
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166469%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167308%_
                                                        __tmp172781)))
                                                (_%__kont172119172120%_
                                                 _%L167306%_
                                                 _%L167307%_
                                                 _%L167308%_
                                                 _%L167309%_
                                                 _%L167310%_)
                                                (_%__kont172131172132%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166572167287%_
                             _%target166569167282%_
                             '())))))
                     (_%__match172286172287%_
                      (lambda (_%e166532167178%_
                               _%hd166531167181%_
                               _%tl166530167183%_
                               _%e166535167186%_
                               _%hd166534167189%_
                               _%tl166533167191%_
                               _%e166538167194%_
                               _%hd166537167197%_
                               _%tl166536167199%_
                               _%e166541167202%_
                               _%hd166540167205%_
                               _%tl166539167207%_
                               _%e166544167210%_
                               _%hd166543167213%_
                               _%tl166542167215%_
                               _%e166547167218%_
                               _%hd166546167221%_
                               _%tl166545167223%_
                               _%e166550167226%_
                               _%hd166549167229%_
                               _%tl166548167231%_
                               _%e166553167234%_
                               _%hd166552167237%_
                               _%tl166551167239%_
                               _%e166556167242%_
                               _%hd166555167245%_
                               _%tl166554167247%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd166555167245%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166554167247%_))
                                (let ((_%e166559167250%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166554167247%_))))
                                  (let ((_%tl166557167255%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166559167250%_)))
                                        (_%hd166558167253%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166559167250%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166557167255%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166551167239%_))
                                            (let ((_%e166562167258%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166551167239%_))))
                                              (let ((_%tl166560167263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166562167258%_)))
                                                    (_%hd166561167261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166562167258%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd166561167261%_))
                                                    (let ((_%e166565167266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd166561167261%_))))
                                                      (let ((_%tl166563167271%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166565167266%_)))
                    (_%hd166564167269%_
                     (let () (declare (not safe)) (##car _%e166565167266%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd166564167269%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd166564167269%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166563167271%_))
                            (let ((_%e166568167274%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166563167271%_))))
                              (let ((_%tl166566167279%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166568167274%_)))
                                    (_%hd166567167277%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166568167274%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166566167279%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166560167263%_))
                                        (let ((_%__splice172121172122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166560167263%_
                                                  '0))))
                                          (let ((_%tl166571167284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172121172122%_
                                                    '1)))
                                                (_%target166569167282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172121172122%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166571167284%_))
                                                (_%__match172328172329%_
                                                 _%e166532167178%_
                                                 _%hd166531167181%_
                                                 _%tl166530167183%_
                                                 _%e166535167186%_
                                                 _%hd166534167189%_
                                                 _%tl166533167191%_
                                                 _%e166538167194%_
                                                 _%hd166537167197%_
                                                 _%tl166536167199%_
                                                 _%e166541167202%_
                                                 _%hd166540167205%_
                                                 _%tl166539167207%_
                                                 _%e166544167210%_
                                                 _%hd166543167213%_
                                                 _%tl166542167215%_
                                                 _%e166547167218%_
                                                 _%hd166546167221%_
                                                 _%tl166545167223%_
                                                 _%e166550167226%_
                                                 _%hd166549167229%_
                                                 _%tl166548167231%_
                                                 _%e166553167234%_
                                                 _%hd166552167237%_
                                                 _%tl166551167239%_
                                                 _%e166556167242%_
                                                 _%hd166555167245%_
                                                 _%tl166554167247%_
                                                 _%e166559167250%_
                                                 _%hd166558167253%_
                                                 _%tl166557167255%_
                                                 _%e166562167258%_
                                                 _%hd166561167261%_
                                                 _%tl166560167263%_
                                                 _%e166565167266%_
                                                 _%hd166564167269%_
                                                 _%tl166563167271%_
                                                 _%e166568167274%_
                                                 _%hd166567167277%_
                                                 _%tl166566167279%_
                                                 _%__splice172121172122%_
                                                 _%target166569167282%_
                                                 _%tl166571167284%_)
                                                (_%__kont172131172132%_))))
                                        (_%__kont172131172132%_))
                                    (_%__kont172131172132%_))))
                            (_%__kont172131172132%_))
                        (_%__kont172131172132%_))
                    (_%__kont172131172132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172131172132%_))))
                                            (_%__match172610172611%_
                                             _%e166532167178%_
                                             _%hd166531167181%_
                                             _%tl166530167183%_
                                             _%e166535167186%_
                                             _%hd166534167189%_
                                             _%tl166533167191%_
                                             _%e166538167194%_
                                             _%hd166537167197%_
                                             _%tl166536167199%_
                                             _%e166541167202%_
                                             _%hd166540167205%_
                                             _%tl166539167207%_
                                             _%e166544167210%_
                                             _%hd166543167213%_
                                             _%tl166542167215%_
                                             _%e166547167218%_
                                             _%hd166546167221%_
                                             _%tl166545167223%_
                                             _%e166550167226%_
                                             _%hd166549167229%_
                                             _%tl166548167231%_
                                             _%e166553167234%_
                                             _%hd166552167237%_
                                             _%tl166551167239%_))
                                        (_%__match172610172611%_
                                         _%e166532167178%_
                                         _%hd166531167181%_
                                         _%tl166530167183%_
                                         _%e166535167186%_
                                         _%hd166534167189%_
                                         _%tl166533167191%_
                                         _%e166538167194%_
                                         _%hd166537167197%_
                                         _%tl166536167199%_
                                         _%e166541167202%_
                                         _%hd166540167205%_
                                         _%tl166539167207%_
                                         _%e166544167210%_
                                         _%hd166543167213%_
                                         _%tl166542167215%_
                                         _%e166547167218%_
                                         _%hd166546167221%_
                                         _%tl166545167223%_
                                         _%e166550167226%_
                                         _%hd166549167229%_
                                         _%tl166548167231%_
                                         _%e166553167234%_
                                         _%hd166552167237%_
                                         _%tl166551167239%_))))
                                (_%__match172610172611%_
                                 _%e166532167178%_
                                 _%hd166531167181%_
                                 _%tl166530167183%_
                                 _%e166535167186%_
                                 _%hd166534167189%_
                                 _%tl166533167191%_
                                 _%e166538167194%_
                                 _%hd166537167197%_
                                 _%tl166536167199%_
                                 _%e166541167202%_
                                 _%hd166540167205%_
                                 _%tl166539167207%_
                                 _%e166544167210%_
                                 _%hd166543167213%_
                                 _%tl166542167215%_
                                 _%e166547167218%_
                                 _%hd166546167221%_
                                 _%tl166545167223%_
                                 _%e166550167226%_
                                 _%hd166549167229%_
                                 _%tl166548167231%_
                                 _%e166553167234%_
                                 _%hd166552167237%_
                                 _%tl166551167239%_))
                            (_%__match172396172397%_
                             _%e166532167178%_
                             _%hd166531167181%_
                             _%tl166530167183%_
                             _%e166535167186%_
                             _%hd166534167189%_
                             _%tl166533167191%_
                             _%e166538167194%_
                             _%hd166537167197%_
                             _%tl166536167199%_
                             _%e166541167202%_
                             _%hd166540167205%_
                             _%tl166539167207%_
                             _%e166544167210%_
                             _%hd166543167213%_
                             _%tl166542167215%_
                             _%e166547167218%_
                             _%hd166546167221%_
                             _%tl166545167223%_
                             _%e166550167226%_
                             _%hd166549167229%_
                             _%tl166548167231%_
                             _%e166553167234%_
                             _%hd166552167237%_
                             _%tl166551167239%_
                             _%e166556167242%_
                             _%hd166555167245%_
                             _%tl166554167247%_))))
                     (_%__match172218172219%_
                      (lambda (_%e166488167370%_
                               _%hd166487167373%_
                               _%tl166486167375%_
                               _%e166491167378%_
                               _%hd166490167381%_
                               _%tl166489167383%_
                               _%e166494167386%_
                               _%hd166493167389%_
                               _%tl166492167391%_
                               _%e166497167394%_
                               _%hd166496167397%_
                               _%tl166495167399%_
                               _%e166500167402%_
                               _%hd166499167405%_
                               _%tl166498167407%_
                               _%e166503167410%_
                               _%hd166502167413%_
                               _%tl166501167415%_
                               _%e166506167418%_
                               _%hd166505167421%_
                               _%tl166504167423%_
                               _%e166509167426%_
                               _%hd166508167429%_
                               _%tl166507167431%_
                               _%e166512167434%_
                               _%hd166511167437%_
                               _%tl166510167439%_
                               _%e166515167442%_
                               _%hd166514167445%_
                               _%tl166513167447%_
                               _%__splice172117172118%_
                               _%target166516167450%_
                               _%tl166518167452%_)
                        (letrec ((_%loop166519167455%_
                                  (lambda (_%hd166517167458%_
                                           _%args166523167460%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166517167458%_))
                                        (let ((_%e166520167463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166517167458%_))))
                                          (let ((_%lp-tl166522167468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166520167463%_)))
                                                (_%lp-hd166521167466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166520167463%_))))
                                            (let ((__tmp172782
                                                   (cons _%lp-hd166521167466%_
                                                         _%args166523167460%_)))
                                              (declare (not safe))
                                              (_%loop166519167455%_
                                               _%lp-tl166522167468%_
                                               __tmp172782))))
                                        (let ((_%args166524167471%_
                                               (reverse _%args166523167460%_)))
                                          (let ((_%L167474%_
                                                 _%args166524167471%_)
                                                (_%L167475%_
                                                 _%hd166514167445%_)
                                                (_%L167476%_
                                                 _%hd166505167421%_)
                                                (_%L167477%_
                                                 _%hd166496167397%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167477%_
                                                        'call-method))
                                                     (let ((__tmp172783
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166469%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167476%_
                                                        __tmp172783)))
                                                (_%__kont172115172116%_
                                                 _%L167474%_
                                                 _%L167475%_
                                                 _%L167476%_
                                                 _%L167477%_)
                                                (_%__match172406172407%_
                                                 _%e166488167370%_
                                                 _%hd166487167373%_
                                                 _%tl166486167375%_
                                                 _%e166491167378%_
                                                 _%hd166490167381%_
                                                 _%tl166489167383%_
                                                 _%e166494167386%_
                                                 _%hd166493167389%_
                                                 _%tl166492167391%_
                                                 _%e166497167394%_
                                                 _%hd166496167397%_
                                                 _%tl166495167399%_
                                                 _%e166500167402%_
                                                 _%hd166499167405%_
                                                 _%tl166498167407%_
                                                 _%e166503167410%_
                                                 _%hd166502167413%_
                                                 _%tl166501167415%_
                                                 _%e166506167418%_
                                                 _%hd166505167421%_
                                                 _%tl166504167423%_
                                                 _%e166509167426%_
                                                 _%hd166508167429%_
                                                 _%tl166507167431%_
                                                 _%e166512167434%_
                                                 _%hd166511167437%_
                                                 _%tl166510167439%_
                                                 _%e166515167442%_
                                                 _%hd166514167445%_
                                                 _%tl166513167447%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166519167455%_
                             _%target166516167450%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172113172114%_))
                    (let ((_%e166488167370%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172113172114%_))))
                      (let ((_%tl166486167375%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166488167370%_)))
                            (_%hd166487167373%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166488167370%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166486167375%_))
                            (let ((_%e166491167378%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166486167375%_))))
                              (let ((_%tl166489167383%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166491167378%_)))
                                    (_%hd166490167381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166491167378%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd166490167381%_))
                                    (let ((_%e166494167386%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd166490167381%_))))
                                      (let ((_%tl166492167391%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e166494167386%_)))
                                            (_%hd166493167389%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e166494167386%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd166493167389%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd166493167389%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166492167391%_))
                                                    (let ((_%e166497167394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166492167391%_))))
                                                      (let ((_%tl166495167399%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166497167394%_)))
                    (_%hd166496167397%_
                     (let () (declare (not safe)) (##car _%e166497167394%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166495167399%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl166489167383%_))
                        (let ((_%e166500167402%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl166489167383%_))))
                          (let ((_%tl166498167407%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166500167402%_)))
                                (_%hd166499167405%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166500167402%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd166499167405%_))
                                (let ((_%e166503167410%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd166499167405%_))))
                                  (let ((_%tl166501167415%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166503167410%_)))
                                        (_%hd166502167413%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166503167410%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166502167413%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166502167413%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166501167415%_))
                                                (let ((_%e166506167418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166501167415%_))))
                                                  (let ((_%tl166504167423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166506167418%_)))
                                                        (_%hd166505167421%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166506167418%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166504167423%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl166498167407%_))
                                                            (let ((_%e166509167426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl166498167407%_))))
                      (let ((_%tl166507167431%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166509167426%_)))
                            (_%hd166508167429%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166509167426%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd166508167429%_))
                            (let ((_%e166512167434%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd166508167429%_))))
                              (let ((_%tl166510167439%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166512167434%_)))
                                    (_%hd166511167437%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166512167434%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd166511167437%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd166511167437%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166510167439%_))
                                            (let ((_%e166515167442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166510167439%_))))
                                              (let ((_%tl166513167447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166515167442%_)))
                                                    (_%hd166514167445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166515167442%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl166513167447%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl166507167431%_))
                                                        (let ((_%__splice172117172118%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl166507167431%_ '0))))
                  (let ((_%tl166518167452%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172117172118%_ '1)))
                        (_%target166516167450%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172117172118%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl166518167452%_))
                        (_%__match172218172219%_
                         _%e166488167370%_
                         _%hd166487167373%_
                         _%tl166486167375%_
                         _%e166491167378%_
                         _%hd166490167381%_
                         _%tl166489167383%_
                         _%e166494167386%_
                         _%hd166493167389%_
                         _%tl166492167391%_
                         _%e166497167394%_
                         _%hd166496167397%_
                         _%tl166495167399%_
                         _%e166500167402%_
                         _%hd166499167405%_
                         _%tl166498167407%_
                         _%e166503167410%_
                         _%hd166502167413%_
                         _%tl166501167415%_
                         _%e166506167418%_
                         _%hd166505167421%_
                         _%tl166504167423%_
                         _%e166509167426%_
                         _%hd166508167429%_
                         _%tl166507167431%_
                         _%e166512167434%_
                         _%hd166511167437%_
                         _%tl166510167439%_
                         _%e166515167442%_
                         _%hd166514167445%_
                         _%tl166513167447%_
                         _%__splice172117172118%_
                         _%target166516167450%_
                         _%tl166518167452%_)
                        (_%__match172406172407%_
                         _%e166488167370%_
                         _%hd166487167373%_
                         _%tl166486167375%_
                         _%e166491167378%_
                         _%hd166490167381%_
                         _%tl166489167383%_
                         _%e166494167386%_
                         _%hd166493167389%_
                         _%tl166492167391%_
                         _%e166497167394%_
                         _%hd166496167397%_
                         _%tl166495167399%_
                         _%e166500167402%_
                         _%hd166499167405%_
                         _%tl166498167407%_
                         _%e166503167410%_
                         _%hd166502167413%_
                         _%tl166501167415%_
                         _%e166506167418%_
                         _%hd166505167421%_
                         _%tl166504167423%_
                         _%e166509167426%_
                         _%hd166508167429%_
                         _%tl166507167431%_
                         _%e166512167434%_
                         _%hd166511167437%_
                         _%tl166510167439%_
                         _%e166515167442%_
                         _%hd166514167445%_
                         _%tl166513167447%_))))
                (_%__match172406172407%_
                 _%e166488167370%_
                 _%hd166487167373%_
                 _%tl166486167375%_
                 _%e166491167378%_
                 _%hd166490167381%_
                 _%tl166489167383%_
                 _%e166494167386%_
                 _%hd166493167389%_
                 _%tl166492167391%_
                 _%e166497167394%_
                 _%hd166496167397%_
                 _%tl166495167399%_
                 _%e166500167402%_
                 _%hd166499167405%_
                 _%tl166498167407%_
                 _%e166503167410%_
                 _%hd166502167413%_
                 _%tl166501167415%_
                 _%e166506167418%_
                 _%hd166505167421%_
                 _%tl166504167423%_
                 _%e166509167426%_
                 _%hd166508167429%_
                 _%tl166507167431%_
                 _%e166512167434%_
                 _%hd166511167437%_
                 _%tl166510167439%_
                 _%e166515167442%_
                 _%hd166514167445%_
                 _%tl166513167447%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match172610172611%_
                                                     _%e166488167370%_
                                                     _%hd166487167373%_
                                                     _%tl166486167375%_
                                                     _%e166491167378%_
                                                     _%hd166490167381%_
                                                     _%tl166489167383%_
                                                     _%e166494167386%_
                                                     _%hd166493167389%_
                                                     _%tl166492167391%_
                                                     _%e166497167394%_
                                                     _%hd166496167397%_
                                                     _%tl166495167399%_
                                                     _%e166500167402%_
                                                     _%hd166499167405%_
                                                     _%tl166498167407%_
                                                     _%e166503167410%_
                                                     _%hd166502167413%_
                                                     _%tl166501167415%_
                                                     _%e166506167418%_
                                                     _%hd166505167421%_
                                                     _%tl166504167423%_
                                                     _%e166509167426%_
                                                     _%hd166508167429%_
                                                     _%tl166507167431%_))))
                                            (_%__match172610172611%_
                                             _%e166488167370%_
                                             _%hd166487167373%_
                                             _%tl166486167375%_
                                             _%e166491167378%_
                                             _%hd166490167381%_
                                             _%tl166489167383%_
                                             _%e166494167386%_
                                             _%hd166493167389%_
                                             _%tl166492167391%_
                                             _%e166497167394%_
                                             _%hd166496167397%_
                                             _%tl166495167399%_
                                             _%e166500167402%_
                                             _%hd166499167405%_
                                             _%tl166498167407%_
                                             _%e166503167410%_
                                             _%hd166502167413%_
                                             _%tl166501167415%_
                                             _%e166506167418%_
                                             _%hd166505167421%_
                                             _%tl166504167423%_
                                             _%e166509167426%_
                                             _%hd166508167429%_
                                             _%tl166507167431%_))
                                        (_%__match172286172287%_
                                         _%e166488167370%_
                                         _%hd166487167373%_
                                         _%tl166486167375%_
                                         _%e166491167378%_
                                         _%hd166490167381%_
                                         _%tl166489167383%_
                                         _%e166494167386%_
                                         _%hd166493167389%_
                                         _%tl166492167391%_
                                         _%e166497167394%_
                                         _%hd166496167397%_
                                         _%tl166495167399%_
                                         _%e166500167402%_
                                         _%hd166499167405%_
                                         _%tl166498167407%_
                                         _%e166503167410%_
                                         _%hd166502167413%_
                                         _%tl166501167415%_
                                         _%e166506167418%_
                                         _%hd166505167421%_
                                         _%tl166504167423%_
                                         _%e166509167426%_
                                         _%hd166508167429%_
                                         _%tl166507167431%_
                                         _%e166512167434%_
                                         _%hd166511167437%_
                                         _%tl166510167439%_))
                                    (_%__match172610172611%_
                                     _%e166488167370%_
                                     _%hd166487167373%_
                                     _%tl166486167375%_
                                     _%e166491167378%_
                                     _%hd166490167381%_
                                     _%tl166489167383%_
                                     _%e166494167386%_
                                     _%hd166493167389%_
                                     _%tl166492167391%_
                                     _%e166497167394%_
                                     _%hd166496167397%_
                                     _%tl166495167399%_
                                     _%e166500167402%_
                                     _%hd166499167405%_
                                     _%tl166498167407%_
                                     _%e166503167410%_
                                     _%hd166502167413%_
                                     _%tl166501167415%_
                                     _%e166506167418%_
                                     _%hd166505167421%_
                                     _%tl166504167423%_
                                     _%e166509167426%_
                                     _%hd166508167429%_
                                     _%tl166507167431%_))))
                            (_%__match172610172611%_
                             _%e166488167370%_
                             _%hd166487167373%_
                             _%tl166486167375%_
                             _%e166491167378%_
                             _%hd166490167381%_
                             _%tl166489167383%_
                             _%e166494167386%_
                             _%hd166493167389%_
                             _%tl166492167391%_
                             _%e166497167394%_
                             _%hd166496167397%_
                             _%tl166495167399%_
                             _%e166500167402%_
                             _%hd166499167405%_
                             _%tl166498167407%_
                             _%e166503167410%_
                             _%hd166502167413%_
                             _%tl166501167415%_
                             _%e166506167418%_
                             _%hd166505167421%_
                             _%tl166504167423%_
                             _%e166509167426%_
                             _%hd166508167429%_
                             _%tl166507167431%_))))
                    (_%__match172548172549%_
                     _%e166488167370%_
                     _%hd166487167373%_
                     _%tl166486167375%_
                     _%e166491167378%_
                     _%hd166490167381%_
                     _%tl166489167383%_
                     _%e166494167386%_
                     _%hd166493167389%_
                     _%tl166492167391%_
                     _%e166497167394%_
                     _%hd166496167397%_
                     _%tl166495167399%_
                     _%e166500167402%_
                     _%hd166499167405%_
                     _%tl166498167407%_
                     _%e166503167410%_
                     _%hd166502167413%_
                     _%tl166501167415%_
                     _%e166506167418%_
                     _%hd166505167421%_
                     _%tl166504167423%_))
                (_%__kont172131172132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172131172132%_))
                                            (_%__kont172131172132%_))
                                        (_%__kont172131172132%_))))
                                (_%__kont172131172132%_))))
                        (_%__kont172131172132%_))
                    (_%__kont172131172132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172131172132%_))
                                                (_%__kont172131172132%_))
                                            (_%__kont172131172132%_))))
                                    (_%__kont172131172132%_))))
                            (_%__kont172131172132%_))))
                    (_%__kont172131172132%_))))))))))
