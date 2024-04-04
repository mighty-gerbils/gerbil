(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712262517)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp172629 (list gxc#::identity::t))
            (__tmp172628 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp172629
         '()
         __tmp172628
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args171494%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args171494%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp172630
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
        (__make-promise __tmp172630)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx171486%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self171489%_
                (let ((__obj172623
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj172623))
               (__tmp172631
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171489%_ _%stx171486%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp172631
           gxc#current-compile-method
           _%self171489%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp172633 (list gxc#::void::t))
            (__tmp172632 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp172633
         '(receiver methods slots)
         __tmp172632
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args171483%_
        (apply make-instance gxc#::collect-object-refs::t _%$args171483%_)))
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
      (let ((__tmp172634
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
        (__make-promise __tmp172634)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords171449%_
               _%receiver171444171450%_
               _%methods171445171452%_
               _%slots171446171454%_
               _%stx171456%_)
        (let* ((_%receiver171459%_
                (if (eq? _%receiver171444171450%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171444171450%_))
               (_%methods171461%_
                (if (eq? _%methods171445171452%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171445171452%_))
               (_%slots171463%_
                (if (eq? _%slots171446171454%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171446171454%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self171465%_
                  (let ((__obj172625
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
                       __obj172625
                       _%receiver171459%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172625
                       _%methods171461%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172625
                       _%slots171463%_
                       '3
                       '#f
                       '#f))
                    __obj172625))
                 (__tmp172635
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171465%_ _%stx171456%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172635
             gxc#current-compile-method
             _%self171465%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords171472%_ . _%args171473%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords171472%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171472%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171472%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171472%_
                  'slots:
                  absent-value))
               _%args171473%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args171447171479%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args171447171479%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp172637 (list gxc#::basic-xform-expression::t))
            (__tmp172636 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp172637
         '(receiver klass methods slots)
         __tmp172636
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args171440%_
        (apply make-instance gxc#::subst-object-refs::t _%$args171440%_)))
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
      (let ((__tmp172638
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
        (__make-promise __tmp172638)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords171402%_
               _%receiver171396171403%_
               _%klass171397171405%_
               _%methods171398171407%_
               _%slots171399171409%_
               _%stx171411%_)
        (let* ((_%receiver171414%_
                (if (eq? _%receiver171396171403%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171396171403%_))
               (_%klass171416%_
                (if (eq? _%klass171397171405%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass171397171405%_))
               (_%methods171418%_
                (if (eq? _%methods171398171407%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171398171407%_))
               (_%slots171420%_
                (if (eq? _%slots171399171409%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171399171409%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self171422%_
                  (let ((__obj172627
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
                       __obj172627
                       _%receiver171414%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172627
                       _%klass171416%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172627
                       _%methods171418%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172627
                       _%slots171420%_
                       '4
                       '#f
                       '#f))
                    __obj172627))
                 (__tmp172639
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171422%_ _%stx171411%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172639
             gxc#current-compile-method
             _%self171422%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords171429%_ . _%args171430%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords171429%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171429%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171429%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171429%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171429%_
                  'slots:
                  absent-value))
               _%args171430%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args171400171436%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args171400171436%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self168577%_ _%stx168578%_)
        (letrec ((_%generate-method-bind168580%_
                  (lambda (_%$klass171388%_
                           _%$method-table171389%_
                           _%id171390%_
                           _%$id171391%_)
                    (let ((_%$tmp171393%_
                           (let ((__tmp172640
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172640))))
                      (cons (cons _%$id171391%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp171393%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table171389%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id171390%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp171393%_ '()))
                    (cons (cons '%#ref (cons _%$tmp171393%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id171390%_
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
                 (_%generate-slot-bind168581%_
                  (lambda (_%$klass171382%_ _%id171383%_ _%$id171384%_)
                    (let ((_%$tmp171386%_
                           (let ((__tmp172641
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172641))))
                      (cons (cons _%$id171384%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp171386%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass171382%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id171383%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp171386%_ '()))
                        (cons (cons '%#ref (cons _%$tmp171386%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id171383%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl168582%_
                  (lambda (_%$klass171376%_
                           _%$method-table171377%_
                           _%methods-bind171378%_
                           _%slots-bind171379%_
                           _%specializer-impl171380%_)
                    (let ((__tmp172642
                           (cons '%#lambda
                                 (cons (cons _%$klass171376%_
                                             (cons _%$method-table171377%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind171379%_
                                                            _%methods-bind171378%_))
                                                         (cons _%specializer-impl171380%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172642 _%stx168578%_))))
                 (_%generate-specializer-def168583%_
                  (lambda (_%id171372%_
                           _%specializer-id171373%_
                           _%specializer-impl171374%_)
                    (let ((__tmp172643
                           (cons '%#begin
                                 (cons _%stx168578%_
                                       (cons (let ((__tmp172644
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id171373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl171374%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp172644
                                                _%stx168578%_))
                                             (cons (let ((__tmp172645
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id171372%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id171373%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172645
                                                      _%stx168578%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172643 _%stx168578%_)))))
          (let* ((_%__stx171583171584%_ _%stx168578%_)
                 (_%g168586168606%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171583171584%_)))))
            (let ((_%__kont171585171586%_
                   (lambda (_%L168650%_ _%L168651%_)
                     (let ((_%method-calls168670%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs168671%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty168672%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?168674%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls168670%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs168671%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L168650%_))
                             (let ()
                               (let* ((_%__stx171497171498%_ _%L168650%_)
                                      (_%g169062169080%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx171497171498%_)))))
                                 (let ((_%__kont171499171500%_
                                        (lambda (_%L169116%_
                                                 _%L169117%_
                                                 _%L169118%_)
                                          (for-each
                                           (lambda (_%g169134169136%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs__%
                                                '#f
                                                _%L169118%_
                                                _%method-calls168670%_
                                                _%slot-refs168671%_
                                                _%g169134169136%_)))
                                           _%L169116%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?168674%_))
                                              _%stx168578%_
                                              (let* ((_%specializer-id169145%_
                                                      (let* ((_%id169139%_
                                                              (let ((__tmp172646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L168651%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp172646 '"::specialize")))
                     (_%specializer-id169142%_
                      (let ((__tmp172647
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx168578%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id169139%_ __tmp172647))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id169142%_))
                _%specializer-id169142%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass169147%_
                                                      (let ((__tmp172648
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp172648)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table169149%_
                                                      (let ((__tmp172649
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp172649)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods169151%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls168670%_)))
                                                     (_%$methods169155%_
                                                      (map (lambda (_%id169153%_)
                                                             (let ((__tmp172650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169153%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172650)))
                   _%methods169151%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169164%_
                                                      (for-each
                                                       (lambda (_%g169156169159%_
                                                                _%g169157169161%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls168670%_
                                                            _%g169156169159%_
                                                            _%g169157169161%_)))
                                                       _%methods169151%_
                                                       _%$methods169155%_))
                                                     (_%methods-bind169174%_
                                                      (map (lambda (_%g169166169169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169167169171%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind168580%_
                        _%$klass169147%_
                        _%$method-table169149%_
                        _%g169166169169%_
                        _%g169167169171%_)))
                   _%methods169151%_
                   _%$methods169155%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169176%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs168671%_)))
                                                     (_%$slots169180%_
                                                      (map (lambda (_%id169178%_)
                                                             (let ((__tmp172651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169178%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172651)))
                   _%slots169176%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169189%_
                                                      (for-each
                                                       (lambda (_%g169181169184%_
                                                                _%g169182169186%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs168671%_
                                                            _%g169181169184%_
                                                            _%g169182169186%_)))
                                                       _%slots169176%_
                                                       _%$slots169180%_))
                                                     (_%slots-bind169198%_
                                                      (map (lambda (_%g169190169193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169191169195%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind168581%_
                        _%$klass169147%_
                        _%g169190169193%_
                        _%g169191169195%_)))
                   _%slots169176%_
                   _%$slots169180%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body169204%_
                                                      (map (lambda (_%g169199169201%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs__%
                        '#f
                        _%L169118%_
                        _%$klass169147%_
                        _%method-calls168670%_
                        _%slot-refs168671%_
                        _%g169199169201%_)))
                   _%L169116%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169206%_
                                                      (let ((__tmp172652
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L169118%_ _%L169117%_)
                                 _%specializer-body169204%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp172652 _%stx168578%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169208%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl168582%_
                                                         _%$klass169147%_
                                                         _%$method-table169149%_
                                                         _%methods-bind169174%_
                                                         _%slots-bind169198%_
                                                         _%specializer-impl169206%_))))
                                                (let ((__tmp172654
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168651%_)))
                                                      (__tmp172653
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id169145%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp172654
                                                   '" => "
                                                   __tmp172653))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def168583%_
                                                   _%L168651%_
                                                   _%specializer-id169145%_
                                                   _%specializer-impl169208%_))))))
                                       (_%__kont171501171502%_
                                        (lambda () _%stx168578%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx171497171498%_))
                                       (let ((_%e169069169092%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx171497171498%_))))
                                         (let ((_%tl169067169097%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169069169092%_)))
                                               (_%hd169068169095%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169069169092%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl169067169097%_))
                                               (let ((_%e169072169100%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl169067169097%_))))
                                                 (let ((_%tl169070169105%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169072169100%_)))
                                                       (_%hd169071169103%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169072169100%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd169071169103%_))
                                                       (let ((_%e169075169108%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd169071169103%_))))
                 (let ((_%tl169073169113%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169075169108%_)))
                       (_%hd169074169111%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169075169108%_))))
                   (_%__kont171499171500%_
                    _%tl169070169105%_
                    _%tl169073169113%_
                    _%hd169074169111%_)))
               (_%__kont171501171502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont171501171502%_))))
                                       (_%__kont171501171502%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L168650%_))
                                 (let ()
                                   (let* ((_%g169215169234%_
                                           (lambda (_%g169216169231%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g169216169231%_))))
                                          (_%g169214169521%_
                                           (lambda (_%g169216169237%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g169216169237%_))
                                                 (let ((_%e169220169239%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g169216169237%_))))
                                                   (let ((_%hd169219169242%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169220169239%_)))
                                                         (_%tl169218169244%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169220169239%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl169218169244%_))
                                                         (let ((_g172655_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl169218169244%_ '0))))
                   (begin
                     (let ((_g172656_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g172655_)
                                  (##vector-length _g172655_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g172656_ 2)))
                           (error "Context expects 2 values" _g172656_)))
                     (let ((_%target169221169247%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172655_ 0)))
                           (_%tl169223169249%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172655_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169223169249%_))
                           (letrec ((_%loop169224169252%_
                                     (lambda (_%hd169222169255%_
                                              _%clause169228169257%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169222169255%_))
                                           (let ((_%e169225169260%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169222169255%_))))
                                             (let ((_%lp-hd169226169263%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169225169260%_)))
                                                   (_%lp-tl169227169265%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169225169260%_))))
                                               (let ((__tmp172657
                                                      (cons _%lp-hd169226169263%_
                                                            _%clause169228169257%_)))
                                                 (declare (not safe))
                                                 (_%loop169224169252%_
                                                  _%lp-tl169227169265%_
                                                  __tmp172657))))
                                           (let ((_%clause169229169268%_
                                                  (reverse _%clause169228169257%_)))
                                             ((lambda (_%L169271%_)
                                                (for-each
                                                 (lambda (_%clause169285%_)
                                                   (let* ((_%__stx171523171524%_
                                                           _%clause169285%_)
                                                          (_%g169288169303%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx171523171524%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont171525171526%_
                                                            (lambda (_%L169331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L169332%_
                             _%L169333%_)
                      (for-each
                       (lambda (_%g169348169350%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs__%
                            '#f
                            _%L169333%_
                            _%method-calls168670%_
                            _%slot-refs168671%_
                            _%g169348169350%_)))
                       _%L169331%_)))
                   (_%__kont171527171528%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx171523171524%_))
                   (let ((_%e169295169315%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx171523171524%_))))
                     (let ((_%tl169293169320%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169295169315%_)))
                           (_%hd169294169318%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169295169315%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169294169318%_))
                           (let ((_%e169298169323%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169294169318%_))))
                             (let ((_%tl169296169328%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169298169323%_)))
                                   (_%hd169297169326%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169298169323%_))))
                               (_%__kont171525171526%_
                                _%tl169293169320%_
                                _%tl169296169328%_
                                _%hd169297169326%_)))
                           (_%__kont171527171528%_))))
                   (_%__kont171527171528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp172658
                                                        (lambda (_%g169355169358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169356169360%_)
                  (cons _%g169355169358%_ _%g169356169360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172658
                                                    '()
                                                    _%L169271%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?168674%_))
                                                    _%stx168578%_
                                                    (let* ((_%specializer-id169369%_
                                                            (let* ((_%id169363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp172659
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168651%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp172659 '"::specialize")))
                           (_%specializer-id169366%_
                            (let ((__tmp172660
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx168578%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id169363%_
                               __tmp172660))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id169366%_))
                      _%specializer-id169366%_))
                   (_%$klass169371%_
                    (let ((__tmp172661
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172661)))
                   (_%$method-table169373%_
                    (let ((__tmp172662
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172662)))
                   (_%methods169375%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls168670%_)))
                   (_%$methods169379%_
                    (map (lambda (_%id169377%_)
                           (let ((__tmp172663 (gensym _%id169377%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172663)))
                         _%methods169375%_))
                   (_%_169388%_
                    (for-each
                     (lambda (_%g169380169383%_ _%g169381169385%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls168670%_
                          _%g169380169383%_
                          _%g169381169385%_)))
                     _%methods169375%_
                     _%$methods169379%_))
                   (_%methods-bind169398%_
                    (map (lambda (_%g169390169393%_ _%g169391169395%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind168580%_
                              _%$klass169371%_
                              _%$method-table169373%_
                              _%g169390169393%_
                              _%g169391169395%_)))
                         _%methods169375%_
                         _%$methods169379%_))
                   (_%slots169400%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs168671%_)))
                   (_%$slots169404%_
                    (map (lambda (_%id169402%_)
                           (let ((__tmp172664 (gensym _%id169402%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172664)))
                         _%slots169400%_))
                   (_%_169413%_
                    (for-each
                     (lambda (_%g169405169408%_ _%g169406169410%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs168671%_
                          _%g169405169408%_
                          _%g169406169410%_)))
                     _%slots169400%_
                     _%$slots169404%_))
                   (_%slots-bind169422%_
                    (map (lambda (_%g169414169417%_ _%g169415169419%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind168581%_
                              _%$klass169371%_
                              _%g169414169417%_
                              _%g169415169419%_)))
                         _%slots169400%_
                         _%$slots169404%_))
                   (_%specializer-clauses169514%_
                    (map (lambda (_%clause169424%_)
                           (let* ((_%__stx171543171544%_ _%clause169424%_)
                                  (_%g169427169442%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx171543171544%_)))))
                             (let ((_%__kont171545171546%_
                                    (lambda (_%L169470%_
                                             _%L169471%_
                                             _%L169472%_)
                                      (let ((_%body169502%_
                                             (map (lambda (_%g169497169499%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs__%
                                                       '#f
                                                       _%L169472%_
                                                       _%$klass169371%_
                                                       _%method-calls168670%_
                                                       _%slot-refs168671%_
                                                       _%g169497169499%_)))
                                                  _%L169470%_)))
                                        (cons (cons _%L169472%_ _%L169471%_)
                                              _%body169502%_))))
                                   (_%__kont171547171548%_
                                    (lambda () _%clause169424%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx171543171544%_))
                                   (let ((_%e169434169454%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx171543171544%_))))
                                     (let ((_%tl169432169459%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169434169454%_)))
                                           (_%hd169433169457%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169434169454%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169433169457%_))
                                           (let ((_%e169437169462%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169433169457%_))))
                                             (let ((_%tl169435169467%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169437169462%_)))
                                                   (_%hd169436169465%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169437169462%_))))
                                               (_%__kont171545171546%_
                                                _%tl169432169459%_
                                                _%tl169435169467%_
                                                _%hd169436169465%_)))
                                           (_%__kont171547171548%_))))
                                   (_%__kont171547171548%_)))))
                         (let ((__tmp172665
                                (lambda (_%g169506169509%_ _%g169507169511%_)
                                  (cons _%g169506169509%_ _%g169507169511%_))))
                           (declare (not safe))
                           (__foldr1 __tmp172665 '() _%L169271%_))))
                   (_%specializer-impl169516%_
                    (let ((__tmp172666
                           (cons '%#case-lambda
                                 _%specializer-clauses169514%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172666 _%stx168578%_)))
                   (_%specializer-impl169518%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl168582%_
                       _%$klass169371%_
                       _%$method-table169373%_
                       _%methods-bind169398%_
                       _%slots-bind169422%_
                       _%specializer-impl169516%_))))
              (let ((__tmp172668
                     (let () (declare (not safe)) (gx#stx-e _%L168651%_)))
                    (__tmp172667
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id169369%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp172668
                 '" => "
                 __tmp172667))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def168583%_
                 _%L168651%_
                 _%specializer-id169369%_
                 _%specializer-impl169518%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause169229169268%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop169224169252%_
                                _%target169221169247%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g169215169234%_ _%g169216169237%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g169215169234%_ _%g169216169237%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169215169234%_
                                                    _%g169216169237%_))))))
                                     (declare (not safe))
                                     (_%g169214169521%_ _%L168650%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L168650%_))
                                     (let ()
                                       (let* ((_%g169525169555%_
                                               (lambda (_%g169526169552%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g169526169552%_))))
                                              (_%g169524170164%_
                                               (lambda (_%g169526169558%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g169526169558%_))
                                                     (let ((_%e169532169560%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g169526169558%_))))
                                                       (let ((_%hd169531169563%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e169532169560%_)))
                     (_%tl169530169565%_
                      (let () (declare (not safe)) (##cdr _%e169532169560%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl169530169565%_))
                     (let ((_%e169535169568%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl169530169565%_))))
                       (let ((_%hd169534169571%_
                              (let ()
                                (declare (not safe))
                                (##car _%e169535169568%_)))
                             (_%tl169533169573%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e169535169568%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd169534169571%_))
                             (let ((_%e169538169576%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd169534169571%_))))
                               (let ((_%hd169537169579%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e169538169576%_)))
                                     (_%tl169536169581%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e169538169576%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd169537169579%_))
                                     (let ((_%e169541169584%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd169537169579%_))))
                                       (let ((_%hd169540169587%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169541169584%_)))
                                             (_%tl169539169589%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169541169584%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd169540169587%_))
                                             (let ((_%e169544169592%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd169540169587%_))))
                                               (let ((_%hd169543169595%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e169544169592%_)))
                                                     (_%tl169542169597%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e169544169592%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl169542169597%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl169539169589%_))
                                                         (let ((_%e169547169600%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl169539169589%_))))
                   (let ((_%hd169546169603%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169547169600%_)))
                         (_%tl169545169605%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169547169600%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl169545169605%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl169536169581%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl169533169573%_))
                                 (let ((_%e169550169608%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl169533169573%_))))
                                   (let ((_%hd169549169611%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e169550169608%_)))
                                         (_%tl169548169613%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e169550169608%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl169548169613%_))
                                         ((lambda (_%L169616%_
                                                   _%L169617%_
                                                   _%L169618%_)
                                            (let* ((_%g169642169660%_
                                                    (lambda (_%g169643169657%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169643169657%_))))
                                                   (_%g169641169711%_
                                                    (lambda (_%g169643169663%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169643169663%_))
                                                          (let ((_%e169649169665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169643169663%_))))
                    (let ((_%hd169648169668%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169649169665%_)))
                          (_%tl169647169670%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169649169665%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169647169670%_))
                          (let ((_%e169652169673%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169647169670%_))))
                            (let ((_%hd169651169676%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169652169673%_)))
                                  (_%tl169650169678%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169652169673%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169651169676%_))
                                  (let ((_%e169655169681%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169651169676%_))))
                                    (let ((_%hd169654169684%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169655169681%_)))
                                          (_%tl169653169686%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169655169681%_))))
                                      ((lambda (_%L169689%_
                                                _%L169690%_
                                                _%L169691%_)
                                         (for-each
                                          (lambda (_%g169706169708%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%L169691%_
                                               _%method-calls168670%_
                                               _%slot-refs168671%_
                                               _%g169706169708%_)))
                                          _%L169689%_))
                                       _%tl169650169678%_
                                       _%tl169653169686%_
                                       _%hd169654169684%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169642169660%_ _%g169643169663%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g169642169660%_ _%g169643169663%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169642169660%_ _%g169643169663%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169641169711%_ _%L169617%_))
                                            (let* ((_%g169714169733%_
                                                    (lambda (_%g169715169730%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169715169730%_))))
                                                   (_%g169713169852%_
                                                    (lambda (_%g169715169736%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169715169736%_))
                                                          (let ((_%e169719169738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169715169736%_))))
                    (let ((_%hd169718169741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169719169738%_)))
                          (_%tl169717169743%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169719169738%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl169717169743%_))
                          (let ((_g172669_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl169717169743%_
                                    '0))))
                            (begin
                              (let ((_g172670_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g172669_)
                                           (##vector-length _g172669_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g172670_ 2)))
                                    (error "Context expects 2 values"
                                           _g172670_)))
                              (let ((_%target169720169746%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172669_ 0)))
                                    (_%tl169722169748%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172669_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169722169748%_))
                                    (letrec ((_%loop169723169751%_
                                              (lambda (_%hd169721169754%_
                                                       _%clause169727169756%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169721169754%_))
                                                    (let ((_%e169724169759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169721169754%_))))
                                                      (let ((_%lp-hd169725169762%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169724169759%_)))
                    (_%lp-tl169726169764%_
                     (let () (declare (not safe)) (##cdr _%e169724169759%_))))
                (let ((__tmp172671
                       (cons _%lp-hd169725169762%_ _%clause169727169756%_)))
                  (declare (not safe))
                  (_%loop169723169751%_ _%lp-tl169726169764%_ __tmp172671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause169728169767%_
                                                           (reverse _%clause169727169756%_)))
                                                      ((lambda (_%L169770%_)
                                                         (for-each
                                                          (lambda (_%clause169783%_)
                                                            (let* ((_%g169785169800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g169786169797%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g169786169797%_))))
                           (_%g169784169842%_
                            (lambda (_%g169786169803%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g169786169803%_))
                                  (let ((_%e169792169805%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g169786169803%_))))
                                    (let ((_%hd169791169808%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169792169805%_)))
                                          (_%tl169790169810%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169792169805%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd169791169808%_))
                                          (let ((_%e169795169813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd169791169808%_))))
                                            (let ((_%hd169794169816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169795169813%_)))
                                                  (_%tl169793169818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169795169813%_))))
                                              ((lambda (_%L169821%_
                                                        _%L169822%_
                                                        _%L169823%_)
                                                 (for-each
                                                  (lambda (_%g169837169839%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%L169823%_
                                                       _%method-calls168670%_
                                                       _%slot-refs168671%_
                                                       _%g169837169839%_)))
                                                  _%L169821%_))
                                               _%tl169790169810%_
                                               _%tl169793169818%_
                                               _%hd169794169816%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169785169800%_
                                             _%g169786169803%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169785169800%_ _%g169786169803%_))))))
                      (declare (not safe))
                      (_%g169784169842%_ _%clause169783%_)))
                  (let ((__tmp172672
                         (lambda (_%g169844169847%_ _%g169845169849%_)
                           (cons _%g169844169847%_ _%g169845169849%_))))
                    (declare (not safe))
                    (__foldr1 __tmp172672 '() _%L169770%_))))
               _%clause169728169767%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop169723169751%_
                                         _%target169720169746%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169714169733%_
                                       _%g169715169736%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g169714169733%_ _%g169715169736%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169714169733%_ _%g169715169736%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169713169852%_ _%L169616%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?168674%_))
                                                _%stx168578%_
                                                (let* ((_%specializer-id169861%_
                                                        (let* ((_%id169855%_
                                                                (let ((__tmp172673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L168651%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp172673 '"::specialize")))
                       (_%specializer-id169858%_
                        (let ((__tmp172674
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx168578%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id169855%_ __tmp172674))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id169858%_))
                  _%specializer-id169858%_))
               (_%$klass169863%_
                (let ((__tmp172675
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172675)))
               (_%$method-table169865%_
                (let ((__tmp172676
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172676)))
               (_%methods169867%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls168670%_)))
               (_%$methods169871%_
                (map (lambda (_%id169869%_)
                       (let ((__tmp172677 (gensym _%id169869%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172677)))
                     _%methods169867%_))
               (_%_169880%_
                (for-each
                 (lambda (_%g169872169875%_ _%g169873169877%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls168670%_
                      _%g169872169875%_
                      _%g169873169877%_)))
                 _%methods169867%_
                 _%$methods169871%_))
               (_%methods-bind169890%_
                (map (lambda (_%g169882169885%_ _%g169883169887%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind168580%_
                          _%$klass169863%_
                          _%$method-table169865%_
                          _%g169882169885%_
                          _%g169883169887%_)))
                     _%methods169867%_
                     _%$methods169871%_))
               (_%slots169892%_
                (let () (declare (not safe)) (hash-keys _%slot-refs168671%_)))
               (_%$slots169896%_
                (map (lambda (_%id169894%_)
                       (let ((__tmp172678 (gensym _%id169894%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172678)))
                     _%slots169892%_))
               (_%_169905%_
                (for-each
                 (lambda (_%g169897169900%_ _%g169898169902%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs168671%_
                      _%g169897169900%_
                      _%g169898169902%_)))
                 _%slots169892%_
                 _%$slots169896%_))
               (_%slots-bind169914%_
                (map (lambda (_%g169906169909%_ _%g169907169911%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind168581%_
                          _%$klass169863%_
                          _%g169906169909%_
                          _%g169907169911%_)))
                     _%slots169892%_
                     _%$slots169896%_))
               (_%specializer-lambda-expr170000%_
                (let* ((_%g169916169934%_
                        (lambda (_%g169917169931%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169917169931%_))))
                       (_%g169915169997%_
                        (lambda (_%g169917169937%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169917169937%_))
                              (let ((_%e169923169939%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169917169937%_))))
                                (let ((_%hd169922169942%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169923169939%_)))
                                      (_%tl169921169944%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169923169939%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169921169944%_))
                                      (let ((_%e169926169947%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169921169944%_))))
                                        (let ((_%hd169925169950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169926169947%_)))
                                              (_%tl169924169952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169926169947%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169925169950%_))
                                              (let ((_%e169929169955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169925169950%_))))
                                                (let ((_%hd169928169958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169929169955%_)))
                                                      (_%tl169927169960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169929169955%_))))
                                                  ((lambda (_%L169963%_
                                                            _%L169964%_
                                                            _%L169965%_)
                                                     (let* ((_%body169995%_
                                                             (map (lambda (_%g169990169992%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs__%
                               '#f
                               _%L169965%_
                               _%$klass169863%_
                               _%method-calls168670%_
                               _%slot-refs168671%_
                               _%g169990169992%_)))
                          _%L169963%_))
                    (__tmp172679
                     (cons '%#lambda
                           (cons (cons _%L169965%_ _%L169964%_)
                                 _%body169995%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp172679 _%L169617%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl169924169952%_
                                                   _%tl169927169960%_
                                                   _%hd169928169958%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g169916169934%_
                                                 _%g169917169937%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169916169934%_
                                         _%g169917169937%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169916169934%_ _%g169917169937%_))))))
                  (declare (not safe))
                  (_%g169915169997%_ _%L169617%_)))
               (_%specializer-case-lambda-expr170157%_
                (let* ((_%g170002170021%_
                        (lambda (_%g170003170018%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g170003170018%_))))
                       (_%g170001170154%_
                        (lambda (_%g170003170024%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g170003170024%_))
                              (let ((_%e170007170026%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g170003170024%_))))
                                (let ((_%hd170006170029%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170007170026%_)))
                                      (_%tl170005170031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170007170026%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl170005170031%_))
                                      (let ((_g172680_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl170005170031%_
                                                '0))))
                                        (begin
                                          (let ((_g172681_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g172680_)
                                                       (##vector-length
                                                        _g172680_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g172681_ 2)))
                                                (error "Context expects 2 values"
                                                       _g172681_)))
                                          (let ((_%target170008170034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g172680_ 0)))
                                                (_%tl170010170036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g172680_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170010170036%_))
                                                (letrec ((_%loop170011170039%_
                                                          (lambda (_%hd170009170042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause170015170044%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd170009170042%_))
                        (let ((_%e170012170047%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd170009170042%_))))
                          (let ((_%lp-hd170013170050%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170012170047%_)))
                                (_%lp-tl170014170052%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170012170047%_))))
                            (let ((__tmp172682
                                   (cons _%lp-hd170013170050%_
                                         _%clause170015170044%_)))
                              (declare (not safe))
                              (_%loop170011170039%_
                               _%lp-tl170014170052%_
                               __tmp172682))))
                        (let ((_%clause170016170055%_
                               (reverse _%clause170015170044%_)))
                          ((lambda (_%L170058%_)
                             (let* ((_%clauses170152%_
                                     (map (lambda (_%clause170072%_)
                                            (let* ((_%__stx171563171564%_
                                                    _%clause170072%_)
                                                   (_%g170075170090%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx171563171564%_)))))
                                              (let ((_%__kont171565171566%_
                                                     (lambda (_%L170118%_
                                                              _%L170119%_
                                                              _%L170120%_)
                                                       (let ((_%body170140%_
                                                              (map (lambda (_%g170135170137%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs__%
                                '#f
                                _%L170120%_
                                _%$klass169863%_
                                _%method-calls168670%_
                                _%slot-refs168671%_
                                _%g170135170137%_)))
                           _%L170118%_)))
                 (cons (cons _%L170120%_ _%L170119%_) _%body170140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171567171568%_
                                                     (lambda ()
                                                       _%clause170072%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx171563171564%_))
                                                    (let ((_%e170082170102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx171563171564%_))))
                                                      (let ((_%tl170080170107%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170082170102%_)))
                    (_%hd170081170105%_
                     (let () (declare (not safe)) (##car _%e170082170102%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd170081170105%_))
                    (let ((_%e170085170110%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd170081170105%_))))
                      (let ((_%tl170083170115%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170085170110%_)))
                            (_%hd170084170113%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170085170110%_))))
                        (_%__kont171565171566%_
                         _%tl170080170107%_
                         _%tl170083170115%_
                         _%hd170084170113%_)))
                    (_%__kont171567171568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171567171568%_)))))
                                          (let ((__tmp172683
                                                 (lambda (_%g170144170147%_
                                                          _%g170145170149%_)
                                                   (cons _%g170144170147%_
                                                         _%g170145170149%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp172683
                                             '()
                                             _%L170058%_))))
                                    (__tmp172684
                                     (cons '%#case-lambda _%clauses170152%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp172684
                                _%L169616%_)))
                           _%clause170016170055%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop170011170039%_
                                                     _%target170008170034%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170002170021%_
                                                   _%g170003170024%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170002170021%_
                                         _%g170003170024%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170002170021%_ _%g170003170024%_))))))
                  (declare (not safe))
                  (_%g170001170154%_ _%L169616%_)))
               (_%specializer-impl170159%_
                (let ((__tmp172685
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L169618%_ '())
                                               (cons _%specializer-lambda-expr170000%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr170157%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp172685 _%stx168578%_)))
               (_%specializer-impl170161%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl168582%_
                   _%$klass169863%_
                   _%$method-table169865%_
                   _%methods-bind169890%_
                   _%slots-bind169914%_
                   _%specializer-impl170159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp172687
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L168651%_)))
                                                        (__tmp172686
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id169861%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp172687
                                                     '" => "
                                                     __tmp172686))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def168583%_
                                                     _%L168651%_
                                                     _%specializer-id169861%_
                                                     _%specializer-impl170161%_)))))
                                          _%hd169549169611%_
                                          _%hd169546169603%_
                                          _%hd169543169595%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g169525169555%_
                                            _%g169526169558%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g169525169555%_ _%g169526169558%_)))
                             (let ()
                               (declare (not safe))
                               (_%g169525169555%_ _%g169526169558%_)))
                         (let ()
                           (declare (not safe))
                           (_%g169525169555%_ _%g169526169558%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g169525169555%_ _%g169526169558%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169525169555%_
                                                        _%g169526169558%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169525169555%_
                                                _%g169526169558%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169525169555%_
                                        _%g169526169558%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g169525169555%_ _%g169526169558%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g169525169555%_ _%g169526169558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169525169555%_
                                                        _%g169526169558%_))))))
                                         (declare (not safe))
                                         (_%g169524170164%_ _%L168650%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L168650%_))
                                         (let ()
                                           (let* ((_%g170168170221%_
                                                   (lambda (_%g170169170218%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g170169170218%_))))
                                                  (_%g170167171364%_
                                                   (lambda (_%g170169170224%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g170169170224%_))
                                                         (let ((_%e170177170226%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g170169170224%_))))
                   (let ((_%hd170176170229%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170177170226%_)))
                         (_%tl170175170231%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170177170226%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd170176170229%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd170176170229%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl170175170231%_))
                                 (let ((_%e170180170234%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl170175170231%_))))
                                   (let ((_%hd170179170237%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e170180170234%_)))
                                         (_%tl170178170239%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e170180170234%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd170179170237%_))
                                         (let ((_%e170183170242%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd170179170237%_))))
                                           (let ((_%hd170182170245%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170183170242%_)))
                                                 (_%tl170181170247%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170183170242%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd170182170245%_))
                                                 (let ((_%e170186170250%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd170182170245%_))))
                                                   (let ((_%hd170185170253%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170186170250%_)))
                                                         (_%tl170184170255%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170186170250%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd170185170253%_))
                                                         (let ((_%e170189170258%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd170185170253%_))))
                   (let ((_%hd170188170261%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170189170258%_)))
                         (_%tl170187170263%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170189170258%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl170187170263%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl170184170255%_))
                             (let ((_%e170192170266%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl170184170255%_))))
                               (let ((_%hd170191170269%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170192170266%_)))
                                     (_%tl170190170271%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170192170266%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170191170269%_))
                                     (let ((_%e170195170274%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170191170269%_))))
                                       (let ((_%hd170194170277%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170195170274%_)))
                                             (_%tl170193170279%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170195170274%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd170194170277%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd170194170277%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl170193170279%_))
                                                     (let ((_%e170198170282%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl170193170279%_))))
                                                       (let ((_%hd170197170285%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e170198170282%_)))
                     (_%tl170196170287%_
                      (let () (declare (not safe)) (##cdr _%e170198170282%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd170197170285%_))
                     (let ((_%e170201170290%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd170197170285%_))))
                       (let ((_%hd170200170293%_
                              (let ()
                                (declare (not safe))
                                (##car _%e170201170290%_)))
                             (_%tl170199170295%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e170201170290%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd170200170293%_))
                             (let ((_%e170204170298%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd170200170293%_))))
                               (let ((_%hd170203170301%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170204170298%_)))
                                     (_%tl170202170303%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170204170298%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170203170301%_))
                                     (let ((_%e170207170306%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170203170301%_))))
                                       (let ((_%hd170206170309%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170207170306%_)))
                                             (_%tl170205170311%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170207170306%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl170205170311%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl170202170303%_))
                                                 (let ((_%e170210170314%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl170202170303%_))))
                                                   (let ((_%hd170209170317%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170210170314%_)))
                                                         (_%tl170208170319%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170210170314%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl170208170319%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl170199170295%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl170196170287%_))
                         (let ((_%e170213170322%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl170196170287%_))))
                           (let ((_%hd170212170325%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e170213170322%_)))
                                 (_%tl170211170327%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e170213170322%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl170211170327%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl170190170271%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl170181170247%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl170178170239%_))
                                             (let ((_%e170216170330%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl170178170239%_))))
                                               (let ((_%hd170215170333%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e170216170330%_)))
                                                     (_%tl170214170335%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e170216170330%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl170214170335%_))
                                                     ((lambda (_%L170338%_
                                                               _%L170339%_
                                                               _%L170340%_
                                                               _%L170341%_
                                                               _%L170342%_)
                                                        (let* ((_%g170382170444%_
                                                                (lambda (_%g170383170441%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g170383170441%_))))
                       (_%g170381171361%_
                        (lambda (_%g170383170447%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g170383170447%_))
                              (let ((_%e170391170449%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g170383170447%_))))
                                (let ((_%hd170390170452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170391170449%_)))
                                      (_%tl170389170454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170391170449%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170390170452%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd170390170452%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170389170454%_))
                                              (let ((_%e170394170457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170389170454%_))))
                                                (let ((_%hd170393170460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170394170457%_)))
                                                      (_%tl170392170462%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170394170457%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170392170462%_))
                                                      (let ((_%e170397170465%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170392170462%_))))
                (let ((_%hd170396170468%_
                       (let () (declare (not safe)) (##car _%e170397170465%_)))
                      (_%tl170395170470%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170397170465%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd170396170468%_))
                      (let ((_%e170400170473%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd170396170468%_))))
                        (let ((_%hd170399170476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170400170473%_)))
                              (_%tl170398170478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170400170473%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd170399170476%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd170399170476%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170398170478%_))
                                      (let ((_%e170403170481%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170398170478%_))))
                                        (let ((_%hd170402170484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170403170481%_)))
                                              (_%tl170401170486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170403170481%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170402170484%_))
                                              (let ((_%e170406170489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170402170484%_))))
                                                (let ((_%hd170405170492%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170406170489%_)))
                                                      (_%tl170404170494%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170406170489%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd170405170492%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd170405170492%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170404170494%_))
                      (let ((_%e170409170497%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170404170494%_))))
                        (let ((_%hd170408170500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170409170497%_)))
                              (_%tl170407170502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170409170497%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170407170502%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170401170486%_))
                                  (let ((_%e170412170505%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170401170486%_))))
                                    (let ((_%hd170411170508%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170412170505%_)))
                                          (_%tl170410170510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170412170505%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd170411170508%_))
                                          (let ((_%e170415170513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd170411170508%_))))
                                            (let ((_%hd170414170516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170415170513%_)))
                                                  (_%tl170413170518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170415170513%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd170414170516%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd170414170516%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170413170518%_))
                                                          (let ((_%e170418170521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170413170518%_))))
                    (let ((_%hd170417170524%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170418170521%_)))
                          (_%tl170416170526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170418170521%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170416170526%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170410170510%_))
                              (let ((_%e170421170529%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170410170510%_))))
                                (let ((_%hd170420170532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170421170529%_)))
                                      (_%tl170419170534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170421170529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170420170532%_))
                                      (let ((_%e170424170537%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170420170532%_))))
                                        (let ((_%hd170423170540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170424170537%_)))
                                              (_%tl170422170542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170424170537%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd170423170540%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd170423170540%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170422170542%_))
                                                      (let ((_%e170427170545%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170422170542%_))))
                (let ((_%hd170426170548%_
                       (let () (declare (not safe)) (##car _%e170427170545%_)))
                      (_%tl170425170550%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170427170545%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170425170550%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl170419170534%_))
                          (if (let ((__tmp172688
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl170419170534%_))))
                                (declare (not safe))
                                (##fx>= __tmp172688 '1))
                              (let ((_g172689_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl170419170534%_
                                        '1))))
                                (begin
                                  (let ((_g172690_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g172689_)
                                               (##vector-length _g172689_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g172690_ 2)))
                                        (error "Context expects 2 values"
                                               _g172690_)))
                                  (let ((_%target170428170553%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172689_ 0)))
                                        (_%tl170430170555%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172689_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170430170555%_))
                                        (let ((_%e170439170558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170430170555%_))))
                                          (let ((_%hd170438170561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170439170558%_)))
                                                (_%tl170437170563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170439170558%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170437170563%_))
                                                (letrec ((_%loop170431170566%_
                                                          (lambda (_%hd170429170569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref170435170571%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd170429170569%_))
                        (let ((_%e170432170574%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd170429170569%_))))
                          (let ((_%lp-hd170433170577%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170432170574%_)))
                                (_%lp-tl170434170579%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170432170574%_))))
                            (let ((__tmp172691
                                   (cons _%lp-hd170433170577%_
                                         _%kw-ref170435170571%_)))
                              (declare (not safe))
                              (_%loop170431170566%_
                               _%lp-tl170434170579%_
                               __tmp172691))))
                        (let ((_%kw-ref170436170582%_
                               (reverse _%kw-ref170435170571%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170395170470%_))
                              ((lambda (_%L170585%_
                                        _%L170586%_
                                        _%L170587%_
                                        _%L170588%_
                                        _%L170589%_)
                                 (let* ((_%kw-count170640%_
                                         (length (let ((__tmp172692
                                                        (lambda (_%g170632170635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170633170637%_)
                  (cons _%g170632170635%_ _%g170633170637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172692
                                                    '()
                                                    _%L170586%_))))
                                        (_%self-index170642%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count170640%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L170340%_))
                                       (let ()
                                         (let* ((_%g170646170660%_
                                                 (lambda (_%g170647170657%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g170647170657%_))))
                                                (_%g170645170777%_
                                                 (lambda (_%g170647170663%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g170647170663%_))
                                                       (let ((_%e170652170665%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g170647170663%_))))
                 (let ((_%hd170651170668%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170652170665%_)))
                       (_%tl170650170670%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170652170665%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl170650170670%_))
                       (let ((_%e170655170673%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170650170670%_))))
                         (let ((_%hd170654170676%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170655170673%_)))
                               (_%tl170653170678%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170655170673%_))))
                           ((lambda (_%L170681%_ _%L170682%_)
                              (let ((_%self170699%_
                                     (list-ref
                                      _%L170682%_
                                      _%self-index170642%_)))
                                (for-each
                                 (lambda (_%g170700170702%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs__%
                                      '#f
                                      _%self170699%_
                                      _%method-calls168670%_
                                      _%slot-refs168671%_
                                      _%g170700170702%_)))
                                 _%L170681%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?168674%_))
                                    _%stx168578%_
                                    (let* ((_%specializer-id170711%_
                                            (let* ((_%id170705%_
                                                    (let ((__tmp172693
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L168651%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp172693
                                                       '"::specialize")))
                                                   (_%specializer-id170708%_
                                                    (let ((__tmp172694
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx168578%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id170705%_
                                                       __tmp172694))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id170708%_))
                                              _%specializer-id170708%_))
                                           (_%$klass170713%_
                                            (let ((__tmp172695
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172695)))
                                           (_%$method-table170715%_
                                            (let ((__tmp172696
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172696)))
                                           (_%methods170717%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls168670%_)))
                                           (_%$methods170721%_
                                            (map (lambda (_%id170719%_)
                                                   (let ((__tmp172697
                                                          (gensym _%id170719%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172697)))
                                                 _%methods170717%_))
                                           (_%_170730%_
                                            (for-each
                                             (lambda (_%g170722170725%_
                                                      _%g170723170727%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls168670%_
                                                  _%g170722170725%_
                                                  _%g170723170727%_)))
                                             _%methods170717%_
                                             _%$methods170721%_))
                                           (_%methods-bind170740%_
                                            (map (lambda (_%g170732170735%_
                                                          _%g170733170737%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind168580%_
                                                      _%$klass170713%_
                                                      _%$method-table170715%_
                                                      _%g170732170735%_
                                                      _%g170733170737%_)))
                                                 _%methods170717%_
                                                 _%$methods170721%_))
                                           (_%slots170742%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs168671%_)))
                                           (_%$slots170746%_
                                            (map (lambda (_%id170744%_)
                                                   (let ((__tmp172698
                                                          (gensym _%id170744%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172698)))
                                                 _%slots170742%_))
                                           (_%_170755%_
                                            (for-each
                                             (lambda (_%g170747170750%_
                                                      _%g170748170752%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs168671%_
                                                  _%g170747170750%_
                                                  _%g170748170752%_)))
                                             _%slots170742%_
                                             _%$slots170746%_))
                                           (_%slots-bind170764%_
                                            (map (lambda (_%g170756170759%_
                                                          _%g170757170761%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind168581%_
                                                      _%$klass170713%_
                                                      _%g170756170759%_
                                                      _%g170757170761%_)))
                                                 _%slots170742%_
                                                 _%$slots170746%_))
                                           (_%specializer-impl170772%_
                                            (let* ((_%specializer-body170770%_
                                                    (map (lambda (_%g170765170767%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%self170699%_
                                                              _%$klass170713%_
                                                              _%method-calls168670%_
                                                              _%slot-refs168671%_
                                                              _%g170765170767%_)))
                                                         _%L170681%_))
                                                   (__tmp172699
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L170342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L170341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp172700
                                       (cons '%#lambda
                                             (cons _%L170682%_
                                                   _%specializer-body170770%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp172700
                                   _%L170340%_))
                                '()))
                    '())
              (cons _%L170339%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L170338%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp172699
                                               _%stx168578%_)))
                                           (_%specializer-impl170774%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl168582%_
                                               _%$klass170713%_
                                               _%$method-table170715%_
                                               _%methods-bind170740%_
                                               _%slots-bind170764%_
                                               _%specializer-impl170772%_))))
                                      (let ((__tmp172702
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L168651%_)))
                                            (__tmp172701
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id170711%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp172702
                                         '" => "
                                         __tmp172701))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def168583%_
                                         _%L168651%_
                                         _%specializer-id170711%_
                                         _%specializer-impl170774%_))))))
                            _%tl170653170678%_
                            _%hd170654170676%_)))
                       (let ()
                         (declare (not safe))
                         (_%g170646170660%_ _%g170647170663%_)))))
               (let ()
                 (declare (not safe))
                 (_%g170646170660%_ _%g170647170663%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g170645170777%_ _%L170340%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L170340%_))
                                           (let ()
                                             (let* ((_%g170781170811%_
                                                     (lambda (_%g170782170808%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g170782170808%_))))
                                                    (_%g170780171357%_
                                                     (lambda (_%g170782170814%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g170782170814%_))
                                                           (let ((_%e170788170816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g170782170814%_))))
                     (let ((_%hd170787170819%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170788170816%_)))
                           (_%tl170786170821%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170788170816%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl170786170821%_))
                           (let ((_%e170791170824%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl170786170821%_))))
                             (let ((_%hd170790170827%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170791170824%_)))
                                   (_%tl170789170829%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170791170824%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170790170827%_))
                                   (let ((_%e170794170832%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170790170827%_))))
                                     (let ((_%hd170793170835%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170794170832%_)))
                                           (_%tl170792170837%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170794170832%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd170793170835%_))
                                           (let ((_%e170797170840%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd170793170835%_))))
                                             (let ((_%hd170796170843%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e170797170840%_)))
                                                   (_%tl170795170845%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e170797170840%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd170796170843%_))
                                                   (let ((_%e170800170848%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd170796170843%_))))
                                                     (let ((_%hd170799170851%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170800170848%_)))
                                                           (_%tl170798170853%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170800170848%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl170798170853%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl170795170845%_))
                       (let ((_%e170803170856%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170795170845%_))))
                         (let ((_%hd170802170859%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170803170856%_)))
                               (_%tl170801170861%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170803170856%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl170801170861%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170792170837%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl170789170829%_))
                                       (let ((_%e170806170864%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl170789170829%_))))
                                         (let ((_%hd170805170867%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e170806170864%_)))
                                               (_%tl170804170869%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e170806170864%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl170804170869%_))
                                               ((lambda (_%L170872%_
                                                         _%L170873%_
                                                         _%L170874%_)
                                                  (let* ((_%g170898170912%_
                                                          (lambda (_%g170899170909%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170899170909%_))))
                                                         (_%g170897170953%_
                                                          (lambda (_%g170899170915%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170899170915%_))
                        (let ((_%e170904170917%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170899170915%_))))
                          (let ((_%hd170903170920%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170904170917%_)))
                                (_%tl170902170922%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170904170917%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170902170922%_))
                                (let ((_%e170907170925%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170902170922%_))))
                                  (let ((_%hd170906170928%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170907170925%_)))
                                        (_%tl170905170930%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170907170925%_))))
                                    ((lambda (_%L170933%_ _%L170934%_)
                                       (let ((_%self170947%_
                                              (list-ref
                                               _%L170934%_
                                               _%self-index170642%_)))
                                         (for-each
                                          (lambda (_%g170948170950%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%self170947%_
                                               _%method-calls168670%_
                                               _%slot-refs168671%_
                                               _%g170948170950%_)))
                                          _%L170933%_)))
                                     _%tl170905170930%_
                                     _%hd170906170928%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g170898170912%_ _%g170899170915%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170898170912%_ _%g170899170915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170897170953%_
                                                     _%L170873%_))
                                                  (let* ((_%g170956170975%_
                                                          (lambda (_%g170957170972%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170957170972%_))))
                                                         (_%g170955171080%_
                                                          (lambda (_%g170957170978%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170957170978%_))
                        (let ((_%e170961170980%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170957170978%_))))
                          (let ((_%hd170960170983%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170961170980%_)))
                                (_%tl170959170985%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170961170980%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl170959170985%_))
                                (let ((_g172703_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl170959170985%_
                                          '0))))
                                  (begin
                                    (let ((_g172704_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g172703_)
                                                 (##vector-length _g172703_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g172704_ 2)))
                                          (error "Context expects 2 values"
                                                 _g172704_)))
                                    (let ((_%target170962170988%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172703_ 0)))
                                          (_%tl170964170990%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172703_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170964170990%_))
                                          (letrec ((_%loop170965170993%_
                                                    (lambda (_%hd170963170996%_
                                                             _%clause170969170998%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd170963170996%_))
                                                          (let ((_%e170966171001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd170963170996%_))))
                    (let ((_%lp-hd170967171004%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170966171001%_)))
                          (_%lp-tl170968171006%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170966171001%_))))
                      (let ((__tmp172705
                             (cons _%lp-hd170967171004%_
                                   _%clause170969170998%_)))
                        (declare (not safe))
                        (_%loop170965170993%_
                         _%lp-tl170968171006%_
                         __tmp172705))))
                  (let ((_%clause170970171009%_
                         (reverse _%clause170969170998%_)))
                    ((lambda (_%L171012%_)
                       (for-each
                        (lambda (_%clause171025%_)
                          (let* ((_%g171027171038%_
                                  (lambda (_%g171028171035%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g171028171035%_))))
                                 (_%g171026171070%_
                                  (lambda (_%g171028171041%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g171028171041%_))
                                        (let ((_%e171033171043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g171028171041%_))))
                                          (let ((_%hd171032171046%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171033171043%_)))
                                                (_%tl171031171048%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171033171043%_))))
                                            ((lambda (_%L171051%_ _%L171052%_)
                                               (let ((_%self171064%_
                                                      (list-ref
                                                       _%L171052%_
                                                       _%self-index170642%_)))
                                                 (for-each
                                                  (lambda (_%g171065171067%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%self171064%_
                                                       _%method-calls168670%_
                                                       _%slot-refs168671%_
                                                       _%g171065171067%_)))
                                                  _%L171051%_)))
                                             _%tl171031171048%_
                                             _%hd171032171046%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g171027171038%_
                                           _%g171028171041%_))))))
                            (declare (not safe))
                            (_%g171026171070%_ _%clause171025%_)))
                        (let ((__tmp172706
                               (lambda (_%g171072171075%_ _%g171073171077%_)
                                 (cons _%g171072171075%_ _%g171073171077%_))))
                          (declare (not safe))
                          (__foldr1 __tmp172706 '() _%L171012%_))))
                     _%clause170970171009%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop170965170993%_
                                               _%target170962170988%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170956170975%_
                                             _%g170957170978%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g170956170975%_ _%g170957170978%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170956170975%_ _%g170957170978%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170955171080%_
                                                     _%L170872%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?168674%_))
                                                      _%stx168578%_
                                                      (let* ((_%specializer-id171089%_
                                                              (let* ((_%id171083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp172707
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L168651%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp172707 '"::specialize")))
                             (_%specializer-id171086%_
                              (let ((__tmp172708
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx168578%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id171083%_
                                 __tmp172708))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id171086%_))
                        _%specializer-id171086%_))
                     (_%$klass171091%_
                      (let ((__tmp172709
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172709)))
                     (_%$method-table171093%_
                      (let ((__tmp172710
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172710)))
                     (_%methods171095%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls168670%_)))
                     (_%$methods171099%_
                      (map (lambda (_%id171097%_)
                             (let ((__tmp172711 (gensym _%id171097%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172711)))
                           _%methods171095%_))
                     (_%_171108%_
                      (for-each
                       (lambda (_%g171100171103%_ _%g171101171105%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls168670%_
                            _%g171100171103%_
                            _%g171101171105%_)))
                       _%methods171095%_
                       _%$methods171099%_))
                     (_%methods-bind171118%_
                      (map (lambda (_%g171110171113%_ _%g171111171115%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind168580%_
                                _%$klass171091%_
                                _%$method-table171093%_
                                _%g171110171113%_
                                _%g171111171115%_)))
                           _%methods171095%_
                           _%$methods171099%_))
                     (_%slots171120%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs168671%_)))
                     (_%$slots171124%_
                      (map (lambda (_%id171122%_)
                             (let ((__tmp172712 (gensym _%id171122%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172712)))
                           _%slots171120%_))
                     (_%_171133%_
                      (for-each
                       (lambda (_%g171125171128%_ _%g171126171130%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs168671%_
                            _%g171125171128%_
                            _%g171126171130%_)))
                       _%slots171120%_
                       _%$slots171124%_))
                     (_%slots-bind171142%_
                      (map (lambda (_%g171134171137%_ _%g171135171139%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind168581%_
                                _%$klass171091%_
                                _%g171134171137%_
                                _%g171135171139%_)))
                           _%slots171120%_
                           _%$slots171124%_))
                     (_%specializer-lambda-expr171215%_
                      (let* ((_%g171144171158%_
                              (lambda (_%g171145171155%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171145171155%_))))
                             (_%g171143171212%_
                              (lambda (_%g171145171161%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171145171161%_))
                                    (let ((_%e171150171163%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171145171161%_))))
                                      (let ((_%hd171149171166%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171150171163%_)))
                                            (_%tl171148171168%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171150171163%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171148171168%_))
                                            (let ((_%e171153171171%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171148171168%_))))
                                              (let ((_%hd171152171174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171153171171%_)))
                                                    (_%tl171151171176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171153171171%_))))
                                                ((lambda (_%L171179%_
                                                          _%L171180%_)
                                                   (let* ((_%self171203%_
                                                           (list-ref
                                                            _%L171180%_
                                                            _%self-index170642%_))
                                                          (_%body171209%_
                                                           (map (lambda (_%g171204171206%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%self171203%_
                             _%$klass171091%_
                             _%method-calls168670%_
                             _%slot-refs168671%_
                             _%g171204171206%_)))
                        _%L171179%_))
                  (__tmp172713
                   (cons '%#lambda (cons _%L171180%_ _%body171209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172713
                                                      _%L170873%_)))
                                                 _%tl171151171176%_
                                                 _%hd171152171174%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g171144171158%_
                                               _%g171145171161%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171144171158%_
                                       _%g171145171161%_))))))
                        (declare (not safe))
                        (_%g171143171212%_ _%L170873%_)))
                     (_%specializer-case-lambda-expr171350%_
                      (let* ((_%g171217171236%_
                              (lambda (_%g171218171233%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171218171233%_))))
                             (_%g171216171347%_
                              (lambda (_%g171218171239%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171218171239%_))
                                    (let ((_%e171222171241%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171218171239%_))))
                                      (let ((_%hd171221171244%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171222171241%_)))
                                            (_%tl171220171246%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171222171241%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl171220171246%_))
                                            (let ((_g172714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl171220171246%_
                                                      '0))))
                                              (begin
                                                (let ((_g172715_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g172714_)
                                                             (##vector-length
                                                              _g172714_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g172715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g172715_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target171223171249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172714_
                                                          0)))
                                                      (_%tl171225171251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172714_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171225171251%_))
                                                      (letrec ((_%loop171226171254%_
                                                                (lambda (_%hd171224171257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause171230171259%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd171224171257%_))
                              (let ((_%e171227171262%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd171224171257%_))))
                                (let ((_%lp-hd171228171265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171227171262%_)))
                                      (_%lp-tl171229171267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171227171262%_))))
                                  (let ((__tmp172716
                                         (cons _%lp-hd171228171265%_
                                               _%clause171230171259%_)))
                                    (declare (not safe))
                                    (_%loop171226171254%_
                                     _%lp-tl171229171267%_
                                     __tmp172716))))
                              (let ((_%clause171231171270%_
                                     (reverse _%clause171230171259%_)))
                                ((lambda (_%L171273%_)
                                   (let* ((_%clauses171345%_
                                           (map (lambda (_%clause171287%_)
                                                  (let* ((_%g171289171300%_
                                                          (lambda (_%g171290171297%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g171290171297%_))))
                                                         (_%g171288171335%_
                                                          (lambda (_%g171290171303%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g171290171303%_))
                        (let ((_%e171295171305%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g171290171303%_))))
                          (let ((_%hd171294171308%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171295171305%_)))
                                (_%tl171293171310%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171295171305%_))))
                            ((lambda (_%L171313%_ _%L171314%_)
                               (let* ((_%self171326%_
                                       (list-ref
                                        _%L171314%_
                                        _%self-index170642%_))
                                      (_%body171332%_
                                       (map (lambda (_%g171327171329%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%self171326%_
                                                 _%$klass171091%_
                                                 _%method-calls168670%_
                                                 _%slot-refs168671%_
                                                 _%g171327171329%_)))
                                            _%L171313%_)))
                                 (cons _%L171314%_ _%body171332%_)))
                             _%tl171293171310%_
                             _%hd171294171308%_)))
                        (let ()
                          (declare (not safe))
                          (_%g171289171300%_ _%g171290171303%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g171288171335%_
                                                     _%clause171287%_)))
                                                (let ((__tmp172717
                                                       (lambda (_%g171337171340%_
                                                                _%g171338171342%_)
                                                         (cons _%g171337171340%_
                                                               _%g171338171342%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172717
                                                   '()
                                                   _%L171273%_))))
                                          (__tmp172718
                                           (cons '%#case-lambda
                                                 _%clauses171345%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp172718
                                      _%L170872%_)))
                                 _%clause171231171270%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop171226171254%_ _%target171223171249%_ '())))
              (let ()
                (declare (not safe))
                (_%g171217171236%_ _%g171218171239%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g171217171236%_
                                               _%g171218171239%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171217171236%_
                                       _%g171218171239%_))))))
                        (declare (not safe))
                        (_%g171216171347%_ _%L170872%_)))
                     (_%specializer-impl171352%_
                      (let ((__tmp172719
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L170342%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L170341%_ '())
                                           (cons (let ((__tmp172720
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L170874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr171215%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr171350%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp172720
                                                    _%stx168578%_))
                                                 '()))
                                     '())
                               (cons _%L170339%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L170338%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp172719 _%stx168578%_)))
                     (_%specializer-impl171354%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl168582%_
                         _%$klass171091%_
                         _%$method-table171093%_
                         _%methods-bind171118%_
                         _%slots-bind171142%_
                         _%specializer-impl171352%_))))
                (let ((__tmp172722
                       (let () (declare (not safe)) (gx#stx-e _%L168651%_)))
                      (__tmp172721
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id171089%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp172722
                   '" => "
                   __tmp172721))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def168583%_
                   _%L168651%_
                   _%specializer-id171089%_
                   _%specializer-impl171354%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd170805170867%_
                                                _%hd170802170859%_
                                                _%hd170799170851%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g170781170811%_
                                                  _%g170782170814%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g170781170811%_
                                          _%g170782170814%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170781170811%_ _%g170782170814%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g170781170811%_ _%g170782170814%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g170781170811%_ _%g170782170814%_)))
                   (let ()
                     (declare (not safe))
                     (_%g170781170811%_ _%g170782170814%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g170781170811%_
                                                      _%g170782170814%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g170781170811%_
                                              _%g170782170814%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170781170811%_ _%g170782170814%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g170781170811%_ _%g170782170814%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g170781170811%_ _%g170782170814%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g170780171357%_
                                                _%L170340%_)))
                                           (let () _%stx168578%_)))))
                               _%hd170438170561%_
                               _%kw-ref170436170582%_
                               _%hd170426170548%_
                               _%hd170417170524%_
                               _%hd170408170500%_)
                              (let ()
                                (declare (not safe))
                                (_%g170382170444%_ _%g170383170447%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop170431170566%_
                                                     _%target170428170553%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170382170444%_
                                                   _%g170383170447%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170382170444%_
                                           _%g170383170447%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g170382170444%_ _%g170383170447%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170382170444%_ _%g170383170447%_)))
                      (let ()
                        (declare (not safe))
                        (_%g170382170444%_ _%g170383170447%_)))))
              (let ()
                (declare (not safe))
                (_%g170382170444%_ _%g170383170447%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170382170444%_
                                                     _%g170383170447%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170382170444%_
                                                 _%g170383170447%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170382170444%_
                                         _%g170383170447%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170382170444%_ _%g170383170447%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170382170444%_ _%g170383170447%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g170382170444%_ _%g170383170447%_)))
              (let ()
                (declare (not safe))
                (_%g170382170444%_ _%g170383170447%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170382170444%_
                                                     _%g170383170447%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170382170444%_
                                             _%g170383170447%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170382170444%_ _%g170383170447%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170382170444%_ _%g170383170447%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170382170444%_ _%g170383170447%_)))
                  (let ()
                    (declare (not safe))
                    (_%g170382170444%_ _%g170383170447%_)))
              (let ()
                (declare (not safe))
                (_%g170382170444%_ _%g170383170447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170382170444%_
                                                 _%g170383170447%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170382170444%_ _%g170383170447%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170382170444%_ _%g170383170447%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170382170444%_ _%g170383170447%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170382170444%_ _%g170383170447%_)))))
              (let ()
                (declare (not safe))
                (_%g170382170444%_ _%g170383170447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170382170444%_
                                                 _%g170383170447%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170382170444%_
                                             _%g170383170447%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170382170444%_
                                         _%g170383170447%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170382170444%_ _%g170383170447%_))))))
                  (declare (not safe))
                  (_%g170381171361%_ _%L170339%_)))
              _%hd170215170333%_
              _%hd170212170325%_
              _%hd170209170317%_
              _%hd170206170309%_
              _%hd170188170261%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170168170221%_
                                                        _%g170169170224%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170168170221%_
                                                _%g170169170224%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170168170221%_
                                            _%g170169170224%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170168170221%_ _%g170169170224%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170168170221%_ _%g170169170224%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g170168170221%_ _%g170169170224%_)))
                     (let ()
                       (declare (not safe))
                       (_%g170168170221%_ _%g170169170224%_)))
                 (let ()
                   (declare (not safe))
                   (_%g170168170221%_ _%g170169170224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170168170221%_
                                                    _%g170169170224%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170168170221%_
                                                _%g170169170224%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170168170221%_
                                        _%g170169170224%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170168170221%_ _%g170169170224%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g170168170221%_ _%g170169170224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170168170221%_
                                                        _%g170169170224%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170168170221%_
                                                    _%g170169170224%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170168170221%_
                                                _%g170169170224%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170168170221%_
                                        _%g170169170224%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170168170221%_ _%g170169170224%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170168170221%_ _%g170169170224%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170168170221%_ _%g170169170224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170168170221%_
                                                    _%g170169170224%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170168170221%_
                                            _%g170169170224%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170168170221%_ _%g170169170224%_)))
                             (let ()
                               (declare (not safe))
                               (_%g170168170221%_ _%g170169170224%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170168170221%_ _%g170169170224%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170168170221%_ _%g170169170224%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g170167171364%_ _%L168650%_)))
                                         (let () _%stx168578%_)))))))))
                  (_%__kont171587171588%_ (lambda () _%stx168578%_)))
              (let ((_%__match171616171617%_
                     (lambda (_%e168592168618%_
                              _%hd168591168621%_
                              _%tl168590168623%_
                              _%e168595168626%_
                              _%hd168594168629%_
                              _%tl168593168631%_
                              _%e168598168634%_
                              _%hd168597168637%_
                              _%tl168596168639%_
                              _%e168601168642%_
                              _%hd168600168645%_
                              _%tl168599168647%_)
                       (let ((_%L168650%_ _%hd168600168645%_)
                             (_%L168651%_ _%hd168597168637%_))
                         (if (let ((__tmp172723
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168651%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp172723))
                             (_%__kont171585171586%_ _%L168650%_ _%L168651%_)
                             (_%__kont171587171588%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171583171584%_))
                    (let ((_%e168592168618%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171583171584%_))))
                      (let ((_%tl168590168623%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168592168618%_)))
                            (_%hd168591168621%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168592168618%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168590168623%_))
                            (let ((_%e168595168626%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168590168623%_))))
                              (let ((_%tl168593168631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168595168626%_)))
                                    (_%hd168594168629%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168595168626%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd168594168629%_))
                                    (let ((_%e168598168634%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd168594168629%_))))
                                      (let ((_%tl168596168639%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168598168634%_)))
                                            (_%hd168597168637%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168598168634%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168596168639%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168593168631%_))
                                                (let ((_%e168601168642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168593168631%_))))
                                                  (let ((_%tl168599168647%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168601168642%_)))
                                                        (_%hd168600168645%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168601168642%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168599168647%_))
                                                        (_%__match171616171617%_
                                                         _%e168592168618%_
                                                         _%hd168591168621%_
                                                         _%tl168590168623%_
                                                         _%e168595168626%_
                                                         _%hd168594168629%_
                                                         _%tl168593168631%_
                                                         _%e168598168634%_
                                                         _%hd168597168637%_
                                                         _%tl168596168639%_
                                                         _%e168601168642%_
                                                         _%hd168600168645%_
                                                         _%tl168599168647%_)
                                                        (_%__kont171587171588%_))))
                                                (_%__kont171587171588%_))
                                            (_%__kont171587171588%_))))
                                    (_%__kont171587171588%_))))
                            (_%__kont171587171588%_))))
                    (_%__kont171587171588%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self167538%_ _%stx167539%_)
        (let* ((_%__stx171619171620%_ _%stx167539%_)
               (_%g167547167769%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171619171620%_)))))
          (let ((_%__kont171621171622%_
                 (lambda (_%L168526%_ _%L168527%_ _%L168528%_ _%L168529%_)
                   (let ((__tmp172725
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167538%_ 'methods)))
                         (__tmp172724
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168527%_))))
                     (declare (not safe))
                     (hash-put! __tmp172725 __tmp172724 '#t))
                   (for-each
                    (lambda (_%g168562168564%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167538%_ _%g168562168564%_)))
                    (let ((__tmp172726
                           (lambda (_%g168566168569%_ _%g168567168571%_)
                             (cons _%g168566168569%_ _%g168567168571%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172726 '() _%L168526%_)))))
                (_%__kont171625171626%_
                 (lambda (_%L168361%_
                          _%L168362%_
                          _%L168363%_
                          _%L168364%_
                          _%L168365%_)
                   (let ((__tmp172728
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167538%_ 'methods)))
                         (__tmp172727
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168362%_))))
                     (declare (not safe))
                     (hash-put! __tmp172728 __tmp172727 '#t))
                   (for-each
                    (lambda (_%g168405168407%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167538%_ _%g168405168407%_)))
                    (let ((__tmp172729
                           (lambda (_%g168409168412%_ _%g168410168414%_)
                             (cons _%g168409168412%_ _%g168410168414%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172729 '() _%L168361%_)))))
                (_%__kont171629171630%_
                 (lambda (_%L168194%_ _%L168195%_ _%L168196%_)
                   (let ((__tmp172731
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167538%_ 'slots)))
                         (__tmp172730
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168194%_))))
                     (declare (not safe))
                     (hash-put! __tmp172731 __tmp172730 '#t))))
                (_%__kont171631171632%_
                 (lambda (_%L168071%_ _%L168072%_ _%L168073%_ _%L168074%_)
                   (let ((__tmp172733
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167538%_ 'slots)))
                         (__tmp172732
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168072%_))))
                     (declare (not safe))
                     (hash-put! __tmp172733 __tmp172732 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self167538%_ _%L168071%_))))
                (_%__kont171633171634%_
                 (lambda (_%L167945%_ _%L167946%_)
                   (let* ((_%accessor167968%_
                           (let ((__tmp172734
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167946%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172734)))
                          (_%klass167970%_
                           (let ((__tmp172735
                                  (##structure-ref
                                   _%accessor167968%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167539%_
                              __tmp172735)))
                          (_%slot167972%_
                           (##structure-ref
                            _%accessor167968%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp172736
                                     (##structure-ref
                                      _%accessor167968%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172736))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167970%_
                                     _%slot167972%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167970%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172738
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167538%_ 'slots)))
                               (__tmp172737
                                (##structure-ref
                                 _%accessor167968%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp172738 __tmp172737 '#t))))))
                (_%__kont171635171636%_
                 (lambda (_%L167845%_ _%L167846%_ _%L167847%_)
                   (let* ((_%mutator167874%_
                           (let ((__tmp172739
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167847%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172739)))
                          (_%klass167876%_
                           (let ((__tmp172740
                                  (##structure-ref
                                   _%mutator167874%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167539%_
                              __tmp172740)))
                          (_%slot167878%_
                           (##structure-ref
                            _%mutator167874%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp172741
                                     (##structure-ref
                                      _%mutator167874%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172741))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167876%_
                                     _%slot167878%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167876%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172742
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167538%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp172742 _%slot167878%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self167538%_ _%L167845%_)))))
                (_%__kont171637171638%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self167538%_ _%stx167539%_)))))
            (let* ((_%__match172118172119%_
                    (lambda (_%e167743167781%_
                             _%hd167742167784%_
                             _%tl167741167786%_
                             _%e167746167789%_
                             _%hd167745167792%_
                             _%tl167744167794%_
                             _%e167749167797%_
                             _%hd167748167800%_
                             _%tl167747167802%_
                             _%e167752167805%_
                             _%hd167751167808%_
                             _%tl167750167810%_
                             _%e167755167813%_
                             _%hd167754167816%_
                             _%tl167753167818%_
                             _%e167758167821%_
                             _%hd167757167824%_
                             _%tl167756167826%_
                             _%e167761167829%_
                             _%hd167760167832%_
                             _%tl167759167834%_
                             _%e167764167837%_
                             _%hd167763167840%_
                             _%tl167762167842%_)
                      (let ((_%L167845%_ _%hd167763167840%_)
                            (_%L167846%_ _%hd167760167832%_)
                            (_%L167847%_ _%hd167751167808%_))
                        (if (and (let ((__tmp172743
                                        (let ((__tmp172744
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167847%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172744))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172743
                                    'gxc#!mutator::t))
                                 (let ((__tmp172745
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167538%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167846%_
                                    __tmp172745)))
                            (_%__kont171635171636%_
                             _%L167845%_
                             _%L167846%_
                             _%L167847%_)
                            (_%__kont171637171638%_)))))
                   (_%__match172116172117%_
                    (lambda (_%e167743167781%_
                             _%hd167742167784%_
                             _%tl167741167786%_
                             _%e167746167789%_
                             _%hd167745167792%_
                             _%tl167744167794%_
                             _%e167749167797%_
                             _%hd167748167800%_
                             _%tl167747167802%_
                             _%e167752167805%_
                             _%hd167751167808%_
                             _%tl167750167810%_
                             _%e167755167813%_
                             _%hd167754167816%_
                             _%tl167753167818%_
                             _%e167758167821%_
                             _%hd167757167824%_
                             _%tl167756167826%_
                             _%e167761167829%_
                             _%hd167760167832%_
                             _%tl167759167834%_
                             _%e167764167837%_
                             _%hd167763167840%_
                             _%tl167762167842%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167762167842%_))
                          (_%__match172118172119%_
                           _%e167743167781%_
                           _%hd167742167784%_
                           _%tl167741167786%_
                           _%e167746167789%_
                           _%hd167745167792%_
                           _%tl167744167794%_
                           _%e167749167797%_
                           _%hd167748167800%_
                           _%tl167747167802%_
                           _%e167752167805%_
                           _%hd167751167808%_
                           _%tl167750167810%_
                           _%e167755167813%_
                           _%hd167754167816%_
                           _%tl167753167818%_
                           _%e167758167821%_
                           _%hd167757167824%_
                           _%tl167756167826%_
                           _%e167761167829%_
                           _%hd167760167832%_
                           _%tl167759167834%_
                           _%e167764167837%_
                           _%hd167763167840%_
                           _%tl167762167842%_)
                          (_%__kont171637171638%_))))
                   (_%__match172110172111%_
                    (lambda (_%e167743167781%_
                             _%hd167742167784%_
                             _%tl167741167786%_
                             _%e167746167789%_
                             _%hd167745167792%_
                             _%tl167744167794%_
                             _%e167749167797%_
                             _%hd167748167800%_
                             _%tl167747167802%_
                             _%e167752167805%_
                             _%hd167751167808%_
                             _%tl167750167810%_
                             _%e167755167813%_
                             _%hd167754167816%_
                             _%tl167753167818%_
                             _%e167758167821%_
                             _%hd167757167824%_
                             _%tl167756167826%_
                             _%e167761167829%_
                             _%hd167760167832%_
                             _%tl167759167834%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167753167818%_))
                          (let ((_%e167764167837%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167753167818%_))))
                            (let ((_%tl167762167842%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167764167837%_)))
                                  (_%hd167763167840%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167764167837%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167762167842%_))
                                  (_%__match172118172119%_
                                   _%e167743167781%_
                                   _%hd167742167784%_
                                   _%tl167741167786%_
                                   _%e167746167789%_
                                   _%hd167745167792%_
                                   _%tl167744167794%_
                                   _%e167749167797%_
                                   _%hd167748167800%_
                                   _%tl167747167802%_
                                   _%e167752167805%_
                                   _%hd167751167808%_
                                   _%tl167750167810%_
                                   _%e167755167813%_
                                   _%hd167754167816%_
                                   _%tl167753167818%_
                                   _%e167758167821%_
                                   _%hd167757167824%_
                                   _%tl167756167826%_
                                   _%e167761167829%_
                                   _%hd167760167832%_
                                   _%tl167759167834%_
                                   _%e167764167837%_
                                   _%hd167763167840%_
                                   _%tl167762167842%_)
                                  (_%__kont171637171638%_))))
                          (_%__kont171637171638%_))))
                   (_%__match172056172057%_
                    (lambda (_%e167719167889%_
                             _%hd167718167892%_
                             _%tl167717167894%_
                             _%e167722167897%_
                             _%hd167721167900%_
                             _%tl167720167902%_
                             _%e167725167905%_
                             _%hd167724167908%_
                             _%tl167723167910%_
                             _%e167728167913%_
                             _%hd167727167916%_
                             _%tl167726167918%_
                             _%e167731167921%_
                             _%hd167730167924%_
                             _%tl167729167926%_
                             _%e167734167929%_
                             _%hd167733167932%_
                             _%tl167732167934%_
                             _%e167737167937%_
                             _%hd167736167940%_
                             _%tl167735167942%_)
                      (let ((_%L167945%_ _%hd167736167940%_)
                            (_%L167946%_ _%hd167727167916%_))
                        (if (and (let ((__tmp172746
                                        (let ((__tmp172747
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167946%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172747))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172746
                                    'gxc#!accessor::t))
                                 (let ((__tmp172748
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167538%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167945%_
                                    __tmp172748)))
                            (_%__kont171633171634%_ _%L167945%_ _%L167946%_)
                            (_%__kont171637171638%_)))))
                   (_%__match172054172055%_
                    (lambda (_%e167719167889%_
                             _%hd167718167892%_
                             _%tl167717167894%_
                             _%e167722167897%_
                             _%hd167721167900%_
                             _%tl167720167902%_
                             _%e167725167905%_
                             _%hd167724167908%_
                             _%tl167723167910%_
                             _%e167728167913%_
                             _%hd167727167916%_
                             _%tl167726167918%_
                             _%e167731167921%_
                             _%hd167730167924%_
                             _%tl167729167926%_
                             _%e167734167929%_
                             _%hd167733167932%_
                             _%tl167732167934%_
                             _%e167737167937%_
                             _%hd167736167940%_
                             _%tl167735167942%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167729167926%_))
                          (_%__match172056172057%_
                           _%e167719167889%_
                           _%hd167718167892%_
                           _%tl167717167894%_
                           _%e167722167897%_
                           _%hd167721167900%_
                           _%tl167720167902%_
                           _%e167725167905%_
                           _%hd167724167908%_
                           _%tl167723167910%_
                           _%e167728167913%_
                           _%hd167727167916%_
                           _%tl167726167918%_
                           _%e167731167921%_
                           _%hd167730167924%_
                           _%tl167729167926%_
                           _%e167734167929%_
                           _%hd167733167932%_
                           _%tl167732167934%_
                           _%e167737167937%_
                           _%hd167736167940%_
                           _%tl167735167942%_)
                          (_%__match172110172111%_
                           _%e167719167889%_
                           _%hd167718167892%_
                           _%tl167717167894%_
                           _%e167722167897%_
                           _%hd167721167900%_
                           _%tl167720167902%_
                           _%e167725167905%_
                           _%hd167724167908%_
                           _%tl167723167910%_
                           _%e167728167913%_
                           _%hd167727167916%_
                           _%tl167726167918%_
                           _%e167731167921%_
                           _%hd167730167924%_
                           _%tl167729167926%_
                           _%e167734167929%_
                           _%hd167733167932%_
                           _%tl167732167934%_
                           _%e167737167937%_
                           _%hd167736167940%_
                           _%tl167735167942%_))))
                   (_%__match172000172001%_
                    (lambda (_%e167684167983%_
                             _%hd167683167986%_
                             _%tl167682167988%_
                             _%e167687167991%_
                             _%hd167686167994%_
                             _%tl167685167996%_
                             _%e167690167999%_
                             _%hd167689168002%_
                             _%tl167688168004%_
                             _%e167693168007%_
                             _%hd167692168010%_
                             _%tl167691168012%_
                             _%e167696168015%_
                             _%hd167695168018%_
                             _%tl167694168020%_
                             _%e167699168023%_
                             _%hd167698168026%_
                             _%tl167697168028%_
                             _%e167702168031%_
                             _%hd167701168034%_
                             _%tl167700168036%_
                             _%e167705168039%_
                             _%hd167704168042%_
                             _%tl167703168044%_
                             _%e167708168047%_
                             _%hd167707168050%_
                             _%tl167706168052%_
                             _%e167711168055%_
                             _%hd167710168058%_
                             _%tl167709168060%_
                             _%e167714168063%_
                             _%hd167713168066%_
                             _%tl167712168068%_)
                      (let ((_%L168071%_ _%hd167713168066%_)
                            (_%L168072%_ _%hd167710168058%_)
                            (_%L168073%_ _%hd167701168034%_)
                            (_%L168074%_ _%hd167692168010%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168074%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168074%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp172749
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167538%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168073%_
                                    __tmp172749)))
                            (_%__kont171631171632%_
                             _%L168071%_
                             _%L168072%_
                             _%L168073%_
                             _%L168074%_)
                            (_%__kont171637171638%_)))))
                   (_%__match171992171993%_
                    (lambda (_%e167684167983%_
                             _%hd167683167986%_
                             _%tl167682167988%_
                             _%e167687167991%_
                             _%hd167686167994%_
                             _%tl167685167996%_
                             _%e167690167999%_
                             _%hd167689168002%_
                             _%tl167688168004%_
                             _%e167693168007%_
                             _%hd167692168010%_
                             _%tl167691168012%_
                             _%e167696168015%_
                             _%hd167695168018%_
                             _%tl167694168020%_
                             _%e167699168023%_
                             _%hd167698168026%_
                             _%tl167697168028%_
                             _%e167702168031%_
                             _%hd167701168034%_
                             _%tl167700168036%_
                             _%e167705168039%_
                             _%hd167704168042%_
                             _%tl167703168044%_
                             _%e167708168047%_
                             _%hd167707168050%_
                             _%tl167706168052%_
                             _%e167711168055%_
                             _%hd167710168058%_
                             _%tl167709168060%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167703168044%_))
                          (let ((_%e167714168063%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167703168044%_))))
                            (let ((_%tl167712168068%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167714168063%_)))
                                  (_%hd167713168066%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167714168063%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167712168068%_))
                                  (_%__match172000172001%_
                                   _%e167684167983%_
                                   _%hd167683167986%_
                                   _%tl167682167988%_
                                   _%e167687167991%_
                                   _%hd167686167994%_
                                   _%tl167685167996%_
                                   _%e167690167999%_
                                   _%hd167689168002%_
                                   _%tl167688168004%_
                                   _%e167693168007%_
                                   _%hd167692168010%_
                                   _%tl167691168012%_
                                   _%e167696168015%_
                                   _%hd167695168018%_
                                   _%tl167694168020%_
                                   _%e167699168023%_
                                   _%hd167698168026%_
                                   _%tl167697168028%_
                                   _%e167702168031%_
                                   _%hd167701168034%_
                                   _%tl167700168036%_
                                   _%e167705168039%_
                                   _%hd167704168042%_
                                   _%tl167703168044%_
                                   _%e167708168047%_
                                   _%hd167707168050%_
                                   _%tl167706168052%_
                                   _%e167711168055%_
                                   _%hd167710168058%_
                                   _%tl167709168060%_
                                   _%e167714168063%_
                                   _%hd167713168066%_
                                   _%tl167712168068%_)
                                  (_%__kont171637171638%_))))
                          (_%__match172116172117%_
                           _%e167684167983%_
                           _%hd167683167986%_
                           _%tl167682167988%_
                           _%e167687167991%_
                           _%hd167686167994%_
                           _%tl167685167996%_
                           _%e167690167999%_
                           _%hd167689168002%_
                           _%tl167688168004%_
                           _%e167693168007%_
                           _%hd167692168010%_
                           _%tl167691168012%_
                           _%e167696168015%_
                           _%hd167695168018%_
                           _%tl167694168020%_
                           _%e167699168023%_
                           _%hd167698168026%_
                           _%tl167697168028%_
                           _%e167702168031%_
                           _%hd167701168034%_
                           _%tl167700168036%_
                           _%e167705168039%_
                           _%hd167704168042%_
                           _%tl167703168044%_))))
                   (_%__match171914171915%_
                    (lambda (_%e167650168114%_
                             _%hd167649168117%_
                             _%tl167648168119%_
                             _%e167653168122%_
                             _%hd167652168125%_
                             _%tl167651168127%_
                             _%e167656168130%_
                             _%hd167655168133%_
                             _%tl167654168135%_
                             _%e167659168138%_
                             _%hd167658168141%_
                             _%tl167657168143%_
                             _%e167662168146%_
                             _%hd167661168149%_
                             _%tl167660168151%_
                             _%e167665168154%_
                             _%hd167664168157%_
                             _%tl167663168159%_
                             _%e167668168162%_
                             _%hd167667168165%_
                             _%tl167666168167%_
                             _%e167671168170%_
                             _%hd167670168173%_
                             _%tl167669168175%_
                             _%e167674168178%_
                             _%hd167673168181%_
                             _%tl167672168183%_
                             _%e167677168186%_
                             _%hd167676168189%_
                             _%tl167675168191%_)
                      (let ((_%L168194%_ _%hd167676168189%_)
                            (_%L168195%_ _%hd167667168165%_)
                            (_%L168196%_ _%hd167658168141%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168196%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168196%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp172750
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167538%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168195%_
                                    __tmp172750)))
                            (_%__kont171629171630%_
                             _%L168194%_
                             _%L168195%_
                             _%L168196%_)
                            (_%__match172118172119%_
                             _%e167650168114%_
                             _%hd167649168117%_
                             _%tl167648168119%_
                             _%e167653168122%_
                             _%hd167652168125%_
                             _%tl167651168127%_
                             _%e167656168130%_
                             _%hd167655168133%_
                             _%tl167654168135%_
                             _%e167659168138%_
                             _%hd167658168141%_
                             _%tl167657168143%_
                             _%e167662168146%_
                             _%hd167661168149%_
                             _%tl167660168151%_
                             _%e167665168154%_
                             _%hd167664168157%_
                             _%tl167663168159%_
                             _%e167668168162%_
                             _%hd167667168165%_
                             _%tl167666168167%_
                             _%e167671168170%_
                             _%hd167670168173%_
                             _%tl167669168175%_)))))
                   (_%__match171912171913%_
                    (lambda (_%e167650168114%_
                             _%hd167649168117%_
                             _%tl167648168119%_
                             _%e167653168122%_
                             _%hd167652168125%_
                             _%tl167651168127%_
                             _%e167656168130%_
                             _%hd167655168133%_
                             _%tl167654168135%_
                             _%e167659168138%_
                             _%hd167658168141%_
                             _%tl167657168143%_
                             _%e167662168146%_
                             _%hd167661168149%_
                             _%tl167660168151%_
                             _%e167665168154%_
                             _%hd167664168157%_
                             _%tl167663168159%_
                             _%e167668168162%_
                             _%hd167667168165%_
                             _%tl167666168167%_
                             _%e167671168170%_
                             _%hd167670168173%_
                             _%tl167669168175%_
                             _%e167674168178%_
                             _%hd167673168181%_
                             _%tl167672168183%_
                             _%e167677168186%_
                             _%hd167676168189%_
                             _%tl167675168191%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167669168175%_))
                          (_%__match171914171915%_
                           _%e167650168114%_
                           _%hd167649168117%_
                           _%tl167648168119%_
                           _%e167653168122%_
                           _%hd167652168125%_
                           _%tl167651168127%_
                           _%e167656168130%_
                           _%hd167655168133%_
                           _%tl167654168135%_
                           _%e167659168138%_
                           _%hd167658168141%_
                           _%tl167657168143%_
                           _%e167662168146%_
                           _%hd167661168149%_
                           _%tl167660168151%_
                           _%e167665168154%_
                           _%hd167664168157%_
                           _%tl167663168159%_
                           _%e167668168162%_
                           _%hd167667168165%_
                           _%tl167666168167%_
                           _%e167671168170%_
                           _%hd167670168173%_
                           _%tl167669168175%_
                           _%e167674168178%_
                           _%hd167673168181%_
                           _%tl167672168183%_
                           _%e167677168186%_
                           _%hd167676168189%_
                           _%tl167675168191%_)
                          (_%__match171992171993%_
                           _%e167650168114%_
                           _%hd167649168117%_
                           _%tl167648168119%_
                           _%e167653168122%_
                           _%hd167652168125%_
                           _%tl167651168127%_
                           _%e167656168130%_
                           _%hd167655168133%_
                           _%tl167654168135%_
                           _%e167659168138%_
                           _%hd167658168141%_
                           _%tl167657168143%_
                           _%e167662168146%_
                           _%hd167661168149%_
                           _%tl167660168151%_
                           _%e167665168154%_
                           _%hd167664168157%_
                           _%tl167663168159%_
                           _%e167668168162%_
                           _%hd167667168165%_
                           _%tl167666168167%_
                           _%e167671168170%_
                           _%hd167670168173%_
                           _%tl167669168175%_
                           _%e167674168178%_
                           _%hd167673168181%_
                           _%tl167672168183%_
                           _%e167677168186%_
                           _%hd167676168189%_
                           _%tl167675168191%_))))
                   (_%__match171902171903%_
                    (lambda (_%e167650168114%_
                             _%hd167649168117%_
                             _%tl167648168119%_
                             _%e167653168122%_
                             _%hd167652168125%_
                             _%tl167651168127%_
                             _%e167656168130%_
                             _%hd167655168133%_
                             _%tl167654168135%_
                             _%e167659168138%_
                             _%hd167658168141%_
                             _%tl167657168143%_
                             _%e167662168146%_
                             _%hd167661168149%_
                             _%tl167660168151%_
                             _%e167665168154%_
                             _%hd167664168157%_
                             _%tl167663168159%_
                             _%e167668168162%_
                             _%hd167667168165%_
                             _%tl167666168167%_
                             _%e167671168170%_
                             _%hd167670168173%_
                             _%tl167669168175%_
                             _%e167674168178%_
                             _%hd167673168181%_
                             _%tl167672168183%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd167673168181%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167672168183%_))
                              (let ((_%e167677168186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167672168183%_))))
                                (let ((_%tl167675168191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167677168186%_)))
                                      (_%hd167676168189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167677168186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167675168191%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl167669168175%_))
                                          (_%__match171914171915%_
                                           _%e167650168114%_
                                           _%hd167649168117%_
                                           _%tl167648168119%_
                                           _%e167653168122%_
                                           _%hd167652168125%_
                                           _%tl167651168127%_
                                           _%e167656168130%_
                                           _%hd167655168133%_
                                           _%tl167654168135%_
                                           _%e167659168138%_
                                           _%hd167658168141%_
                                           _%tl167657168143%_
                                           _%e167662168146%_
                                           _%hd167661168149%_
                                           _%tl167660168151%_
                                           _%e167665168154%_
                                           _%hd167664168157%_
                                           _%tl167663168159%_
                                           _%e167668168162%_
                                           _%hd167667168165%_
                                           _%tl167666168167%_
                                           _%e167671168170%_
                                           _%hd167670168173%_
                                           _%tl167669168175%_
                                           _%e167674168178%_
                                           _%hd167673168181%_
                                           _%tl167672168183%_
                                           _%e167677168186%_
                                           _%hd167676168189%_
                                           _%tl167675168191%_)
                                          (_%__match171992171993%_
                                           _%e167650168114%_
                                           _%hd167649168117%_
                                           _%tl167648168119%_
                                           _%e167653168122%_
                                           _%hd167652168125%_
                                           _%tl167651168127%_
                                           _%e167656168130%_
                                           _%hd167655168133%_
                                           _%tl167654168135%_
                                           _%e167659168138%_
                                           _%hd167658168141%_
                                           _%tl167657168143%_
                                           _%e167662168146%_
                                           _%hd167661168149%_
                                           _%tl167660168151%_
                                           _%e167665168154%_
                                           _%hd167664168157%_
                                           _%tl167663168159%_
                                           _%e167668168162%_
                                           _%hd167667168165%_
                                           _%tl167666168167%_
                                           _%e167671168170%_
                                           _%hd167670168173%_
                                           _%tl167669168175%_
                                           _%e167674168178%_
                                           _%hd167673168181%_
                                           _%tl167672168183%_
                                           _%e167677168186%_
                                           _%hd167676168189%_
                                           _%tl167675168191%_))
                                      (_%__match172116172117%_
                                       _%e167650168114%_
                                       _%hd167649168117%_
                                       _%tl167648168119%_
                                       _%e167653168122%_
                                       _%hd167652168125%_
                                       _%tl167651168127%_
                                       _%e167656168130%_
                                       _%hd167655168133%_
                                       _%tl167654168135%_
                                       _%e167659168138%_
                                       _%hd167658168141%_
                                       _%tl167657168143%_
                                       _%e167662168146%_
                                       _%hd167661168149%_
                                       _%tl167660168151%_
                                       _%e167665168154%_
                                       _%hd167664168157%_
                                       _%tl167663168159%_
                                       _%e167668168162%_
                                       _%hd167667168165%_
                                       _%tl167666168167%_
                                       _%e167671168170%_
                                       _%hd167670168173%_
                                       _%tl167669168175%_))))
                              (_%__match172116172117%_
                               _%e167650168114%_
                               _%hd167649168117%_
                               _%tl167648168119%_
                               _%e167653168122%_
                               _%hd167652168125%_
                               _%tl167651168127%_
                               _%e167656168130%_
                               _%hd167655168133%_
                               _%tl167654168135%_
                               _%e167659168138%_
                               _%hd167658168141%_
                               _%tl167657168143%_
                               _%e167662168146%_
                               _%hd167661168149%_
                               _%tl167660168151%_
                               _%e167665168154%_
                               _%hd167664168157%_
                               _%tl167663168159%_
                               _%e167668168162%_
                               _%hd167667168165%_
                               _%tl167666168167%_
                               _%e167671168170%_
                               _%hd167670168173%_
                               _%tl167669168175%_))
                          (_%__match172116172117%_
                           _%e167650168114%_
                           _%hd167649168117%_
                           _%tl167648168119%_
                           _%e167653168122%_
                           _%hd167652168125%_
                           _%tl167651168127%_
                           _%e167656168130%_
                           _%hd167655168133%_
                           _%tl167654168135%_
                           _%e167659168138%_
                           _%hd167658168141%_
                           _%tl167657168143%_
                           _%e167662168146%_
                           _%hd167661168149%_
                           _%tl167660168151%_
                           _%e167665168154%_
                           _%hd167664168157%_
                           _%tl167663168159%_
                           _%e167668168162%_
                           _%hd167667168165%_
                           _%tl167666168167%_
                           _%e167671168170%_
                           _%hd167670168173%_
                           _%tl167669168175%_))))
                   (_%__match171834171835%_
                    (lambda (_%e167599168233%_
                             _%hd167598168236%_
                             _%tl167597168238%_
                             _%e167602168241%_
                             _%hd167601168244%_
                             _%tl167600168246%_
                             _%e167605168249%_
                             _%hd167604168252%_
                             _%tl167603168254%_
                             _%e167608168257%_
                             _%hd167607168260%_
                             _%tl167606168262%_
                             _%e167611168265%_
                             _%hd167610168268%_
                             _%tl167609168270%_
                             _%e167614168273%_
                             _%hd167613168276%_
                             _%tl167612168278%_
                             _%e167617168281%_
                             _%hd167616168284%_
                             _%tl167615168286%_
                             _%e167620168289%_
                             _%hd167619168292%_
                             _%tl167618168294%_
                             _%e167623168297%_
                             _%hd167622168300%_
                             _%tl167621168302%_
                             _%e167626168305%_
                             _%hd167625168308%_
                             _%tl167624168310%_
                             _%e167629168313%_
                             _%hd167628168316%_
                             _%tl167627168318%_
                             _%e167632168321%_
                             _%hd167631168324%_
                             _%tl167630168326%_
                             _%e167635168329%_
                             _%hd167634168332%_
                             _%tl167633168334%_
                             _%__splice171627171628%_
                             _%target167636168337%_
                             _%tl167638168339%_)
                      (letrec ((_%loop167639168342%_
                                (lambda (_%hd167637168345%_
                                         _%args167643168347%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167637168345%_))
                                      (let ((_%e167640168350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167637168345%_))))
                                        (let ((_%lp-tl167642168355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167640168350%_)))
                                              (_%lp-hd167641168353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167640168350%_))))
                                          (let ((__tmp172751
                                                 (cons _%lp-hd167641168353%_
                                                       _%args167643168347%_)))
                                            (declare (not safe))
                                            (_%loop167639168342%_
                                             _%lp-tl167642168355%_
                                             __tmp172751))))
                                      (let ((_%args167644168358%_
                                             (reverse _%args167643168347%_)))
                                        (let ((_%L168361%_
                                               _%args167644168358%_)
                                              (_%L168362%_ _%hd167634168332%_)
                                              (_%L168363%_ _%hd167625168308%_)
                                              (_%L168364%_ _%hd167616168284%_)
                                              (_%L168365%_ _%hd167607168260%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168365%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168364%_
                                                      'call-method))
                                                   (let ((__tmp172752
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167538%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168363%_
                                                      __tmp172752)))
                                              (_%__kont171625171626%_
                                               _%L168361%_
                                               _%L168362%_
                                               _%L168363%_
                                               _%L168364%_
                                               _%L168365%_)
                                              (_%__kont171637171638%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167639168342%_ _%target167636168337%_ '())))))
                   (_%__match171792171793%_
                    (lambda (_%e167599168233%_
                             _%hd167598168236%_
                             _%tl167597168238%_
                             _%e167602168241%_
                             _%hd167601168244%_
                             _%tl167600168246%_
                             _%e167605168249%_
                             _%hd167604168252%_
                             _%tl167603168254%_
                             _%e167608168257%_
                             _%hd167607168260%_
                             _%tl167606168262%_
                             _%e167611168265%_
                             _%hd167610168268%_
                             _%tl167609168270%_
                             _%e167614168273%_
                             _%hd167613168276%_
                             _%tl167612168278%_
                             _%e167617168281%_
                             _%hd167616168284%_
                             _%tl167615168286%_
                             _%e167620168289%_
                             _%hd167619168292%_
                             _%tl167618168294%_
                             _%e167623168297%_
                             _%hd167622168300%_
                             _%tl167621168302%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd167622168300%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167621168302%_))
                              (let ((_%e167626168305%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167621168302%_))))
                                (let ((_%tl167624168310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167626168305%_)))
                                      (_%hd167625168308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167626168305%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167624168310%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167618168294%_))
                                          (let ((_%e167629168313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167618168294%_))))
                                            (let ((_%tl167627168318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167629168313%_)))
                                                  (_%hd167628168316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167629168313%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167628168316%_))
                                                  (let ((_%e167632168321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167628168316%_))))
                                                    (let ((_%tl167630168326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167632168321%_)))
                                                          (_%hd167631168324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167632168321%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd167631168324%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd167631168324%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167630168326%_))
                          (let ((_%e167635168329%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167630168326%_))))
                            (let ((_%tl167633168334%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167635168329%_)))
                                  (_%hd167634168332%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167635168329%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167633168334%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl167627168318%_))
                                      (let ((_%__splice171627171628%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl167627168318%_
                                                '0))))
                                        (let ((_%tl167638168339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171627171628%_
                                                  '1)))
                                              (_%target167636168337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171627171628%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167638168339%_))
                                              (_%__match171834171835%_
                                               _%e167599168233%_
                                               _%hd167598168236%_
                                               _%tl167597168238%_
                                               _%e167602168241%_
                                               _%hd167601168244%_
                                               _%tl167600168246%_
                                               _%e167605168249%_
                                               _%hd167604168252%_
                                               _%tl167603168254%_
                                               _%e167608168257%_
                                               _%hd167607168260%_
                                               _%tl167606168262%_
                                               _%e167611168265%_
                                               _%hd167610168268%_
                                               _%tl167609168270%_
                                               _%e167614168273%_
                                               _%hd167613168276%_
                                               _%tl167612168278%_
                                               _%e167617168281%_
                                               _%hd167616168284%_
                                               _%tl167615168286%_
                                               _%e167620168289%_
                                               _%hd167619168292%_
                                               _%tl167618168294%_
                                               _%e167623168297%_
                                               _%hd167622168300%_
                                               _%tl167621168302%_
                                               _%e167626168305%_
                                               _%hd167625168308%_
                                               _%tl167624168310%_
                                               _%e167629168313%_
                                               _%hd167628168316%_
                                               _%tl167627168318%_
                                               _%e167632168321%_
                                               _%hd167631168324%_
                                               _%tl167630168326%_
                                               _%e167635168329%_
                                               _%hd167634168332%_
                                               _%tl167633168334%_
                                               _%__splice171627171628%_
                                               _%target167636168337%_
                                               _%tl167638168339%_)
                                              (_%__kont171637171638%_))))
                                      (_%__kont171637171638%_))
                                  (_%__kont171637171638%_))))
                          (_%__kont171637171638%_))
                      (_%__kont171637171638%_))
                  (_%__kont171637171638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171637171638%_))))
                                          (_%__match172116172117%_
                                           _%e167599168233%_
                                           _%hd167598168236%_
                                           _%tl167597168238%_
                                           _%e167602168241%_
                                           _%hd167601168244%_
                                           _%tl167600168246%_
                                           _%e167605168249%_
                                           _%hd167604168252%_
                                           _%tl167603168254%_
                                           _%e167608168257%_
                                           _%hd167607168260%_
                                           _%tl167606168262%_
                                           _%e167611168265%_
                                           _%hd167610168268%_
                                           _%tl167609168270%_
                                           _%e167614168273%_
                                           _%hd167613168276%_
                                           _%tl167612168278%_
                                           _%e167617168281%_
                                           _%hd167616168284%_
                                           _%tl167615168286%_
                                           _%e167620168289%_
                                           _%hd167619168292%_
                                           _%tl167618168294%_))
                                      (_%__match172116172117%_
                                       _%e167599168233%_
                                       _%hd167598168236%_
                                       _%tl167597168238%_
                                       _%e167602168241%_
                                       _%hd167601168244%_
                                       _%tl167600168246%_
                                       _%e167605168249%_
                                       _%hd167604168252%_
                                       _%tl167603168254%_
                                       _%e167608168257%_
                                       _%hd167607168260%_
                                       _%tl167606168262%_
                                       _%e167611168265%_
                                       _%hd167610168268%_
                                       _%tl167609168270%_
                                       _%e167614168273%_
                                       _%hd167613168276%_
                                       _%tl167612168278%_
                                       _%e167617168281%_
                                       _%hd167616168284%_
                                       _%tl167615168286%_
                                       _%e167620168289%_
                                       _%hd167619168292%_
                                       _%tl167618168294%_))))
                              (_%__match172116172117%_
                               _%e167599168233%_
                               _%hd167598168236%_
                               _%tl167597168238%_
                               _%e167602168241%_
                               _%hd167601168244%_
                               _%tl167600168246%_
                               _%e167605168249%_
                               _%hd167604168252%_
                               _%tl167603168254%_
                               _%e167608168257%_
                               _%hd167607168260%_
                               _%tl167606168262%_
                               _%e167611168265%_
                               _%hd167610168268%_
                               _%tl167609168270%_
                               _%e167614168273%_
                               _%hd167613168276%_
                               _%tl167612168278%_
                               _%e167617168281%_
                               _%hd167616168284%_
                               _%tl167615168286%_
                               _%e167620168289%_
                               _%hd167619168292%_
                               _%tl167618168294%_))
                          (_%__match171902171903%_
                           _%e167599168233%_
                           _%hd167598168236%_
                           _%tl167597168238%_
                           _%e167602168241%_
                           _%hd167601168244%_
                           _%tl167600168246%_
                           _%e167605168249%_
                           _%hd167604168252%_
                           _%tl167603168254%_
                           _%e167608168257%_
                           _%hd167607168260%_
                           _%tl167606168262%_
                           _%e167611168265%_
                           _%hd167610168268%_
                           _%tl167609168270%_
                           _%e167614168273%_
                           _%hd167613168276%_
                           _%tl167612168278%_
                           _%e167617168281%_
                           _%hd167616168284%_
                           _%tl167615168286%_
                           _%e167620168289%_
                           _%hd167619168292%_
                           _%tl167618168294%_
                           _%e167623168297%_
                           _%hd167622168300%_
                           _%tl167621168302%_))))
                   (_%__match171724171725%_
                    (lambda (_%e167555168422%_
                             _%hd167554168425%_
                             _%tl167553168427%_
                             _%e167558168430%_
                             _%hd167557168433%_
                             _%tl167556168435%_
                             _%e167561168438%_
                             _%hd167560168441%_
                             _%tl167559168443%_
                             _%e167564168446%_
                             _%hd167563168449%_
                             _%tl167562168451%_
                             _%e167567168454%_
                             _%hd167566168457%_
                             _%tl167565168459%_
                             _%e167570168462%_
                             _%hd167569168465%_
                             _%tl167568168467%_
                             _%e167573168470%_
                             _%hd167572168473%_
                             _%tl167571168475%_
                             _%e167576168478%_
                             _%hd167575168481%_
                             _%tl167574168483%_
                             _%e167579168486%_
                             _%hd167578168489%_
                             _%tl167577168491%_
                             _%e167582168494%_
                             _%hd167581168497%_
                             _%tl167580168499%_
                             _%__splice171623171624%_
                             _%target167583168502%_
                             _%tl167585168504%_)
                      (letrec ((_%loop167586168507%_
                                (lambda (_%hd167584168510%_
                                         _%args167590168512%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167584168510%_))
                                      (let ((_%e167587168515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167584168510%_))))
                                        (let ((_%lp-tl167589168520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167587168515%_)))
                                              (_%lp-hd167588168518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167587168515%_))))
                                          (let ((__tmp172753
                                                 (cons _%lp-hd167588168518%_
                                                       _%args167590168512%_)))
                                            (declare (not safe))
                                            (_%loop167586168507%_
                                             _%lp-tl167589168520%_
                                             __tmp172753))))
                                      (let ((_%args167591168523%_
                                             (reverse _%args167590168512%_)))
                                        (let ((_%L168526%_
                                               _%args167591168523%_)
                                              (_%L168527%_ _%hd167581168497%_)
                                              (_%L168528%_ _%hd167572168473%_)
                                              (_%L168529%_ _%hd167563168449%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168529%_
                                                      'call-method))
                                                   (let ((__tmp172754
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167538%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168528%_
                                                      __tmp172754)))
                                              (_%__kont171621171622%_
                                               _%L168526%_
                                               _%L168527%_
                                               _%L168528%_
                                               _%L168529%_)
                                              (_%__match171912171913%_
                                               _%e167555168422%_
                                               _%hd167554168425%_
                                               _%tl167553168427%_
                                               _%e167558168430%_
                                               _%hd167557168433%_
                                               _%tl167556168435%_
                                               _%e167561168438%_
                                               _%hd167560168441%_
                                               _%tl167559168443%_
                                               _%e167564168446%_
                                               _%hd167563168449%_
                                               _%tl167562168451%_
                                               _%e167567168454%_
                                               _%hd167566168457%_
                                               _%tl167565168459%_
                                               _%e167570168462%_
                                               _%hd167569168465%_
                                               _%tl167568168467%_
                                               _%e167573168470%_
                                               _%hd167572168473%_
                                               _%tl167571168475%_
                                               _%e167576168478%_
                                               _%hd167575168481%_
                                               _%tl167574168483%_
                                               _%e167579168486%_
                                               _%hd167578168489%_
                                               _%tl167577168491%_
                                               _%e167582168494%_
                                               _%hd167581168497%_
                                               _%tl167580168499%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167586168507%_
                           _%target167583168502%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171619171620%_))
                  (let ((_%e167555168422%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171619171620%_))))
                    (let ((_%tl167553168427%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167555168422%_)))
                          (_%hd167554168425%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167555168422%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167553168427%_))
                          (let ((_%e167558168430%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167553168427%_))))
                            (let ((_%tl167556168435%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167558168430%_)))
                                  (_%hd167557168433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167558168430%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd167557168433%_))
                                  (let ((_%e167561168438%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd167557168433%_))))
                                    (let ((_%tl167559168443%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167561168438%_)))
                                          (_%hd167560168441%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167561168438%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd167560168441%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd167560168441%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl167559168443%_))
                                                  (let ((_%e167564168446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl167559168443%_))))
                                                    (let ((_%tl167562168451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167564168446%_)))
                                                          (_%hd167563168449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167564168446%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl167562168451%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl167556168435%_))
                      (let ((_%e167567168454%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl167556168435%_))))
                        (let ((_%tl167565168459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167567168454%_)))
                              (_%hd167566168457%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167567168454%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd167566168457%_))
                              (let ((_%e167570168462%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd167566168457%_))))
                                (let ((_%tl167568168467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167570168462%_)))
                                      (_%hd167569168465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167570168462%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd167569168465%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd167569168465%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl167568168467%_))
                                              (let ((_%e167573168470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl167568168467%_))))
                                                (let ((_%tl167571168475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167573168470%_)))
                                                      (_%hd167572168473%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167573168470%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl167571168475%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl167565168459%_))
                                                          (let ((_%e167576168478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl167565168459%_))))
                    (let ((_%tl167574168483%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167576168478%_)))
                          (_%hd167575168481%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167576168478%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd167575168481%_))
                          (let ((_%e167579168486%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd167575168481%_))))
                            (let ((_%tl167577168491%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167579168486%_)))
                                  (_%hd167578168489%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167579168486%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd167578168489%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd167578168489%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167577168491%_))
                                          (let ((_%e167582168494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167577168491%_))))
                                            (let ((_%tl167580168499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167582168494%_)))
                                                  (_%hd167581168497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167582168494%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl167580168499%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl167574168483%_))
                                                      (let ((_%__splice171623171624%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl167574168483%_ '0))))
                (let ((_%tl167585168504%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171623171624%_ '1)))
                      (_%target167583168502%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171623171624%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167585168504%_))
                      (_%__match171724171725%_
                       _%e167555168422%_
                       _%hd167554168425%_
                       _%tl167553168427%_
                       _%e167558168430%_
                       _%hd167557168433%_
                       _%tl167556168435%_
                       _%e167561168438%_
                       _%hd167560168441%_
                       _%tl167559168443%_
                       _%e167564168446%_
                       _%hd167563168449%_
                       _%tl167562168451%_
                       _%e167567168454%_
                       _%hd167566168457%_
                       _%tl167565168459%_
                       _%e167570168462%_
                       _%hd167569168465%_
                       _%tl167568168467%_
                       _%e167573168470%_
                       _%hd167572168473%_
                       _%tl167571168475%_
                       _%e167576168478%_
                       _%hd167575168481%_
                       _%tl167574168483%_
                       _%e167579168486%_
                       _%hd167578168489%_
                       _%tl167577168491%_
                       _%e167582168494%_
                       _%hd167581168497%_
                       _%tl167580168499%_
                       _%__splice171623171624%_
                       _%target167583168502%_
                       _%tl167585168504%_)
                      (_%__match171912171913%_
                       _%e167555168422%_
                       _%hd167554168425%_
                       _%tl167553168427%_
                       _%e167558168430%_
                       _%hd167557168433%_
                       _%tl167556168435%_
                       _%e167561168438%_
                       _%hd167560168441%_
                       _%tl167559168443%_
                       _%e167564168446%_
                       _%hd167563168449%_
                       _%tl167562168451%_
                       _%e167567168454%_
                       _%hd167566168457%_
                       _%tl167565168459%_
                       _%e167570168462%_
                       _%hd167569168465%_
                       _%tl167568168467%_
                       _%e167573168470%_
                       _%hd167572168473%_
                       _%tl167571168475%_
                       _%e167576168478%_
                       _%hd167575168481%_
                       _%tl167574168483%_
                       _%e167579168486%_
                       _%hd167578168489%_
                       _%tl167577168491%_
                       _%e167582168494%_
                       _%hd167581168497%_
                       _%tl167580168499%_))))
              (_%__match171912171913%_
               _%e167555168422%_
               _%hd167554168425%_
               _%tl167553168427%_
               _%e167558168430%_
               _%hd167557168433%_
               _%tl167556168435%_
               _%e167561168438%_
               _%hd167560168441%_
               _%tl167559168443%_
               _%e167564168446%_
               _%hd167563168449%_
               _%tl167562168451%_
               _%e167567168454%_
               _%hd167566168457%_
               _%tl167565168459%_
               _%e167570168462%_
               _%hd167569168465%_
               _%tl167568168467%_
               _%e167573168470%_
               _%hd167572168473%_
               _%tl167571168475%_
               _%e167576168478%_
               _%hd167575168481%_
               _%tl167574168483%_
               _%e167579168486%_
               _%hd167578168489%_
               _%tl167577168491%_
               _%e167582168494%_
               _%hd167581168497%_
               _%tl167580168499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match172116172117%_
                                                   _%e167555168422%_
                                                   _%hd167554168425%_
                                                   _%tl167553168427%_
                                                   _%e167558168430%_
                                                   _%hd167557168433%_
                                                   _%tl167556168435%_
                                                   _%e167561168438%_
                                                   _%hd167560168441%_
                                                   _%tl167559168443%_
                                                   _%e167564168446%_
                                                   _%hd167563168449%_
                                                   _%tl167562168451%_
                                                   _%e167567168454%_
                                                   _%hd167566168457%_
                                                   _%tl167565168459%_
                                                   _%e167570168462%_
                                                   _%hd167569168465%_
                                                   _%tl167568168467%_
                                                   _%e167573168470%_
                                                   _%hd167572168473%_
                                                   _%tl167571168475%_
                                                   _%e167576168478%_
                                                   _%hd167575168481%_
                                                   _%tl167574168483%_))))
                                          (_%__match172116172117%_
                                           _%e167555168422%_
                                           _%hd167554168425%_
                                           _%tl167553168427%_
                                           _%e167558168430%_
                                           _%hd167557168433%_
                                           _%tl167556168435%_
                                           _%e167561168438%_
                                           _%hd167560168441%_
                                           _%tl167559168443%_
                                           _%e167564168446%_
                                           _%hd167563168449%_
                                           _%tl167562168451%_
                                           _%e167567168454%_
                                           _%hd167566168457%_
                                           _%tl167565168459%_
                                           _%e167570168462%_
                                           _%hd167569168465%_
                                           _%tl167568168467%_
                                           _%e167573168470%_
                                           _%hd167572168473%_
                                           _%tl167571168475%_
                                           _%e167576168478%_
                                           _%hd167575168481%_
                                           _%tl167574168483%_))
                                      (_%__match171792171793%_
                                       _%e167555168422%_
                                       _%hd167554168425%_
                                       _%tl167553168427%_
                                       _%e167558168430%_
                                       _%hd167557168433%_
                                       _%tl167556168435%_
                                       _%e167561168438%_
                                       _%hd167560168441%_
                                       _%tl167559168443%_
                                       _%e167564168446%_
                                       _%hd167563168449%_
                                       _%tl167562168451%_
                                       _%e167567168454%_
                                       _%hd167566168457%_
                                       _%tl167565168459%_
                                       _%e167570168462%_
                                       _%hd167569168465%_
                                       _%tl167568168467%_
                                       _%e167573168470%_
                                       _%hd167572168473%_
                                       _%tl167571168475%_
                                       _%e167576168478%_
                                       _%hd167575168481%_
                                       _%tl167574168483%_
                                       _%e167579168486%_
                                       _%hd167578168489%_
                                       _%tl167577168491%_))
                                  (_%__match172116172117%_
                                   _%e167555168422%_
                                   _%hd167554168425%_
                                   _%tl167553168427%_
                                   _%e167558168430%_
                                   _%hd167557168433%_
                                   _%tl167556168435%_
                                   _%e167561168438%_
                                   _%hd167560168441%_
                                   _%tl167559168443%_
                                   _%e167564168446%_
                                   _%hd167563168449%_
                                   _%tl167562168451%_
                                   _%e167567168454%_
                                   _%hd167566168457%_
                                   _%tl167565168459%_
                                   _%e167570168462%_
                                   _%hd167569168465%_
                                   _%tl167568168467%_
                                   _%e167573168470%_
                                   _%hd167572168473%_
                                   _%tl167571168475%_
                                   _%e167576168478%_
                                   _%hd167575168481%_
                                   _%tl167574168483%_))))
                          (_%__match172116172117%_
                           _%e167555168422%_
                           _%hd167554168425%_
                           _%tl167553168427%_
                           _%e167558168430%_
                           _%hd167557168433%_
                           _%tl167556168435%_
                           _%e167561168438%_
                           _%hd167560168441%_
                           _%tl167559168443%_
                           _%e167564168446%_
                           _%hd167563168449%_
                           _%tl167562168451%_
                           _%e167567168454%_
                           _%hd167566168457%_
                           _%tl167565168459%_
                           _%e167570168462%_
                           _%hd167569168465%_
                           _%tl167568168467%_
                           _%e167573168470%_
                           _%hd167572168473%_
                           _%tl167571168475%_
                           _%e167576168478%_
                           _%hd167575168481%_
                           _%tl167574168483%_))))
                  (_%__match172054172055%_
                   _%e167555168422%_
                   _%hd167554168425%_
                   _%tl167553168427%_
                   _%e167558168430%_
                   _%hd167557168433%_
                   _%tl167556168435%_
                   _%e167561168438%_
                   _%hd167560168441%_
                   _%tl167559168443%_
                   _%e167564168446%_
                   _%hd167563168449%_
                   _%tl167562168451%_
                   _%e167567168454%_
                   _%hd167566168457%_
                   _%tl167565168459%_
                   _%e167570168462%_
                   _%hd167569168465%_
                   _%tl167568168467%_
                   _%e167573168470%_
                   _%hd167572168473%_
                   _%tl167571168475%_))
              (_%__kont171637171638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171637171638%_))
                                          (_%__kont171637171638%_))
                                      (_%__kont171637171638%_))))
                              (_%__kont171637171638%_))))
                      (_%__kont171637171638%_))
                  (_%__kont171637171638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171637171638%_))
                                              (_%__kont171637171638%_))
                                          (_%__kont171637171638%_))))
                                  (_%__kont171637171638%_))))
                          (_%__kont171637171638%_))))
                  (_%__kont171637171638%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self166477%_ _%stx166478%_)
        (letrec ((_%force-e166480%_
                  (lambda (_%target167536%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target167536%_ '()))
                                      '()))))))
          (let* ((_%__stx172121172122%_ _%stx166478%_)
                 (_%g166488166710%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172121172122%_)))))
            (let ((_%__kont172123172124%_
                   (lambda (_%L167482%_ _%L167483%_ _%L167484%_ _%L167485%_)
                     (let ((_%$method167530%_
                            (let ((__tmp172756
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166477%_ 'methods)))
                                  (__tmp172755
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167483%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172756 __tmp172755)))
                           (_%args167531%_
                            (map (lambda (_%g167518167520%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166477%_
                                      _%g167518167520%_)))
                                 (let ((__tmp172757
                                        (lambda (_%g167522167525%_
                                                 _%g167523167527%_)
                                          (cons _%g167522167525%_
                                                _%g167523167527%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172757 '() _%L167482%_)))))
                       (let ((__tmp172758
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e166480%_
                                             _%$method167530%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166477%_
                                                               'receiver))
                                                            '()))
                                                _%args167531%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172758 _%stx166478%_)))))
                  (_%__kont172127172128%_
                   (lambda (_%L167314%_
                            _%L167315%_
                            _%L167316%_
                            _%L167317%_
                            _%L167318%_)
                     (let ((_%$method167370%_
                            (let ((__tmp172760
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166477%_ 'methods)))
                                  (__tmp172759
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167315%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172760 __tmp172759)))
                           (_%args167371%_
                            (map (lambda (_%g167358167360%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166477%_
                                      _%g167358167360%_)))
                                 (let ((__tmp172761
                                        (lambda (_%g167362167365%_
                                                 _%g167363167367%_)
                                          (cons _%g167362167365%_
                                                _%g167363167367%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172761 '() _%L167314%_)))))
                       (let ((__tmp172762
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e166480%_
                                                   _%$method167370%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166477%_ 'receiver))
                          '()))
              _%args167371%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172762 _%stx166478%_)))))
                  (_%__kont172131172132%_
                   (lambda (_%L167145%_ _%L167146%_ _%L167147%_)
                     (let* ((_%$field167179%_
                             (let ((__tmp172764
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self166477%_ 'slots)))
                                   (__tmp172763
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L167145%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp172764 __tmp172763)))
                            (__tmp172765
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self166477%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field167179%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self166477%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp172765 _%stx166478%_))))
                  (_%__kont172133172134%_
                   (lambda (_%L167019%_ _%L167020%_ _%L167021%_ _%L167022%_)
                     (let ((_%$field167057%_
                            (let ((__tmp172767
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166477%_ 'slots)))
                                  (__tmp172766
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167020%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172767 __tmp172766)))
                           (_%expr167058%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self166477%_ _%L167019%_))))
                       (let ((__tmp172768
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self166477%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field167057%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166477%_ 'receiver))
                          '()))
              (cons _%expr167058%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172768 _%stx166478%_)))))
                  (_%__kont172135172136%_
                   (lambda (_%L166891%_ _%L166892%_)
                     (let* ((_%accessor166914%_
                             (let ((__tmp172769
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166892%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172769)))
                            (_%klass166916%_
                             (let ((__tmp172770
                                    (##structure-ref
                                     _%accessor166914%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166478%_
                                __tmp172770)))
                            (_%slot166918%_
                             (##structure-ref
                              _%accessor166914%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp172771
                                       (##structure-ref
                                        _%accessor166914%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172771))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166916%_
                                       _%slot166918%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166916%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx166478%_
                           (let* ((_%$field166924%_
                                   (let ((__tmp172772
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166477%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172772 _%slot166918%_)))
                                  (__tmp172773
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166477%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166477%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172773
                              _%stx166478%_))))))
                  (_%__kont172137172138%_
                   (lambda (_%L166786%_ _%L166787%_ _%L166788%_)
                     (let* ((_%mutator166816%_
                             (let ((__tmp172774
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166788%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172774)))
                            (_%klass166818%_
                             (let ((__tmp172775
                                    (##structure-ref
                                     _%mutator166816%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166478%_
                                __tmp172775)))
                            (_%slot166820%_
                             (##structure-ref
                              _%mutator166816%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr166822%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self166477%_ _%L166786%_))))
                       (if (and (let ((__tmp172776
                                       (##structure-ref
                                        _%mutator166816%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172776))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166818%_
                                       _%slot166820%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166818%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp172777
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L166788%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L166787%_
                                                                '()))
                                                    (cons _%expr166822%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp172777 _%stx166478%_))
                           (let* ((_%$field166828%_
                                   (let ((__tmp172778
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166477%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172778 _%slot166820%_)))
                                  (__tmp172779
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166477%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166477%_ 'receiver))
                               '()))
                   (cons _%expr166822%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172779
                              _%stx166478%_))))))
                  (_%__kont172139172140%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self166477%_ _%stx166478%_)))))
              (let* ((_%__match172620172621%_
                      (lambda (_%e166684166722%_
                               _%hd166683166725%_
                               _%tl166682166727%_
                               _%e166687166730%_
                               _%hd166686166733%_
                               _%tl166685166735%_
                               _%e166690166738%_
                               _%hd166689166741%_
                               _%tl166688166743%_
                               _%e166693166746%_
                               _%hd166692166749%_
                               _%tl166691166751%_
                               _%e166696166754%_
                               _%hd166695166757%_
                               _%tl166694166759%_
                               _%e166699166762%_
                               _%hd166698166765%_
                               _%tl166697166767%_
                               _%e166702166770%_
                               _%hd166701166773%_
                               _%tl166700166775%_
                               _%e166705166778%_
                               _%hd166704166781%_
                               _%tl166703166783%_)
                        (let ((_%L166786%_ _%hd166704166781%_)
                              (_%L166787%_ _%hd166701166773%_)
                              (_%L166788%_ _%hd166692166749%_))
                          (if (and (let ((__tmp172780
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166477%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166787%_
                                      __tmp172780))
                                   (let ((__tmp172781
                                          (let ((__tmp172782
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166788%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172782))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172781
                                      'gxc#!mutator::t)))
                              (_%__kont172137172138%_
                               _%L166786%_
                               _%L166787%_
                               _%L166788%_)
                              (_%__kont172139172140%_)))))
                     (_%__match172618172619%_
                      (lambda (_%e166684166722%_
                               _%hd166683166725%_
                               _%tl166682166727%_
                               _%e166687166730%_
                               _%hd166686166733%_
                               _%tl166685166735%_
                               _%e166690166738%_
                               _%hd166689166741%_
                               _%tl166688166743%_
                               _%e166693166746%_
                               _%hd166692166749%_
                               _%tl166691166751%_
                               _%e166696166754%_
                               _%hd166695166757%_
                               _%tl166694166759%_
                               _%e166699166762%_
                               _%hd166698166765%_
                               _%tl166697166767%_
                               _%e166702166770%_
                               _%hd166701166773%_
                               _%tl166700166775%_
                               _%e166705166778%_
                               _%hd166704166781%_
                               _%tl166703166783%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166703166783%_))
                            (_%__match172620172621%_
                             _%e166684166722%_
                             _%hd166683166725%_
                             _%tl166682166727%_
                             _%e166687166730%_
                             _%hd166686166733%_
                             _%tl166685166735%_
                             _%e166690166738%_
                             _%hd166689166741%_
                             _%tl166688166743%_
                             _%e166693166746%_
                             _%hd166692166749%_
                             _%tl166691166751%_
                             _%e166696166754%_
                             _%hd166695166757%_
                             _%tl166694166759%_
                             _%e166699166762%_
                             _%hd166698166765%_
                             _%tl166697166767%_
                             _%e166702166770%_
                             _%hd166701166773%_
                             _%tl166700166775%_
                             _%e166705166778%_
                             _%hd166704166781%_
                             _%tl166703166783%_)
                            (_%__kont172139172140%_))))
                     (_%__match172612172613%_
                      (lambda (_%e166684166722%_
                               _%hd166683166725%_
                               _%tl166682166727%_
                               _%e166687166730%_
                               _%hd166686166733%_
                               _%tl166685166735%_
                               _%e166690166738%_
                               _%hd166689166741%_
                               _%tl166688166743%_
                               _%e166693166746%_
                               _%hd166692166749%_
                               _%tl166691166751%_
                               _%e166696166754%_
                               _%hd166695166757%_
                               _%tl166694166759%_
                               _%e166699166762%_
                               _%hd166698166765%_
                               _%tl166697166767%_
                               _%e166702166770%_
                               _%hd166701166773%_
                               _%tl166700166775%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166694166759%_))
                            (let ((_%e166705166778%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166694166759%_))))
                              (let ((_%tl166703166783%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166705166778%_)))
                                    (_%hd166704166781%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166705166778%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166703166783%_))
                                    (_%__match172620172621%_
                                     _%e166684166722%_
                                     _%hd166683166725%_
                                     _%tl166682166727%_
                                     _%e166687166730%_
                                     _%hd166686166733%_
                                     _%tl166685166735%_
                                     _%e166690166738%_
                                     _%hd166689166741%_
                                     _%tl166688166743%_
                                     _%e166693166746%_
                                     _%hd166692166749%_
                                     _%tl166691166751%_
                                     _%e166696166754%_
                                     _%hd166695166757%_
                                     _%tl166694166759%_
                                     _%e166699166762%_
                                     _%hd166698166765%_
                                     _%tl166697166767%_
                                     _%e166702166770%_
                                     _%hd166701166773%_
                                     _%tl166700166775%_
                                     _%e166705166778%_
                                     _%hd166704166781%_
                                     _%tl166703166783%_)
                                    (_%__kont172139172140%_))))
                            (_%__kont172139172140%_))))
                     (_%__match172558172559%_
                      (lambda (_%e166660166835%_
                               _%hd166659166838%_
                               _%tl166658166840%_
                               _%e166663166843%_
                               _%hd166662166846%_
                               _%tl166661166848%_
                               _%e166666166851%_
                               _%hd166665166854%_
                               _%tl166664166856%_
                               _%e166669166859%_
                               _%hd166668166862%_
                               _%tl166667166864%_
                               _%e166672166867%_
                               _%hd166671166870%_
                               _%tl166670166872%_
                               _%e166675166875%_
                               _%hd166674166878%_
                               _%tl166673166880%_
                               _%e166678166883%_
                               _%hd166677166886%_
                               _%tl166676166888%_)
                        (let ((_%L166891%_ _%hd166677166886%_)
                              (_%L166892%_ _%hd166668166862%_))
                          (if (and (let ((__tmp172783
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166477%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166891%_
                                      __tmp172783))
                                   (let ((__tmp172784
                                          (let ((__tmp172785
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166892%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172785))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172784
                                      'gxc#!accessor::t)))
                              (_%__kont172135172136%_ _%L166891%_ _%L166892%_)
                              (_%__kont172139172140%_)))))
                     (_%__match172556172557%_
                      (lambda (_%e166660166835%_
                               _%hd166659166838%_
                               _%tl166658166840%_
                               _%e166663166843%_
                               _%hd166662166846%_
                               _%tl166661166848%_
                               _%e166666166851%_
                               _%hd166665166854%_
                               _%tl166664166856%_
                               _%e166669166859%_
                               _%hd166668166862%_
                               _%tl166667166864%_
                               _%e166672166867%_
                               _%hd166671166870%_
                               _%tl166670166872%_
                               _%e166675166875%_
                               _%hd166674166878%_
                               _%tl166673166880%_
                               _%e166678166883%_
                               _%hd166677166886%_
                               _%tl166676166888%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166670166872%_))
                            (_%__match172558172559%_
                             _%e166660166835%_
                             _%hd166659166838%_
                             _%tl166658166840%_
                             _%e166663166843%_
                             _%hd166662166846%_
                             _%tl166661166848%_
                             _%e166666166851%_
                             _%hd166665166854%_
                             _%tl166664166856%_
                             _%e166669166859%_
                             _%hd166668166862%_
                             _%tl166667166864%_
                             _%e166672166867%_
                             _%hd166671166870%_
                             _%tl166670166872%_
                             _%e166675166875%_
                             _%hd166674166878%_
                             _%tl166673166880%_
                             _%e166678166883%_
                             _%hd166677166886%_
                             _%tl166676166888%_)
                            (_%__match172612172613%_
                             _%e166660166835%_
                             _%hd166659166838%_
                             _%tl166658166840%_
                             _%e166663166843%_
                             _%hd166662166846%_
                             _%tl166661166848%_
                             _%e166666166851%_
                             _%hd166665166854%_
                             _%tl166664166856%_
                             _%e166669166859%_
                             _%hd166668166862%_
                             _%tl166667166864%_
                             _%e166672166867%_
                             _%hd166671166870%_
                             _%tl166670166872%_
                             _%e166675166875%_
                             _%hd166674166878%_
                             _%tl166673166880%_
                             _%e166678166883%_
                             _%hd166677166886%_
                             _%tl166676166888%_))))
                     (_%__match172502172503%_
                      (lambda (_%e166625166931%_
                               _%hd166624166934%_
                               _%tl166623166936%_
                               _%e166628166939%_
                               _%hd166627166942%_
                               _%tl166626166944%_
                               _%e166631166947%_
                               _%hd166630166950%_
                               _%tl166629166952%_
                               _%e166634166955%_
                               _%hd166633166958%_
                               _%tl166632166960%_
                               _%e166637166963%_
                               _%hd166636166966%_
                               _%tl166635166968%_
                               _%e166640166971%_
                               _%hd166639166974%_
                               _%tl166638166976%_
                               _%e166643166979%_
                               _%hd166642166982%_
                               _%tl166641166984%_
                               _%e166646166987%_
                               _%hd166645166990%_
                               _%tl166644166992%_
                               _%e166649166995%_
                               _%hd166648166998%_
                               _%tl166647167000%_
                               _%e166652167003%_
                               _%hd166651167006%_
                               _%tl166650167008%_
                               _%e166655167011%_
                               _%hd166654167014%_
                               _%tl166653167016%_)
                        (let ((_%L167019%_ _%hd166654167014%_)
                              (_%L167020%_ _%hd166651167006%_)
                              (_%L167021%_ _%hd166642166982%_)
                              (_%L167022%_ _%hd166633166958%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167022%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167022%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp172786
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166477%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167021%_
                                      __tmp172786)))
                              (_%__kont172133172134%_
                               _%L167019%_
                               _%L167020%_
                               _%L167021%_
                               _%L167022%_)
                              (_%__kont172139172140%_)))))
                     (_%__match172494172495%_
                      (lambda (_%e166625166931%_
                               _%hd166624166934%_
                               _%tl166623166936%_
                               _%e166628166939%_
                               _%hd166627166942%_
                               _%tl166626166944%_
                               _%e166631166947%_
                               _%hd166630166950%_
                               _%tl166629166952%_
                               _%e166634166955%_
                               _%hd166633166958%_
                               _%tl166632166960%_
                               _%e166637166963%_
                               _%hd166636166966%_
                               _%tl166635166968%_
                               _%e166640166971%_
                               _%hd166639166974%_
                               _%tl166638166976%_
                               _%e166643166979%_
                               _%hd166642166982%_
                               _%tl166641166984%_
                               _%e166646166987%_
                               _%hd166645166990%_
                               _%tl166644166992%_
                               _%e166649166995%_
                               _%hd166648166998%_
                               _%tl166647167000%_
                               _%e166652167003%_
                               _%hd166651167006%_
                               _%tl166650167008%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166644166992%_))
                            (let ((_%e166655167011%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166644166992%_))))
                              (let ((_%tl166653167016%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166655167011%_)))
                                    (_%hd166654167014%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166655167011%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166653167016%_))
                                    (_%__match172502172503%_
                                     _%e166625166931%_
                                     _%hd166624166934%_
                                     _%tl166623166936%_
                                     _%e166628166939%_
                                     _%hd166627166942%_
                                     _%tl166626166944%_
                                     _%e166631166947%_
                                     _%hd166630166950%_
                                     _%tl166629166952%_
                                     _%e166634166955%_
                                     _%hd166633166958%_
                                     _%tl166632166960%_
                                     _%e166637166963%_
                                     _%hd166636166966%_
                                     _%tl166635166968%_
                                     _%e166640166971%_
                                     _%hd166639166974%_
                                     _%tl166638166976%_
                                     _%e166643166979%_
                                     _%hd166642166982%_
                                     _%tl166641166984%_
                                     _%e166646166987%_
                                     _%hd166645166990%_
                                     _%tl166644166992%_
                                     _%e166649166995%_
                                     _%hd166648166998%_
                                     _%tl166647167000%_
                                     _%e166652167003%_
                                     _%hd166651167006%_
                                     _%tl166650167008%_
                                     _%e166655167011%_
                                     _%hd166654167014%_
                                     _%tl166653167016%_)
                                    (_%__kont172139172140%_))))
                            (_%__match172618172619%_
                             _%e166625166931%_
                             _%hd166624166934%_
                             _%tl166623166936%_
                             _%e166628166939%_
                             _%hd166627166942%_
                             _%tl166626166944%_
                             _%e166631166947%_
                             _%hd166630166950%_
                             _%tl166629166952%_
                             _%e166634166955%_
                             _%hd166633166958%_
                             _%tl166632166960%_
                             _%e166637166963%_
                             _%hd166636166966%_
                             _%tl166635166968%_
                             _%e166640166971%_
                             _%hd166639166974%_
                             _%tl166638166976%_
                             _%e166643166979%_
                             _%hd166642166982%_
                             _%tl166641166984%_
                             _%e166646166987%_
                             _%hd166645166990%_
                             _%tl166644166992%_))))
                     (_%__match172416172417%_
                      (lambda (_%e166591167065%_
                               _%hd166590167068%_
                               _%tl166589167070%_
                               _%e166594167073%_
                               _%hd166593167076%_
                               _%tl166592167078%_
                               _%e166597167081%_
                               _%hd166596167084%_
                               _%tl166595167086%_
                               _%e166600167089%_
                               _%hd166599167092%_
                               _%tl166598167094%_
                               _%e166603167097%_
                               _%hd166602167100%_
                               _%tl166601167102%_
                               _%e166606167105%_
                               _%hd166605167108%_
                               _%tl166604167110%_
                               _%e166609167113%_
                               _%hd166608167116%_
                               _%tl166607167118%_
                               _%e166612167121%_
                               _%hd166611167124%_
                               _%tl166610167126%_
                               _%e166615167129%_
                               _%hd166614167132%_
                               _%tl166613167134%_
                               _%e166618167137%_
                               _%hd166617167140%_
                               _%tl166616167142%_)
                        (let ((_%L167145%_ _%hd166617167140%_)
                              (_%L167146%_ _%hd166608167116%_)
                              (_%L167147%_ _%hd166599167092%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167147%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167147%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp172787
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166477%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167146%_
                                      __tmp172787)))
                              (_%__kont172131172132%_
                               _%L167145%_
                               _%L167146%_
                               _%L167147%_)
                              (_%__match172620172621%_
                               _%e166591167065%_
                               _%hd166590167068%_
                               _%tl166589167070%_
                               _%e166594167073%_
                               _%hd166593167076%_
                               _%tl166592167078%_
                               _%e166597167081%_
                               _%hd166596167084%_
                               _%tl166595167086%_
                               _%e166600167089%_
                               _%hd166599167092%_
                               _%tl166598167094%_
                               _%e166603167097%_
                               _%hd166602167100%_
                               _%tl166601167102%_
                               _%e166606167105%_
                               _%hd166605167108%_
                               _%tl166604167110%_
                               _%e166609167113%_
                               _%hd166608167116%_
                               _%tl166607167118%_
                               _%e166612167121%_
                               _%hd166611167124%_
                               _%tl166610167126%_)))))
                     (_%__match172414172415%_
                      (lambda (_%e166591167065%_
                               _%hd166590167068%_
                               _%tl166589167070%_
                               _%e166594167073%_
                               _%hd166593167076%_
                               _%tl166592167078%_
                               _%e166597167081%_
                               _%hd166596167084%_
                               _%tl166595167086%_
                               _%e166600167089%_
                               _%hd166599167092%_
                               _%tl166598167094%_
                               _%e166603167097%_
                               _%hd166602167100%_
                               _%tl166601167102%_
                               _%e166606167105%_
                               _%hd166605167108%_
                               _%tl166604167110%_
                               _%e166609167113%_
                               _%hd166608167116%_
                               _%tl166607167118%_
                               _%e166612167121%_
                               _%hd166611167124%_
                               _%tl166610167126%_
                               _%e166615167129%_
                               _%hd166614167132%_
                               _%tl166613167134%_
                               _%e166618167137%_
                               _%hd166617167140%_
                               _%tl166616167142%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166610167126%_))
                            (_%__match172416172417%_
                             _%e166591167065%_
                             _%hd166590167068%_
                             _%tl166589167070%_
                             _%e166594167073%_
                             _%hd166593167076%_
                             _%tl166592167078%_
                             _%e166597167081%_
                             _%hd166596167084%_
                             _%tl166595167086%_
                             _%e166600167089%_
                             _%hd166599167092%_
                             _%tl166598167094%_
                             _%e166603167097%_
                             _%hd166602167100%_
                             _%tl166601167102%_
                             _%e166606167105%_
                             _%hd166605167108%_
                             _%tl166604167110%_
                             _%e166609167113%_
                             _%hd166608167116%_
                             _%tl166607167118%_
                             _%e166612167121%_
                             _%hd166611167124%_
                             _%tl166610167126%_
                             _%e166615167129%_
                             _%hd166614167132%_
                             _%tl166613167134%_
                             _%e166618167137%_
                             _%hd166617167140%_
                             _%tl166616167142%_)
                            (_%__match172494172495%_
                             _%e166591167065%_
                             _%hd166590167068%_
                             _%tl166589167070%_
                             _%e166594167073%_
                             _%hd166593167076%_
                             _%tl166592167078%_
                             _%e166597167081%_
                             _%hd166596167084%_
                             _%tl166595167086%_
                             _%e166600167089%_
                             _%hd166599167092%_
                             _%tl166598167094%_
                             _%e166603167097%_
                             _%hd166602167100%_
                             _%tl166601167102%_
                             _%e166606167105%_
                             _%hd166605167108%_
                             _%tl166604167110%_
                             _%e166609167113%_
                             _%hd166608167116%_
                             _%tl166607167118%_
                             _%e166612167121%_
                             _%hd166611167124%_
                             _%tl166610167126%_
                             _%e166615167129%_
                             _%hd166614167132%_
                             _%tl166613167134%_
                             _%e166618167137%_
                             _%hd166617167140%_
                             _%tl166616167142%_))))
                     (_%__match172404172405%_
                      (lambda (_%e166591167065%_
                               _%hd166590167068%_
                               _%tl166589167070%_
                               _%e166594167073%_
                               _%hd166593167076%_
                               _%tl166592167078%_
                               _%e166597167081%_
                               _%hd166596167084%_
                               _%tl166595167086%_
                               _%e166600167089%_
                               _%hd166599167092%_
                               _%tl166598167094%_
                               _%e166603167097%_
                               _%hd166602167100%_
                               _%tl166601167102%_
                               _%e166606167105%_
                               _%hd166605167108%_
                               _%tl166604167110%_
                               _%e166609167113%_
                               _%hd166608167116%_
                               _%tl166607167118%_
                               _%e166612167121%_
                               _%hd166611167124%_
                               _%tl166610167126%_
                               _%e166615167129%_
                               _%hd166614167132%_
                               _%tl166613167134%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd166614167132%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166613167134%_))
                                (let ((_%e166618167137%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166613167134%_))))
                                  (let ((_%tl166616167142%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166618167137%_)))
                                        (_%hd166617167140%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166618167137%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166616167142%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl166610167126%_))
                                            (_%__match172416172417%_
                                             _%e166591167065%_
                                             _%hd166590167068%_
                                             _%tl166589167070%_
                                             _%e166594167073%_
                                             _%hd166593167076%_
                                             _%tl166592167078%_
                                             _%e166597167081%_
                                             _%hd166596167084%_
                                             _%tl166595167086%_
                                             _%e166600167089%_
                                             _%hd166599167092%_
                                             _%tl166598167094%_
                                             _%e166603167097%_
                                             _%hd166602167100%_
                                             _%tl166601167102%_
                                             _%e166606167105%_
                                             _%hd166605167108%_
                                             _%tl166604167110%_
                                             _%e166609167113%_
                                             _%hd166608167116%_
                                             _%tl166607167118%_
                                             _%e166612167121%_
                                             _%hd166611167124%_
                                             _%tl166610167126%_
                                             _%e166615167129%_
                                             _%hd166614167132%_
                                             _%tl166613167134%_
                                             _%e166618167137%_
                                             _%hd166617167140%_
                                             _%tl166616167142%_)
                                            (_%__match172494172495%_
                                             _%e166591167065%_
                                             _%hd166590167068%_
                                             _%tl166589167070%_
                                             _%e166594167073%_
                                             _%hd166593167076%_
                                             _%tl166592167078%_
                                             _%e166597167081%_
                                             _%hd166596167084%_
                                             _%tl166595167086%_
                                             _%e166600167089%_
                                             _%hd166599167092%_
                                             _%tl166598167094%_
                                             _%e166603167097%_
                                             _%hd166602167100%_
                                             _%tl166601167102%_
                                             _%e166606167105%_
                                             _%hd166605167108%_
                                             _%tl166604167110%_
                                             _%e166609167113%_
                                             _%hd166608167116%_
                                             _%tl166607167118%_
                                             _%e166612167121%_
                                             _%hd166611167124%_
                                             _%tl166610167126%_
                                             _%e166615167129%_
                                             _%hd166614167132%_
                                             _%tl166613167134%_
                                             _%e166618167137%_
                                             _%hd166617167140%_
                                             _%tl166616167142%_))
                                        (_%__match172618172619%_
                                         _%e166591167065%_
                                         _%hd166590167068%_
                                         _%tl166589167070%_
                                         _%e166594167073%_
                                         _%hd166593167076%_
                                         _%tl166592167078%_
                                         _%e166597167081%_
                                         _%hd166596167084%_
                                         _%tl166595167086%_
                                         _%e166600167089%_
                                         _%hd166599167092%_
                                         _%tl166598167094%_
                                         _%e166603167097%_
                                         _%hd166602167100%_
                                         _%tl166601167102%_
                                         _%e166606167105%_
                                         _%hd166605167108%_
                                         _%tl166604167110%_
                                         _%e166609167113%_
                                         _%hd166608167116%_
                                         _%tl166607167118%_
                                         _%e166612167121%_
                                         _%hd166611167124%_
                                         _%tl166610167126%_))))
                                (_%__match172618172619%_
                                 _%e166591167065%_
                                 _%hd166590167068%_
                                 _%tl166589167070%_
                                 _%e166594167073%_
                                 _%hd166593167076%_
                                 _%tl166592167078%_
                                 _%e166597167081%_
                                 _%hd166596167084%_
                                 _%tl166595167086%_
                                 _%e166600167089%_
                                 _%hd166599167092%_
                                 _%tl166598167094%_
                                 _%e166603167097%_
                                 _%hd166602167100%_
                                 _%tl166601167102%_
                                 _%e166606167105%_
                                 _%hd166605167108%_
                                 _%tl166604167110%_
                                 _%e166609167113%_
                                 _%hd166608167116%_
                                 _%tl166607167118%_
                                 _%e166612167121%_
                                 _%hd166611167124%_
                                 _%tl166610167126%_))
                            (_%__match172618172619%_
                             _%e166591167065%_
                             _%hd166590167068%_
                             _%tl166589167070%_
                             _%e166594167073%_
                             _%hd166593167076%_
                             _%tl166592167078%_
                             _%e166597167081%_
                             _%hd166596167084%_
                             _%tl166595167086%_
                             _%e166600167089%_
                             _%hd166599167092%_
                             _%tl166598167094%_
                             _%e166603167097%_
                             _%hd166602167100%_
                             _%tl166601167102%_
                             _%e166606167105%_
                             _%hd166605167108%_
                             _%tl166604167110%_
                             _%e166609167113%_
                             _%hd166608167116%_
                             _%tl166607167118%_
                             _%e166612167121%_
                             _%hd166611167124%_
                             _%tl166610167126%_))))
                     (_%__match172336172337%_
                      (lambda (_%e166540167186%_
                               _%hd166539167189%_
                               _%tl166538167191%_
                               _%e166543167194%_
                               _%hd166542167197%_
                               _%tl166541167199%_
                               _%e166546167202%_
                               _%hd166545167205%_
                               _%tl166544167207%_
                               _%e166549167210%_
                               _%hd166548167213%_
                               _%tl166547167215%_
                               _%e166552167218%_
                               _%hd166551167221%_
                               _%tl166550167223%_
                               _%e166555167226%_
                               _%hd166554167229%_
                               _%tl166553167231%_
                               _%e166558167234%_
                               _%hd166557167237%_
                               _%tl166556167239%_
                               _%e166561167242%_
                               _%hd166560167245%_
                               _%tl166559167247%_
                               _%e166564167250%_
                               _%hd166563167253%_
                               _%tl166562167255%_
                               _%e166567167258%_
                               _%hd166566167261%_
                               _%tl166565167263%_
                               _%e166570167266%_
                               _%hd166569167269%_
                               _%tl166568167271%_
                               _%e166573167274%_
                               _%hd166572167277%_
                               _%tl166571167279%_
                               _%e166576167282%_
                               _%hd166575167285%_
                               _%tl166574167287%_
                               _%__splice172129172130%_
                               _%target166577167290%_
                               _%tl166579167292%_)
                        (letrec ((_%loop166580167295%_
                                  (lambda (_%hd166578167298%_
                                           _%args166584167300%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166578167298%_))
                                        (let ((_%e166581167303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166578167298%_))))
                                          (let ((_%lp-tl166583167308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166581167303%_)))
                                                (_%lp-hd166582167306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166581167303%_))))
                                            (let ((__tmp172788
                                                   (cons _%lp-hd166582167306%_
                                                         _%args166584167300%_)))
                                              (declare (not safe))
                                              (_%loop166580167295%_
                                               _%lp-tl166583167308%_
                                               __tmp172788))))
                                        (let ((_%args166585167311%_
                                               (reverse _%args166584167300%_)))
                                          (let ((_%L167314%_
                                                 _%args166585167311%_)
                                                (_%L167315%_
                                                 _%hd166575167285%_)
                                                (_%L167316%_
                                                 _%hd166566167261%_)
                                                (_%L167317%_
                                                 _%hd166557167237%_)
                                                (_%L167318%_
                                                 _%hd166548167213%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167318%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167317%_
                                                        'call-method))
                                                     (let ((__tmp172789
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166477%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167316%_
                                                        __tmp172789)))
                                                (_%__kont172127172128%_
                                                 _%L167314%_
                                                 _%L167315%_
                                                 _%L167316%_
                                                 _%L167317%_
                                                 _%L167318%_)
                                                (_%__kont172139172140%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166580167295%_
                             _%target166577167290%_
                             '())))))
                     (_%__match172294172295%_
                      (lambda (_%e166540167186%_
                               _%hd166539167189%_
                               _%tl166538167191%_
                               _%e166543167194%_
                               _%hd166542167197%_
                               _%tl166541167199%_
                               _%e166546167202%_
                               _%hd166545167205%_
                               _%tl166544167207%_
                               _%e166549167210%_
                               _%hd166548167213%_
                               _%tl166547167215%_
                               _%e166552167218%_
                               _%hd166551167221%_
                               _%tl166550167223%_
                               _%e166555167226%_
                               _%hd166554167229%_
                               _%tl166553167231%_
                               _%e166558167234%_
                               _%hd166557167237%_
                               _%tl166556167239%_
                               _%e166561167242%_
                               _%hd166560167245%_
                               _%tl166559167247%_
                               _%e166564167250%_
                               _%hd166563167253%_
                               _%tl166562167255%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd166563167253%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166562167255%_))
                                (let ((_%e166567167258%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166562167255%_))))
                                  (let ((_%tl166565167263%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166567167258%_)))
                                        (_%hd166566167261%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166567167258%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166565167263%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166559167247%_))
                                            (let ((_%e166570167266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166559167247%_))))
                                              (let ((_%tl166568167271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166570167266%_)))
                                                    (_%hd166569167269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166570167266%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd166569167269%_))
                                                    (let ((_%e166573167274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd166569167269%_))))
                                                      (let ((_%tl166571167279%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166573167274%_)))
                    (_%hd166572167277%_
                     (let () (declare (not safe)) (##car _%e166573167274%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd166572167277%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd166572167277%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166571167279%_))
                            (let ((_%e166576167282%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166571167279%_))))
                              (let ((_%tl166574167287%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166576167282%_)))
                                    (_%hd166575167285%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166576167282%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166574167287%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166568167271%_))
                                        (let ((_%__splice172129172130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166568167271%_
                                                  '0))))
                                          (let ((_%tl166579167292%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172129172130%_
                                                    '1)))
                                                (_%target166577167290%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172129172130%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166579167292%_))
                                                (_%__match172336172337%_
                                                 _%e166540167186%_
                                                 _%hd166539167189%_
                                                 _%tl166538167191%_
                                                 _%e166543167194%_
                                                 _%hd166542167197%_
                                                 _%tl166541167199%_
                                                 _%e166546167202%_
                                                 _%hd166545167205%_
                                                 _%tl166544167207%_
                                                 _%e166549167210%_
                                                 _%hd166548167213%_
                                                 _%tl166547167215%_
                                                 _%e166552167218%_
                                                 _%hd166551167221%_
                                                 _%tl166550167223%_
                                                 _%e166555167226%_
                                                 _%hd166554167229%_
                                                 _%tl166553167231%_
                                                 _%e166558167234%_
                                                 _%hd166557167237%_
                                                 _%tl166556167239%_
                                                 _%e166561167242%_
                                                 _%hd166560167245%_
                                                 _%tl166559167247%_
                                                 _%e166564167250%_
                                                 _%hd166563167253%_
                                                 _%tl166562167255%_
                                                 _%e166567167258%_
                                                 _%hd166566167261%_
                                                 _%tl166565167263%_
                                                 _%e166570167266%_
                                                 _%hd166569167269%_
                                                 _%tl166568167271%_
                                                 _%e166573167274%_
                                                 _%hd166572167277%_
                                                 _%tl166571167279%_
                                                 _%e166576167282%_
                                                 _%hd166575167285%_
                                                 _%tl166574167287%_
                                                 _%__splice172129172130%_
                                                 _%target166577167290%_
                                                 _%tl166579167292%_)
                                                (_%__kont172139172140%_))))
                                        (_%__kont172139172140%_))
                                    (_%__kont172139172140%_))))
                            (_%__kont172139172140%_))
                        (_%__kont172139172140%_))
                    (_%__kont172139172140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172139172140%_))))
                                            (_%__match172618172619%_
                                             _%e166540167186%_
                                             _%hd166539167189%_
                                             _%tl166538167191%_
                                             _%e166543167194%_
                                             _%hd166542167197%_
                                             _%tl166541167199%_
                                             _%e166546167202%_
                                             _%hd166545167205%_
                                             _%tl166544167207%_
                                             _%e166549167210%_
                                             _%hd166548167213%_
                                             _%tl166547167215%_
                                             _%e166552167218%_
                                             _%hd166551167221%_
                                             _%tl166550167223%_
                                             _%e166555167226%_
                                             _%hd166554167229%_
                                             _%tl166553167231%_
                                             _%e166558167234%_
                                             _%hd166557167237%_
                                             _%tl166556167239%_
                                             _%e166561167242%_
                                             _%hd166560167245%_
                                             _%tl166559167247%_))
                                        (_%__match172618172619%_
                                         _%e166540167186%_
                                         _%hd166539167189%_
                                         _%tl166538167191%_
                                         _%e166543167194%_
                                         _%hd166542167197%_
                                         _%tl166541167199%_
                                         _%e166546167202%_
                                         _%hd166545167205%_
                                         _%tl166544167207%_
                                         _%e166549167210%_
                                         _%hd166548167213%_
                                         _%tl166547167215%_
                                         _%e166552167218%_
                                         _%hd166551167221%_
                                         _%tl166550167223%_
                                         _%e166555167226%_
                                         _%hd166554167229%_
                                         _%tl166553167231%_
                                         _%e166558167234%_
                                         _%hd166557167237%_
                                         _%tl166556167239%_
                                         _%e166561167242%_
                                         _%hd166560167245%_
                                         _%tl166559167247%_))))
                                (_%__match172618172619%_
                                 _%e166540167186%_
                                 _%hd166539167189%_
                                 _%tl166538167191%_
                                 _%e166543167194%_
                                 _%hd166542167197%_
                                 _%tl166541167199%_
                                 _%e166546167202%_
                                 _%hd166545167205%_
                                 _%tl166544167207%_
                                 _%e166549167210%_
                                 _%hd166548167213%_
                                 _%tl166547167215%_
                                 _%e166552167218%_
                                 _%hd166551167221%_
                                 _%tl166550167223%_
                                 _%e166555167226%_
                                 _%hd166554167229%_
                                 _%tl166553167231%_
                                 _%e166558167234%_
                                 _%hd166557167237%_
                                 _%tl166556167239%_
                                 _%e166561167242%_
                                 _%hd166560167245%_
                                 _%tl166559167247%_))
                            (_%__match172404172405%_
                             _%e166540167186%_
                             _%hd166539167189%_
                             _%tl166538167191%_
                             _%e166543167194%_
                             _%hd166542167197%_
                             _%tl166541167199%_
                             _%e166546167202%_
                             _%hd166545167205%_
                             _%tl166544167207%_
                             _%e166549167210%_
                             _%hd166548167213%_
                             _%tl166547167215%_
                             _%e166552167218%_
                             _%hd166551167221%_
                             _%tl166550167223%_
                             _%e166555167226%_
                             _%hd166554167229%_
                             _%tl166553167231%_
                             _%e166558167234%_
                             _%hd166557167237%_
                             _%tl166556167239%_
                             _%e166561167242%_
                             _%hd166560167245%_
                             _%tl166559167247%_
                             _%e166564167250%_
                             _%hd166563167253%_
                             _%tl166562167255%_))))
                     (_%__match172226172227%_
                      (lambda (_%e166496167378%_
                               _%hd166495167381%_
                               _%tl166494167383%_
                               _%e166499167386%_
                               _%hd166498167389%_
                               _%tl166497167391%_
                               _%e166502167394%_
                               _%hd166501167397%_
                               _%tl166500167399%_
                               _%e166505167402%_
                               _%hd166504167405%_
                               _%tl166503167407%_
                               _%e166508167410%_
                               _%hd166507167413%_
                               _%tl166506167415%_
                               _%e166511167418%_
                               _%hd166510167421%_
                               _%tl166509167423%_
                               _%e166514167426%_
                               _%hd166513167429%_
                               _%tl166512167431%_
                               _%e166517167434%_
                               _%hd166516167437%_
                               _%tl166515167439%_
                               _%e166520167442%_
                               _%hd166519167445%_
                               _%tl166518167447%_
                               _%e166523167450%_
                               _%hd166522167453%_
                               _%tl166521167455%_
                               _%__splice172125172126%_
                               _%target166524167458%_
                               _%tl166526167460%_)
                        (letrec ((_%loop166527167463%_
                                  (lambda (_%hd166525167466%_
                                           _%args166531167468%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166525167466%_))
                                        (let ((_%e166528167471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166525167466%_))))
                                          (let ((_%lp-tl166530167476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166528167471%_)))
                                                (_%lp-hd166529167474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166528167471%_))))
                                            (let ((__tmp172790
                                                   (cons _%lp-hd166529167474%_
                                                         _%args166531167468%_)))
                                              (declare (not safe))
                                              (_%loop166527167463%_
                                               _%lp-tl166530167476%_
                                               __tmp172790))))
                                        (let ((_%args166532167479%_
                                               (reverse _%args166531167468%_)))
                                          (let ((_%L167482%_
                                                 _%args166532167479%_)
                                                (_%L167483%_
                                                 _%hd166522167453%_)
                                                (_%L167484%_
                                                 _%hd166513167429%_)
                                                (_%L167485%_
                                                 _%hd166504167405%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167485%_
                                                        'call-method))
                                                     (let ((__tmp172791
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166477%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167484%_
                                                        __tmp172791)))
                                                (_%__kont172123172124%_
                                                 _%L167482%_
                                                 _%L167483%_
                                                 _%L167484%_
                                                 _%L167485%_)
                                                (_%__match172414172415%_
                                                 _%e166496167378%_
                                                 _%hd166495167381%_
                                                 _%tl166494167383%_
                                                 _%e166499167386%_
                                                 _%hd166498167389%_
                                                 _%tl166497167391%_
                                                 _%e166502167394%_
                                                 _%hd166501167397%_
                                                 _%tl166500167399%_
                                                 _%e166505167402%_
                                                 _%hd166504167405%_
                                                 _%tl166503167407%_
                                                 _%e166508167410%_
                                                 _%hd166507167413%_
                                                 _%tl166506167415%_
                                                 _%e166511167418%_
                                                 _%hd166510167421%_
                                                 _%tl166509167423%_
                                                 _%e166514167426%_
                                                 _%hd166513167429%_
                                                 _%tl166512167431%_
                                                 _%e166517167434%_
                                                 _%hd166516167437%_
                                                 _%tl166515167439%_
                                                 _%e166520167442%_
                                                 _%hd166519167445%_
                                                 _%tl166518167447%_
                                                 _%e166523167450%_
                                                 _%hd166522167453%_
                                                 _%tl166521167455%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166527167463%_
                             _%target166524167458%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172121172122%_))
                    (let ((_%e166496167378%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172121172122%_))))
                      (let ((_%tl166494167383%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166496167378%_)))
                            (_%hd166495167381%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166496167378%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166494167383%_))
                            (let ((_%e166499167386%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166494167383%_))))
                              (let ((_%tl166497167391%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166499167386%_)))
                                    (_%hd166498167389%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166499167386%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd166498167389%_))
                                    (let ((_%e166502167394%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd166498167389%_))))
                                      (let ((_%tl166500167399%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e166502167394%_)))
                                            (_%hd166501167397%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e166502167394%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd166501167397%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd166501167397%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166500167399%_))
                                                    (let ((_%e166505167402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166500167399%_))))
                                                      (let ((_%tl166503167407%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166505167402%_)))
                    (_%hd166504167405%_
                     (let () (declare (not safe)) (##car _%e166505167402%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166503167407%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl166497167391%_))
                        (let ((_%e166508167410%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl166497167391%_))))
                          (let ((_%tl166506167415%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166508167410%_)))
                                (_%hd166507167413%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166508167410%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd166507167413%_))
                                (let ((_%e166511167418%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd166507167413%_))))
                                  (let ((_%tl166509167423%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166511167418%_)))
                                        (_%hd166510167421%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166511167418%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166510167421%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166510167421%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166509167423%_))
                                                (let ((_%e166514167426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166509167423%_))))
                                                  (let ((_%tl166512167431%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166514167426%_)))
                                                        (_%hd166513167429%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166514167426%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166512167431%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl166506167415%_))
                                                            (let ((_%e166517167434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl166506167415%_))))
                      (let ((_%tl166515167439%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166517167434%_)))
                            (_%hd166516167437%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166517167434%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd166516167437%_))
                            (let ((_%e166520167442%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd166516167437%_))))
                              (let ((_%tl166518167447%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166520167442%_)))
                                    (_%hd166519167445%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166520167442%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd166519167445%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd166519167445%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166518167447%_))
                                            (let ((_%e166523167450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166518167447%_))))
                                              (let ((_%tl166521167455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166523167450%_)))
                                                    (_%hd166522167453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166523167450%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl166521167455%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl166515167439%_))
                                                        (let ((_%__splice172125172126%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl166515167439%_ '0))))
                  (let ((_%tl166526167460%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172125172126%_ '1)))
                        (_%target166524167458%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172125172126%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl166526167460%_))
                        (_%__match172226172227%_
                         _%e166496167378%_
                         _%hd166495167381%_
                         _%tl166494167383%_
                         _%e166499167386%_
                         _%hd166498167389%_
                         _%tl166497167391%_
                         _%e166502167394%_
                         _%hd166501167397%_
                         _%tl166500167399%_
                         _%e166505167402%_
                         _%hd166504167405%_
                         _%tl166503167407%_
                         _%e166508167410%_
                         _%hd166507167413%_
                         _%tl166506167415%_
                         _%e166511167418%_
                         _%hd166510167421%_
                         _%tl166509167423%_
                         _%e166514167426%_
                         _%hd166513167429%_
                         _%tl166512167431%_
                         _%e166517167434%_
                         _%hd166516167437%_
                         _%tl166515167439%_
                         _%e166520167442%_
                         _%hd166519167445%_
                         _%tl166518167447%_
                         _%e166523167450%_
                         _%hd166522167453%_
                         _%tl166521167455%_
                         _%__splice172125172126%_
                         _%target166524167458%_
                         _%tl166526167460%_)
                        (_%__match172414172415%_
                         _%e166496167378%_
                         _%hd166495167381%_
                         _%tl166494167383%_
                         _%e166499167386%_
                         _%hd166498167389%_
                         _%tl166497167391%_
                         _%e166502167394%_
                         _%hd166501167397%_
                         _%tl166500167399%_
                         _%e166505167402%_
                         _%hd166504167405%_
                         _%tl166503167407%_
                         _%e166508167410%_
                         _%hd166507167413%_
                         _%tl166506167415%_
                         _%e166511167418%_
                         _%hd166510167421%_
                         _%tl166509167423%_
                         _%e166514167426%_
                         _%hd166513167429%_
                         _%tl166512167431%_
                         _%e166517167434%_
                         _%hd166516167437%_
                         _%tl166515167439%_
                         _%e166520167442%_
                         _%hd166519167445%_
                         _%tl166518167447%_
                         _%e166523167450%_
                         _%hd166522167453%_
                         _%tl166521167455%_))))
                (_%__match172414172415%_
                 _%e166496167378%_
                 _%hd166495167381%_
                 _%tl166494167383%_
                 _%e166499167386%_
                 _%hd166498167389%_
                 _%tl166497167391%_
                 _%e166502167394%_
                 _%hd166501167397%_
                 _%tl166500167399%_
                 _%e166505167402%_
                 _%hd166504167405%_
                 _%tl166503167407%_
                 _%e166508167410%_
                 _%hd166507167413%_
                 _%tl166506167415%_
                 _%e166511167418%_
                 _%hd166510167421%_
                 _%tl166509167423%_
                 _%e166514167426%_
                 _%hd166513167429%_
                 _%tl166512167431%_
                 _%e166517167434%_
                 _%hd166516167437%_
                 _%tl166515167439%_
                 _%e166520167442%_
                 _%hd166519167445%_
                 _%tl166518167447%_
                 _%e166523167450%_
                 _%hd166522167453%_
                 _%tl166521167455%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match172618172619%_
                                                     _%e166496167378%_
                                                     _%hd166495167381%_
                                                     _%tl166494167383%_
                                                     _%e166499167386%_
                                                     _%hd166498167389%_
                                                     _%tl166497167391%_
                                                     _%e166502167394%_
                                                     _%hd166501167397%_
                                                     _%tl166500167399%_
                                                     _%e166505167402%_
                                                     _%hd166504167405%_
                                                     _%tl166503167407%_
                                                     _%e166508167410%_
                                                     _%hd166507167413%_
                                                     _%tl166506167415%_
                                                     _%e166511167418%_
                                                     _%hd166510167421%_
                                                     _%tl166509167423%_
                                                     _%e166514167426%_
                                                     _%hd166513167429%_
                                                     _%tl166512167431%_
                                                     _%e166517167434%_
                                                     _%hd166516167437%_
                                                     _%tl166515167439%_))))
                                            (_%__match172618172619%_
                                             _%e166496167378%_
                                             _%hd166495167381%_
                                             _%tl166494167383%_
                                             _%e166499167386%_
                                             _%hd166498167389%_
                                             _%tl166497167391%_
                                             _%e166502167394%_
                                             _%hd166501167397%_
                                             _%tl166500167399%_
                                             _%e166505167402%_
                                             _%hd166504167405%_
                                             _%tl166503167407%_
                                             _%e166508167410%_
                                             _%hd166507167413%_
                                             _%tl166506167415%_
                                             _%e166511167418%_
                                             _%hd166510167421%_
                                             _%tl166509167423%_
                                             _%e166514167426%_
                                             _%hd166513167429%_
                                             _%tl166512167431%_
                                             _%e166517167434%_
                                             _%hd166516167437%_
                                             _%tl166515167439%_))
                                        (_%__match172294172295%_
                                         _%e166496167378%_
                                         _%hd166495167381%_
                                         _%tl166494167383%_
                                         _%e166499167386%_
                                         _%hd166498167389%_
                                         _%tl166497167391%_
                                         _%e166502167394%_
                                         _%hd166501167397%_
                                         _%tl166500167399%_
                                         _%e166505167402%_
                                         _%hd166504167405%_
                                         _%tl166503167407%_
                                         _%e166508167410%_
                                         _%hd166507167413%_
                                         _%tl166506167415%_
                                         _%e166511167418%_
                                         _%hd166510167421%_
                                         _%tl166509167423%_
                                         _%e166514167426%_
                                         _%hd166513167429%_
                                         _%tl166512167431%_
                                         _%e166517167434%_
                                         _%hd166516167437%_
                                         _%tl166515167439%_
                                         _%e166520167442%_
                                         _%hd166519167445%_
                                         _%tl166518167447%_))
                                    (_%__match172618172619%_
                                     _%e166496167378%_
                                     _%hd166495167381%_
                                     _%tl166494167383%_
                                     _%e166499167386%_
                                     _%hd166498167389%_
                                     _%tl166497167391%_
                                     _%e166502167394%_
                                     _%hd166501167397%_
                                     _%tl166500167399%_
                                     _%e166505167402%_
                                     _%hd166504167405%_
                                     _%tl166503167407%_
                                     _%e166508167410%_
                                     _%hd166507167413%_
                                     _%tl166506167415%_
                                     _%e166511167418%_
                                     _%hd166510167421%_
                                     _%tl166509167423%_
                                     _%e166514167426%_
                                     _%hd166513167429%_
                                     _%tl166512167431%_
                                     _%e166517167434%_
                                     _%hd166516167437%_
                                     _%tl166515167439%_))))
                            (_%__match172618172619%_
                             _%e166496167378%_
                             _%hd166495167381%_
                             _%tl166494167383%_
                             _%e166499167386%_
                             _%hd166498167389%_
                             _%tl166497167391%_
                             _%e166502167394%_
                             _%hd166501167397%_
                             _%tl166500167399%_
                             _%e166505167402%_
                             _%hd166504167405%_
                             _%tl166503167407%_
                             _%e166508167410%_
                             _%hd166507167413%_
                             _%tl166506167415%_
                             _%e166511167418%_
                             _%hd166510167421%_
                             _%tl166509167423%_
                             _%e166514167426%_
                             _%hd166513167429%_
                             _%tl166512167431%_
                             _%e166517167434%_
                             _%hd166516167437%_
                             _%tl166515167439%_))))
                    (_%__match172556172557%_
                     _%e166496167378%_
                     _%hd166495167381%_
                     _%tl166494167383%_
                     _%e166499167386%_
                     _%hd166498167389%_
                     _%tl166497167391%_
                     _%e166502167394%_
                     _%hd166501167397%_
                     _%tl166500167399%_
                     _%e166505167402%_
                     _%hd166504167405%_
                     _%tl166503167407%_
                     _%e166508167410%_
                     _%hd166507167413%_
                     _%tl166506167415%_
                     _%e166511167418%_
                     _%hd166510167421%_
                     _%tl166509167423%_
                     _%e166514167426%_
                     _%hd166513167429%_
                     _%tl166512167431%_))
                (_%__kont172139172140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172139172140%_))
                                            (_%__kont172139172140%_))
                                        (_%__kont172139172140%_))))
                                (_%__kont172139172140%_))))
                        (_%__kont172139172140%_))
                    (_%__kont172139172140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172139172140%_))
                                                (_%__kont172139172140%_))
                                            (_%__kont172139172140%_))))
                                    (_%__kont172139172140%_))))
                            (_%__kont172139172140%_))))
                    (_%__kont172139172140%_))))))))))
