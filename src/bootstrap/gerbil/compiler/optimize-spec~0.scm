(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712269049)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp172555 (list gxc#::identity::t))
            (__tmp172554 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp172555
         '()
         __tmp172554
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args171420%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args171420%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp172556
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
        (__make-promise __tmp172556)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx171412%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self171415%_
                (let ((__obj172549
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj172549))
               (__tmp172557
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171415%_ _%stx171412%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp172557
           gxc#current-compile-method
           _%self171415%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp172559 (list gxc#::void::t))
            (__tmp172558 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp172559
         '(receiver methods slots)
         __tmp172558
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args171409%_
        (apply make-instance gxc#::collect-object-refs::t _%$args171409%_)))
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
      (let ((__tmp172560
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
        (__make-promise __tmp172560)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords171375%_
               _%receiver171370171376%_
               _%methods171371171378%_
               _%slots171372171380%_
               _%stx171382%_)
        (let* ((_%receiver171385%_
                (if (eq? _%receiver171370171376%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171370171376%_))
               (_%methods171387%_
                (if (eq? _%methods171371171378%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171371171378%_))
               (_%slots171389%_
                (if (eq? _%slots171372171380%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171372171380%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self171391%_
                  (let ((__obj172551
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
                       __obj172551
                       _%receiver171385%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172551
                       _%methods171387%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172551
                       _%slots171389%_
                       '3
                       '#f
                       '#f))
                    __obj172551))
                 (__tmp172561
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171391%_ _%stx171382%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172561
             gxc#current-compile-method
             _%self171391%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords171398%_ . _%args171399%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords171398%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171398%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171398%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171398%_
                  'slots:
                  absent-value))
               _%args171399%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args171373171405%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args171373171405%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp172563 (list gxc#::basic-xform-expression::t))
            (__tmp172562 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp172563
         '(receiver klass methods slots)
         __tmp172562
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args171366%_
        (apply make-instance gxc#::subst-object-refs::t _%$args171366%_)))
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
      (let ((__tmp172564
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
        (__make-promise __tmp172564)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords171328%_
               _%receiver171322171329%_
               _%klass171323171331%_
               _%methods171324171333%_
               _%slots171325171335%_
               _%stx171337%_)
        (let* ((_%receiver171340%_
                (if (eq? _%receiver171322171329%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171322171329%_))
               (_%klass171342%_
                (if (eq? _%klass171323171331%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass171323171331%_))
               (_%methods171344%_
                (if (eq? _%methods171324171333%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171324171333%_))
               (_%slots171346%_
                (if (eq? _%slots171325171335%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171325171335%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self171348%_
                  (let ((__obj172553
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
                       __obj172553
                       _%receiver171340%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172553
                       _%klass171342%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172553
                       _%methods171344%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172553
                       _%slots171346%_
                       '4
                       '#f
                       '#f))
                    __obj172553))
                 (__tmp172565
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171348%_ _%stx171337%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172565
             gxc#current-compile-method
             _%self171348%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords171355%_ . _%args171356%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords171355%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171355%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171355%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171355%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171355%_
                  'slots:
                  absent-value))
               _%args171356%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args171326171362%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args171326171362%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self168503%_ _%stx168504%_)
        (letrec ((_%generate-method-bind168506%_
                  (lambda (_%$klass171314%_
                           _%$method-table171315%_
                           _%id171316%_
                           _%$id171317%_)
                    (let ((_%$tmp171319%_
                           (let ((__tmp172566
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172566))))
                      (cons (cons _%$id171317%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp171319%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table171315%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id171316%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp171319%_ '()))
                    (cons (cons '%#ref (cons _%$tmp171319%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id171316%_
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
                 (_%generate-slot-bind168507%_
                  (lambda (_%$klass171308%_ _%id171309%_ _%$id171310%_)
                    (let ((_%$tmp171312%_
                           (let ((__tmp172567
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172567))))
                      (cons (cons _%$id171310%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp171312%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass171308%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id171309%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp171312%_ '()))
                        (cons (cons '%#ref (cons _%$tmp171312%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id171309%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl168508%_
                  (lambda (_%$klass171302%_
                           _%$method-table171303%_
                           _%methods-bind171304%_
                           _%slots-bind171305%_
                           _%specializer-impl171306%_)
                    (let ((__tmp172568
                           (cons '%#lambda
                                 (cons (cons _%$klass171302%_
                                             (cons _%$method-table171303%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind171305%_
                                                            _%methods-bind171304%_))
                                                         (cons _%specializer-impl171306%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172568 _%stx168504%_))))
                 (_%generate-specializer-def168509%_
                  (lambda (_%id171298%_
                           _%specializer-id171299%_
                           _%specializer-impl171300%_)
                    (let ((__tmp172569
                           (cons '%#begin
                                 (cons _%stx168504%_
                                       (cons (let ((__tmp172570
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id171299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl171300%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp172570
                                                _%stx168504%_))
                                             (cons (let ((__tmp172571
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id171298%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id171299%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172571
                                                      _%stx168504%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172569 _%stx168504%_)))))
          (let* ((_%__stx171509171510%_ _%stx168504%_)
                 (_%g168512168532%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171509171510%_)))))
            (let ((_%__kont171511171512%_
                   (lambda (_%L168576%_ _%L168577%_)
                     (let ((_%method-calls168596%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs168597%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty168598%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?168600%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls168596%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs168597%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L168576%_))
                             (let ()
                               (let* ((_%__stx171423171424%_ _%L168576%_)
                                      (_%g168988169006%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx171423171424%_)))))
                                 (let ((_%__kont171425171426%_
                                        (lambda (_%L169042%_
                                                 _%L169043%_
                                                 _%L169044%_)
                                          (for-each
                                           (lambda (_%g169060169062%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs__%
                                                '#f
                                                _%L169044%_
                                                _%method-calls168596%_
                                                _%slot-refs168597%_
                                                _%g169060169062%_)))
                                           _%L169042%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?168600%_))
                                              _%stx168504%_
                                              (let* ((_%specializer-id169071%_
                                                      (let* ((_%id169065%_
                                                              (let ((__tmp172572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L168577%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp172572 '"::specialize")))
                     (_%specializer-id169068%_
                      (let ((__tmp172573
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx168504%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id169065%_ __tmp172573))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id169068%_))
                _%specializer-id169068%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass169073%_
                                                      (let ((__tmp172574
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp172574)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table169075%_
                                                      (let ((__tmp172575
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp172575)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods169077%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls168596%_)))
                                                     (_%$methods169081%_
                                                      (map (lambda (_%id169079%_)
                                                             (let ((__tmp172576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169079%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172576)))
                   _%methods169077%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169090%_
                                                      (for-each
                                                       (lambda (_%g169082169085%_
                                                                _%g169083169087%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls168596%_
                                                            _%g169082169085%_
                                                            _%g169083169087%_)))
                                                       _%methods169077%_
                                                       _%$methods169081%_))
                                                     (_%methods-bind169100%_
                                                      (map (lambda (_%g169092169095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169093169097%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind168506%_
                        _%$klass169073%_
                        _%$method-table169075%_
                        _%g169092169095%_
                        _%g169093169097%_)))
                   _%methods169077%_
                   _%$methods169081%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169102%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs168597%_)))
                                                     (_%$slots169106%_
                                                      (map (lambda (_%id169104%_)
                                                             (let ((__tmp172577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169104%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172577)))
                   _%slots169102%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169115%_
                                                      (for-each
                                                       (lambda (_%g169107169110%_
                                                                _%g169108169112%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs168597%_
                                                            _%g169107169110%_
                                                            _%g169108169112%_)))
                                                       _%slots169102%_
                                                       _%$slots169106%_))
                                                     (_%slots-bind169124%_
                                                      (map (lambda (_%g169116169119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169117169121%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind168507%_
                        _%$klass169073%_
                        _%g169116169119%_
                        _%g169117169121%_)))
                   _%slots169102%_
                   _%$slots169106%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body169130%_
                                                      (map (lambda (_%g169125169127%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs__%
                        '#f
                        _%L169044%_
                        _%$klass169073%_
                        _%method-calls168596%_
                        _%slot-refs168597%_
                        _%g169125169127%_)))
                   _%L169042%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169132%_
                                                      (let ((__tmp172578
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L169044%_ _%L169043%_)
                                 _%specializer-body169130%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp172578 _%stx168504%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169134%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl168508%_
                                                         _%$klass169073%_
                                                         _%$method-table169075%_
                                                         _%methods-bind169100%_
                                                         _%slots-bind169124%_
                                                         _%specializer-impl169132%_))))
                                                (let ((__tmp172580
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168577%_)))
                                                      (__tmp172579
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id169071%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp172580
                                                   '" => "
                                                   __tmp172579))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def168509%_
                                                   _%L168577%_
                                                   _%specializer-id169071%_
                                                   _%specializer-impl169134%_))))))
                                       (_%__kont171427171428%_
                                        (lambda () _%stx168504%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx171423171424%_))
                                       (let ((_%e168995169018%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx171423171424%_))))
                                         (let ((_%tl168993169023%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e168995169018%_)))
                                               (_%hd168994169021%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e168995169018%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl168993169023%_))
                                               (let ((_%e168998169026%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl168993169023%_))))
                                                 (let ((_%tl168996169031%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e168998169026%_)))
                                                       (_%hd168997169029%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e168998169026%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd168997169029%_))
                                                       (let ((_%e169001169034%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd168997169029%_))))
                 (let ((_%tl168999169039%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169001169034%_)))
                       (_%hd169000169037%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169001169034%_))))
                   (_%__kont171425171426%_
                    _%tl168996169031%_
                    _%tl168999169039%_
                    _%hd169000169037%_)))
               (_%__kont171427171428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont171427171428%_))))
                                       (_%__kont171427171428%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L168576%_))
                                 (let ()
                                   (let* ((_%g169141169160%_
                                           (lambda (_%g169142169157%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g169142169157%_))))
                                          (_%g169140169447%_
                                           (lambda (_%g169142169163%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g169142169163%_))
                                                 (let ((_%e169146169165%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g169142169163%_))))
                                                   (let ((_%hd169145169168%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169146169165%_)))
                                                         (_%tl169144169170%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169146169165%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl169144169170%_))
                                                         (let ((_g172581_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl169144169170%_ '0))))
                   (begin
                     (let ((_g172582_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g172581_)
                                  (##vector-length _g172581_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g172582_ 2)))
                           (error "Context expects 2 values" _g172582_)))
                     (let ((_%target169147169173%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172581_ 0)))
                           (_%tl169149169175%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172581_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169149169175%_))
                           (letrec ((_%loop169150169178%_
                                     (lambda (_%hd169148169181%_
                                              _%clause169154169183%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169148169181%_))
                                           (let ((_%e169151169186%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169148169181%_))))
                                             (let ((_%lp-hd169152169189%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169151169186%_)))
                                                   (_%lp-tl169153169191%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169151169186%_))))
                                               (let ((__tmp172583
                                                      (cons _%lp-hd169152169189%_
                                                            _%clause169154169183%_)))
                                                 (declare (not safe))
                                                 (_%loop169150169178%_
                                                  _%lp-tl169153169191%_
                                                  __tmp172583))))
                                           (let ((_%clause169155169194%_
                                                  (reverse _%clause169154169183%_)))
                                             ((lambda (_%L169197%_)
                                                (for-each
                                                 (lambda (_%clause169211%_)
                                                   (let* ((_%__stx171449171450%_
                                                           _%clause169211%_)
                                                          (_%g169214169229%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx171449171450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont171451171452%_
                                                            (lambda (_%L169257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L169258%_
                             _%L169259%_)
                      (for-each
                       (lambda (_%g169274169276%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs__%
                            '#f
                            _%L169259%_
                            _%method-calls168596%_
                            _%slot-refs168597%_
                            _%g169274169276%_)))
                       _%L169257%_)))
                   (_%__kont171453171454%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx171449171450%_))
                   (let ((_%e169221169241%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx171449171450%_))))
                     (let ((_%tl169219169246%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169221169241%_)))
                           (_%hd169220169244%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169221169241%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169220169244%_))
                           (let ((_%e169224169249%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169220169244%_))))
                             (let ((_%tl169222169254%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169224169249%_)))
                                   (_%hd169223169252%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169224169249%_))))
                               (_%__kont171451171452%_
                                _%tl169219169246%_
                                _%tl169222169254%_
                                _%hd169223169252%_)))
                           (_%__kont171453171454%_))))
                   (_%__kont171453171454%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp172584
                                                        (lambda (_%g169281169284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169282169286%_)
                  (cons _%g169281169284%_ _%g169282169286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172584
                                                    '()
                                                    _%L169197%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?168600%_))
                                                    _%stx168504%_
                                                    (let* ((_%specializer-id169295%_
                                                            (let* ((_%id169289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp172585
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168577%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp172585 '"::specialize")))
                           (_%specializer-id169292%_
                            (let ((__tmp172586
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx168504%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id169289%_
                               __tmp172586))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id169292%_))
                      _%specializer-id169292%_))
                   (_%$klass169297%_
                    (let ((__tmp172587
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172587)))
                   (_%$method-table169299%_
                    (let ((__tmp172588
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172588)))
                   (_%methods169301%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls168596%_)))
                   (_%$methods169305%_
                    (map (lambda (_%id169303%_)
                           (let ((__tmp172589 (gensym _%id169303%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172589)))
                         _%methods169301%_))
                   (_%_169314%_
                    (for-each
                     (lambda (_%g169306169309%_ _%g169307169311%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls168596%_
                          _%g169306169309%_
                          _%g169307169311%_)))
                     _%methods169301%_
                     _%$methods169305%_))
                   (_%methods-bind169324%_
                    (map (lambda (_%g169316169319%_ _%g169317169321%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind168506%_
                              _%$klass169297%_
                              _%$method-table169299%_
                              _%g169316169319%_
                              _%g169317169321%_)))
                         _%methods169301%_
                         _%$methods169305%_))
                   (_%slots169326%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs168597%_)))
                   (_%$slots169330%_
                    (map (lambda (_%id169328%_)
                           (let ((__tmp172590 (gensym _%id169328%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172590)))
                         _%slots169326%_))
                   (_%_169339%_
                    (for-each
                     (lambda (_%g169331169334%_ _%g169332169336%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs168597%_
                          _%g169331169334%_
                          _%g169332169336%_)))
                     _%slots169326%_
                     _%$slots169330%_))
                   (_%slots-bind169348%_
                    (map (lambda (_%g169340169343%_ _%g169341169345%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind168507%_
                              _%$klass169297%_
                              _%g169340169343%_
                              _%g169341169345%_)))
                         _%slots169326%_
                         _%$slots169330%_))
                   (_%specializer-clauses169440%_
                    (map (lambda (_%clause169350%_)
                           (let* ((_%__stx171469171470%_ _%clause169350%_)
                                  (_%g169353169368%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx171469171470%_)))))
                             (let ((_%__kont171471171472%_
                                    (lambda (_%L169396%_
                                             _%L169397%_
                                             _%L169398%_)
                                      (let ((_%body169428%_
                                             (map (lambda (_%g169423169425%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs__%
                                                       '#f
                                                       _%L169398%_
                                                       _%$klass169297%_
                                                       _%method-calls168596%_
                                                       _%slot-refs168597%_
                                                       _%g169423169425%_)))
                                                  _%L169396%_)))
                                        (cons (cons _%L169398%_ _%L169397%_)
                                              _%body169428%_))))
                                   (_%__kont171473171474%_
                                    (lambda () _%clause169350%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx171469171470%_))
                                   (let ((_%e169360169380%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx171469171470%_))))
                                     (let ((_%tl169358169385%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169360169380%_)))
                                           (_%hd169359169383%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169360169380%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169359169383%_))
                                           (let ((_%e169363169388%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169359169383%_))))
                                             (let ((_%tl169361169393%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169363169388%_)))
                                                   (_%hd169362169391%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169363169388%_))))
                                               (_%__kont171471171472%_
                                                _%tl169358169385%_
                                                _%tl169361169393%_
                                                _%hd169362169391%_)))
                                           (_%__kont171473171474%_))))
                                   (_%__kont171473171474%_)))))
                         (let ((__tmp172591
                                (lambda (_%g169432169435%_ _%g169433169437%_)
                                  (cons _%g169432169435%_ _%g169433169437%_))))
                           (declare (not safe))
                           (__foldr1 __tmp172591 '() _%L169197%_))))
                   (_%specializer-impl169442%_
                    (let ((__tmp172592
                           (cons '%#case-lambda
                                 _%specializer-clauses169440%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172592 _%stx168504%_)))
                   (_%specializer-impl169444%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl168508%_
                       _%$klass169297%_
                       _%$method-table169299%_
                       _%methods-bind169324%_
                       _%slots-bind169348%_
                       _%specializer-impl169442%_))))
              (let ((__tmp172594
                     (let () (declare (not safe)) (gx#stx-e _%L168577%_)))
                    (__tmp172593
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id169295%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp172594
                 '" => "
                 __tmp172593))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def168509%_
                 _%L168577%_
                 _%specializer-id169295%_
                 _%specializer-impl169444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause169155169194%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop169150169178%_
                                _%target169147169173%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g169141169160%_ _%g169142169163%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g169141169160%_ _%g169142169163%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169141169160%_
                                                    _%g169142169163%_))))))
                                     (declare (not safe))
                                     (_%g169140169447%_ _%L168576%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L168576%_))
                                     (let ()
                                       (let* ((_%g169451169481%_
                                               (lambda (_%g169452169478%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g169452169478%_))))
                                              (_%g169450170090%_
                                               (lambda (_%g169452169484%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g169452169484%_))
                                                     (let ((_%e169458169486%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g169452169484%_))))
                                                       (let ((_%hd169457169489%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e169458169486%_)))
                     (_%tl169456169491%_
                      (let () (declare (not safe)) (##cdr _%e169458169486%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl169456169491%_))
                     (let ((_%e169461169494%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl169456169491%_))))
                       (let ((_%hd169460169497%_
                              (let ()
                                (declare (not safe))
                                (##car _%e169461169494%_)))
                             (_%tl169459169499%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e169461169494%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd169460169497%_))
                             (let ((_%e169464169502%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd169460169497%_))))
                               (let ((_%hd169463169505%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e169464169502%_)))
                                     (_%tl169462169507%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e169464169502%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd169463169505%_))
                                     (let ((_%e169467169510%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd169463169505%_))))
                                       (let ((_%hd169466169513%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169467169510%_)))
                                             (_%tl169465169515%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169467169510%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd169466169513%_))
                                             (let ((_%e169470169518%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd169466169513%_))))
                                               (let ((_%hd169469169521%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e169470169518%_)))
                                                     (_%tl169468169523%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e169470169518%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl169468169523%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl169465169515%_))
                                                         (let ((_%e169473169526%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl169465169515%_))))
                   (let ((_%hd169472169529%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169473169526%_)))
                         (_%tl169471169531%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169473169526%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl169471169531%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl169462169507%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl169459169499%_))
                                 (let ((_%e169476169534%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl169459169499%_))))
                                   (let ((_%hd169475169537%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e169476169534%_)))
                                         (_%tl169474169539%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e169476169534%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl169474169539%_))
                                         ((lambda (_%L169542%_
                                                   _%L169543%_
                                                   _%L169544%_)
                                            (let* ((_%g169568169586%_
                                                    (lambda (_%g169569169583%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169569169583%_))))
                                                   (_%g169567169637%_
                                                    (lambda (_%g169569169589%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169569169589%_))
                                                          (let ((_%e169575169591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169569169589%_))))
                    (let ((_%hd169574169594%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169575169591%_)))
                          (_%tl169573169596%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169575169591%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169573169596%_))
                          (let ((_%e169578169599%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169573169596%_))))
                            (let ((_%hd169577169602%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169578169599%_)))
                                  (_%tl169576169604%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169578169599%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169577169602%_))
                                  (let ((_%e169581169607%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169577169602%_))))
                                    (let ((_%hd169580169610%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169581169607%_)))
                                          (_%tl169579169612%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169581169607%_))))
                                      ((lambda (_%L169615%_
                                                _%L169616%_
                                                _%L169617%_)
                                         (for-each
                                          (lambda (_%g169632169634%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%L169617%_
                                               _%method-calls168596%_
                                               _%slot-refs168597%_
                                               _%g169632169634%_)))
                                          _%L169615%_))
                                       _%tl169576169604%_
                                       _%tl169579169612%_
                                       _%hd169580169610%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169568169586%_ _%g169569169589%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g169568169586%_ _%g169569169589%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169568169586%_ _%g169569169589%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169567169637%_ _%L169543%_))
                                            (let* ((_%g169640169659%_
                                                    (lambda (_%g169641169656%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169641169656%_))))
                                                   (_%g169639169778%_
                                                    (lambda (_%g169641169662%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169641169662%_))
                                                          (let ((_%e169645169664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169641169662%_))))
                    (let ((_%hd169644169667%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169645169664%_)))
                          (_%tl169643169669%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169645169664%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl169643169669%_))
                          (let ((_g172595_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl169643169669%_
                                    '0))))
                            (begin
                              (let ((_g172596_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g172595_)
                                           (##vector-length _g172595_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g172596_ 2)))
                                    (error "Context expects 2 values"
                                           _g172596_)))
                              (let ((_%target169646169672%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172595_ 0)))
                                    (_%tl169648169674%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172595_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169648169674%_))
                                    (letrec ((_%loop169649169677%_
                                              (lambda (_%hd169647169680%_
                                                       _%clause169653169682%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169647169680%_))
                                                    (let ((_%e169650169685%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169647169680%_))))
                                                      (let ((_%lp-hd169651169688%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169650169685%_)))
                    (_%lp-tl169652169690%_
                     (let () (declare (not safe)) (##cdr _%e169650169685%_))))
                (let ((__tmp172597
                       (cons _%lp-hd169651169688%_ _%clause169653169682%_)))
                  (declare (not safe))
                  (_%loop169649169677%_ _%lp-tl169652169690%_ __tmp172597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause169654169693%_
                                                           (reverse _%clause169653169682%_)))
                                                      ((lambda (_%L169696%_)
                                                         (for-each
                                                          (lambda (_%clause169709%_)
                                                            (let* ((_%g169711169726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g169712169723%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g169712169723%_))))
                           (_%g169710169768%_
                            (lambda (_%g169712169729%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g169712169729%_))
                                  (let ((_%e169718169731%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g169712169729%_))))
                                    (let ((_%hd169717169734%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169718169731%_)))
                                          (_%tl169716169736%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169718169731%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd169717169734%_))
                                          (let ((_%e169721169739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd169717169734%_))))
                                            (let ((_%hd169720169742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169721169739%_)))
                                                  (_%tl169719169744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169721169739%_))))
                                              ((lambda (_%L169747%_
                                                        _%L169748%_
                                                        _%L169749%_)
                                                 (for-each
                                                  (lambda (_%g169763169765%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%L169749%_
                                                       _%method-calls168596%_
                                                       _%slot-refs168597%_
                                                       _%g169763169765%_)))
                                                  _%L169747%_))
                                               _%tl169716169736%_
                                               _%tl169719169744%_
                                               _%hd169720169742%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169711169726%_
                                             _%g169712169729%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169711169726%_ _%g169712169729%_))))))
                      (declare (not safe))
                      (_%g169710169768%_ _%clause169709%_)))
                  (let ((__tmp172598
                         (lambda (_%g169770169773%_ _%g169771169775%_)
                           (cons _%g169770169773%_ _%g169771169775%_))))
                    (declare (not safe))
                    (__foldr1 __tmp172598 '() _%L169696%_))))
               _%clause169654169693%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop169649169677%_
                                         _%target169646169672%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169640169659%_
                                       _%g169641169662%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g169640169659%_ _%g169641169662%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169640169659%_ _%g169641169662%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169639169778%_ _%L169542%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?168600%_))
                                                _%stx168504%_
                                                (let* ((_%specializer-id169787%_
                                                        (let* ((_%id169781%_
                                                                (let ((__tmp172599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L168577%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp172599 '"::specialize")))
                       (_%specializer-id169784%_
                        (let ((__tmp172600
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx168504%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id169781%_ __tmp172600))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id169784%_))
                  _%specializer-id169784%_))
               (_%$klass169789%_
                (let ((__tmp172601
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172601)))
               (_%$method-table169791%_
                (let ((__tmp172602
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172602)))
               (_%methods169793%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls168596%_)))
               (_%$methods169797%_
                (map (lambda (_%id169795%_)
                       (let ((__tmp172603 (gensym _%id169795%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172603)))
                     _%methods169793%_))
               (_%_169806%_
                (for-each
                 (lambda (_%g169798169801%_ _%g169799169803%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls168596%_
                      _%g169798169801%_
                      _%g169799169803%_)))
                 _%methods169793%_
                 _%$methods169797%_))
               (_%methods-bind169816%_
                (map (lambda (_%g169808169811%_ _%g169809169813%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind168506%_
                          _%$klass169789%_
                          _%$method-table169791%_
                          _%g169808169811%_
                          _%g169809169813%_)))
                     _%methods169793%_
                     _%$methods169797%_))
               (_%slots169818%_
                (let () (declare (not safe)) (hash-keys _%slot-refs168597%_)))
               (_%$slots169822%_
                (map (lambda (_%id169820%_)
                       (let ((__tmp172604 (gensym _%id169820%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172604)))
                     _%slots169818%_))
               (_%_169831%_
                (for-each
                 (lambda (_%g169823169826%_ _%g169824169828%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs168597%_
                      _%g169823169826%_
                      _%g169824169828%_)))
                 _%slots169818%_
                 _%$slots169822%_))
               (_%slots-bind169840%_
                (map (lambda (_%g169832169835%_ _%g169833169837%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind168507%_
                          _%$klass169789%_
                          _%g169832169835%_
                          _%g169833169837%_)))
                     _%slots169818%_
                     _%$slots169822%_))
               (_%specializer-lambda-expr169926%_
                (let* ((_%g169842169860%_
                        (lambda (_%g169843169857%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169843169857%_))))
                       (_%g169841169923%_
                        (lambda (_%g169843169863%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169843169863%_))
                              (let ((_%e169849169865%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169843169863%_))))
                                (let ((_%hd169848169868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169849169865%_)))
                                      (_%tl169847169870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169849169865%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169847169870%_))
                                      (let ((_%e169852169873%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169847169870%_))))
                                        (let ((_%hd169851169876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169852169873%_)))
                                              (_%tl169850169878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169852169873%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169851169876%_))
                                              (let ((_%e169855169881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169851169876%_))))
                                                (let ((_%hd169854169884%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169855169881%_)))
                                                      (_%tl169853169886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169855169881%_))))
                                                  ((lambda (_%L169889%_
                                                            _%L169890%_
                                                            _%L169891%_)
                                                     (let* ((_%body169921%_
                                                             (map (lambda (_%g169916169918%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs__%
                               '#f
                               _%L169891%_
                               _%$klass169789%_
                               _%method-calls168596%_
                               _%slot-refs168597%_
                               _%g169916169918%_)))
                          _%L169889%_))
                    (__tmp172605
                     (cons '%#lambda
                           (cons (cons _%L169891%_ _%L169890%_)
                                 _%body169921%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp172605 _%L169543%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl169850169878%_
                                                   _%tl169853169886%_
                                                   _%hd169854169884%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g169842169860%_
                                                 _%g169843169863%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169842169860%_
                                         _%g169843169863%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169842169860%_ _%g169843169863%_))))))
                  (declare (not safe))
                  (_%g169841169923%_ _%L169543%_)))
               (_%specializer-case-lambda-expr170083%_
                (let* ((_%g169928169947%_
                        (lambda (_%g169929169944%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169929169944%_))))
                       (_%g169927170080%_
                        (lambda (_%g169929169950%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169929169950%_))
                              (let ((_%e169933169952%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169929169950%_))))
                                (let ((_%hd169932169955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169933169952%_)))
                                      (_%tl169931169957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169933169952%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl169931169957%_))
                                      (let ((_g172606_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl169931169957%_
                                                '0))))
                                        (begin
                                          (let ((_g172607_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g172606_)
                                                       (##vector-length
                                                        _g172606_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g172607_ 2)))
                                                (error "Context expects 2 values"
                                                       _g172607_)))
                                          (let ((_%target169934169960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g172606_ 0)))
                                                (_%tl169936169962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g172606_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169936169962%_))
                                                (letrec ((_%loop169937169965%_
                                                          (lambda (_%hd169935169968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause169941169970%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169935169968%_))
                        (let ((_%e169938169973%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169935169968%_))))
                          (let ((_%lp-hd169939169976%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169938169973%_)))
                                (_%lp-tl169940169978%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169938169973%_))))
                            (let ((__tmp172608
                                   (cons _%lp-hd169939169976%_
                                         _%clause169941169970%_)))
                              (declare (not safe))
                              (_%loop169937169965%_
                               _%lp-tl169940169978%_
                               __tmp172608))))
                        (let ((_%clause169942169981%_
                               (reverse _%clause169941169970%_)))
                          ((lambda (_%L169984%_)
                             (let* ((_%clauses170078%_
                                     (map (lambda (_%clause169998%_)
                                            (let* ((_%__stx171489171490%_
                                                    _%clause169998%_)
                                                   (_%g170001170016%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx171489171490%_)))))
                                              (let ((_%__kont171491171492%_
                                                     (lambda (_%L170044%_
                                                              _%L170045%_
                                                              _%L170046%_)
                                                       (let ((_%body170066%_
                                                              (map (lambda (_%g170061170063%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs__%
                                '#f
                                _%L170046%_
                                _%$klass169789%_
                                _%method-calls168596%_
                                _%slot-refs168597%_
                                _%g170061170063%_)))
                           _%L170044%_)))
                 (cons (cons _%L170046%_ _%L170045%_) _%body170066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171493171494%_
                                                     (lambda ()
                                                       _%clause169998%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx171489171490%_))
                                                    (let ((_%e170008170028%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx171489171490%_))))
                                                      (let ((_%tl170006170033%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170008170028%_)))
                    (_%hd170007170031%_
                     (let () (declare (not safe)) (##car _%e170008170028%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd170007170031%_))
                    (let ((_%e170011170036%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd170007170031%_))))
                      (let ((_%tl170009170041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170011170036%_)))
                            (_%hd170010170039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170011170036%_))))
                        (_%__kont171491171492%_
                         _%tl170006170033%_
                         _%tl170009170041%_
                         _%hd170010170039%_)))
                    (_%__kont171493171494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171493171494%_)))))
                                          (let ((__tmp172609
                                                 (lambda (_%g170070170073%_
                                                          _%g170071170075%_)
                                                   (cons _%g170070170073%_
                                                         _%g170071170075%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp172609
                                             '()
                                             _%L169984%_))))
                                    (__tmp172610
                                     (cons '%#case-lambda _%clauses170078%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp172610
                                _%L169542%_)))
                           _%clause169942169981%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop169937169965%_
                                                     _%target169934169960%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g169928169947%_
                                                   _%g169929169950%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169928169947%_
                                         _%g169929169950%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169928169947%_ _%g169929169950%_))))))
                  (declare (not safe))
                  (_%g169927170080%_ _%L169542%_)))
               (_%specializer-impl170085%_
                (let ((__tmp172611
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L169544%_ '())
                                               (cons _%specializer-lambda-expr169926%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr170083%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp172611 _%stx168504%_)))
               (_%specializer-impl170087%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl168508%_
                   _%$klass169789%_
                   _%$method-table169791%_
                   _%methods-bind169816%_
                   _%slots-bind169840%_
                   _%specializer-impl170085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp172613
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L168577%_)))
                                                        (__tmp172612
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id169787%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp172613
                                                     '" => "
                                                     __tmp172612))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def168509%_
                                                     _%L168577%_
                                                     _%specializer-id169787%_
                                                     _%specializer-impl170087%_)))))
                                          _%hd169475169537%_
                                          _%hd169472169529%_
                                          _%hd169469169521%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g169451169481%_
                                            _%g169452169484%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g169451169481%_ _%g169452169484%_)))
                             (let ()
                               (declare (not safe))
                               (_%g169451169481%_ _%g169452169484%_)))
                         (let ()
                           (declare (not safe))
                           (_%g169451169481%_ _%g169452169484%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g169451169481%_ _%g169452169484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169451169481%_
                                                        _%g169452169484%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169451169481%_
                                                _%g169452169484%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169451169481%_
                                        _%g169452169484%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g169451169481%_ _%g169452169484%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g169451169481%_ _%g169452169484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169451169481%_
                                                        _%g169452169484%_))))))
                                         (declare (not safe))
                                         (_%g169450170090%_ _%L168576%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L168576%_))
                                         (let ()
                                           (let* ((_%g170094170147%_
                                                   (lambda (_%g170095170144%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g170095170144%_))))
                                                  (_%g170093171290%_
                                                   (lambda (_%g170095170150%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g170095170150%_))
                                                         (let ((_%e170103170152%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g170095170150%_))))
                   (let ((_%hd170102170155%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170103170152%_)))
                         (_%tl170101170157%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170103170152%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd170102170155%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd170102170155%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl170101170157%_))
                                 (let ((_%e170106170160%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl170101170157%_))))
                                   (let ((_%hd170105170163%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e170106170160%_)))
                                         (_%tl170104170165%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e170106170160%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd170105170163%_))
                                         (let ((_%e170109170168%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd170105170163%_))))
                                           (let ((_%hd170108170171%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170109170168%_)))
                                                 (_%tl170107170173%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170109170168%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd170108170171%_))
                                                 (let ((_%e170112170176%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd170108170171%_))))
                                                   (let ((_%hd170111170179%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170112170176%_)))
                                                         (_%tl170110170181%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170112170176%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd170111170179%_))
                                                         (let ((_%e170115170184%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd170111170179%_))))
                   (let ((_%hd170114170187%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170115170184%_)))
                         (_%tl170113170189%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170115170184%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl170113170189%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl170110170181%_))
                             (let ((_%e170118170192%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl170110170181%_))))
                               (let ((_%hd170117170195%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170118170192%_)))
                                     (_%tl170116170197%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170118170192%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170117170195%_))
                                     (let ((_%e170121170200%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170117170195%_))))
                                       (let ((_%hd170120170203%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170121170200%_)))
                                             (_%tl170119170205%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170121170200%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd170120170203%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd170120170203%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl170119170205%_))
                                                     (let ((_%e170124170208%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl170119170205%_))))
                                                       (let ((_%hd170123170211%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e170124170208%_)))
                     (_%tl170122170213%_
                      (let () (declare (not safe)) (##cdr _%e170124170208%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd170123170211%_))
                     (let ((_%e170127170216%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd170123170211%_))))
                       (let ((_%hd170126170219%_
                              (let ()
                                (declare (not safe))
                                (##car _%e170127170216%_)))
                             (_%tl170125170221%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e170127170216%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd170126170219%_))
                             (let ((_%e170130170224%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd170126170219%_))))
                               (let ((_%hd170129170227%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170130170224%_)))
                                     (_%tl170128170229%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170130170224%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170129170227%_))
                                     (let ((_%e170133170232%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170129170227%_))))
                                       (let ((_%hd170132170235%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170133170232%_)))
                                             (_%tl170131170237%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170133170232%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl170131170237%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl170128170229%_))
                                                 (let ((_%e170136170240%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl170128170229%_))))
                                                   (let ((_%hd170135170243%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170136170240%_)))
                                                         (_%tl170134170245%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170136170240%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl170134170245%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl170125170221%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl170122170213%_))
                         (let ((_%e170139170248%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl170122170213%_))))
                           (let ((_%hd170138170251%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e170139170248%_)))
                                 (_%tl170137170253%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e170139170248%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl170137170253%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl170116170197%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl170107170173%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl170104170165%_))
                                             (let ((_%e170142170256%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl170104170165%_))))
                                               (let ((_%hd170141170259%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e170142170256%_)))
                                                     (_%tl170140170261%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e170142170256%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl170140170261%_))
                                                     ((lambda (_%L170264%_
                                                               _%L170265%_
                                                               _%L170266%_
                                                               _%L170267%_
                                                               _%L170268%_)
                                                        (let* ((_%g170308170370%_
                                                                (lambda (_%g170309170367%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g170309170367%_))))
                       (_%g170307171287%_
                        (lambda (_%g170309170373%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g170309170373%_))
                              (let ((_%e170317170375%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g170309170373%_))))
                                (let ((_%hd170316170378%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170317170375%_)))
                                      (_%tl170315170380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170317170375%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170316170378%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd170316170378%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170315170380%_))
                                              (let ((_%e170320170383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170315170380%_))))
                                                (let ((_%hd170319170386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170320170383%_)))
                                                      (_%tl170318170388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170320170383%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170318170388%_))
                                                      (let ((_%e170323170391%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170318170388%_))))
                (let ((_%hd170322170394%_
                       (let () (declare (not safe)) (##car _%e170323170391%_)))
                      (_%tl170321170396%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170323170391%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd170322170394%_))
                      (let ((_%e170326170399%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd170322170394%_))))
                        (let ((_%hd170325170402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170326170399%_)))
                              (_%tl170324170404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170326170399%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd170325170402%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd170325170402%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170324170404%_))
                                      (let ((_%e170329170407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170324170404%_))))
                                        (let ((_%hd170328170410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170329170407%_)))
                                              (_%tl170327170412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170329170407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170328170410%_))
                                              (let ((_%e170332170415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170328170410%_))))
                                                (let ((_%hd170331170418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170332170415%_)))
                                                      (_%tl170330170420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170332170415%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd170331170418%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd170331170418%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170330170420%_))
                      (let ((_%e170335170423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170330170420%_))))
                        (let ((_%hd170334170426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170335170423%_)))
                              (_%tl170333170428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170335170423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170333170428%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170327170412%_))
                                  (let ((_%e170338170431%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170327170412%_))))
                                    (let ((_%hd170337170434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170338170431%_)))
                                          (_%tl170336170436%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170338170431%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd170337170434%_))
                                          (let ((_%e170341170439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd170337170434%_))))
                                            (let ((_%hd170340170442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170341170439%_)))
                                                  (_%tl170339170444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170341170439%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd170340170442%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd170340170442%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170339170444%_))
                                                          (let ((_%e170344170447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170339170444%_))))
                    (let ((_%hd170343170450%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170344170447%_)))
                          (_%tl170342170452%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170344170447%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170342170452%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170336170436%_))
                              (let ((_%e170347170455%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170336170436%_))))
                                (let ((_%hd170346170458%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170347170455%_)))
                                      (_%tl170345170460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170347170455%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170346170458%_))
                                      (let ((_%e170350170463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170346170458%_))))
                                        (let ((_%hd170349170466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170350170463%_)))
                                              (_%tl170348170468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170350170463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd170349170466%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd170349170466%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170348170468%_))
                                                      (let ((_%e170353170471%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170348170468%_))))
                (let ((_%hd170352170474%_
                       (let () (declare (not safe)) (##car _%e170353170471%_)))
                      (_%tl170351170476%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170353170471%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170351170476%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl170345170460%_))
                          (if (let ((__tmp172614
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl170345170460%_))))
                                (declare (not safe))
                                (##fx>= __tmp172614 '1))
                              (let ((_g172615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl170345170460%_
                                        '1))))
                                (begin
                                  (let ((_g172616_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g172615_)
                                               (##vector-length _g172615_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g172616_ 2)))
                                        (error "Context expects 2 values"
                                               _g172616_)))
                                  (let ((_%target170354170479%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172615_ 0)))
                                        (_%tl170356170481%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172615_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170356170481%_))
                                        (let ((_%e170365170484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170356170481%_))))
                                          (let ((_%hd170364170487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170365170484%_)))
                                                (_%tl170363170489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170365170484%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170363170489%_))
                                                (letrec ((_%loop170357170492%_
                                                          (lambda (_%hd170355170495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref170361170497%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd170355170495%_))
                        (let ((_%e170358170500%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd170355170495%_))))
                          (let ((_%lp-hd170359170503%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170358170500%_)))
                                (_%lp-tl170360170505%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170358170500%_))))
                            (let ((__tmp172617
                                   (cons _%lp-hd170359170503%_
                                         _%kw-ref170361170497%_)))
                              (declare (not safe))
                              (_%loop170357170492%_
                               _%lp-tl170360170505%_
                               __tmp172617))))
                        (let ((_%kw-ref170362170508%_
                               (reverse _%kw-ref170361170497%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170321170396%_))
                              ((lambda (_%L170511%_
                                        _%L170512%_
                                        _%L170513%_
                                        _%L170514%_
                                        _%L170515%_)
                                 (let* ((_%kw-count170566%_
                                         (length (let ((__tmp172618
                                                        (lambda (_%g170558170561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170559170563%_)
                  (cons _%g170558170561%_ _%g170559170563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172618
                                                    '()
                                                    _%L170512%_))))
                                        (_%self-index170568%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count170566%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L170266%_))
                                       (let ()
                                         (let* ((_%g170572170586%_
                                                 (lambda (_%g170573170583%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g170573170583%_))))
                                                (_%g170571170703%_
                                                 (lambda (_%g170573170589%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g170573170589%_))
                                                       (let ((_%e170578170591%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g170573170589%_))))
                 (let ((_%hd170577170594%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170578170591%_)))
                       (_%tl170576170596%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170578170591%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl170576170596%_))
                       (let ((_%e170581170599%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170576170596%_))))
                         (let ((_%hd170580170602%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170581170599%_)))
                               (_%tl170579170604%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170581170599%_))))
                           ((lambda (_%L170607%_ _%L170608%_)
                              (let ((_%self170625%_
                                     (list-ref
                                      _%L170608%_
                                      _%self-index170568%_)))
                                (for-each
                                 (lambda (_%g170626170628%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs__%
                                      '#f
                                      _%self170625%_
                                      _%method-calls168596%_
                                      _%slot-refs168597%_
                                      _%g170626170628%_)))
                                 _%L170607%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?168600%_))
                                    _%stx168504%_
                                    (let* ((_%specializer-id170637%_
                                            (let* ((_%id170631%_
                                                    (let ((__tmp172619
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L168577%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp172619
                                                       '"::specialize")))
                                                   (_%specializer-id170634%_
                                                    (let ((__tmp172620
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx168504%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id170631%_
                                                       __tmp172620))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id170634%_))
                                              _%specializer-id170634%_))
                                           (_%$klass170639%_
                                            (let ((__tmp172621
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172621)))
                                           (_%$method-table170641%_
                                            (let ((__tmp172622
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172622)))
                                           (_%methods170643%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls168596%_)))
                                           (_%$methods170647%_
                                            (map (lambda (_%id170645%_)
                                                   (let ((__tmp172623
                                                          (gensym _%id170645%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172623)))
                                                 _%methods170643%_))
                                           (_%_170656%_
                                            (for-each
                                             (lambda (_%g170648170651%_
                                                      _%g170649170653%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls168596%_
                                                  _%g170648170651%_
                                                  _%g170649170653%_)))
                                             _%methods170643%_
                                             _%$methods170647%_))
                                           (_%methods-bind170666%_
                                            (map (lambda (_%g170658170661%_
                                                          _%g170659170663%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind168506%_
                                                      _%$klass170639%_
                                                      _%$method-table170641%_
                                                      _%g170658170661%_
                                                      _%g170659170663%_)))
                                                 _%methods170643%_
                                                 _%$methods170647%_))
                                           (_%slots170668%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs168597%_)))
                                           (_%$slots170672%_
                                            (map (lambda (_%id170670%_)
                                                   (let ((__tmp172624
                                                          (gensym _%id170670%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172624)))
                                                 _%slots170668%_))
                                           (_%_170681%_
                                            (for-each
                                             (lambda (_%g170673170676%_
                                                      _%g170674170678%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs168597%_
                                                  _%g170673170676%_
                                                  _%g170674170678%_)))
                                             _%slots170668%_
                                             _%$slots170672%_))
                                           (_%slots-bind170690%_
                                            (map (lambda (_%g170682170685%_
                                                          _%g170683170687%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind168507%_
                                                      _%$klass170639%_
                                                      _%g170682170685%_
                                                      _%g170683170687%_)))
                                                 _%slots170668%_
                                                 _%$slots170672%_))
                                           (_%specializer-impl170698%_
                                            (let* ((_%specializer-body170696%_
                                                    (map (lambda (_%g170691170693%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%self170625%_
                                                              _%$klass170639%_
                                                              _%method-calls168596%_
                                                              _%slot-refs168597%_
                                                              _%g170691170693%_)))
                                                         _%L170607%_))
                                                   (__tmp172625
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L170268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L170267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp172626
                                       (cons '%#lambda
                                             (cons _%L170608%_
                                                   _%specializer-body170696%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp172626
                                   _%L170266%_))
                                '()))
                    '())
              (cons _%L170265%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L170264%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp172625
                                               _%stx168504%_)))
                                           (_%specializer-impl170700%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl168508%_
                                               _%$klass170639%_
                                               _%$method-table170641%_
                                               _%methods-bind170666%_
                                               _%slots-bind170690%_
                                               _%specializer-impl170698%_))))
                                      (let ((__tmp172628
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L168577%_)))
                                            (__tmp172627
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id170637%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp172628
                                         '" => "
                                         __tmp172627))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def168509%_
                                         _%L168577%_
                                         _%specializer-id170637%_
                                         _%specializer-impl170700%_))))))
                            _%tl170579170604%_
                            _%hd170580170602%_)))
                       (let ()
                         (declare (not safe))
                         (_%g170572170586%_ _%g170573170589%_)))))
               (let ()
                 (declare (not safe))
                 (_%g170572170586%_ _%g170573170589%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g170571170703%_ _%L170266%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L170266%_))
                                           (let ()
                                             (let* ((_%g170707170737%_
                                                     (lambda (_%g170708170734%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g170708170734%_))))
                                                    (_%g170706171283%_
                                                     (lambda (_%g170708170740%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g170708170740%_))
                                                           (let ((_%e170714170742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g170708170740%_))))
                     (let ((_%hd170713170745%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170714170742%_)))
                           (_%tl170712170747%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170714170742%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl170712170747%_))
                           (let ((_%e170717170750%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl170712170747%_))))
                             (let ((_%hd170716170753%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170717170750%_)))
                                   (_%tl170715170755%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170717170750%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170716170753%_))
                                   (let ((_%e170720170758%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170716170753%_))))
                                     (let ((_%hd170719170761%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170720170758%_)))
                                           (_%tl170718170763%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170720170758%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd170719170761%_))
                                           (let ((_%e170723170766%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd170719170761%_))))
                                             (let ((_%hd170722170769%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e170723170766%_)))
                                                   (_%tl170721170771%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e170723170766%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd170722170769%_))
                                                   (let ((_%e170726170774%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd170722170769%_))))
                                                     (let ((_%hd170725170777%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170726170774%_)))
                                                           (_%tl170724170779%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170726170774%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl170724170779%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl170721170771%_))
                       (let ((_%e170729170782%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170721170771%_))))
                         (let ((_%hd170728170785%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170729170782%_)))
                               (_%tl170727170787%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170729170782%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl170727170787%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170718170763%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl170715170755%_))
                                       (let ((_%e170732170790%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl170715170755%_))))
                                         (let ((_%hd170731170793%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e170732170790%_)))
                                               (_%tl170730170795%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e170732170790%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl170730170795%_))
                                               ((lambda (_%L170798%_
                                                         _%L170799%_
                                                         _%L170800%_)
                                                  (let* ((_%g170824170838%_
                                                          (lambda (_%g170825170835%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170825170835%_))))
                                                         (_%g170823170879%_
                                                          (lambda (_%g170825170841%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170825170841%_))
                        (let ((_%e170830170843%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170825170841%_))))
                          (let ((_%hd170829170846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170830170843%_)))
                                (_%tl170828170848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170830170843%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170828170848%_))
                                (let ((_%e170833170851%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170828170848%_))))
                                  (let ((_%hd170832170854%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170833170851%_)))
                                        (_%tl170831170856%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170833170851%_))))
                                    ((lambda (_%L170859%_ _%L170860%_)
                                       (let ((_%self170873%_
                                              (list-ref
                                               _%L170860%_
                                               _%self-index170568%_)))
                                         (for-each
                                          (lambda (_%g170874170876%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%self170873%_
                                               _%method-calls168596%_
                                               _%slot-refs168597%_
                                               _%g170874170876%_)))
                                          _%L170859%_)))
                                     _%tl170831170856%_
                                     _%hd170832170854%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g170824170838%_ _%g170825170841%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170824170838%_ _%g170825170841%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170823170879%_
                                                     _%L170799%_))
                                                  (let* ((_%g170882170901%_
                                                          (lambda (_%g170883170898%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170883170898%_))))
                                                         (_%g170881171006%_
                                                          (lambda (_%g170883170904%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170883170904%_))
                        (let ((_%e170887170906%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170883170904%_))))
                          (let ((_%hd170886170909%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170887170906%_)))
                                (_%tl170885170911%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170887170906%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl170885170911%_))
                                (let ((_g172629_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl170885170911%_
                                          '0))))
                                  (begin
                                    (let ((_g172630_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g172629_)
                                                 (##vector-length _g172629_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g172630_ 2)))
                                          (error "Context expects 2 values"
                                                 _g172630_)))
                                    (let ((_%target170888170914%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172629_ 0)))
                                          (_%tl170890170916%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172629_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170890170916%_))
                                          (letrec ((_%loop170891170919%_
                                                    (lambda (_%hd170889170922%_
                                                             _%clause170895170924%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd170889170922%_))
                                                          (let ((_%e170892170927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd170889170922%_))))
                    (let ((_%lp-hd170893170930%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170892170927%_)))
                          (_%lp-tl170894170932%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170892170927%_))))
                      (let ((__tmp172631
                             (cons _%lp-hd170893170930%_
                                   _%clause170895170924%_)))
                        (declare (not safe))
                        (_%loop170891170919%_
                         _%lp-tl170894170932%_
                         __tmp172631))))
                  (let ((_%clause170896170935%_
                         (reverse _%clause170895170924%_)))
                    ((lambda (_%L170938%_)
                       (for-each
                        (lambda (_%clause170951%_)
                          (let* ((_%g170953170964%_
                                  (lambda (_%g170954170961%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g170954170961%_))))
                                 (_%g170952170996%_
                                  (lambda (_%g170954170967%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g170954170967%_))
                                        (let ((_%e170959170969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g170954170967%_))))
                                          (let ((_%hd170958170972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170959170969%_)))
                                                (_%tl170957170974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170959170969%_))))
                                            ((lambda (_%L170977%_ _%L170978%_)
                                               (let ((_%self170990%_
                                                      (list-ref
                                                       _%L170978%_
                                                       _%self-index170568%_)))
                                                 (for-each
                                                  (lambda (_%g170991170993%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%self170990%_
                                                       _%method-calls168596%_
                                                       _%slot-refs168597%_
                                                       _%g170991170993%_)))
                                                  _%L170977%_)))
                                             _%tl170957170974%_
                                             _%hd170958170972%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170953170964%_
                                           _%g170954170967%_))))))
                            (declare (not safe))
                            (_%g170952170996%_ _%clause170951%_)))
                        (let ((__tmp172632
                               (lambda (_%g170998171001%_ _%g170999171003%_)
                                 (cons _%g170998171001%_ _%g170999171003%_))))
                          (declare (not safe))
                          (__foldr1 __tmp172632 '() _%L170938%_))))
                     _%clause170896170935%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop170891170919%_
                                               _%target170888170914%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170882170901%_
                                             _%g170883170904%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g170882170901%_ _%g170883170904%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170882170901%_ _%g170883170904%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170881171006%_
                                                     _%L170798%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?168600%_))
                                                      _%stx168504%_
                                                      (let* ((_%specializer-id171015%_
                                                              (let* ((_%id171009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp172633
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L168577%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp172633 '"::specialize")))
                             (_%specializer-id171012%_
                              (let ((__tmp172634
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx168504%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id171009%_
                                 __tmp172634))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id171012%_))
                        _%specializer-id171012%_))
                     (_%$klass171017%_
                      (let ((__tmp172635
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172635)))
                     (_%$method-table171019%_
                      (let ((__tmp172636
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172636)))
                     (_%methods171021%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls168596%_)))
                     (_%$methods171025%_
                      (map (lambda (_%id171023%_)
                             (let ((__tmp172637 (gensym _%id171023%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172637)))
                           _%methods171021%_))
                     (_%_171034%_
                      (for-each
                       (lambda (_%g171026171029%_ _%g171027171031%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls168596%_
                            _%g171026171029%_
                            _%g171027171031%_)))
                       _%methods171021%_
                       _%$methods171025%_))
                     (_%methods-bind171044%_
                      (map (lambda (_%g171036171039%_ _%g171037171041%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind168506%_
                                _%$klass171017%_
                                _%$method-table171019%_
                                _%g171036171039%_
                                _%g171037171041%_)))
                           _%methods171021%_
                           _%$methods171025%_))
                     (_%slots171046%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs168597%_)))
                     (_%$slots171050%_
                      (map (lambda (_%id171048%_)
                             (let ((__tmp172638 (gensym _%id171048%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172638)))
                           _%slots171046%_))
                     (_%_171059%_
                      (for-each
                       (lambda (_%g171051171054%_ _%g171052171056%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs168597%_
                            _%g171051171054%_
                            _%g171052171056%_)))
                       _%slots171046%_
                       _%$slots171050%_))
                     (_%slots-bind171068%_
                      (map (lambda (_%g171060171063%_ _%g171061171065%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind168507%_
                                _%$klass171017%_
                                _%g171060171063%_
                                _%g171061171065%_)))
                           _%slots171046%_
                           _%$slots171050%_))
                     (_%specializer-lambda-expr171141%_
                      (let* ((_%g171070171084%_
                              (lambda (_%g171071171081%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171071171081%_))))
                             (_%g171069171138%_
                              (lambda (_%g171071171087%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171071171087%_))
                                    (let ((_%e171076171089%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171071171087%_))))
                                      (let ((_%hd171075171092%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171076171089%_)))
                                            (_%tl171074171094%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171076171089%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171074171094%_))
                                            (let ((_%e171079171097%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171074171094%_))))
                                              (let ((_%hd171078171100%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171079171097%_)))
                                                    (_%tl171077171102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171079171097%_))))
                                                ((lambda (_%L171105%_
                                                          _%L171106%_)
                                                   (let* ((_%self171129%_
                                                           (list-ref
                                                            _%L171106%_
                                                            _%self-index170568%_))
                                                          (_%body171135%_
                                                           (map (lambda (_%g171130171132%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%self171129%_
                             _%$klass171017%_
                             _%method-calls168596%_
                             _%slot-refs168597%_
                             _%g171130171132%_)))
                        _%L171105%_))
                  (__tmp172639
                   (cons '%#lambda (cons _%L171106%_ _%body171135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172639
                                                      _%L170799%_)))
                                                 _%tl171077171102%_
                                                 _%hd171078171100%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g171070171084%_
                                               _%g171071171087%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171070171084%_
                                       _%g171071171087%_))))))
                        (declare (not safe))
                        (_%g171069171138%_ _%L170799%_)))
                     (_%specializer-case-lambda-expr171276%_
                      (let* ((_%g171143171162%_
                              (lambda (_%g171144171159%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171144171159%_))))
                             (_%g171142171273%_
                              (lambda (_%g171144171165%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171144171165%_))
                                    (let ((_%e171148171167%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171144171165%_))))
                                      (let ((_%hd171147171170%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171148171167%_)))
                                            (_%tl171146171172%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171148171167%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl171146171172%_))
                                            (let ((_g172640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl171146171172%_
                                                      '0))))
                                              (begin
                                                (let ((_g172641_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g172640_)
                                                             (##vector-length
                                                              _g172640_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g172641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g172641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target171149171175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172640_
                                                          0)))
                                                      (_%tl171151171177%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172640_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171151171177%_))
                                                      (letrec ((_%loop171152171180%_
                                                                (lambda (_%hd171150171183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause171156171185%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd171150171183%_))
                              (let ((_%e171153171188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd171150171183%_))))
                                (let ((_%lp-hd171154171191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171153171188%_)))
                                      (_%lp-tl171155171193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171153171188%_))))
                                  (let ((__tmp172642
                                         (cons _%lp-hd171154171191%_
                                               _%clause171156171185%_)))
                                    (declare (not safe))
                                    (_%loop171152171180%_
                                     _%lp-tl171155171193%_
                                     __tmp172642))))
                              (let ((_%clause171157171196%_
                                     (reverse _%clause171156171185%_)))
                                ((lambda (_%L171199%_)
                                   (let* ((_%clauses171271%_
                                           (map (lambda (_%clause171213%_)
                                                  (let* ((_%g171215171226%_
                                                          (lambda (_%g171216171223%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g171216171223%_))))
                                                         (_%g171214171261%_
                                                          (lambda (_%g171216171229%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g171216171229%_))
                        (let ((_%e171221171231%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g171216171229%_))))
                          (let ((_%hd171220171234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171221171231%_)))
                                (_%tl171219171236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171221171231%_))))
                            ((lambda (_%L171239%_ _%L171240%_)
                               (let* ((_%self171252%_
                                       (list-ref
                                        _%L171240%_
                                        _%self-index170568%_))
                                      (_%body171258%_
                                       (map (lambda (_%g171253171255%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%self171252%_
                                                 _%$klass171017%_
                                                 _%method-calls168596%_
                                                 _%slot-refs168597%_
                                                 _%g171253171255%_)))
                                            _%L171239%_)))
                                 (cons _%L171240%_ _%body171258%_)))
                             _%tl171219171236%_
                             _%hd171220171234%_)))
                        (let ()
                          (declare (not safe))
                          (_%g171215171226%_ _%g171216171229%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g171214171261%_
                                                     _%clause171213%_)))
                                                (let ((__tmp172643
                                                       (lambda (_%g171263171266%_
                                                                _%g171264171268%_)
                                                         (cons _%g171263171266%_
                                                               _%g171264171268%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172643
                                                   '()
                                                   _%L171199%_))))
                                          (__tmp172644
                                           (cons '%#case-lambda
                                                 _%clauses171271%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp172644
                                      _%L170798%_)))
                                 _%clause171157171196%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop171152171180%_ _%target171149171175%_ '())))
              (let ()
                (declare (not safe))
                (_%g171143171162%_ _%g171144171165%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g171143171162%_
                                               _%g171144171165%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171143171162%_
                                       _%g171144171165%_))))))
                        (declare (not safe))
                        (_%g171142171273%_ _%L170798%_)))
                     (_%specializer-impl171278%_
                      (let ((__tmp172645
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L170268%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L170267%_ '())
                                           (cons (let ((__tmp172646
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L170800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr171141%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr171276%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp172646
                                                    _%stx168504%_))
                                                 '()))
                                     '())
                               (cons _%L170265%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L170264%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp172645 _%stx168504%_)))
                     (_%specializer-impl171280%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl168508%_
                         _%$klass171017%_
                         _%$method-table171019%_
                         _%methods-bind171044%_
                         _%slots-bind171068%_
                         _%specializer-impl171278%_))))
                (let ((__tmp172648
                       (let () (declare (not safe)) (gx#stx-e _%L168577%_)))
                      (__tmp172647
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id171015%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp172648
                   '" => "
                   __tmp172647))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def168509%_
                   _%L168577%_
                   _%specializer-id171015%_
                   _%specializer-impl171280%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd170731170793%_
                                                _%hd170728170785%_
                                                _%hd170725170777%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g170707170737%_
                                                  _%g170708170740%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g170707170737%_
                                          _%g170708170740%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170707170737%_ _%g170708170740%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g170707170737%_ _%g170708170740%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g170707170737%_ _%g170708170740%_)))
                   (let ()
                     (declare (not safe))
                     (_%g170707170737%_ _%g170708170740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g170707170737%_
                                                      _%g170708170740%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g170707170737%_
                                              _%g170708170740%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170707170737%_ _%g170708170740%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g170707170737%_ _%g170708170740%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g170707170737%_ _%g170708170740%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g170706171283%_
                                                _%L170266%_)))
                                           (let () _%stx168504%_)))))
                               _%hd170364170487%_
                               _%kw-ref170362170508%_
                               _%hd170352170474%_
                               _%hd170343170450%_
                               _%hd170334170426%_)
                              (let ()
                                (declare (not safe))
                                (_%g170308170370%_ _%g170309170373%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop170357170492%_
                                                     _%target170354170479%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170308170370%_
                                                   _%g170309170373%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170308170370%_
                                           _%g170309170373%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g170308170370%_ _%g170309170373%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170308170370%_ _%g170309170373%_)))
                      (let ()
                        (declare (not safe))
                        (_%g170308170370%_ _%g170309170373%_)))))
              (let ()
                (declare (not safe))
                (_%g170308170370%_ _%g170309170373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170308170370%_
                                                     _%g170309170373%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170308170370%_
                                                 _%g170309170373%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170308170370%_
                                         _%g170309170373%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170308170370%_ _%g170309170373%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170308170370%_ _%g170309170373%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g170308170370%_ _%g170309170373%_)))
              (let ()
                (declare (not safe))
                (_%g170308170370%_ _%g170309170373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170308170370%_
                                                     _%g170309170373%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170308170370%_
                                             _%g170309170373%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170308170370%_ _%g170309170373%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170308170370%_ _%g170309170373%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170308170370%_ _%g170309170373%_)))
                  (let ()
                    (declare (not safe))
                    (_%g170308170370%_ _%g170309170373%_)))
              (let ()
                (declare (not safe))
                (_%g170308170370%_ _%g170309170373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170308170370%_
                                                 _%g170309170373%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170308170370%_ _%g170309170373%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170308170370%_ _%g170309170373%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170308170370%_ _%g170309170373%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170308170370%_ _%g170309170373%_)))))
              (let ()
                (declare (not safe))
                (_%g170308170370%_ _%g170309170373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170308170370%_
                                                 _%g170309170373%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170308170370%_
                                             _%g170309170373%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170308170370%_
                                         _%g170309170373%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170308170370%_ _%g170309170373%_))))))
                  (declare (not safe))
                  (_%g170307171287%_ _%L170265%_)))
              _%hd170141170259%_
              _%hd170138170251%_
              _%hd170135170243%_
              _%hd170132170235%_
              _%hd170114170187%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170094170147%_
                                                        _%g170095170150%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170094170147%_
                                                _%g170095170150%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170094170147%_
                                            _%g170095170150%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170094170147%_ _%g170095170150%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170094170147%_ _%g170095170150%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g170094170147%_ _%g170095170150%_)))
                     (let ()
                       (declare (not safe))
                       (_%g170094170147%_ _%g170095170150%_)))
                 (let ()
                   (declare (not safe))
                   (_%g170094170147%_ _%g170095170150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170094170147%_
                                                    _%g170095170150%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170094170147%_
                                                _%g170095170150%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170094170147%_
                                        _%g170095170150%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170094170147%_ _%g170095170150%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g170094170147%_ _%g170095170150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170094170147%_
                                                        _%g170095170150%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170094170147%_
                                                    _%g170095170150%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170094170147%_
                                                _%g170095170150%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170094170147%_
                                        _%g170095170150%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170094170147%_ _%g170095170150%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170094170147%_ _%g170095170150%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170094170147%_ _%g170095170150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170094170147%_
                                                    _%g170095170150%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170094170147%_
                                            _%g170095170150%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170094170147%_ _%g170095170150%_)))
                             (let ()
                               (declare (not safe))
                               (_%g170094170147%_ _%g170095170150%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170094170147%_ _%g170095170150%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170094170147%_ _%g170095170150%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g170093171290%_ _%L168576%_)))
                                         (let () _%stx168504%_)))))))))
                  (_%__kont171513171514%_ (lambda () _%stx168504%_)))
              (let ((_%__match171542171543%_
                     (lambda (_%e168518168544%_
                              _%hd168517168547%_
                              _%tl168516168549%_
                              _%e168521168552%_
                              _%hd168520168555%_
                              _%tl168519168557%_
                              _%e168524168560%_
                              _%hd168523168563%_
                              _%tl168522168565%_
                              _%e168527168568%_
                              _%hd168526168571%_
                              _%tl168525168573%_)
                       (let ((_%L168576%_ _%hd168526168571%_)
                             (_%L168577%_ _%hd168523168563%_))
                         (if (let ((__tmp172649
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168577%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp172649))
                             (_%__kont171511171512%_ _%L168576%_ _%L168577%_)
                             (_%__kont171513171514%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171509171510%_))
                    (let ((_%e168518168544%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171509171510%_))))
                      (let ((_%tl168516168549%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168518168544%_)))
                            (_%hd168517168547%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168518168544%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168516168549%_))
                            (let ((_%e168521168552%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168516168549%_))))
                              (let ((_%tl168519168557%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168521168552%_)))
                                    (_%hd168520168555%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168521168552%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd168520168555%_))
                                    (let ((_%e168524168560%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd168520168555%_))))
                                      (let ((_%tl168522168565%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168524168560%_)))
                                            (_%hd168523168563%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168524168560%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168522168565%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168519168557%_))
                                                (let ((_%e168527168568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168519168557%_))))
                                                  (let ((_%tl168525168573%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168527168568%_)))
                                                        (_%hd168526168571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168527168568%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168525168573%_))
                                                        (_%__match171542171543%_
                                                         _%e168518168544%_
                                                         _%hd168517168547%_
                                                         _%tl168516168549%_
                                                         _%e168521168552%_
                                                         _%hd168520168555%_
                                                         _%tl168519168557%_
                                                         _%e168524168560%_
                                                         _%hd168523168563%_
                                                         _%tl168522168565%_
                                                         _%e168527168568%_
                                                         _%hd168526168571%_
                                                         _%tl168525168573%_)
                                                        (_%__kont171513171514%_))))
                                                (_%__kont171513171514%_))
                                            (_%__kont171513171514%_))))
                                    (_%__kont171513171514%_))))
                            (_%__kont171513171514%_))))
                    (_%__kont171513171514%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self167464%_ _%stx167465%_)
        (let* ((_%__stx171545171546%_ _%stx167465%_)
               (_%g167473167695%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171545171546%_)))))
          (let ((_%__kont171547171548%_
                 (lambda (_%L168452%_ _%L168453%_ _%L168454%_ _%L168455%_)
                   (let ((__tmp172651
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167464%_ 'methods)))
                         (__tmp172650
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168453%_))))
                     (declare (not safe))
                     (hash-put! __tmp172651 __tmp172650 '#t))
                   (for-each
                    (lambda (_%g168488168490%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167464%_ _%g168488168490%_)))
                    (let ((__tmp172652
                           (lambda (_%g168492168495%_ _%g168493168497%_)
                             (cons _%g168492168495%_ _%g168493168497%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172652 '() _%L168452%_)))))
                (_%__kont171551171552%_
                 (lambda (_%L168287%_
                          _%L168288%_
                          _%L168289%_
                          _%L168290%_
                          _%L168291%_)
                   (let ((__tmp172654
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167464%_ 'methods)))
                         (__tmp172653
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168288%_))))
                     (declare (not safe))
                     (hash-put! __tmp172654 __tmp172653 '#t))
                   (for-each
                    (lambda (_%g168331168333%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167464%_ _%g168331168333%_)))
                    (let ((__tmp172655
                           (lambda (_%g168335168338%_ _%g168336168340%_)
                             (cons _%g168335168338%_ _%g168336168340%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172655 '() _%L168287%_)))))
                (_%__kont171555171556%_
                 (lambda (_%L168120%_ _%L168121%_ _%L168122%_)
                   (let ((__tmp172657
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167464%_ 'slots)))
                         (__tmp172656
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168120%_))))
                     (declare (not safe))
                     (hash-put! __tmp172657 __tmp172656 '#t))))
                (_%__kont171557171558%_
                 (lambda (_%L167997%_ _%L167998%_ _%L167999%_ _%L168000%_)
                   (let ((__tmp172659
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167464%_ 'slots)))
                         (__tmp172658
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167998%_))))
                     (declare (not safe))
                     (hash-put! __tmp172659 __tmp172658 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self167464%_ _%L167997%_))))
                (_%__kont171559171560%_
                 (lambda (_%L167871%_ _%L167872%_)
                   (let* ((_%accessor167894%_
                           (let ((__tmp172660
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167872%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172660)))
                          (_%klass167896%_
                           (let ((__tmp172661
                                  (##structure-ref
                                   _%accessor167894%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167465%_
                              __tmp172661)))
                          (_%slot167898%_
                           (##structure-ref
                            _%accessor167894%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp172662
                                     (##structure-ref
                                      _%accessor167894%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172662))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167896%_
                                     _%slot167898%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167896%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172664
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167464%_ 'slots)))
                               (__tmp172663
                                (##structure-ref
                                 _%accessor167894%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp172664 __tmp172663 '#t))))))
                (_%__kont171561171562%_
                 (lambda (_%L167771%_ _%L167772%_ _%L167773%_)
                   (let* ((_%mutator167800%_
                           (let ((__tmp172665
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167773%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172665)))
                          (_%klass167802%_
                           (let ((__tmp172666
                                  (##structure-ref
                                   _%mutator167800%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167465%_
                              __tmp172666)))
                          (_%slot167804%_
                           (##structure-ref
                            _%mutator167800%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp172667
                                     (##structure-ref
                                      _%mutator167800%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172667))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167802%_
                                     _%slot167804%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167802%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172668
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167464%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp172668 _%slot167804%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self167464%_ _%L167771%_)))))
                (_%__kont171563171564%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self167464%_ _%stx167465%_)))))
            (let* ((_%__match172044172045%_
                    (lambda (_%e167669167707%_
                             _%hd167668167710%_
                             _%tl167667167712%_
                             _%e167672167715%_
                             _%hd167671167718%_
                             _%tl167670167720%_
                             _%e167675167723%_
                             _%hd167674167726%_
                             _%tl167673167728%_
                             _%e167678167731%_
                             _%hd167677167734%_
                             _%tl167676167736%_
                             _%e167681167739%_
                             _%hd167680167742%_
                             _%tl167679167744%_
                             _%e167684167747%_
                             _%hd167683167750%_
                             _%tl167682167752%_
                             _%e167687167755%_
                             _%hd167686167758%_
                             _%tl167685167760%_
                             _%e167690167763%_
                             _%hd167689167766%_
                             _%tl167688167768%_)
                      (let ((_%L167771%_ _%hd167689167766%_)
                            (_%L167772%_ _%hd167686167758%_)
                            (_%L167773%_ _%hd167677167734%_))
                        (if (and (let ((__tmp172669
                                        (let ((__tmp172670
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167773%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172670))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172669
                                    'gxc#!mutator::t))
                                 (let ((__tmp172671
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167464%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167772%_
                                    __tmp172671)))
                            (_%__kont171561171562%_
                             _%L167771%_
                             _%L167772%_
                             _%L167773%_)
                            (_%__kont171563171564%_)))))
                   (_%__match172042172043%_
                    (lambda (_%e167669167707%_
                             _%hd167668167710%_
                             _%tl167667167712%_
                             _%e167672167715%_
                             _%hd167671167718%_
                             _%tl167670167720%_
                             _%e167675167723%_
                             _%hd167674167726%_
                             _%tl167673167728%_
                             _%e167678167731%_
                             _%hd167677167734%_
                             _%tl167676167736%_
                             _%e167681167739%_
                             _%hd167680167742%_
                             _%tl167679167744%_
                             _%e167684167747%_
                             _%hd167683167750%_
                             _%tl167682167752%_
                             _%e167687167755%_
                             _%hd167686167758%_
                             _%tl167685167760%_
                             _%e167690167763%_
                             _%hd167689167766%_
                             _%tl167688167768%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167688167768%_))
                          (_%__match172044172045%_
                           _%e167669167707%_
                           _%hd167668167710%_
                           _%tl167667167712%_
                           _%e167672167715%_
                           _%hd167671167718%_
                           _%tl167670167720%_
                           _%e167675167723%_
                           _%hd167674167726%_
                           _%tl167673167728%_
                           _%e167678167731%_
                           _%hd167677167734%_
                           _%tl167676167736%_
                           _%e167681167739%_
                           _%hd167680167742%_
                           _%tl167679167744%_
                           _%e167684167747%_
                           _%hd167683167750%_
                           _%tl167682167752%_
                           _%e167687167755%_
                           _%hd167686167758%_
                           _%tl167685167760%_
                           _%e167690167763%_
                           _%hd167689167766%_
                           _%tl167688167768%_)
                          (_%__kont171563171564%_))))
                   (_%__match172036172037%_
                    (lambda (_%e167669167707%_
                             _%hd167668167710%_
                             _%tl167667167712%_
                             _%e167672167715%_
                             _%hd167671167718%_
                             _%tl167670167720%_
                             _%e167675167723%_
                             _%hd167674167726%_
                             _%tl167673167728%_
                             _%e167678167731%_
                             _%hd167677167734%_
                             _%tl167676167736%_
                             _%e167681167739%_
                             _%hd167680167742%_
                             _%tl167679167744%_
                             _%e167684167747%_
                             _%hd167683167750%_
                             _%tl167682167752%_
                             _%e167687167755%_
                             _%hd167686167758%_
                             _%tl167685167760%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167679167744%_))
                          (let ((_%e167690167763%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167679167744%_))))
                            (let ((_%tl167688167768%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167690167763%_)))
                                  (_%hd167689167766%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167690167763%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167688167768%_))
                                  (_%__match172044172045%_
                                   _%e167669167707%_
                                   _%hd167668167710%_
                                   _%tl167667167712%_
                                   _%e167672167715%_
                                   _%hd167671167718%_
                                   _%tl167670167720%_
                                   _%e167675167723%_
                                   _%hd167674167726%_
                                   _%tl167673167728%_
                                   _%e167678167731%_
                                   _%hd167677167734%_
                                   _%tl167676167736%_
                                   _%e167681167739%_
                                   _%hd167680167742%_
                                   _%tl167679167744%_
                                   _%e167684167747%_
                                   _%hd167683167750%_
                                   _%tl167682167752%_
                                   _%e167687167755%_
                                   _%hd167686167758%_
                                   _%tl167685167760%_
                                   _%e167690167763%_
                                   _%hd167689167766%_
                                   _%tl167688167768%_)
                                  (_%__kont171563171564%_))))
                          (_%__kont171563171564%_))))
                   (_%__match171982171983%_
                    (lambda (_%e167645167815%_
                             _%hd167644167818%_
                             _%tl167643167820%_
                             _%e167648167823%_
                             _%hd167647167826%_
                             _%tl167646167828%_
                             _%e167651167831%_
                             _%hd167650167834%_
                             _%tl167649167836%_
                             _%e167654167839%_
                             _%hd167653167842%_
                             _%tl167652167844%_
                             _%e167657167847%_
                             _%hd167656167850%_
                             _%tl167655167852%_
                             _%e167660167855%_
                             _%hd167659167858%_
                             _%tl167658167860%_
                             _%e167663167863%_
                             _%hd167662167866%_
                             _%tl167661167868%_)
                      (let ((_%L167871%_ _%hd167662167866%_)
                            (_%L167872%_ _%hd167653167842%_))
                        (if (and (let ((__tmp172672
                                        (let ((__tmp172673
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167872%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172673))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172672
                                    'gxc#!accessor::t))
                                 (let ((__tmp172674
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167464%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167871%_
                                    __tmp172674)))
                            (_%__kont171559171560%_ _%L167871%_ _%L167872%_)
                            (_%__kont171563171564%_)))))
                   (_%__match171980171981%_
                    (lambda (_%e167645167815%_
                             _%hd167644167818%_
                             _%tl167643167820%_
                             _%e167648167823%_
                             _%hd167647167826%_
                             _%tl167646167828%_
                             _%e167651167831%_
                             _%hd167650167834%_
                             _%tl167649167836%_
                             _%e167654167839%_
                             _%hd167653167842%_
                             _%tl167652167844%_
                             _%e167657167847%_
                             _%hd167656167850%_
                             _%tl167655167852%_
                             _%e167660167855%_
                             _%hd167659167858%_
                             _%tl167658167860%_
                             _%e167663167863%_
                             _%hd167662167866%_
                             _%tl167661167868%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167655167852%_))
                          (_%__match171982171983%_
                           _%e167645167815%_
                           _%hd167644167818%_
                           _%tl167643167820%_
                           _%e167648167823%_
                           _%hd167647167826%_
                           _%tl167646167828%_
                           _%e167651167831%_
                           _%hd167650167834%_
                           _%tl167649167836%_
                           _%e167654167839%_
                           _%hd167653167842%_
                           _%tl167652167844%_
                           _%e167657167847%_
                           _%hd167656167850%_
                           _%tl167655167852%_
                           _%e167660167855%_
                           _%hd167659167858%_
                           _%tl167658167860%_
                           _%e167663167863%_
                           _%hd167662167866%_
                           _%tl167661167868%_)
                          (_%__match172036172037%_
                           _%e167645167815%_
                           _%hd167644167818%_
                           _%tl167643167820%_
                           _%e167648167823%_
                           _%hd167647167826%_
                           _%tl167646167828%_
                           _%e167651167831%_
                           _%hd167650167834%_
                           _%tl167649167836%_
                           _%e167654167839%_
                           _%hd167653167842%_
                           _%tl167652167844%_
                           _%e167657167847%_
                           _%hd167656167850%_
                           _%tl167655167852%_
                           _%e167660167855%_
                           _%hd167659167858%_
                           _%tl167658167860%_
                           _%e167663167863%_
                           _%hd167662167866%_
                           _%tl167661167868%_))))
                   (_%__match171926171927%_
                    (lambda (_%e167610167909%_
                             _%hd167609167912%_
                             _%tl167608167914%_
                             _%e167613167917%_
                             _%hd167612167920%_
                             _%tl167611167922%_
                             _%e167616167925%_
                             _%hd167615167928%_
                             _%tl167614167930%_
                             _%e167619167933%_
                             _%hd167618167936%_
                             _%tl167617167938%_
                             _%e167622167941%_
                             _%hd167621167944%_
                             _%tl167620167946%_
                             _%e167625167949%_
                             _%hd167624167952%_
                             _%tl167623167954%_
                             _%e167628167957%_
                             _%hd167627167960%_
                             _%tl167626167962%_
                             _%e167631167965%_
                             _%hd167630167968%_
                             _%tl167629167970%_
                             _%e167634167973%_
                             _%hd167633167976%_
                             _%tl167632167978%_
                             _%e167637167981%_
                             _%hd167636167984%_
                             _%tl167635167986%_
                             _%e167640167989%_
                             _%hd167639167992%_
                             _%tl167638167994%_)
                      (let ((_%L167997%_ _%hd167639167992%_)
                            (_%L167998%_ _%hd167636167984%_)
                            (_%L167999%_ _%hd167627167960%_)
                            (_%L168000%_ _%hd167618167936%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168000%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168000%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp172675
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167464%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167999%_
                                    __tmp172675)))
                            (_%__kont171557171558%_
                             _%L167997%_
                             _%L167998%_
                             _%L167999%_
                             _%L168000%_)
                            (_%__kont171563171564%_)))))
                   (_%__match171918171919%_
                    (lambda (_%e167610167909%_
                             _%hd167609167912%_
                             _%tl167608167914%_
                             _%e167613167917%_
                             _%hd167612167920%_
                             _%tl167611167922%_
                             _%e167616167925%_
                             _%hd167615167928%_
                             _%tl167614167930%_
                             _%e167619167933%_
                             _%hd167618167936%_
                             _%tl167617167938%_
                             _%e167622167941%_
                             _%hd167621167944%_
                             _%tl167620167946%_
                             _%e167625167949%_
                             _%hd167624167952%_
                             _%tl167623167954%_
                             _%e167628167957%_
                             _%hd167627167960%_
                             _%tl167626167962%_
                             _%e167631167965%_
                             _%hd167630167968%_
                             _%tl167629167970%_
                             _%e167634167973%_
                             _%hd167633167976%_
                             _%tl167632167978%_
                             _%e167637167981%_
                             _%hd167636167984%_
                             _%tl167635167986%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167629167970%_))
                          (let ((_%e167640167989%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167629167970%_))))
                            (let ((_%tl167638167994%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167640167989%_)))
                                  (_%hd167639167992%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167640167989%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167638167994%_))
                                  (_%__match171926171927%_
                                   _%e167610167909%_
                                   _%hd167609167912%_
                                   _%tl167608167914%_
                                   _%e167613167917%_
                                   _%hd167612167920%_
                                   _%tl167611167922%_
                                   _%e167616167925%_
                                   _%hd167615167928%_
                                   _%tl167614167930%_
                                   _%e167619167933%_
                                   _%hd167618167936%_
                                   _%tl167617167938%_
                                   _%e167622167941%_
                                   _%hd167621167944%_
                                   _%tl167620167946%_
                                   _%e167625167949%_
                                   _%hd167624167952%_
                                   _%tl167623167954%_
                                   _%e167628167957%_
                                   _%hd167627167960%_
                                   _%tl167626167962%_
                                   _%e167631167965%_
                                   _%hd167630167968%_
                                   _%tl167629167970%_
                                   _%e167634167973%_
                                   _%hd167633167976%_
                                   _%tl167632167978%_
                                   _%e167637167981%_
                                   _%hd167636167984%_
                                   _%tl167635167986%_
                                   _%e167640167989%_
                                   _%hd167639167992%_
                                   _%tl167638167994%_)
                                  (_%__kont171563171564%_))))
                          (_%__match172042172043%_
                           _%e167610167909%_
                           _%hd167609167912%_
                           _%tl167608167914%_
                           _%e167613167917%_
                           _%hd167612167920%_
                           _%tl167611167922%_
                           _%e167616167925%_
                           _%hd167615167928%_
                           _%tl167614167930%_
                           _%e167619167933%_
                           _%hd167618167936%_
                           _%tl167617167938%_
                           _%e167622167941%_
                           _%hd167621167944%_
                           _%tl167620167946%_
                           _%e167625167949%_
                           _%hd167624167952%_
                           _%tl167623167954%_
                           _%e167628167957%_
                           _%hd167627167960%_
                           _%tl167626167962%_
                           _%e167631167965%_
                           _%hd167630167968%_
                           _%tl167629167970%_))))
                   (_%__match171840171841%_
                    (lambda (_%e167576168040%_
                             _%hd167575168043%_
                             _%tl167574168045%_
                             _%e167579168048%_
                             _%hd167578168051%_
                             _%tl167577168053%_
                             _%e167582168056%_
                             _%hd167581168059%_
                             _%tl167580168061%_
                             _%e167585168064%_
                             _%hd167584168067%_
                             _%tl167583168069%_
                             _%e167588168072%_
                             _%hd167587168075%_
                             _%tl167586168077%_
                             _%e167591168080%_
                             _%hd167590168083%_
                             _%tl167589168085%_
                             _%e167594168088%_
                             _%hd167593168091%_
                             _%tl167592168093%_
                             _%e167597168096%_
                             _%hd167596168099%_
                             _%tl167595168101%_
                             _%e167600168104%_
                             _%hd167599168107%_
                             _%tl167598168109%_
                             _%e167603168112%_
                             _%hd167602168115%_
                             _%tl167601168117%_)
                      (let ((_%L168120%_ _%hd167602168115%_)
                            (_%L168121%_ _%hd167593168091%_)
                            (_%L168122%_ _%hd167584168067%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168122%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168122%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp172676
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167464%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168121%_
                                    __tmp172676)))
                            (_%__kont171555171556%_
                             _%L168120%_
                             _%L168121%_
                             _%L168122%_)
                            (_%__match172044172045%_
                             _%e167576168040%_
                             _%hd167575168043%_
                             _%tl167574168045%_
                             _%e167579168048%_
                             _%hd167578168051%_
                             _%tl167577168053%_
                             _%e167582168056%_
                             _%hd167581168059%_
                             _%tl167580168061%_
                             _%e167585168064%_
                             _%hd167584168067%_
                             _%tl167583168069%_
                             _%e167588168072%_
                             _%hd167587168075%_
                             _%tl167586168077%_
                             _%e167591168080%_
                             _%hd167590168083%_
                             _%tl167589168085%_
                             _%e167594168088%_
                             _%hd167593168091%_
                             _%tl167592168093%_
                             _%e167597168096%_
                             _%hd167596168099%_
                             _%tl167595168101%_)))))
                   (_%__match171838171839%_
                    (lambda (_%e167576168040%_
                             _%hd167575168043%_
                             _%tl167574168045%_
                             _%e167579168048%_
                             _%hd167578168051%_
                             _%tl167577168053%_
                             _%e167582168056%_
                             _%hd167581168059%_
                             _%tl167580168061%_
                             _%e167585168064%_
                             _%hd167584168067%_
                             _%tl167583168069%_
                             _%e167588168072%_
                             _%hd167587168075%_
                             _%tl167586168077%_
                             _%e167591168080%_
                             _%hd167590168083%_
                             _%tl167589168085%_
                             _%e167594168088%_
                             _%hd167593168091%_
                             _%tl167592168093%_
                             _%e167597168096%_
                             _%hd167596168099%_
                             _%tl167595168101%_
                             _%e167600168104%_
                             _%hd167599168107%_
                             _%tl167598168109%_
                             _%e167603168112%_
                             _%hd167602168115%_
                             _%tl167601168117%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167595168101%_))
                          (_%__match171840171841%_
                           _%e167576168040%_
                           _%hd167575168043%_
                           _%tl167574168045%_
                           _%e167579168048%_
                           _%hd167578168051%_
                           _%tl167577168053%_
                           _%e167582168056%_
                           _%hd167581168059%_
                           _%tl167580168061%_
                           _%e167585168064%_
                           _%hd167584168067%_
                           _%tl167583168069%_
                           _%e167588168072%_
                           _%hd167587168075%_
                           _%tl167586168077%_
                           _%e167591168080%_
                           _%hd167590168083%_
                           _%tl167589168085%_
                           _%e167594168088%_
                           _%hd167593168091%_
                           _%tl167592168093%_
                           _%e167597168096%_
                           _%hd167596168099%_
                           _%tl167595168101%_
                           _%e167600168104%_
                           _%hd167599168107%_
                           _%tl167598168109%_
                           _%e167603168112%_
                           _%hd167602168115%_
                           _%tl167601168117%_)
                          (_%__match171918171919%_
                           _%e167576168040%_
                           _%hd167575168043%_
                           _%tl167574168045%_
                           _%e167579168048%_
                           _%hd167578168051%_
                           _%tl167577168053%_
                           _%e167582168056%_
                           _%hd167581168059%_
                           _%tl167580168061%_
                           _%e167585168064%_
                           _%hd167584168067%_
                           _%tl167583168069%_
                           _%e167588168072%_
                           _%hd167587168075%_
                           _%tl167586168077%_
                           _%e167591168080%_
                           _%hd167590168083%_
                           _%tl167589168085%_
                           _%e167594168088%_
                           _%hd167593168091%_
                           _%tl167592168093%_
                           _%e167597168096%_
                           _%hd167596168099%_
                           _%tl167595168101%_
                           _%e167600168104%_
                           _%hd167599168107%_
                           _%tl167598168109%_
                           _%e167603168112%_
                           _%hd167602168115%_
                           _%tl167601168117%_))))
                   (_%__match171828171829%_
                    (lambda (_%e167576168040%_
                             _%hd167575168043%_
                             _%tl167574168045%_
                             _%e167579168048%_
                             _%hd167578168051%_
                             _%tl167577168053%_
                             _%e167582168056%_
                             _%hd167581168059%_
                             _%tl167580168061%_
                             _%e167585168064%_
                             _%hd167584168067%_
                             _%tl167583168069%_
                             _%e167588168072%_
                             _%hd167587168075%_
                             _%tl167586168077%_
                             _%e167591168080%_
                             _%hd167590168083%_
                             _%tl167589168085%_
                             _%e167594168088%_
                             _%hd167593168091%_
                             _%tl167592168093%_
                             _%e167597168096%_
                             _%hd167596168099%_
                             _%tl167595168101%_
                             _%e167600168104%_
                             _%hd167599168107%_
                             _%tl167598168109%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd167599168107%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167598168109%_))
                              (let ((_%e167603168112%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167598168109%_))))
                                (let ((_%tl167601168117%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167603168112%_)))
                                      (_%hd167602168115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167603168112%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167601168117%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl167595168101%_))
                                          (_%__match171840171841%_
                                           _%e167576168040%_
                                           _%hd167575168043%_
                                           _%tl167574168045%_
                                           _%e167579168048%_
                                           _%hd167578168051%_
                                           _%tl167577168053%_
                                           _%e167582168056%_
                                           _%hd167581168059%_
                                           _%tl167580168061%_
                                           _%e167585168064%_
                                           _%hd167584168067%_
                                           _%tl167583168069%_
                                           _%e167588168072%_
                                           _%hd167587168075%_
                                           _%tl167586168077%_
                                           _%e167591168080%_
                                           _%hd167590168083%_
                                           _%tl167589168085%_
                                           _%e167594168088%_
                                           _%hd167593168091%_
                                           _%tl167592168093%_
                                           _%e167597168096%_
                                           _%hd167596168099%_
                                           _%tl167595168101%_
                                           _%e167600168104%_
                                           _%hd167599168107%_
                                           _%tl167598168109%_
                                           _%e167603168112%_
                                           _%hd167602168115%_
                                           _%tl167601168117%_)
                                          (_%__match171918171919%_
                                           _%e167576168040%_
                                           _%hd167575168043%_
                                           _%tl167574168045%_
                                           _%e167579168048%_
                                           _%hd167578168051%_
                                           _%tl167577168053%_
                                           _%e167582168056%_
                                           _%hd167581168059%_
                                           _%tl167580168061%_
                                           _%e167585168064%_
                                           _%hd167584168067%_
                                           _%tl167583168069%_
                                           _%e167588168072%_
                                           _%hd167587168075%_
                                           _%tl167586168077%_
                                           _%e167591168080%_
                                           _%hd167590168083%_
                                           _%tl167589168085%_
                                           _%e167594168088%_
                                           _%hd167593168091%_
                                           _%tl167592168093%_
                                           _%e167597168096%_
                                           _%hd167596168099%_
                                           _%tl167595168101%_
                                           _%e167600168104%_
                                           _%hd167599168107%_
                                           _%tl167598168109%_
                                           _%e167603168112%_
                                           _%hd167602168115%_
                                           _%tl167601168117%_))
                                      (_%__match172042172043%_
                                       _%e167576168040%_
                                       _%hd167575168043%_
                                       _%tl167574168045%_
                                       _%e167579168048%_
                                       _%hd167578168051%_
                                       _%tl167577168053%_
                                       _%e167582168056%_
                                       _%hd167581168059%_
                                       _%tl167580168061%_
                                       _%e167585168064%_
                                       _%hd167584168067%_
                                       _%tl167583168069%_
                                       _%e167588168072%_
                                       _%hd167587168075%_
                                       _%tl167586168077%_
                                       _%e167591168080%_
                                       _%hd167590168083%_
                                       _%tl167589168085%_
                                       _%e167594168088%_
                                       _%hd167593168091%_
                                       _%tl167592168093%_
                                       _%e167597168096%_
                                       _%hd167596168099%_
                                       _%tl167595168101%_))))
                              (_%__match172042172043%_
                               _%e167576168040%_
                               _%hd167575168043%_
                               _%tl167574168045%_
                               _%e167579168048%_
                               _%hd167578168051%_
                               _%tl167577168053%_
                               _%e167582168056%_
                               _%hd167581168059%_
                               _%tl167580168061%_
                               _%e167585168064%_
                               _%hd167584168067%_
                               _%tl167583168069%_
                               _%e167588168072%_
                               _%hd167587168075%_
                               _%tl167586168077%_
                               _%e167591168080%_
                               _%hd167590168083%_
                               _%tl167589168085%_
                               _%e167594168088%_
                               _%hd167593168091%_
                               _%tl167592168093%_
                               _%e167597168096%_
                               _%hd167596168099%_
                               _%tl167595168101%_))
                          (_%__match172042172043%_
                           _%e167576168040%_
                           _%hd167575168043%_
                           _%tl167574168045%_
                           _%e167579168048%_
                           _%hd167578168051%_
                           _%tl167577168053%_
                           _%e167582168056%_
                           _%hd167581168059%_
                           _%tl167580168061%_
                           _%e167585168064%_
                           _%hd167584168067%_
                           _%tl167583168069%_
                           _%e167588168072%_
                           _%hd167587168075%_
                           _%tl167586168077%_
                           _%e167591168080%_
                           _%hd167590168083%_
                           _%tl167589168085%_
                           _%e167594168088%_
                           _%hd167593168091%_
                           _%tl167592168093%_
                           _%e167597168096%_
                           _%hd167596168099%_
                           _%tl167595168101%_))))
                   (_%__match171760171761%_
                    (lambda (_%e167525168159%_
                             _%hd167524168162%_
                             _%tl167523168164%_
                             _%e167528168167%_
                             _%hd167527168170%_
                             _%tl167526168172%_
                             _%e167531168175%_
                             _%hd167530168178%_
                             _%tl167529168180%_
                             _%e167534168183%_
                             _%hd167533168186%_
                             _%tl167532168188%_
                             _%e167537168191%_
                             _%hd167536168194%_
                             _%tl167535168196%_
                             _%e167540168199%_
                             _%hd167539168202%_
                             _%tl167538168204%_
                             _%e167543168207%_
                             _%hd167542168210%_
                             _%tl167541168212%_
                             _%e167546168215%_
                             _%hd167545168218%_
                             _%tl167544168220%_
                             _%e167549168223%_
                             _%hd167548168226%_
                             _%tl167547168228%_
                             _%e167552168231%_
                             _%hd167551168234%_
                             _%tl167550168236%_
                             _%e167555168239%_
                             _%hd167554168242%_
                             _%tl167553168244%_
                             _%e167558168247%_
                             _%hd167557168250%_
                             _%tl167556168252%_
                             _%e167561168255%_
                             _%hd167560168258%_
                             _%tl167559168260%_
                             _%__splice171553171554%_
                             _%target167562168263%_
                             _%tl167564168265%_)
                      (letrec ((_%loop167565168268%_
                                (lambda (_%hd167563168271%_
                                         _%args167569168273%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167563168271%_))
                                      (let ((_%e167566168276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167563168271%_))))
                                        (let ((_%lp-tl167568168281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167566168276%_)))
                                              (_%lp-hd167567168279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167566168276%_))))
                                          (let ((__tmp172677
                                                 (cons _%lp-hd167567168279%_
                                                       _%args167569168273%_)))
                                            (declare (not safe))
                                            (_%loop167565168268%_
                                             _%lp-tl167568168281%_
                                             __tmp172677))))
                                      (let ((_%args167570168284%_
                                             (reverse _%args167569168273%_)))
                                        (let ((_%L168287%_
                                               _%args167570168284%_)
                                              (_%L168288%_ _%hd167560168258%_)
                                              (_%L168289%_ _%hd167551168234%_)
                                              (_%L168290%_ _%hd167542168210%_)
                                              (_%L168291%_ _%hd167533168186%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168291%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168290%_
                                                      'call-method))
                                                   (let ((__tmp172678
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167464%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168289%_
                                                      __tmp172678)))
                                              (_%__kont171551171552%_
                                               _%L168287%_
                                               _%L168288%_
                                               _%L168289%_
                                               _%L168290%_
                                               _%L168291%_)
                                              (_%__kont171563171564%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167565168268%_ _%target167562168263%_ '())))))
                   (_%__match171718171719%_
                    (lambda (_%e167525168159%_
                             _%hd167524168162%_
                             _%tl167523168164%_
                             _%e167528168167%_
                             _%hd167527168170%_
                             _%tl167526168172%_
                             _%e167531168175%_
                             _%hd167530168178%_
                             _%tl167529168180%_
                             _%e167534168183%_
                             _%hd167533168186%_
                             _%tl167532168188%_
                             _%e167537168191%_
                             _%hd167536168194%_
                             _%tl167535168196%_
                             _%e167540168199%_
                             _%hd167539168202%_
                             _%tl167538168204%_
                             _%e167543168207%_
                             _%hd167542168210%_
                             _%tl167541168212%_
                             _%e167546168215%_
                             _%hd167545168218%_
                             _%tl167544168220%_
                             _%e167549168223%_
                             _%hd167548168226%_
                             _%tl167547168228%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd167548168226%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167547168228%_))
                              (let ((_%e167552168231%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167547168228%_))))
                                (let ((_%tl167550168236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167552168231%_)))
                                      (_%hd167551168234%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167552168231%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167550168236%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167544168220%_))
                                          (let ((_%e167555168239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167544168220%_))))
                                            (let ((_%tl167553168244%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167555168239%_)))
                                                  (_%hd167554168242%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167555168239%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167554168242%_))
                                                  (let ((_%e167558168247%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167554168242%_))))
                                                    (let ((_%tl167556168252%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167558168247%_)))
                                                          (_%hd167557168250%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167558168247%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd167557168250%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd167557168250%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167556168252%_))
                          (let ((_%e167561168255%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167556168252%_))))
                            (let ((_%tl167559168260%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167561168255%_)))
                                  (_%hd167560168258%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167561168255%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167559168260%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl167553168244%_))
                                      (let ((_%__splice171553171554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl167553168244%_
                                                '0))))
                                        (let ((_%tl167564168265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171553171554%_
                                                  '1)))
                                              (_%target167562168263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171553171554%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167564168265%_))
                                              (_%__match171760171761%_
                                               _%e167525168159%_
                                               _%hd167524168162%_
                                               _%tl167523168164%_
                                               _%e167528168167%_
                                               _%hd167527168170%_
                                               _%tl167526168172%_
                                               _%e167531168175%_
                                               _%hd167530168178%_
                                               _%tl167529168180%_
                                               _%e167534168183%_
                                               _%hd167533168186%_
                                               _%tl167532168188%_
                                               _%e167537168191%_
                                               _%hd167536168194%_
                                               _%tl167535168196%_
                                               _%e167540168199%_
                                               _%hd167539168202%_
                                               _%tl167538168204%_
                                               _%e167543168207%_
                                               _%hd167542168210%_
                                               _%tl167541168212%_
                                               _%e167546168215%_
                                               _%hd167545168218%_
                                               _%tl167544168220%_
                                               _%e167549168223%_
                                               _%hd167548168226%_
                                               _%tl167547168228%_
                                               _%e167552168231%_
                                               _%hd167551168234%_
                                               _%tl167550168236%_
                                               _%e167555168239%_
                                               _%hd167554168242%_
                                               _%tl167553168244%_
                                               _%e167558168247%_
                                               _%hd167557168250%_
                                               _%tl167556168252%_
                                               _%e167561168255%_
                                               _%hd167560168258%_
                                               _%tl167559168260%_
                                               _%__splice171553171554%_
                                               _%target167562168263%_
                                               _%tl167564168265%_)
                                              (_%__kont171563171564%_))))
                                      (_%__kont171563171564%_))
                                  (_%__kont171563171564%_))))
                          (_%__kont171563171564%_))
                      (_%__kont171563171564%_))
                  (_%__kont171563171564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171563171564%_))))
                                          (_%__match172042172043%_
                                           _%e167525168159%_
                                           _%hd167524168162%_
                                           _%tl167523168164%_
                                           _%e167528168167%_
                                           _%hd167527168170%_
                                           _%tl167526168172%_
                                           _%e167531168175%_
                                           _%hd167530168178%_
                                           _%tl167529168180%_
                                           _%e167534168183%_
                                           _%hd167533168186%_
                                           _%tl167532168188%_
                                           _%e167537168191%_
                                           _%hd167536168194%_
                                           _%tl167535168196%_
                                           _%e167540168199%_
                                           _%hd167539168202%_
                                           _%tl167538168204%_
                                           _%e167543168207%_
                                           _%hd167542168210%_
                                           _%tl167541168212%_
                                           _%e167546168215%_
                                           _%hd167545168218%_
                                           _%tl167544168220%_))
                                      (_%__match172042172043%_
                                       _%e167525168159%_
                                       _%hd167524168162%_
                                       _%tl167523168164%_
                                       _%e167528168167%_
                                       _%hd167527168170%_
                                       _%tl167526168172%_
                                       _%e167531168175%_
                                       _%hd167530168178%_
                                       _%tl167529168180%_
                                       _%e167534168183%_
                                       _%hd167533168186%_
                                       _%tl167532168188%_
                                       _%e167537168191%_
                                       _%hd167536168194%_
                                       _%tl167535168196%_
                                       _%e167540168199%_
                                       _%hd167539168202%_
                                       _%tl167538168204%_
                                       _%e167543168207%_
                                       _%hd167542168210%_
                                       _%tl167541168212%_
                                       _%e167546168215%_
                                       _%hd167545168218%_
                                       _%tl167544168220%_))))
                              (_%__match172042172043%_
                               _%e167525168159%_
                               _%hd167524168162%_
                               _%tl167523168164%_
                               _%e167528168167%_
                               _%hd167527168170%_
                               _%tl167526168172%_
                               _%e167531168175%_
                               _%hd167530168178%_
                               _%tl167529168180%_
                               _%e167534168183%_
                               _%hd167533168186%_
                               _%tl167532168188%_
                               _%e167537168191%_
                               _%hd167536168194%_
                               _%tl167535168196%_
                               _%e167540168199%_
                               _%hd167539168202%_
                               _%tl167538168204%_
                               _%e167543168207%_
                               _%hd167542168210%_
                               _%tl167541168212%_
                               _%e167546168215%_
                               _%hd167545168218%_
                               _%tl167544168220%_))
                          (_%__match171828171829%_
                           _%e167525168159%_
                           _%hd167524168162%_
                           _%tl167523168164%_
                           _%e167528168167%_
                           _%hd167527168170%_
                           _%tl167526168172%_
                           _%e167531168175%_
                           _%hd167530168178%_
                           _%tl167529168180%_
                           _%e167534168183%_
                           _%hd167533168186%_
                           _%tl167532168188%_
                           _%e167537168191%_
                           _%hd167536168194%_
                           _%tl167535168196%_
                           _%e167540168199%_
                           _%hd167539168202%_
                           _%tl167538168204%_
                           _%e167543168207%_
                           _%hd167542168210%_
                           _%tl167541168212%_
                           _%e167546168215%_
                           _%hd167545168218%_
                           _%tl167544168220%_
                           _%e167549168223%_
                           _%hd167548168226%_
                           _%tl167547168228%_))))
                   (_%__match171650171651%_
                    (lambda (_%e167481168348%_
                             _%hd167480168351%_
                             _%tl167479168353%_
                             _%e167484168356%_
                             _%hd167483168359%_
                             _%tl167482168361%_
                             _%e167487168364%_
                             _%hd167486168367%_
                             _%tl167485168369%_
                             _%e167490168372%_
                             _%hd167489168375%_
                             _%tl167488168377%_
                             _%e167493168380%_
                             _%hd167492168383%_
                             _%tl167491168385%_
                             _%e167496168388%_
                             _%hd167495168391%_
                             _%tl167494168393%_
                             _%e167499168396%_
                             _%hd167498168399%_
                             _%tl167497168401%_
                             _%e167502168404%_
                             _%hd167501168407%_
                             _%tl167500168409%_
                             _%e167505168412%_
                             _%hd167504168415%_
                             _%tl167503168417%_
                             _%e167508168420%_
                             _%hd167507168423%_
                             _%tl167506168425%_
                             _%__splice171549171550%_
                             _%target167509168428%_
                             _%tl167511168430%_)
                      (letrec ((_%loop167512168433%_
                                (lambda (_%hd167510168436%_
                                         _%args167516168438%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167510168436%_))
                                      (let ((_%e167513168441%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167510168436%_))))
                                        (let ((_%lp-tl167515168446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167513168441%_)))
                                              (_%lp-hd167514168444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167513168441%_))))
                                          (let ((__tmp172679
                                                 (cons _%lp-hd167514168444%_
                                                       _%args167516168438%_)))
                                            (declare (not safe))
                                            (_%loop167512168433%_
                                             _%lp-tl167515168446%_
                                             __tmp172679))))
                                      (let ((_%args167517168449%_
                                             (reverse _%args167516168438%_)))
                                        (let ((_%L168452%_
                                               _%args167517168449%_)
                                              (_%L168453%_ _%hd167507168423%_)
                                              (_%L168454%_ _%hd167498168399%_)
                                              (_%L168455%_ _%hd167489168375%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168455%_
                                                      'call-method))
                                                   (let ((__tmp172680
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167464%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168454%_
                                                      __tmp172680)))
                                              (_%__kont171547171548%_
                                               _%L168452%_
                                               _%L168453%_
                                               _%L168454%_
                                               _%L168455%_)
                                              (_%__match171838171839%_
                                               _%e167481168348%_
                                               _%hd167480168351%_
                                               _%tl167479168353%_
                                               _%e167484168356%_
                                               _%hd167483168359%_
                                               _%tl167482168361%_
                                               _%e167487168364%_
                                               _%hd167486168367%_
                                               _%tl167485168369%_
                                               _%e167490168372%_
                                               _%hd167489168375%_
                                               _%tl167488168377%_
                                               _%e167493168380%_
                                               _%hd167492168383%_
                                               _%tl167491168385%_
                                               _%e167496168388%_
                                               _%hd167495168391%_
                                               _%tl167494168393%_
                                               _%e167499168396%_
                                               _%hd167498168399%_
                                               _%tl167497168401%_
                                               _%e167502168404%_
                                               _%hd167501168407%_
                                               _%tl167500168409%_
                                               _%e167505168412%_
                                               _%hd167504168415%_
                                               _%tl167503168417%_
                                               _%e167508168420%_
                                               _%hd167507168423%_
                                               _%tl167506168425%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167512168433%_
                           _%target167509168428%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171545171546%_))
                  (let ((_%e167481168348%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171545171546%_))))
                    (let ((_%tl167479168353%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167481168348%_)))
                          (_%hd167480168351%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167481168348%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167479168353%_))
                          (let ((_%e167484168356%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167479168353%_))))
                            (let ((_%tl167482168361%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167484168356%_)))
                                  (_%hd167483168359%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167484168356%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd167483168359%_))
                                  (let ((_%e167487168364%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd167483168359%_))))
                                    (let ((_%tl167485168369%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167487168364%_)))
                                          (_%hd167486168367%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167487168364%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd167486168367%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd167486168367%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl167485168369%_))
                                                  (let ((_%e167490168372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl167485168369%_))))
                                                    (let ((_%tl167488168377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167490168372%_)))
                                                          (_%hd167489168375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167490168372%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl167488168377%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl167482168361%_))
                      (let ((_%e167493168380%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl167482168361%_))))
                        (let ((_%tl167491168385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167493168380%_)))
                              (_%hd167492168383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167493168380%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd167492168383%_))
                              (let ((_%e167496168388%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd167492168383%_))))
                                (let ((_%tl167494168393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167496168388%_)))
                                      (_%hd167495168391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167496168388%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd167495168391%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd167495168391%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl167494168393%_))
                                              (let ((_%e167499168396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl167494168393%_))))
                                                (let ((_%tl167497168401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167499168396%_)))
                                                      (_%hd167498168399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167499168396%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl167497168401%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl167491168385%_))
                                                          (let ((_%e167502168404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl167491168385%_))))
                    (let ((_%tl167500168409%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167502168404%_)))
                          (_%hd167501168407%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167502168404%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd167501168407%_))
                          (let ((_%e167505168412%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd167501168407%_))))
                            (let ((_%tl167503168417%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167505168412%_)))
                                  (_%hd167504168415%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167505168412%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd167504168415%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd167504168415%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167503168417%_))
                                          (let ((_%e167508168420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167503168417%_))))
                                            (let ((_%tl167506168425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167508168420%_)))
                                                  (_%hd167507168423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167508168420%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl167506168425%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl167500168409%_))
                                                      (let ((_%__splice171549171550%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl167500168409%_ '0))))
                (let ((_%tl167511168430%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171549171550%_ '1)))
                      (_%target167509168428%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171549171550%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167511168430%_))
                      (_%__match171650171651%_
                       _%e167481168348%_
                       _%hd167480168351%_
                       _%tl167479168353%_
                       _%e167484168356%_
                       _%hd167483168359%_
                       _%tl167482168361%_
                       _%e167487168364%_
                       _%hd167486168367%_
                       _%tl167485168369%_
                       _%e167490168372%_
                       _%hd167489168375%_
                       _%tl167488168377%_
                       _%e167493168380%_
                       _%hd167492168383%_
                       _%tl167491168385%_
                       _%e167496168388%_
                       _%hd167495168391%_
                       _%tl167494168393%_
                       _%e167499168396%_
                       _%hd167498168399%_
                       _%tl167497168401%_
                       _%e167502168404%_
                       _%hd167501168407%_
                       _%tl167500168409%_
                       _%e167505168412%_
                       _%hd167504168415%_
                       _%tl167503168417%_
                       _%e167508168420%_
                       _%hd167507168423%_
                       _%tl167506168425%_
                       _%__splice171549171550%_
                       _%target167509168428%_
                       _%tl167511168430%_)
                      (_%__match171838171839%_
                       _%e167481168348%_
                       _%hd167480168351%_
                       _%tl167479168353%_
                       _%e167484168356%_
                       _%hd167483168359%_
                       _%tl167482168361%_
                       _%e167487168364%_
                       _%hd167486168367%_
                       _%tl167485168369%_
                       _%e167490168372%_
                       _%hd167489168375%_
                       _%tl167488168377%_
                       _%e167493168380%_
                       _%hd167492168383%_
                       _%tl167491168385%_
                       _%e167496168388%_
                       _%hd167495168391%_
                       _%tl167494168393%_
                       _%e167499168396%_
                       _%hd167498168399%_
                       _%tl167497168401%_
                       _%e167502168404%_
                       _%hd167501168407%_
                       _%tl167500168409%_
                       _%e167505168412%_
                       _%hd167504168415%_
                       _%tl167503168417%_
                       _%e167508168420%_
                       _%hd167507168423%_
                       _%tl167506168425%_))))
              (_%__match171838171839%_
               _%e167481168348%_
               _%hd167480168351%_
               _%tl167479168353%_
               _%e167484168356%_
               _%hd167483168359%_
               _%tl167482168361%_
               _%e167487168364%_
               _%hd167486168367%_
               _%tl167485168369%_
               _%e167490168372%_
               _%hd167489168375%_
               _%tl167488168377%_
               _%e167493168380%_
               _%hd167492168383%_
               _%tl167491168385%_
               _%e167496168388%_
               _%hd167495168391%_
               _%tl167494168393%_
               _%e167499168396%_
               _%hd167498168399%_
               _%tl167497168401%_
               _%e167502168404%_
               _%hd167501168407%_
               _%tl167500168409%_
               _%e167505168412%_
               _%hd167504168415%_
               _%tl167503168417%_
               _%e167508168420%_
               _%hd167507168423%_
               _%tl167506168425%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match172042172043%_
                                                   _%e167481168348%_
                                                   _%hd167480168351%_
                                                   _%tl167479168353%_
                                                   _%e167484168356%_
                                                   _%hd167483168359%_
                                                   _%tl167482168361%_
                                                   _%e167487168364%_
                                                   _%hd167486168367%_
                                                   _%tl167485168369%_
                                                   _%e167490168372%_
                                                   _%hd167489168375%_
                                                   _%tl167488168377%_
                                                   _%e167493168380%_
                                                   _%hd167492168383%_
                                                   _%tl167491168385%_
                                                   _%e167496168388%_
                                                   _%hd167495168391%_
                                                   _%tl167494168393%_
                                                   _%e167499168396%_
                                                   _%hd167498168399%_
                                                   _%tl167497168401%_
                                                   _%e167502168404%_
                                                   _%hd167501168407%_
                                                   _%tl167500168409%_))))
                                          (_%__match172042172043%_
                                           _%e167481168348%_
                                           _%hd167480168351%_
                                           _%tl167479168353%_
                                           _%e167484168356%_
                                           _%hd167483168359%_
                                           _%tl167482168361%_
                                           _%e167487168364%_
                                           _%hd167486168367%_
                                           _%tl167485168369%_
                                           _%e167490168372%_
                                           _%hd167489168375%_
                                           _%tl167488168377%_
                                           _%e167493168380%_
                                           _%hd167492168383%_
                                           _%tl167491168385%_
                                           _%e167496168388%_
                                           _%hd167495168391%_
                                           _%tl167494168393%_
                                           _%e167499168396%_
                                           _%hd167498168399%_
                                           _%tl167497168401%_
                                           _%e167502168404%_
                                           _%hd167501168407%_
                                           _%tl167500168409%_))
                                      (_%__match171718171719%_
                                       _%e167481168348%_
                                       _%hd167480168351%_
                                       _%tl167479168353%_
                                       _%e167484168356%_
                                       _%hd167483168359%_
                                       _%tl167482168361%_
                                       _%e167487168364%_
                                       _%hd167486168367%_
                                       _%tl167485168369%_
                                       _%e167490168372%_
                                       _%hd167489168375%_
                                       _%tl167488168377%_
                                       _%e167493168380%_
                                       _%hd167492168383%_
                                       _%tl167491168385%_
                                       _%e167496168388%_
                                       _%hd167495168391%_
                                       _%tl167494168393%_
                                       _%e167499168396%_
                                       _%hd167498168399%_
                                       _%tl167497168401%_
                                       _%e167502168404%_
                                       _%hd167501168407%_
                                       _%tl167500168409%_
                                       _%e167505168412%_
                                       _%hd167504168415%_
                                       _%tl167503168417%_))
                                  (_%__match172042172043%_
                                   _%e167481168348%_
                                   _%hd167480168351%_
                                   _%tl167479168353%_
                                   _%e167484168356%_
                                   _%hd167483168359%_
                                   _%tl167482168361%_
                                   _%e167487168364%_
                                   _%hd167486168367%_
                                   _%tl167485168369%_
                                   _%e167490168372%_
                                   _%hd167489168375%_
                                   _%tl167488168377%_
                                   _%e167493168380%_
                                   _%hd167492168383%_
                                   _%tl167491168385%_
                                   _%e167496168388%_
                                   _%hd167495168391%_
                                   _%tl167494168393%_
                                   _%e167499168396%_
                                   _%hd167498168399%_
                                   _%tl167497168401%_
                                   _%e167502168404%_
                                   _%hd167501168407%_
                                   _%tl167500168409%_))))
                          (_%__match172042172043%_
                           _%e167481168348%_
                           _%hd167480168351%_
                           _%tl167479168353%_
                           _%e167484168356%_
                           _%hd167483168359%_
                           _%tl167482168361%_
                           _%e167487168364%_
                           _%hd167486168367%_
                           _%tl167485168369%_
                           _%e167490168372%_
                           _%hd167489168375%_
                           _%tl167488168377%_
                           _%e167493168380%_
                           _%hd167492168383%_
                           _%tl167491168385%_
                           _%e167496168388%_
                           _%hd167495168391%_
                           _%tl167494168393%_
                           _%e167499168396%_
                           _%hd167498168399%_
                           _%tl167497168401%_
                           _%e167502168404%_
                           _%hd167501168407%_
                           _%tl167500168409%_))))
                  (_%__match171980171981%_
                   _%e167481168348%_
                   _%hd167480168351%_
                   _%tl167479168353%_
                   _%e167484168356%_
                   _%hd167483168359%_
                   _%tl167482168361%_
                   _%e167487168364%_
                   _%hd167486168367%_
                   _%tl167485168369%_
                   _%e167490168372%_
                   _%hd167489168375%_
                   _%tl167488168377%_
                   _%e167493168380%_
                   _%hd167492168383%_
                   _%tl167491168385%_
                   _%e167496168388%_
                   _%hd167495168391%_
                   _%tl167494168393%_
                   _%e167499168396%_
                   _%hd167498168399%_
                   _%tl167497168401%_))
              (_%__kont171563171564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171563171564%_))
                                          (_%__kont171563171564%_))
                                      (_%__kont171563171564%_))))
                              (_%__kont171563171564%_))))
                      (_%__kont171563171564%_))
                  (_%__kont171563171564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171563171564%_))
                                              (_%__kont171563171564%_))
                                          (_%__kont171563171564%_))))
                                  (_%__kont171563171564%_))))
                          (_%__kont171563171564%_))))
                  (_%__kont171563171564%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self166403%_ _%stx166404%_)
        (letrec ((_%force-e166406%_
                  (lambda (_%target167462%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target167462%_ '()))
                                      '()))))))
          (let* ((_%__stx172047172048%_ _%stx166404%_)
                 (_%g166414166636%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172047172048%_)))))
            (let ((_%__kont172049172050%_
                   (lambda (_%L167408%_ _%L167409%_ _%L167410%_ _%L167411%_)
                     (let ((_%$method167456%_
                            (let ((__tmp172682
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166403%_ 'methods)))
                                  (__tmp172681
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167409%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172682 __tmp172681)))
                           (_%args167457%_
                            (map (lambda (_%g167444167446%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166403%_
                                      _%g167444167446%_)))
                                 (let ((__tmp172683
                                        (lambda (_%g167448167451%_
                                                 _%g167449167453%_)
                                          (cons _%g167448167451%_
                                                _%g167449167453%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172683 '() _%L167408%_)))))
                       (let ((__tmp172684
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e166406%_
                                             _%$method167456%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166403%_
                                                               'receiver))
                                                            '()))
                                                _%args167457%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172684 _%stx166404%_)))))
                  (_%__kont172053172054%_
                   (lambda (_%L167240%_
                            _%L167241%_
                            _%L167242%_
                            _%L167243%_
                            _%L167244%_)
                     (let ((_%$method167296%_
                            (let ((__tmp172686
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166403%_ 'methods)))
                                  (__tmp172685
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167241%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172686 __tmp172685)))
                           (_%args167297%_
                            (map (lambda (_%g167284167286%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166403%_
                                      _%g167284167286%_)))
                                 (let ((__tmp172687
                                        (lambda (_%g167288167291%_
                                                 _%g167289167293%_)
                                          (cons _%g167288167291%_
                                                _%g167289167293%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172687 '() _%L167240%_)))))
                       (let ((__tmp172688
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e166406%_
                                                   _%$method167296%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166403%_ 'receiver))
                          '()))
              _%args167297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172688 _%stx166404%_)))))
                  (_%__kont172057172058%_
                   (lambda (_%L167071%_ _%L167072%_ _%L167073%_)
                     (let* ((_%$field167105%_
                             (let ((__tmp172690
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self166403%_ 'slots)))
                                   (__tmp172689
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L167071%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp172690 __tmp172689)))
                            (__tmp172691
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self166403%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field167105%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self166403%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp172691 _%stx166404%_))))
                  (_%__kont172059172060%_
                   (lambda (_%L166945%_ _%L166946%_ _%L166947%_ _%L166948%_)
                     (let ((_%$field166983%_
                            (let ((__tmp172693
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166403%_ 'slots)))
                                  (__tmp172692
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166946%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172693 __tmp172692)))
                           (_%expr166984%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self166403%_ _%L166945%_))))
                       (let ((__tmp172694
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self166403%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field166983%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166403%_ 'receiver))
                          '()))
              (cons _%expr166984%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172694 _%stx166404%_)))))
                  (_%__kont172061172062%_
                   (lambda (_%L166817%_ _%L166818%_)
                     (let* ((_%accessor166840%_
                             (let ((__tmp172695
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166818%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172695)))
                            (_%klass166842%_
                             (let ((__tmp172696
                                    (##structure-ref
                                     _%accessor166840%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166404%_
                                __tmp172696)))
                            (_%slot166844%_
                             (##structure-ref
                              _%accessor166840%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp172697
                                       (##structure-ref
                                        _%accessor166840%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172697))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166842%_
                                       _%slot166844%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166842%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx166404%_
                           (let* ((_%$field166850%_
                                   (let ((__tmp172698
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166403%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172698 _%slot166844%_)))
                                  (__tmp172699
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166403%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166403%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172699
                              _%stx166404%_))))))
                  (_%__kont172063172064%_
                   (lambda (_%L166712%_ _%L166713%_ _%L166714%_)
                     (let* ((_%mutator166742%_
                             (let ((__tmp172700
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166714%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172700)))
                            (_%klass166744%_
                             (let ((__tmp172701
                                    (##structure-ref
                                     _%mutator166742%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166404%_
                                __tmp172701)))
                            (_%slot166746%_
                             (##structure-ref
                              _%mutator166742%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr166748%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self166403%_ _%L166712%_))))
                       (if (and (let ((__tmp172702
                                       (##structure-ref
                                        _%mutator166742%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172702))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166744%_
                                       _%slot166746%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166744%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp172703
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L166714%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L166713%_
                                                                '()))
                                                    (cons _%expr166748%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp172703 _%stx166404%_))
                           (let* ((_%$field166754%_
                                   (let ((__tmp172704
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166403%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172704 _%slot166746%_)))
                                  (__tmp172705
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166403%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166403%_ 'receiver))
                               '()))
                   (cons _%expr166748%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172705
                              _%stx166404%_))))))
                  (_%__kont172065172066%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self166403%_ _%stx166404%_)))))
              (let* ((_%__match172546172547%_
                      (lambda (_%e166610166648%_
                               _%hd166609166651%_
                               _%tl166608166653%_
                               _%e166613166656%_
                               _%hd166612166659%_
                               _%tl166611166661%_
                               _%e166616166664%_
                               _%hd166615166667%_
                               _%tl166614166669%_
                               _%e166619166672%_
                               _%hd166618166675%_
                               _%tl166617166677%_
                               _%e166622166680%_
                               _%hd166621166683%_
                               _%tl166620166685%_
                               _%e166625166688%_
                               _%hd166624166691%_
                               _%tl166623166693%_
                               _%e166628166696%_
                               _%hd166627166699%_
                               _%tl166626166701%_
                               _%e166631166704%_
                               _%hd166630166707%_
                               _%tl166629166709%_)
                        (let ((_%L166712%_ _%hd166630166707%_)
                              (_%L166713%_ _%hd166627166699%_)
                              (_%L166714%_ _%hd166618166675%_))
                          (if (and (let ((__tmp172706
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166403%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166713%_
                                      __tmp172706))
                                   (let ((__tmp172707
                                          (let ((__tmp172708
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166714%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172708))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172707
                                      'gxc#!mutator::t)))
                              (_%__kont172063172064%_
                               _%L166712%_
                               _%L166713%_
                               _%L166714%_)
                              (_%__kont172065172066%_)))))
                     (_%__match172544172545%_
                      (lambda (_%e166610166648%_
                               _%hd166609166651%_
                               _%tl166608166653%_
                               _%e166613166656%_
                               _%hd166612166659%_
                               _%tl166611166661%_
                               _%e166616166664%_
                               _%hd166615166667%_
                               _%tl166614166669%_
                               _%e166619166672%_
                               _%hd166618166675%_
                               _%tl166617166677%_
                               _%e166622166680%_
                               _%hd166621166683%_
                               _%tl166620166685%_
                               _%e166625166688%_
                               _%hd166624166691%_
                               _%tl166623166693%_
                               _%e166628166696%_
                               _%hd166627166699%_
                               _%tl166626166701%_
                               _%e166631166704%_
                               _%hd166630166707%_
                               _%tl166629166709%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166629166709%_))
                            (_%__match172546172547%_
                             _%e166610166648%_
                             _%hd166609166651%_
                             _%tl166608166653%_
                             _%e166613166656%_
                             _%hd166612166659%_
                             _%tl166611166661%_
                             _%e166616166664%_
                             _%hd166615166667%_
                             _%tl166614166669%_
                             _%e166619166672%_
                             _%hd166618166675%_
                             _%tl166617166677%_
                             _%e166622166680%_
                             _%hd166621166683%_
                             _%tl166620166685%_
                             _%e166625166688%_
                             _%hd166624166691%_
                             _%tl166623166693%_
                             _%e166628166696%_
                             _%hd166627166699%_
                             _%tl166626166701%_
                             _%e166631166704%_
                             _%hd166630166707%_
                             _%tl166629166709%_)
                            (_%__kont172065172066%_))))
                     (_%__match172538172539%_
                      (lambda (_%e166610166648%_
                               _%hd166609166651%_
                               _%tl166608166653%_
                               _%e166613166656%_
                               _%hd166612166659%_
                               _%tl166611166661%_
                               _%e166616166664%_
                               _%hd166615166667%_
                               _%tl166614166669%_
                               _%e166619166672%_
                               _%hd166618166675%_
                               _%tl166617166677%_
                               _%e166622166680%_
                               _%hd166621166683%_
                               _%tl166620166685%_
                               _%e166625166688%_
                               _%hd166624166691%_
                               _%tl166623166693%_
                               _%e166628166696%_
                               _%hd166627166699%_
                               _%tl166626166701%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166620166685%_))
                            (let ((_%e166631166704%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166620166685%_))))
                              (let ((_%tl166629166709%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166631166704%_)))
                                    (_%hd166630166707%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166631166704%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166629166709%_))
                                    (_%__match172546172547%_
                                     _%e166610166648%_
                                     _%hd166609166651%_
                                     _%tl166608166653%_
                                     _%e166613166656%_
                                     _%hd166612166659%_
                                     _%tl166611166661%_
                                     _%e166616166664%_
                                     _%hd166615166667%_
                                     _%tl166614166669%_
                                     _%e166619166672%_
                                     _%hd166618166675%_
                                     _%tl166617166677%_
                                     _%e166622166680%_
                                     _%hd166621166683%_
                                     _%tl166620166685%_
                                     _%e166625166688%_
                                     _%hd166624166691%_
                                     _%tl166623166693%_
                                     _%e166628166696%_
                                     _%hd166627166699%_
                                     _%tl166626166701%_
                                     _%e166631166704%_
                                     _%hd166630166707%_
                                     _%tl166629166709%_)
                                    (_%__kont172065172066%_))))
                            (_%__kont172065172066%_))))
                     (_%__match172484172485%_
                      (lambda (_%e166586166761%_
                               _%hd166585166764%_
                               _%tl166584166766%_
                               _%e166589166769%_
                               _%hd166588166772%_
                               _%tl166587166774%_
                               _%e166592166777%_
                               _%hd166591166780%_
                               _%tl166590166782%_
                               _%e166595166785%_
                               _%hd166594166788%_
                               _%tl166593166790%_
                               _%e166598166793%_
                               _%hd166597166796%_
                               _%tl166596166798%_
                               _%e166601166801%_
                               _%hd166600166804%_
                               _%tl166599166806%_
                               _%e166604166809%_
                               _%hd166603166812%_
                               _%tl166602166814%_)
                        (let ((_%L166817%_ _%hd166603166812%_)
                              (_%L166818%_ _%hd166594166788%_))
                          (if (and (let ((__tmp172709
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166403%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166817%_
                                      __tmp172709))
                                   (let ((__tmp172710
                                          (let ((__tmp172711
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166818%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172711))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172710
                                      'gxc#!accessor::t)))
                              (_%__kont172061172062%_ _%L166817%_ _%L166818%_)
                              (_%__kont172065172066%_)))))
                     (_%__match172482172483%_
                      (lambda (_%e166586166761%_
                               _%hd166585166764%_
                               _%tl166584166766%_
                               _%e166589166769%_
                               _%hd166588166772%_
                               _%tl166587166774%_
                               _%e166592166777%_
                               _%hd166591166780%_
                               _%tl166590166782%_
                               _%e166595166785%_
                               _%hd166594166788%_
                               _%tl166593166790%_
                               _%e166598166793%_
                               _%hd166597166796%_
                               _%tl166596166798%_
                               _%e166601166801%_
                               _%hd166600166804%_
                               _%tl166599166806%_
                               _%e166604166809%_
                               _%hd166603166812%_
                               _%tl166602166814%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166596166798%_))
                            (_%__match172484172485%_
                             _%e166586166761%_
                             _%hd166585166764%_
                             _%tl166584166766%_
                             _%e166589166769%_
                             _%hd166588166772%_
                             _%tl166587166774%_
                             _%e166592166777%_
                             _%hd166591166780%_
                             _%tl166590166782%_
                             _%e166595166785%_
                             _%hd166594166788%_
                             _%tl166593166790%_
                             _%e166598166793%_
                             _%hd166597166796%_
                             _%tl166596166798%_
                             _%e166601166801%_
                             _%hd166600166804%_
                             _%tl166599166806%_
                             _%e166604166809%_
                             _%hd166603166812%_
                             _%tl166602166814%_)
                            (_%__match172538172539%_
                             _%e166586166761%_
                             _%hd166585166764%_
                             _%tl166584166766%_
                             _%e166589166769%_
                             _%hd166588166772%_
                             _%tl166587166774%_
                             _%e166592166777%_
                             _%hd166591166780%_
                             _%tl166590166782%_
                             _%e166595166785%_
                             _%hd166594166788%_
                             _%tl166593166790%_
                             _%e166598166793%_
                             _%hd166597166796%_
                             _%tl166596166798%_
                             _%e166601166801%_
                             _%hd166600166804%_
                             _%tl166599166806%_
                             _%e166604166809%_
                             _%hd166603166812%_
                             _%tl166602166814%_))))
                     (_%__match172428172429%_
                      (lambda (_%e166551166857%_
                               _%hd166550166860%_
                               _%tl166549166862%_
                               _%e166554166865%_
                               _%hd166553166868%_
                               _%tl166552166870%_
                               _%e166557166873%_
                               _%hd166556166876%_
                               _%tl166555166878%_
                               _%e166560166881%_
                               _%hd166559166884%_
                               _%tl166558166886%_
                               _%e166563166889%_
                               _%hd166562166892%_
                               _%tl166561166894%_
                               _%e166566166897%_
                               _%hd166565166900%_
                               _%tl166564166902%_
                               _%e166569166905%_
                               _%hd166568166908%_
                               _%tl166567166910%_
                               _%e166572166913%_
                               _%hd166571166916%_
                               _%tl166570166918%_
                               _%e166575166921%_
                               _%hd166574166924%_
                               _%tl166573166926%_
                               _%e166578166929%_
                               _%hd166577166932%_
                               _%tl166576166934%_
                               _%e166581166937%_
                               _%hd166580166940%_
                               _%tl166579166942%_)
                        (let ((_%L166945%_ _%hd166580166940%_)
                              (_%L166946%_ _%hd166577166932%_)
                              (_%L166947%_ _%hd166568166908%_)
                              (_%L166948%_ _%hd166559166884%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166948%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166948%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp172712
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166403%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166947%_
                                      __tmp172712)))
                              (_%__kont172059172060%_
                               _%L166945%_
                               _%L166946%_
                               _%L166947%_
                               _%L166948%_)
                              (_%__kont172065172066%_)))))
                     (_%__match172420172421%_
                      (lambda (_%e166551166857%_
                               _%hd166550166860%_
                               _%tl166549166862%_
                               _%e166554166865%_
                               _%hd166553166868%_
                               _%tl166552166870%_
                               _%e166557166873%_
                               _%hd166556166876%_
                               _%tl166555166878%_
                               _%e166560166881%_
                               _%hd166559166884%_
                               _%tl166558166886%_
                               _%e166563166889%_
                               _%hd166562166892%_
                               _%tl166561166894%_
                               _%e166566166897%_
                               _%hd166565166900%_
                               _%tl166564166902%_
                               _%e166569166905%_
                               _%hd166568166908%_
                               _%tl166567166910%_
                               _%e166572166913%_
                               _%hd166571166916%_
                               _%tl166570166918%_
                               _%e166575166921%_
                               _%hd166574166924%_
                               _%tl166573166926%_
                               _%e166578166929%_
                               _%hd166577166932%_
                               _%tl166576166934%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166570166918%_))
                            (let ((_%e166581166937%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166570166918%_))))
                              (let ((_%tl166579166942%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166581166937%_)))
                                    (_%hd166580166940%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166581166937%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166579166942%_))
                                    (_%__match172428172429%_
                                     _%e166551166857%_
                                     _%hd166550166860%_
                                     _%tl166549166862%_
                                     _%e166554166865%_
                                     _%hd166553166868%_
                                     _%tl166552166870%_
                                     _%e166557166873%_
                                     _%hd166556166876%_
                                     _%tl166555166878%_
                                     _%e166560166881%_
                                     _%hd166559166884%_
                                     _%tl166558166886%_
                                     _%e166563166889%_
                                     _%hd166562166892%_
                                     _%tl166561166894%_
                                     _%e166566166897%_
                                     _%hd166565166900%_
                                     _%tl166564166902%_
                                     _%e166569166905%_
                                     _%hd166568166908%_
                                     _%tl166567166910%_
                                     _%e166572166913%_
                                     _%hd166571166916%_
                                     _%tl166570166918%_
                                     _%e166575166921%_
                                     _%hd166574166924%_
                                     _%tl166573166926%_
                                     _%e166578166929%_
                                     _%hd166577166932%_
                                     _%tl166576166934%_
                                     _%e166581166937%_
                                     _%hd166580166940%_
                                     _%tl166579166942%_)
                                    (_%__kont172065172066%_))))
                            (_%__match172544172545%_
                             _%e166551166857%_
                             _%hd166550166860%_
                             _%tl166549166862%_
                             _%e166554166865%_
                             _%hd166553166868%_
                             _%tl166552166870%_
                             _%e166557166873%_
                             _%hd166556166876%_
                             _%tl166555166878%_
                             _%e166560166881%_
                             _%hd166559166884%_
                             _%tl166558166886%_
                             _%e166563166889%_
                             _%hd166562166892%_
                             _%tl166561166894%_
                             _%e166566166897%_
                             _%hd166565166900%_
                             _%tl166564166902%_
                             _%e166569166905%_
                             _%hd166568166908%_
                             _%tl166567166910%_
                             _%e166572166913%_
                             _%hd166571166916%_
                             _%tl166570166918%_))))
                     (_%__match172342172343%_
                      (lambda (_%e166517166991%_
                               _%hd166516166994%_
                               _%tl166515166996%_
                               _%e166520166999%_
                               _%hd166519167002%_
                               _%tl166518167004%_
                               _%e166523167007%_
                               _%hd166522167010%_
                               _%tl166521167012%_
                               _%e166526167015%_
                               _%hd166525167018%_
                               _%tl166524167020%_
                               _%e166529167023%_
                               _%hd166528167026%_
                               _%tl166527167028%_
                               _%e166532167031%_
                               _%hd166531167034%_
                               _%tl166530167036%_
                               _%e166535167039%_
                               _%hd166534167042%_
                               _%tl166533167044%_
                               _%e166538167047%_
                               _%hd166537167050%_
                               _%tl166536167052%_
                               _%e166541167055%_
                               _%hd166540167058%_
                               _%tl166539167060%_
                               _%e166544167063%_
                               _%hd166543167066%_
                               _%tl166542167068%_)
                        (let ((_%L167071%_ _%hd166543167066%_)
                              (_%L167072%_ _%hd166534167042%_)
                              (_%L167073%_ _%hd166525167018%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167073%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167073%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp172713
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166403%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167072%_
                                      __tmp172713)))
                              (_%__kont172057172058%_
                               _%L167071%_
                               _%L167072%_
                               _%L167073%_)
                              (_%__match172546172547%_
                               _%e166517166991%_
                               _%hd166516166994%_
                               _%tl166515166996%_
                               _%e166520166999%_
                               _%hd166519167002%_
                               _%tl166518167004%_
                               _%e166523167007%_
                               _%hd166522167010%_
                               _%tl166521167012%_
                               _%e166526167015%_
                               _%hd166525167018%_
                               _%tl166524167020%_
                               _%e166529167023%_
                               _%hd166528167026%_
                               _%tl166527167028%_
                               _%e166532167031%_
                               _%hd166531167034%_
                               _%tl166530167036%_
                               _%e166535167039%_
                               _%hd166534167042%_
                               _%tl166533167044%_
                               _%e166538167047%_
                               _%hd166537167050%_
                               _%tl166536167052%_)))))
                     (_%__match172340172341%_
                      (lambda (_%e166517166991%_
                               _%hd166516166994%_
                               _%tl166515166996%_
                               _%e166520166999%_
                               _%hd166519167002%_
                               _%tl166518167004%_
                               _%e166523167007%_
                               _%hd166522167010%_
                               _%tl166521167012%_
                               _%e166526167015%_
                               _%hd166525167018%_
                               _%tl166524167020%_
                               _%e166529167023%_
                               _%hd166528167026%_
                               _%tl166527167028%_
                               _%e166532167031%_
                               _%hd166531167034%_
                               _%tl166530167036%_
                               _%e166535167039%_
                               _%hd166534167042%_
                               _%tl166533167044%_
                               _%e166538167047%_
                               _%hd166537167050%_
                               _%tl166536167052%_
                               _%e166541167055%_
                               _%hd166540167058%_
                               _%tl166539167060%_
                               _%e166544167063%_
                               _%hd166543167066%_
                               _%tl166542167068%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166536167052%_))
                            (_%__match172342172343%_
                             _%e166517166991%_
                             _%hd166516166994%_
                             _%tl166515166996%_
                             _%e166520166999%_
                             _%hd166519167002%_
                             _%tl166518167004%_
                             _%e166523167007%_
                             _%hd166522167010%_
                             _%tl166521167012%_
                             _%e166526167015%_
                             _%hd166525167018%_
                             _%tl166524167020%_
                             _%e166529167023%_
                             _%hd166528167026%_
                             _%tl166527167028%_
                             _%e166532167031%_
                             _%hd166531167034%_
                             _%tl166530167036%_
                             _%e166535167039%_
                             _%hd166534167042%_
                             _%tl166533167044%_
                             _%e166538167047%_
                             _%hd166537167050%_
                             _%tl166536167052%_
                             _%e166541167055%_
                             _%hd166540167058%_
                             _%tl166539167060%_
                             _%e166544167063%_
                             _%hd166543167066%_
                             _%tl166542167068%_)
                            (_%__match172420172421%_
                             _%e166517166991%_
                             _%hd166516166994%_
                             _%tl166515166996%_
                             _%e166520166999%_
                             _%hd166519167002%_
                             _%tl166518167004%_
                             _%e166523167007%_
                             _%hd166522167010%_
                             _%tl166521167012%_
                             _%e166526167015%_
                             _%hd166525167018%_
                             _%tl166524167020%_
                             _%e166529167023%_
                             _%hd166528167026%_
                             _%tl166527167028%_
                             _%e166532167031%_
                             _%hd166531167034%_
                             _%tl166530167036%_
                             _%e166535167039%_
                             _%hd166534167042%_
                             _%tl166533167044%_
                             _%e166538167047%_
                             _%hd166537167050%_
                             _%tl166536167052%_
                             _%e166541167055%_
                             _%hd166540167058%_
                             _%tl166539167060%_
                             _%e166544167063%_
                             _%hd166543167066%_
                             _%tl166542167068%_))))
                     (_%__match172330172331%_
                      (lambda (_%e166517166991%_
                               _%hd166516166994%_
                               _%tl166515166996%_
                               _%e166520166999%_
                               _%hd166519167002%_
                               _%tl166518167004%_
                               _%e166523167007%_
                               _%hd166522167010%_
                               _%tl166521167012%_
                               _%e166526167015%_
                               _%hd166525167018%_
                               _%tl166524167020%_
                               _%e166529167023%_
                               _%hd166528167026%_
                               _%tl166527167028%_
                               _%e166532167031%_
                               _%hd166531167034%_
                               _%tl166530167036%_
                               _%e166535167039%_
                               _%hd166534167042%_
                               _%tl166533167044%_
                               _%e166538167047%_
                               _%hd166537167050%_
                               _%tl166536167052%_
                               _%e166541167055%_
                               _%hd166540167058%_
                               _%tl166539167060%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd166540167058%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166539167060%_))
                                (let ((_%e166544167063%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166539167060%_))))
                                  (let ((_%tl166542167068%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166544167063%_)))
                                        (_%hd166543167066%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166544167063%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166542167068%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl166536167052%_))
                                            (_%__match172342172343%_
                                             _%e166517166991%_
                                             _%hd166516166994%_
                                             _%tl166515166996%_
                                             _%e166520166999%_
                                             _%hd166519167002%_
                                             _%tl166518167004%_
                                             _%e166523167007%_
                                             _%hd166522167010%_
                                             _%tl166521167012%_
                                             _%e166526167015%_
                                             _%hd166525167018%_
                                             _%tl166524167020%_
                                             _%e166529167023%_
                                             _%hd166528167026%_
                                             _%tl166527167028%_
                                             _%e166532167031%_
                                             _%hd166531167034%_
                                             _%tl166530167036%_
                                             _%e166535167039%_
                                             _%hd166534167042%_
                                             _%tl166533167044%_
                                             _%e166538167047%_
                                             _%hd166537167050%_
                                             _%tl166536167052%_
                                             _%e166541167055%_
                                             _%hd166540167058%_
                                             _%tl166539167060%_
                                             _%e166544167063%_
                                             _%hd166543167066%_
                                             _%tl166542167068%_)
                                            (_%__match172420172421%_
                                             _%e166517166991%_
                                             _%hd166516166994%_
                                             _%tl166515166996%_
                                             _%e166520166999%_
                                             _%hd166519167002%_
                                             _%tl166518167004%_
                                             _%e166523167007%_
                                             _%hd166522167010%_
                                             _%tl166521167012%_
                                             _%e166526167015%_
                                             _%hd166525167018%_
                                             _%tl166524167020%_
                                             _%e166529167023%_
                                             _%hd166528167026%_
                                             _%tl166527167028%_
                                             _%e166532167031%_
                                             _%hd166531167034%_
                                             _%tl166530167036%_
                                             _%e166535167039%_
                                             _%hd166534167042%_
                                             _%tl166533167044%_
                                             _%e166538167047%_
                                             _%hd166537167050%_
                                             _%tl166536167052%_
                                             _%e166541167055%_
                                             _%hd166540167058%_
                                             _%tl166539167060%_
                                             _%e166544167063%_
                                             _%hd166543167066%_
                                             _%tl166542167068%_))
                                        (_%__match172544172545%_
                                         _%e166517166991%_
                                         _%hd166516166994%_
                                         _%tl166515166996%_
                                         _%e166520166999%_
                                         _%hd166519167002%_
                                         _%tl166518167004%_
                                         _%e166523167007%_
                                         _%hd166522167010%_
                                         _%tl166521167012%_
                                         _%e166526167015%_
                                         _%hd166525167018%_
                                         _%tl166524167020%_
                                         _%e166529167023%_
                                         _%hd166528167026%_
                                         _%tl166527167028%_
                                         _%e166532167031%_
                                         _%hd166531167034%_
                                         _%tl166530167036%_
                                         _%e166535167039%_
                                         _%hd166534167042%_
                                         _%tl166533167044%_
                                         _%e166538167047%_
                                         _%hd166537167050%_
                                         _%tl166536167052%_))))
                                (_%__match172544172545%_
                                 _%e166517166991%_
                                 _%hd166516166994%_
                                 _%tl166515166996%_
                                 _%e166520166999%_
                                 _%hd166519167002%_
                                 _%tl166518167004%_
                                 _%e166523167007%_
                                 _%hd166522167010%_
                                 _%tl166521167012%_
                                 _%e166526167015%_
                                 _%hd166525167018%_
                                 _%tl166524167020%_
                                 _%e166529167023%_
                                 _%hd166528167026%_
                                 _%tl166527167028%_
                                 _%e166532167031%_
                                 _%hd166531167034%_
                                 _%tl166530167036%_
                                 _%e166535167039%_
                                 _%hd166534167042%_
                                 _%tl166533167044%_
                                 _%e166538167047%_
                                 _%hd166537167050%_
                                 _%tl166536167052%_))
                            (_%__match172544172545%_
                             _%e166517166991%_
                             _%hd166516166994%_
                             _%tl166515166996%_
                             _%e166520166999%_
                             _%hd166519167002%_
                             _%tl166518167004%_
                             _%e166523167007%_
                             _%hd166522167010%_
                             _%tl166521167012%_
                             _%e166526167015%_
                             _%hd166525167018%_
                             _%tl166524167020%_
                             _%e166529167023%_
                             _%hd166528167026%_
                             _%tl166527167028%_
                             _%e166532167031%_
                             _%hd166531167034%_
                             _%tl166530167036%_
                             _%e166535167039%_
                             _%hd166534167042%_
                             _%tl166533167044%_
                             _%e166538167047%_
                             _%hd166537167050%_
                             _%tl166536167052%_))))
                     (_%__match172262172263%_
                      (lambda (_%e166466167112%_
                               _%hd166465167115%_
                               _%tl166464167117%_
                               _%e166469167120%_
                               _%hd166468167123%_
                               _%tl166467167125%_
                               _%e166472167128%_
                               _%hd166471167131%_
                               _%tl166470167133%_
                               _%e166475167136%_
                               _%hd166474167139%_
                               _%tl166473167141%_
                               _%e166478167144%_
                               _%hd166477167147%_
                               _%tl166476167149%_
                               _%e166481167152%_
                               _%hd166480167155%_
                               _%tl166479167157%_
                               _%e166484167160%_
                               _%hd166483167163%_
                               _%tl166482167165%_
                               _%e166487167168%_
                               _%hd166486167171%_
                               _%tl166485167173%_
                               _%e166490167176%_
                               _%hd166489167179%_
                               _%tl166488167181%_
                               _%e166493167184%_
                               _%hd166492167187%_
                               _%tl166491167189%_
                               _%e166496167192%_
                               _%hd166495167195%_
                               _%tl166494167197%_
                               _%e166499167200%_
                               _%hd166498167203%_
                               _%tl166497167205%_
                               _%e166502167208%_
                               _%hd166501167211%_
                               _%tl166500167213%_
                               _%__splice172055172056%_
                               _%target166503167216%_
                               _%tl166505167218%_)
                        (letrec ((_%loop166506167221%_
                                  (lambda (_%hd166504167224%_
                                           _%args166510167226%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166504167224%_))
                                        (let ((_%e166507167229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166504167224%_))))
                                          (let ((_%lp-tl166509167234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166507167229%_)))
                                                (_%lp-hd166508167232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166507167229%_))))
                                            (let ((__tmp172714
                                                   (cons _%lp-hd166508167232%_
                                                         _%args166510167226%_)))
                                              (declare (not safe))
                                              (_%loop166506167221%_
                                               _%lp-tl166509167234%_
                                               __tmp172714))))
                                        (let ((_%args166511167237%_
                                               (reverse _%args166510167226%_)))
                                          (let ((_%L167240%_
                                                 _%args166511167237%_)
                                                (_%L167241%_
                                                 _%hd166501167211%_)
                                                (_%L167242%_
                                                 _%hd166492167187%_)
                                                (_%L167243%_
                                                 _%hd166483167163%_)
                                                (_%L167244%_
                                                 _%hd166474167139%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167244%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167243%_
                                                        'call-method))
                                                     (let ((__tmp172715
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166403%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167242%_
                                                        __tmp172715)))
                                                (_%__kont172053172054%_
                                                 _%L167240%_
                                                 _%L167241%_
                                                 _%L167242%_
                                                 _%L167243%_
                                                 _%L167244%_)
                                                (_%__kont172065172066%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166506167221%_
                             _%target166503167216%_
                             '())))))
                     (_%__match172220172221%_
                      (lambda (_%e166466167112%_
                               _%hd166465167115%_
                               _%tl166464167117%_
                               _%e166469167120%_
                               _%hd166468167123%_
                               _%tl166467167125%_
                               _%e166472167128%_
                               _%hd166471167131%_
                               _%tl166470167133%_
                               _%e166475167136%_
                               _%hd166474167139%_
                               _%tl166473167141%_
                               _%e166478167144%_
                               _%hd166477167147%_
                               _%tl166476167149%_
                               _%e166481167152%_
                               _%hd166480167155%_
                               _%tl166479167157%_
                               _%e166484167160%_
                               _%hd166483167163%_
                               _%tl166482167165%_
                               _%e166487167168%_
                               _%hd166486167171%_
                               _%tl166485167173%_
                               _%e166490167176%_
                               _%hd166489167179%_
                               _%tl166488167181%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd166489167179%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166488167181%_))
                                (let ((_%e166493167184%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166488167181%_))))
                                  (let ((_%tl166491167189%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166493167184%_)))
                                        (_%hd166492167187%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166493167184%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166491167189%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166485167173%_))
                                            (let ((_%e166496167192%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166485167173%_))))
                                              (let ((_%tl166494167197%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166496167192%_)))
                                                    (_%hd166495167195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166496167192%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd166495167195%_))
                                                    (let ((_%e166499167200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd166495167195%_))))
                                                      (let ((_%tl166497167205%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166499167200%_)))
                    (_%hd166498167203%_
                     (let () (declare (not safe)) (##car _%e166499167200%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd166498167203%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd166498167203%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166497167205%_))
                            (let ((_%e166502167208%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166497167205%_))))
                              (let ((_%tl166500167213%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166502167208%_)))
                                    (_%hd166501167211%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166502167208%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166500167213%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166494167197%_))
                                        (let ((_%__splice172055172056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166494167197%_
                                                  '0))))
                                          (let ((_%tl166505167218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172055172056%_
                                                    '1)))
                                                (_%target166503167216%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172055172056%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166505167218%_))
                                                (_%__match172262172263%_
                                                 _%e166466167112%_
                                                 _%hd166465167115%_
                                                 _%tl166464167117%_
                                                 _%e166469167120%_
                                                 _%hd166468167123%_
                                                 _%tl166467167125%_
                                                 _%e166472167128%_
                                                 _%hd166471167131%_
                                                 _%tl166470167133%_
                                                 _%e166475167136%_
                                                 _%hd166474167139%_
                                                 _%tl166473167141%_
                                                 _%e166478167144%_
                                                 _%hd166477167147%_
                                                 _%tl166476167149%_
                                                 _%e166481167152%_
                                                 _%hd166480167155%_
                                                 _%tl166479167157%_
                                                 _%e166484167160%_
                                                 _%hd166483167163%_
                                                 _%tl166482167165%_
                                                 _%e166487167168%_
                                                 _%hd166486167171%_
                                                 _%tl166485167173%_
                                                 _%e166490167176%_
                                                 _%hd166489167179%_
                                                 _%tl166488167181%_
                                                 _%e166493167184%_
                                                 _%hd166492167187%_
                                                 _%tl166491167189%_
                                                 _%e166496167192%_
                                                 _%hd166495167195%_
                                                 _%tl166494167197%_
                                                 _%e166499167200%_
                                                 _%hd166498167203%_
                                                 _%tl166497167205%_
                                                 _%e166502167208%_
                                                 _%hd166501167211%_
                                                 _%tl166500167213%_
                                                 _%__splice172055172056%_
                                                 _%target166503167216%_
                                                 _%tl166505167218%_)
                                                (_%__kont172065172066%_))))
                                        (_%__kont172065172066%_))
                                    (_%__kont172065172066%_))))
                            (_%__kont172065172066%_))
                        (_%__kont172065172066%_))
                    (_%__kont172065172066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172065172066%_))))
                                            (_%__match172544172545%_
                                             _%e166466167112%_
                                             _%hd166465167115%_
                                             _%tl166464167117%_
                                             _%e166469167120%_
                                             _%hd166468167123%_
                                             _%tl166467167125%_
                                             _%e166472167128%_
                                             _%hd166471167131%_
                                             _%tl166470167133%_
                                             _%e166475167136%_
                                             _%hd166474167139%_
                                             _%tl166473167141%_
                                             _%e166478167144%_
                                             _%hd166477167147%_
                                             _%tl166476167149%_
                                             _%e166481167152%_
                                             _%hd166480167155%_
                                             _%tl166479167157%_
                                             _%e166484167160%_
                                             _%hd166483167163%_
                                             _%tl166482167165%_
                                             _%e166487167168%_
                                             _%hd166486167171%_
                                             _%tl166485167173%_))
                                        (_%__match172544172545%_
                                         _%e166466167112%_
                                         _%hd166465167115%_
                                         _%tl166464167117%_
                                         _%e166469167120%_
                                         _%hd166468167123%_
                                         _%tl166467167125%_
                                         _%e166472167128%_
                                         _%hd166471167131%_
                                         _%tl166470167133%_
                                         _%e166475167136%_
                                         _%hd166474167139%_
                                         _%tl166473167141%_
                                         _%e166478167144%_
                                         _%hd166477167147%_
                                         _%tl166476167149%_
                                         _%e166481167152%_
                                         _%hd166480167155%_
                                         _%tl166479167157%_
                                         _%e166484167160%_
                                         _%hd166483167163%_
                                         _%tl166482167165%_
                                         _%e166487167168%_
                                         _%hd166486167171%_
                                         _%tl166485167173%_))))
                                (_%__match172544172545%_
                                 _%e166466167112%_
                                 _%hd166465167115%_
                                 _%tl166464167117%_
                                 _%e166469167120%_
                                 _%hd166468167123%_
                                 _%tl166467167125%_
                                 _%e166472167128%_
                                 _%hd166471167131%_
                                 _%tl166470167133%_
                                 _%e166475167136%_
                                 _%hd166474167139%_
                                 _%tl166473167141%_
                                 _%e166478167144%_
                                 _%hd166477167147%_
                                 _%tl166476167149%_
                                 _%e166481167152%_
                                 _%hd166480167155%_
                                 _%tl166479167157%_
                                 _%e166484167160%_
                                 _%hd166483167163%_
                                 _%tl166482167165%_
                                 _%e166487167168%_
                                 _%hd166486167171%_
                                 _%tl166485167173%_))
                            (_%__match172330172331%_
                             _%e166466167112%_
                             _%hd166465167115%_
                             _%tl166464167117%_
                             _%e166469167120%_
                             _%hd166468167123%_
                             _%tl166467167125%_
                             _%e166472167128%_
                             _%hd166471167131%_
                             _%tl166470167133%_
                             _%e166475167136%_
                             _%hd166474167139%_
                             _%tl166473167141%_
                             _%e166478167144%_
                             _%hd166477167147%_
                             _%tl166476167149%_
                             _%e166481167152%_
                             _%hd166480167155%_
                             _%tl166479167157%_
                             _%e166484167160%_
                             _%hd166483167163%_
                             _%tl166482167165%_
                             _%e166487167168%_
                             _%hd166486167171%_
                             _%tl166485167173%_
                             _%e166490167176%_
                             _%hd166489167179%_
                             _%tl166488167181%_))))
                     (_%__match172152172153%_
                      (lambda (_%e166422167304%_
                               _%hd166421167307%_
                               _%tl166420167309%_
                               _%e166425167312%_
                               _%hd166424167315%_
                               _%tl166423167317%_
                               _%e166428167320%_
                               _%hd166427167323%_
                               _%tl166426167325%_
                               _%e166431167328%_
                               _%hd166430167331%_
                               _%tl166429167333%_
                               _%e166434167336%_
                               _%hd166433167339%_
                               _%tl166432167341%_
                               _%e166437167344%_
                               _%hd166436167347%_
                               _%tl166435167349%_
                               _%e166440167352%_
                               _%hd166439167355%_
                               _%tl166438167357%_
                               _%e166443167360%_
                               _%hd166442167363%_
                               _%tl166441167365%_
                               _%e166446167368%_
                               _%hd166445167371%_
                               _%tl166444167373%_
                               _%e166449167376%_
                               _%hd166448167379%_
                               _%tl166447167381%_
                               _%__splice172051172052%_
                               _%target166450167384%_
                               _%tl166452167386%_)
                        (letrec ((_%loop166453167389%_
                                  (lambda (_%hd166451167392%_
                                           _%args166457167394%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166451167392%_))
                                        (let ((_%e166454167397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166451167392%_))))
                                          (let ((_%lp-tl166456167402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166454167397%_)))
                                                (_%lp-hd166455167400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166454167397%_))))
                                            (let ((__tmp172716
                                                   (cons _%lp-hd166455167400%_
                                                         _%args166457167394%_)))
                                              (declare (not safe))
                                              (_%loop166453167389%_
                                               _%lp-tl166456167402%_
                                               __tmp172716))))
                                        (let ((_%args166458167405%_
                                               (reverse _%args166457167394%_)))
                                          (let ((_%L167408%_
                                                 _%args166458167405%_)
                                                (_%L167409%_
                                                 _%hd166448167379%_)
                                                (_%L167410%_
                                                 _%hd166439167355%_)
                                                (_%L167411%_
                                                 _%hd166430167331%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167411%_
                                                        'call-method))
                                                     (let ((__tmp172717
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166403%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167410%_
                                                        __tmp172717)))
                                                (_%__kont172049172050%_
                                                 _%L167408%_
                                                 _%L167409%_
                                                 _%L167410%_
                                                 _%L167411%_)
                                                (_%__match172340172341%_
                                                 _%e166422167304%_
                                                 _%hd166421167307%_
                                                 _%tl166420167309%_
                                                 _%e166425167312%_
                                                 _%hd166424167315%_
                                                 _%tl166423167317%_
                                                 _%e166428167320%_
                                                 _%hd166427167323%_
                                                 _%tl166426167325%_
                                                 _%e166431167328%_
                                                 _%hd166430167331%_
                                                 _%tl166429167333%_
                                                 _%e166434167336%_
                                                 _%hd166433167339%_
                                                 _%tl166432167341%_
                                                 _%e166437167344%_
                                                 _%hd166436167347%_
                                                 _%tl166435167349%_
                                                 _%e166440167352%_
                                                 _%hd166439167355%_
                                                 _%tl166438167357%_
                                                 _%e166443167360%_
                                                 _%hd166442167363%_
                                                 _%tl166441167365%_
                                                 _%e166446167368%_
                                                 _%hd166445167371%_
                                                 _%tl166444167373%_
                                                 _%e166449167376%_
                                                 _%hd166448167379%_
                                                 _%tl166447167381%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166453167389%_
                             _%target166450167384%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172047172048%_))
                    (let ((_%e166422167304%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172047172048%_))))
                      (let ((_%tl166420167309%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166422167304%_)))
                            (_%hd166421167307%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166422167304%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166420167309%_))
                            (let ((_%e166425167312%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166420167309%_))))
                              (let ((_%tl166423167317%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166425167312%_)))
                                    (_%hd166424167315%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166425167312%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd166424167315%_))
                                    (let ((_%e166428167320%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd166424167315%_))))
                                      (let ((_%tl166426167325%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e166428167320%_)))
                                            (_%hd166427167323%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e166428167320%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd166427167323%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd166427167323%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166426167325%_))
                                                    (let ((_%e166431167328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166426167325%_))))
                                                      (let ((_%tl166429167333%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166431167328%_)))
                    (_%hd166430167331%_
                     (let () (declare (not safe)) (##car _%e166431167328%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166429167333%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl166423167317%_))
                        (let ((_%e166434167336%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl166423167317%_))))
                          (let ((_%tl166432167341%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166434167336%_)))
                                (_%hd166433167339%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166434167336%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd166433167339%_))
                                (let ((_%e166437167344%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd166433167339%_))))
                                  (let ((_%tl166435167349%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166437167344%_)))
                                        (_%hd166436167347%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166437167344%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166436167347%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166436167347%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166435167349%_))
                                                (let ((_%e166440167352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166435167349%_))))
                                                  (let ((_%tl166438167357%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166440167352%_)))
                                                        (_%hd166439167355%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166440167352%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166438167357%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl166432167341%_))
                                                            (let ((_%e166443167360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl166432167341%_))))
                      (let ((_%tl166441167365%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166443167360%_)))
                            (_%hd166442167363%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166443167360%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd166442167363%_))
                            (let ((_%e166446167368%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd166442167363%_))))
                              (let ((_%tl166444167373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166446167368%_)))
                                    (_%hd166445167371%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166446167368%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd166445167371%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd166445167371%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166444167373%_))
                                            (let ((_%e166449167376%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166444167373%_))))
                                              (let ((_%tl166447167381%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166449167376%_)))
                                                    (_%hd166448167379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166449167376%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl166447167381%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl166441167365%_))
                                                        (let ((_%__splice172051172052%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl166441167365%_ '0))))
                  (let ((_%tl166452167386%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172051172052%_ '1)))
                        (_%target166450167384%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172051172052%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl166452167386%_))
                        (_%__match172152172153%_
                         _%e166422167304%_
                         _%hd166421167307%_
                         _%tl166420167309%_
                         _%e166425167312%_
                         _%hd166424167315%_
                         _%tl166423167317%_
                         _%e166428167320%_
                         _%hd166427167323%_
                         _%tl166426167325%_
                         _%e166431167328%_
                         _%hd166430167331%_
                         _%tl166429167333%_
                         _%e166434167336%_
                         _%hd166433167339%_
                         _%tl166432167341%_
                         _%e166437167344%_
                         _%hd166436167347%_
                         _%tl166435167349%_
                         _%e166440167352%_
                         _%hd166439167355%_
                         _%tl166438167357%_
                         _%e166443167360%_
                         _%hd166442167363%_
                         _%tl166441167365%_
                         _%e166446167368%_
                         _%hd166445167371%_
                         _%tl166444167373%_
                         _%e166449167376%_
                         _%hd166448167379%_
                         _%tl166447167381%_
                         _%__splice172051172052%_
                         _%target166450167384%_
                         _%tl166452167386%_)
                        (_%__match172340172341%_
                         _%e166422167304%_
                         _%hd166421167307%_
                         _%tl166420167309%_
                         _%e166425167312%_
                         _%hd166424167315%_
                         _%tl166423167317%_
                         _%e166428167320%_
                         _%hd166427167323%_
                         _%tl166426167325%_
                         _%e166431167328%_
                         _%hd166430167331%_
                         _%tl166429167333%_
                         _%e166434167336%_
                         _%hd166433167339%_
                         _%tl166432167341%_
                         _%e166437167344%_
                         _%hd166436167347%_
                         _%tl166435167349%_
                         _%e166440167352%_
                         _%hd166439167355%_
                         _%tl166438167357%_
                         _%e166443167360%_
                         _%hd166442167363%_
                         _%tl166441167365%_
                         _%e166446167368%_
                         _%hd166445167371%_
                         _%tl166444167373%_
                         _%e166449167376%_
                         _%hd166448167379%_
                         _%tl166447167381%_))))
                (_%__match172340172341%_
                 _%e166422167304%_
                 _%hd166421167307%_
                 _%tl166420167309%_
                 _%e166425167312%_
                 _%hd166424167315%_
                 _%tl166423167317%_
                 _%e166428167320%_
                 _%hd166427167323%_
                 _%tl166426167325%_
                 _%e166431167328%_
                 _%hd166430167331%_
                 _%tl166429167333%_
                 _%e166434167336%_
                 _%hd166433167339%_
                 _%tl166432167341%_
                 _%e166437167344%_
                 _%hd166436167347%_
                 _%tl166435167349%_
                 _%e166440167352%_
                 _%hd166439167355%_
                 _%tl166438167357%_
                 _%e166443167360%_
                 _%hd166442167363%_
                 _%tl166441167365%_
                 _%e166446167368%_
                 _%hd166445167371%_
                 _%tl166444167373%_
                 _%e166449167376%_
                 _%hd166448167379%_
                 _%tl166447167381%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match172544172545%_
                                                     _%e166422167304%_
                                                     _%hd166421167307%_
                                                     _%tl166420167309%_
                                                     _%e166425167312%_
                                                     _%hd166424167315%_
                                                     _%tl166423167317%_
                                                     _%e166428167320%_
                                                     _%hd166427167323%_
                                                     _%tl166426167325%_
                                                     _%e166431167328%_
                                                     _%hd166430167331%_
                                                     _%tl166429167333%_
                                                     _%e166434167336%_
                                                     _%hd166433167339%_
                                                     _%tl166432167341%_
                                                     _%e166437167344%_
                                                     _%hd166436167347%_
                                                     _%tl166435167349%_
                                                     _%e166440167352%_
                                                     _%hd166439167355%_
                                                     _%tl166438167357%_
                                                     _%e166443167360%_
                                                     _%hd166442167363%_
                                                     _%tl166441167365%_))))
                                            (_%__match172544172545%_
                                             _%e166422167304%_
                                             _%hd166421167307%_
                                             _%tl166420167309%_
                                             _%e166425167312%_
                                             _%hd166424167315%_
                                             _%tl166423167317%_
                                             _%e166428167320%_
                                             _%hd166427167323%_
                                             _%tl166426167325%_
                                             _%e166431167328%_
                                             _%hd166430167331%_
                                             _%tl166429167333%_
                                             _%e166434167336%_
                                             _%hd166433167339%_
                                             _%tl166432167341%_
                                             _%e166437167344%_
                                             _%hd166436167347%_
                                             _%tl166435167349%_
                                             _%e166440167352%_
                                             _%hd166439167355%_
                                             _%tl166438167357%_
                                             _%e166443167360%_
                                             _%hd166442167363%_
                                             _%tl166441167365%_))
                                        (_%__match172220172221%_
                                         _%e166422167304%_
                                         _%hd166421167307%_
                                         _%tl166420167309%_
                                         _%e166425167312%_
                                         _%hd166424167315%_
                                         _%tl166423167317%_
                                         _%e166428167320%_
                                         _%hd166427167323%_
                                         _%tl166426167325%_
                                         _%e166431167328%_
                                         _%hd166430167331%_
                                         _%tl166429167333%_
                                         _%e166434167336%_
                                         _%hd166433167339%_
                                         _%tl166432167341%_
                                         _%e166437167344%_
                                         _%hd166436167347%_
                                         _%tl166435167349%_
                                         _%e166440167352%_
                                         _%hd166439167355%_
                                         _%tl166438167357%_
                                         _%e166443167360%_
                                         _%hd166442167363%_
                                         _%tl166441167365%_
                                         _%e166446167368%_
                                         _%hd166445167371%_
                                         _%tl166444167373%_))
                                    (_%__match172544172545%_
                                     _%e166422167304%_
                                     _%hd166421167307%_
                                     _%tl166420167309%_
                                     _%e166425167312%_
                                     _%hd166424167315%_
                                     _%tl166423167317%_
                                     _%e166428167320%_
                                     _%hd166427167323%_
                                     _%tl166426167325%_
                                     _%e166431167328%_
                                     _%hd166430167331%_
                                     _%tl166429167333%_
                                     _%e166434167336%_
                                     _%hd166433167339%_
                                     _%tl166432167341%_
                                     _%e166437167344%_
                                     _%hd166436167347%_
                                     _%tl166435167349%_
                                     _%e166440167352%_
                                     _%hd166439167355%_
                                     _%tl166438167357%_
                                     _%e166443167360%_
                                     _%hd166442167363%_
                                     _%tl166441167365%_))))
                            (_%__match172544172545%_
                             _%e166422167304%_
                             _%hd166421167307%_
                             _%tl166420167309%_
                             _%e166425167312%_
                             _%hd166424167315%_
                             _%tl166423167317%_
                             _%e166428167320%_
                             _%hd166427167323%_
                             _%tl166426167325%_
                             _%e166431167328%_
                             _%hd166430167331%_
                             _%tl166429167333%_
                             _%e166434167336%_
                             _%hd166433167339%_
                             _%tl166432167341%_
                             _%e166437167344%_
                             _%hd166436167347%_
                             _%tl166435167349%_
                             _%e166440167352%_
                             _%hd166439167355%_
                             _%tl166438167357%_
                             _%e166443167360%_
                             _%hd166442167363%_
                             _%tl166441167365%_))))
                    (_%__match172482172483%_
                     _%e166422167304%_
                     _%hd166421167307%_
                     _%tl166420167309%_
                     _%e166425167312%_
                     _%hd166424167315%_
                     _%tl166423167317%_
                     _%e166428167320%_
                     _%hd166427167323%_
                     _%tl166426167325%_
                     _%e166431167328%_
                     _%hd166430167331%_
                     _%tl166429167333%_
                     _%e166434167336%_
                     _%hd166433167339%_
                     _%tl166432167341%_
                     _%e166437167344%_
                     _%hd166436167347%_
                     _%tl166435167349%_
                     _%e166440167352%_
                     _%hd166439167355%_
                     _%tl166438167357%_))
                (_%__kont172065172066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172065172066%_))
                                            (_%__kont172065172066%_))
                                        (_%__kont172065172066%_))))
                                (_%__kont172065172066%_))))
                        (_%__kont172065172066%_))
                    (_%__kont172065172066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172065172066%_))
                                                (_%__kont172065172066%_))
                                            (_%__kont172065172066%_))))
                                    (_%__kont172065172066%_))))
                            (_%__kont172065172066%_))))
                    (_%__kont172065172066%_))))))))))
